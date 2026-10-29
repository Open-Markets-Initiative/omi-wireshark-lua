-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseCm DropCopy NnfDc 3.0 Protocol
local omi_nse_nsecm_dropcopy_nnfdc_v3_0 = Proto("Omi.Nse.NseCm.DropCopy.NnfDc.v3.0", "Nse NseCm DropCopy NnfDc 3.0")

-- Protocol table
local nse_nsecm_dropcopy_nnfdc_v3_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseCm DropCopy NnfDc 3.0 Fields
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.account_number = ProtoField.new("Account Number", "nse.nsecm.dropcopy.nnfdc.v3.0.accountnumber", ftypes.STRING, nil, nil, nil, "Account Number or client code")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.activity_time_in_nanos = ProtoField.new("Activity Time In Nanos", "nse.nsecm.dropcopy.nnfdc.v3.0.activitytimeinnanos", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Activity time in nanoseconds")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.activity_time_in_nanos_utc = ProtoField.new("Activity Time In Nanos", "nse.nsecm.dropcopy.nnfdc.v3.0.activitytimeinnanos.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Activity time in nanoseconds")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.algo_id = ProtoField.new("Algo Id", "nse.nsecm.dropcopy.nnfdc.v3.0.algoid", ftypes.INT32, nil, nil, nil, "Algo Id issued by the exchange, zero for a non algo order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.aon = ProtoField.new("Aon", "nse.nsecm.dropcopy.nnfdc.v3.0.aon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "All or none order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.ato = ProtoField.new("Ato", "nse.nsecm.dropcopy.nnfdc.v3.0.ato", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100, "At the opening order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.auction_number = ProtoField.new("Auction Number", "nse.nsecm.dropcopy.nnfdc.v3.0.auctionnumber", ftypes.INT16, nil, nil, nil, "Auction number, available when the initiation of an auction is broadcast and zero for other books")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.book_type = ProtoField.new("Book Type", "nse.nsecm.dropcopy.nnfdc.v3.0.booktype", ftypes.INT16, nil, nil, nil, "Book type the order belongs to")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.broker_id = ProtoField.new("Broker Id", "nse.nsecm.dropcopy.nnfdc.v3.0.brokerid", ftypes.STRING, nil, nil, nil, "Trading Member Id")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.buy_sell = ProtoField.new("Buy Sell", "nse.nsecm.dropcopy.nnfdc.v3.0.buysell", ftypes.INT16, nil, nil, nil, "Whether the order taking part is a buy or a sell")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.checksum = ProtoField.new("Checksum", "nse.nsecm.dropcopy.nnfdc.v3.0.checksum", ftypes.BYTES, nil, nil, nil, "Md5 digest of the message data on the registration request, and the Gcm authentication tag over it on every packet after")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.competitor_period = ProtoField.new("Competitor Period", "nse.nsecm.dropcopy.nnfdc.v3.0.competitorperiod", ftypes.INT16, nil, nil, nil, "Competitor time set by the exchange at the time of initiation")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.compression_indicator = ProtoField.new("Compression Indicator", "nse.nsecm.dropcopy.nnfdc.v3.0.compressionindicator", ftypes.STRING, nil, nil, nil, "Whether the message buffer behind this header is Lz4 compressed")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.concurrent_login_id = ProtoField.new("Concurrent Login Id", "nse.nsecm.dropcopy.nnfdc.v3.0.concurrentloginid", ftypes.INT16, nil, nil, nil, "Concurrent login number of the user for which the user has logged in")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.cryptographic_iv = ProtoField.new("Cryptographic Iv", "nse.nsecm.dropcopy.nnfdc.v3.0.cryptographiciv", ftypes.STRING, nil, nil, nil, "Cryptographic Initialization Vector for encrypting and decrypting every message to the allocated gateway server")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.cryptographic_key = ProtoField.new("Cryptographic Key", "nse.nsecm.dropcopy.nnfdc.v3.0.cryptographickey", ftypes.STRING, nil, nil, nil, "Cryptographic key for encrypting and decrypting every message to the allocated gateway server")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.day = ProtoField.new("Day", "nse.nsecm.dropcopy.nnfdc.v3.0.day", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800, "Day order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.disclosed_vol_remaining = ProtoField.new("Disclosed Vol Remaining", "nse.nsecm.dropcopy.nnfdc.v3.0.disclosedvolremaining", ftypes.INT32, nil, nil, nil, "Disclosed volume remaining after the trade")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.disclosed_volume = ProtoField.new("Disclosed Volume", "nse.nsecm.dropcopy.nnfdc.v3.0.disclosedvolume", ftypes.INT32, nil, nil, nil, "Quantity to be disclosed to the market")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.environment_type = ProtoField.new("Environment Type", "nse.nsecm.dropcopy.nnfdc.v3.0.environmenttype", ftypes.STRING, nil, nil, nil, "Which environment the host is, as a digit")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.error_code = ProtoField.new("Error Code", "nse.nsecm.dropcopy.nnfdc.v3.0.errorcode", ftypes.INT16, nil, nil, nil, "Zero when the request succeeded, otherwise an Error Response follows")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.error_message = ProtoField.new("Error Message", "nse.nsecm.dropcopy.nnfdc.v3.0.errormessage", ftypes.STRING, nil, nil, nil, "The error message describing the error received")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.fill_number = ProtoField.new("Fill Number", "nse.nsecm.dropcopy.nnfdc.v3.0.fillnumber", ftypes.INT32, nil, nil, nil, "Trade number")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.fill_price = ProtoField.new("Fill Price", "nse.nsecm.dropcopy.nnfdc.v3.0.fillprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the order traded")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.fill_qty = ProtoField.new("Fill Qty", "nse.nsecm.dropcopy.nnfdc.v3.0.fillqty", ftypes.INT32, nil, nil, nil, "Traded volume")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.filler = ProtoField.new("Filler", "nse.nsecm.dropcopy.nnfdc.v3.0.filler", ftypes.STRING)
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.frozen = ProtoField.new("Frozen", "nse.nsecm.dropcopy.nnfdc.v3.0.frozen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "Order is frozen for Nse Control to release")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.func_indc = ProtoField.new("Func Indc", "nse.nsecm.dropcopy.nnfdc.v3.0.funcindc", ftypes.STRING, nil, nil, nil, "Functionality the connection is for, which on this service is always D for drop copy")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.gtc = ProtoField.new("Gtc", "nse.nsecm.dropcopy.nnfdc.v3.0.gtc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000, "Good till cancelled order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.ioc = ProtoField.new("Ioc", "nse.nsecm.dropcopy.nnfdc.v3.0.ioc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Immediate or cancel order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.ip_address = ProtoField.new("Ip Address", "nse.nsecm.dropcopy.nnfdc.v3.0.ipaddress", ftypes.STRING, nil, nil, nil, "IP address of the drop copy gateway")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.ip_details_partition_wise = ProtoField.new("Ip Details Partition Wise", "nse.nsecm.dropcopy.nnfdc.v3.0.ipdetailspartitionwise", ftypes.STRING, nil, nil, nil, "IP_DETAILS_PARTITION_WISE")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.matched_ind = ProtoField.new("Matched Ind", "nse.nsecm.dropcopy.nnfdc.v3.0.matchedind", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "Order has been matched")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.message_buffer = ProtoField.new("Message Buffer", "nse.nsecm.dropcopy.nnfdc.v3.0.messagebuffer", ftypes.STRING, nil, nil, nil, "Messages packed in Fifo order, inflated first when Compression Indicator says they arrive compressed")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.message_indicator = ProtoField.new("Message Indicator", "nse.nsecm.dropcopy.nnfdc.v3.0.messageindicator", ftypes.INT16, nil, nil, nil, "Whether a further response follows: zero for an interim message, one for the last")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.message_length = ProtoField.new("Message Length", "nse.nsecm.dropcopy.nnfdc.v3.0.messagelength", ftypes.INT16, nil, nil, nil, "Length of the entire message including the fourteen byte message header")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.mf = ProtoField.new("Mf", "nse.nsecm.dropcopy.nnfdc.v3.0.mf", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Minimum fill order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.mkt = ProtoField.new("Mkt", "nse.nsecm.dropcopy.nnfdc.v3.0.mkt", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200, "Market order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.modified = ProtoField.new("Modified", "nse.nsecm.dropcopy.nnfdc.v3.0.modified", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "Order has been modified")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.nnf_field = ProtoField.new("Nnf Field", "nse.nsecm.dropcopy.nnfdc.v3.0.nnffield", ftypes.DOUBLE, nil, nil, nil, "Fifteen digit unique identifier for the product, populated only on Trade Confirmation")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.on_stop = ProtoField.new("On Stop", "nse.nsecm.dropcopy.nnfdc.v3.0.onstop", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400, "Stop loss order, triggered on its trigger price")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_flags_reserved_5 = ProtoField.new("Order Flags Reserved 5", "nse.nsecm.dropcopy.nnfdc.v3.0.orderflagsreserved5", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020, "Reserved. Named by its position in the container because this structure carries two Reserved bits that are not adjacent")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_flags_reserved_7 = ProtoField.new("Order Flags Reserved 7", "nse.nsecm.dropcopy.nnfdc.v3.0.orderflagsreserved7", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080, "Reserved. Named by its position in the container because this structure carries two Reserved bits that are not adjacent")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_number = ProtoField.new("Order Number", "nse.nsecm.dropcopy.nnfdc.v3.0.ordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number of the trader's order taking part in the trade")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.original_volume = ProtoField.new("Original Volume", "nse.nsecm.dropcopy.nnfdc.v3.0.originalvolume", ftypes.INT32, nil, nil, nil, "Original traded volume")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.packet_length = ProtoField.new("Packet Length", "nse.nsecm.dropcopy.nnfdc.v3.0.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the whole packet including its own two bytes, capped at 1400")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "nse.nsecm.dropcopy.nnfdc.v3.0.packetsequencenumber", ftypes.UINT32, nil, nil, nil, "Packet counter, starting at one on a fresh connection and incrementing for every packet")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.pan = ProtoField.new("Pan", "nse.nsecm.dropcopy.nnfdc.v3.0.pan", ftypes.STRING, nil, nil, nil, "Permanent Account Number")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.participant_type = ProtoField.new("Participant Type", "nse.nsecm.dropcopy.nnfdc.v3.0.participanttype", ftypes.STRING, nil, nil, nil, "Initiator, competitor or solicitor order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.partition_count = ProtoField.new("Partition Count", "nse.nsecm.dropcopy.nnfdc.v3.0.partitioncount", ftypes.INT16, nil, nil, nil, "Count of partition details present in this message")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.partition_id = ProtoField.new("Partition Id", "nse.nsecm.dropcopy.nnfdc.v3.0.partitionid", ftypes.STRING, nil, nil, nil, "Partition or stream the packet is sent from")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.password = ProtoField.new("Password", "nse.nsecm.dropcopy.nnfdc.v3.0.password", ftypes.STRING, nil, nil, nil, "Password entered by the user, blank padded when shorter than eight characters")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.port = ProtoField.new("Port", "nse.nsecm.dropcopy.nnfdc.v3.0.port", ftypes.INT32, nil, nil, nil, "Port of the drop copy gateway")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.preopen = ProtoField.new("Preopen", "nse.nsecm.dropcopy.nnfdc.v3.0.preopen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "Set for a trade in the call auction 2 market, and zero for a normal market trade or a pre open carried forward order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.price = ProtoField.new("Price", "nse.nsecm.dropcopy.nnfdc.v3.0.price", ftypes.DOUBLE, nil, nil, nil, "Order price")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.pro_client_char_1 = ProtoField.new("Pro Client Char 1", "nse.nsecm.dropcopy.nnfdc.v3.0.proclientchar1", ftypes.STRING, nil, nil, nil, "Whether the order is a client, broker or warehousing order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.pro_client_short_2 = ProtoField.new("Pro Client Short 2", "nse.nsecm.dropcopy.nnfdc.v3.0.proclientshort2", ftypes.INT16, nil, nil, nil, "Whether the order is a client, broker or warehousing order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.reason_code = ProtoField.new("Reason Code", "nse.nsecm.dropcopy.nnfdc.v3.0.reasoncode", ftypes.INT16, nil, nil, nil, "Reason code for the order request rejection or the order being frozen")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.remaining_volume = ProtoField.new("Remaining Volume", "nse.nsecm.dropcopy.nnfdc.v3.0.remainingvolume", ftypes.INT32, nil, nil, nil, "Volume remaining after the trade")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.request_sequence_number = ProtoField.new("Request Sequence Number", "nse.nsecm.dropcopy.nnfdc.v3.0.requestsequencenumber", ftypes.INT64, nil, nil, nil, "Sequence number of the messages the member sends")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.reserve = ProtoField.new("Reserve", "nse.nsecm.dropcopy.nnfdc.v3.0.reserve", ftypes.BYTES, nil, nil, nil, "Reserved, blank filled as chapter 2 directs for every reserved field")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.segment_char_1 = ProtoField.new("Segment Char 1", "nse.nsecm.dropcopy.nnfdc.v3.0.segmentchar1", ftypes.STRING, nil, nil, nil, "Business segment the order belongs to")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.segment_short_2 = ProtoField.new("Segment Short 2", "nse.nsecm.dropcopy.nnfdc.v3.0.segmentshort2", ftypes.INT16, nil, nil, nil, "Business segment the trade belongs to")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.sequence_number = ProtoField.new("Sequence Number", "nse.nsecm.dropcopy.nnfdc.v3.0.sequencenumber", ftypes.INT64, nil, nil, nil, "Last sequence number received by the user, zero to retrieve from the beginning of the trading day")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.server_drop_copy_packet = ProtoField.new("Server Drop Copy Packet", "nse.nsecm.dropcopy.nnfdc.v3.0.serverdropcopypacket", ftypes.STRING, nil, nil, nil, "One drop copy packet sent by the host, carrying a packed buffer of messages")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.session_key = ProtoField.new("Session Key", "nse.nsecm.dropcopy.nnfdc.v3.0.sessionkey", ftypes.STRING, nil, nil, nil, "Session Key for the validated session")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.settlement_type = ProtoField.new("Settlement Type", "nse.nsecm.dropcopy.nnfdc.v3.0.settlementtype", ftypes.STRING, nil, nil, nil, "Settlement type of the order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.settlor = ProtoField.new("Settlor", "nse.nsecm.dropcopy.nnfdc.v3.0.settlor", ftypes.STRING, nil, nil, nil, "Participant responsible for settling the trade through the custodian, defaulting to the Broker Code")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.solicitor_period = ProtoField.new("Solicitor Period", "nse.nsecm.dropcopy.nnfdc.v3.0.solicitorperiod", ftypes.INT16, nil, nil, nil, "Solicitor time set by the exchange at the time of initiation")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.st_order_flags = ProtoField.new("St Order Flags", "nse.nsecm.dropcopy.nnfdc.v3.0.storderflags", ftypes.STRING, nil, nil, nil, "Terms attached to the order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.stpc = ProtoField.new("Stpc", "nse.nsecm.dropcopy.nnfdc.v3.0.stpc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040, "Self trade prevention check")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.suspended = ProtoField.new("Suspended", "nse.nsecm.dropcopy.nnfdc.v3.0.suspended", ftypes.STRING, nil, nil, nil, "Whether the security is suspended")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.token = ProtoField.new("Token", "nse.nsecm.dropcopy.nnfdc.v3.0.token", ftypes.INT32, nil, nil, nil, "Security identifier")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.total_vol_remaining = ProtoField.new("Total Vol Remaining", "nse.nsecm.dropcopy.nnfdc.v3.0.totalvolremaining", ftypes.INT32, nil, nil, nil, "Total quantity remaining from the original quantity after trades")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.traded = ProtoField.new("Traded", "nse.nsecm.dropcopy.nnfdc.v3.0.traded", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "Order has traded")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.trader_id = ProtoField.new("Trader Id", "nse.nsecm.dropcopy.nnfdc.v3.0.traderid", ftypes.INT32, nil, nil, nil, "Id of the user on whose behalf the order is modified or cancelled")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.trader_number = ProtoField.new("Trader Number", "nse.nsecm.dropcopy.nnfdc.v3.0.tradernumber", ftypes.INT32, nil, nil, nil, "Trader or user Id")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nsecm.dropcopy.nnfdc.v3.0.transactioncode", ftypes.INT16, nil, nil, nil, "Type of message sent or received")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.trigger_price = ProtoField.new("Trigger Price", "nse.nsecm.dropcopy.nnfdc.v3.0.triggerprice", ftypes.DOUBLE, nil, nil, nil, "Price at which a stop loss order is triggered and brought to the market")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.user_id = ProtoField.new("User Id", "nse.nsecm.dropcopy.nnfdc.v3.0.userid", ftypes.INT32, nil, nil, nil, "User Id of the user")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.volume = ProtoField.new("Volume", "nse.nsecm.dropcopy.nnfdc.v3.0.volume", ftypes.INT32, nil, nil, nil, "Quantity of the order placed")

-- Nse NseCm DropCopy NnfDc 3.0 Framing
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.client_drop_copy_packet = ProtoField.new("Client Drop Copy Packet", "nse.nsecm.dropcopy.nnfdc.v3.0.clientdropcopypacket", ftypes.STRING, nil, nil, nil, "One drop copy packet sent by the member, carrying a single message")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.client_packet = ProtoField.new("Client Packet", "nse.nsecm.dropcopy.nnfdc.v3.0.clientpacket", ftypes.STRING, nil, nil, nil, "Drop copy Tcp block of one or more packets sent by the member")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.message_header = ProtoField.new("Message Header", "nse.nsecm.dropcopy.nnfdc.v3.0.messageheader", ftypes.STRING, nil, nil, nil, "MESSAGE_HEADER")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.packet_header = ProtoField.new("Packet Header", "nse.nsecm.dropcopy.nnfdc.v3.0.packetheader", ftypes.STRING, nil, nil, nil, "Drop copy twenty two byte packet header")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.request_message_header = ProtoField.new("Request Message Header", "nse.nsecm.dropcopy.nnfdc.v3.0.requestmessageheader", ftypes.STRING, nil, nil, nil, "REQUEST_MESSAGE_HEADER")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.response_message_header = ProtoField.new("Response Message Header", "nse.nsecm.dropcopy.nnfdc.v3.0.responsemessageheader", ftypes.STRING, nil, nil, nil, "RESPONSE_MESSAGE_HEADER, present once per packet however many messages are packed behind it")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.server_message = ProtoField.new("Server Message", "nse.nsecm.dropcopy.nnfdc.v3.0.servermessage", ftypes.STRING, nil, nil, nil, "One packed drop copy message sent by the host")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.server_packet = ProtoField.new("Server Packet", "nse.nsecm.dropcopy.nnfdc.v3.0.serverpacket", ftypes.STRING, nil, nil, nil, "Drop copy Tcp block of one or more packets sent by the host")

-- Nse NseCm DropCopy 3.0 Application Messages
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.batch_order_cancel_message = ProtoField.new("Batch Order Cancel Message", "nse.nsecm.dropcopy.nnfdc.v3.0.batchordercancelmessage", ftypes.STRING, nil, nil, nil, "Reports an order cancelled in a batch cancellation")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.dc_error_response_order_message = ProtoField.new("Dc Error Response Order Message", "nse.nsecm.dropcopy.nnfdc.v3.0.dcerrorresponseordermessage", ftypes.STRING, nil, nil, nil, "Rejects an order and trade request, the reason given in the Error Code of the Message Header")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.dc_error_response_trade_message = ProtoField.new("Dc Error Response Trade Message", "nse.nsecm.dropcopy.nnfdc.v3.0.dcerrorresponsetrademessage", ftypes.STRING, nil, nil, nil, "Rejects a trade only request, the reason given in the Error Code of the Message Header")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.dc_ont_subscription_request_message = ProtoField.new("Dc Ont Subscription Request Message", "nse.nsecm.dropcopy.nnfdc.v3.0.dcontsubscriptionrequestmessage", ftypes.STRING, nil, nil, nil, "Subscribes to the order and trade drop copy on this partition from the named sequence number")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.dc_signon_in_message = ProtoField.new("Dc Signon In Message", "nse.nsecm.dropcopy.nnfdc.v3.0.dcsignoninmessage", ftypes.STRING, nil, nil, nil, "Logs the member on to a partition of the drop copy service")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.dc_signon_out_message = ProtoField.new("Dc Signon Out Message", "nse.nsecm.dropcopy.nnfdc.v3.0.dcsignonoutmessage", ftypes.STRING, nil, nil, nil, "Confirms the logon, or terminates the connection when Error Code is set")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.dc_trd_subscription_request_message = ProtoField.new("Dc Trd Subscription Request Message", "nse.nsecm.dropcopy.nnfdc.v3.0.dctrdsubscriptionrequestmessage", ftypes.STRING, nil, nil, nil, "Subscribes to the trade only drop copy on this partition from the named sequence number")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.freeze_to_control_message = ProtoField.new("Freeze To Control Message", "nse.nsecm.dropcopy.nnfdc.v3.0.freezetocontrolmessage", ftypes.STRING, nil, nil, nil, "Reports an order frozen and referred to Nse Control")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.gr_response_message = ProtoField.new("Gr Response Message", "nse.nsecm.dropcopy.nnfdc.v3.0.grresponsemessage", ftypes.STRING, nil, nil, nil, "Returns the addresses of every partition the member must connect to, together with the session key and the cryptographic material for those connections")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.on_stop_notification_message = ProtoField.new("On Stop Notification Message", "nse.nsecm.dropcopy.nnfdc.v3.0.onstopnotificationmessage", ftypes.STRING, nil, nil, nil, "Reports a stop loss order triggered and brought to the market")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_cancel_confirmation_message = ProtoField.new("Order Cancel Confirmation Message", "nse.nsecm.dropcopy.nnfdc.v3.0.ordercancelconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an order cancellation")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "nse.nsecm.dropcopy.nnfdc.v3.0.ordercancelrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects an order cancellation")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_confirmation_message = ProtoField.new("Order Confirmation Message", "nse.nsecm.dropcopy.nnfdc.v3.0.orderconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_error_message = ProtoField.new("Order Error Message", "nse.nsecm.dropcopy.nnfdc.v3.0.ordererrormessage", ftypes.STRING, nil, nil, nil, "Reports an error on an order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_mod_confirmation_message = ProtoField.new("Order Mod Confirmation Message", "nse.nsecm.dropcopy.nnfdc.v3.0.ordermodconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an order modification")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_mod_reject_message = ProtoField.new("Order Mod Reject Message", "nse.nsecm.dropcopy.nnfdc.v3.0.ordermodrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects an order modification")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.price_confirmation_message = ProtoField.new("Price Confirmation Message", "nse.nsecm.dropcopy.nnfdc.v3.0.priceconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms the price of an order")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.trade_cancel_confirm_message = ProtoField.new("Trade Cancel Confirm Message", "nse.nsecm.dropcopy.nnfdc.v3.0.tradecancelconfirmmessage", ftypes.STRING, nil, nil, nil, "Confirms the cancellation of a trade")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.trade_cancel_reject_message = ProtoField.new("Trade Cancel Reject Message", "nse.nsecm.dropcopy.nnfdc.v3.0.tradecancelrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects a trade cancellation")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.trade_confirmation_message = ProtoField.new("Trade Confirmation Message", "nse.nsecm.dropcopy.nnfdc.v3.0.tradeconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms a trade")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.trade_modify_confirm_message = ProtoField.new("Trade Modify Confirm Message", "nse.nsecm.dropcopy.nnfdc.v3.0.trademodifyconfirmmessage", ftypes.STRING, nil, nil, nil, "Confirms the modification of a trade")

-- Nse NseCm DropCopy 3.0 Session Messages
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.gr_request_message = ProtoField.new("Gr Request Message", "nse.nsecm.dropcopy.nnfdc.v3.0.grrequestmessage", ftypes.BYTES, nil, nil, nil, "Asks the gateway router for the member's partition list, with Partition Id sent as zero")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.gr_secure_user_registration_request_message = ProtoField.new("Gr Secure User Registration Request Message", "nse.nsecm.dropcopy.nnfdc.v3.0.grsecureuserregistrationrequestmessage", ftypes.BYTES, nil, nil, nil, "Declares to an allocated gateway server that the member application is using encryption, sent unencrypted as the first message on each partition connection")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.gr_secure_user_registration_response_message = ProtoField.new("Gr Secure User Registration Response Message", "nse.nsecm.dropcopy.nnfdc.v3.0.grsecureuserregistrationresponsemessage", ftypes.BYTES, nil, nil, nil, "Acknowledges the registration, its Error Code terminating the connection when set")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "nse.nsecm.dropcopy.nnfdc.v3.0.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "Keeps the connection alive, sent after thirty seconds of inactivity; the host disconnects the socket after two missed in succession")

-----------------------------------------------------------------------
-- Nse NseCm DropCopy NnfDc 3.0 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nse_nsecm_dropcopy_nnfdc_v3_0.absolute_time_base = 0

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

-- Nse NseCm DropCopy NnfDc 3.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Nse NseCm DropCopy NnfDc 3.0 Show Options
omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.show_application_messages then
    show.application_messages = omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.show_headers then
    show.headers = omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.show_headers
  end
  if show.structs ~= omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.show_structs then
    show.structs = omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.show_structs
  end
  if nse_nsecm_dropcopy_nnfdc_v3_0.absolute_time_base ~= omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.absolute_time_base then
    nse_nsecm_dropcopy_nnfdc_v3_0.absolute_time_base = omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.absolute_time_base
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


-- LZ4 decompression
local function lz4_decompress(input, decompressed_size)
  local compressed_size = input:len()

  local compressed_position = 0
  local decompressed_position = 0

  local output = ByteArray.new()
  output:set_size(decompressed_size)

  while compressed_position < compressed_size do
    -- Read token
    local token = input:get_index(compressed_position)
    compressed_position = compressed_position + 1

    -- Literal length (high nibble)
    local literal_length = bit.rshift(token, 4)
    if literal_length == 15 then
      local extra
      repeat
        if compressed_position >= compressed_size then break end
        extra = input:get_index(compressed_position)
        compressed_position = compressed_position + 1
        literal_length = literal_length + extra
      until extra ~= 255
    end

    -- Cdecompressed_positiony literals
    for i = 0, literal_length - 1 do
      if compressed_position >= compressed_size then break end
      output:set_index(decompressed_position, input:get_index(compressed_position))
      decompressed_position = decompressed_position + 1
      compressed_position = compressed_position + 1
    end

    -- Check if we reached the end of input
    if compressed_position + 1 >= compressed_size then
      break
    end

    -- Match offset (2 bytes, little-endian)
    local match_offset = input:get_index(compressed_position) + input:get_index(compressed_position + 1) * 256
    compressed_position = compressed_position + 2

    -- Match length (low nibble + 4 minimum match)
    local match_length = bit.band(token, 0x0F) + 4
    if bit.band(token, 0x0F) == 15 then
      local extra
      repeat
        if compressed_position >= compressed_size then break end
        extra = input:get_index(compressed_position)
        compressed_position = compressed_position + 1
        match_length = match_length + extra
      until extra ~= 255
    end

    -- Cdecompressed_positiony match (byte-by-byte to handle overlapping cdecompressed_positionies)
    local match_pos = decompressed_position - match_offset
    for i = 0, match_length - 1 do
      output:set_index(decompressed_position, output:get_index(match_pos))
      decompressed_position = decompressed_position + 1
      match_pos = match_pos + 1
    end
  end

  output:set_size(decompressed_position)
  return output
end
-----------------------------------------------------------------------
-- Nse NseCm DropCopy NnfDc 3.0 Fields
-----------------------------------------------------------------------

-- Account Number
nse_nsecm_dropcopy_nnfdc_v3_0.account_number = {}

-- Size: Account Number
nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size = 10

-- Display: Account Number
nse_nsecm_dropcopy_nnfdc_v3_0.account_number.display = function(value)
  return "Account Number: "..value
end

-- Dissect: Account Number
nse_nsecm_dropcopy_nnfdc_v3_0.account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.account_number, range, value, display)

  return offset + length, value
end

-- Activity Time In Nanos
nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos = {}

-- Size: Activity Time In Nanos
nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size = 8

-- Dissect: Activity Time In Nanos
nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.activity_time_in_nanos
  if nse_nsecm_dropcopy_nnfdc_v3_0.absolute_time_base == 1 then field = omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.activity_time_in_nanos_utc end

  local seconds = (value / UInt64(1000000000)):tonumber() + 315532800
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Algo Id
nse_nsecm_dropcopy_nnfdc_v3_0.algo_id = {}

-- Size: Algo Id
nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size = 4

-- Display: Algo Id
nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.display = function(value)
  return "Algo Id: "..value
end

-- Dissect: Algo Id
nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.algo_id, range, value, display)

  return offset + length, value
end

-- Auction Number
nse_nsecm_dropcopy_nnfdc_v3_0.auction_number = {}

-- Size: Auction Number
nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.size = 2

-- Display: Auction Number
nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.display = function(value)
  return "Auction Number: "..value
end

-- Dissect: Auction Number
nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.auction_number, range, value, display)

  return offset + length, value
end

-- Book Type
nse_nsecm_dropcopy_nnfdc_v3_0.book_type = {}

-- Size: Book Type
nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size = 2

-- Display: Book Type
nse_nsecm_dropcopy_nnfdc_v3_0.book_type.labels = {
  [1] = "Book Type: Regular Lot Order (1)",
  [2] = "Book Type: Special Terms Order (2)",
  [3] = "Book Type: Stop Loss Order (3)",
  [4] = "Book Type: Negotiated Order (4)",
  [5] = "Book Type: Odd Lot Order (5)",
  [6] = "Book Type: Spot Order (6)",
  [7] = "Book Type: Auction Order (7)",
  [11] = "Book Type: Call Auction 1 (11)",
  [12] = "Book Type: Call Auction 2 (12)",
}

nse_nsecm_dropcopy_nnfdc_v3_0.book_type.display = function(value)
  return nse_nsecm_dropcopy_nnfdc_v3_0.book_type.labels[value] or "Book Type: Unknown("..value..")"
end

-- Dissect: Book Type
nse_nsecm_dropcopy_nnfdc_v3_0.book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.book_type, range, value, display)

  return offset + length, value
end

-- Broker Id
nse_nsecm_dropcopy_nnfdc_v3_0.broker_id = {}

-- Size: Broker Id
nse_nsecm_dropcopy_nnfdc_v3_0.broker_id.size = 5

-- Display: Broker Id
nse_nsecm_dropcopy_nnfdc_v3_0.broker_id.display = function(value)
  return "Broker Id: "..value
end

-- Dissect: Broker Id
nse_nsecm_dropcopy_nnfdc_v3_0.broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.broker_id, range, value, display)

  return offset + length, value
end

-- Buy Sell
nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell = {}

-- Size: Buy Sell
nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size = 2

-- Display: Buy Sell
nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.labels = {
  [1] = "Buy Sell: Buy Order (1)",
  [2] = "Buy Sell: Sell Order (2)",
}

nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.display = function(value)
  return nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.labels[value] or "Buy Sell: Unknown("..value..")"
end

-- Dissect: Buy Sell
nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.buy_sell, range, value, display)

  return offset + length, value
end

-- Checksum
nse_nsecm_dropcopy_nnfdc_v3_0.checksum = {}

-- Size: Checksum
nse_nsecm_dropcopy_nnfdc_v3_0.checksum.size = 16

-- Display: Checksum
nse_nsecm_dropcopy_nnfdc_v3_0.checksum.display = function(value)
  return "Checksum: "..value
end

-- Dissect: Checksum
nse_nsecm_dropcopy_nnfdc_v3_0.checksum.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.checksum.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.checksum, range, value, display)

  return offset + length, value
end

-- Competitor Period
nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period = {}

-- Size: Competitor Period
nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.size = 2

-- Display: Competitor Period
nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.display = function(value)
  return "Competitor Period: "..value
end

-- Dissect: Competitor Period
nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.competitor_period, range, value, display)

  return offset + length, value
end

-- Compression Indicator
nse_nsecm_dropcopy_nnfdc_v3_0.compression_indicator = {}

-- Size: Compression Indicator
nse_nsecm_dropcopy_nnfdc_v3_0.compression_indicator.size = 1

-- Display: Compression Indicator
nse_nsecm_dropcopy_nnfdc_v3_0.compression_indicator.labels = {
  ["0"] = "Compression Indicator: No Compression Done (0)",
  ["1"] = "Compression Indicator: Data Is Compressed (1)",
}

nse_nsecm_dropcopy_nnfdc_v3_0.compression_indicator.display = function(value)
  return nse_nsecm_dropcopy_nnfdc_v3_0.compression_indicator.labels[value] or "Compression Indicator: Unknown("..value..")"
end

-- Dissect: Compression Indicator
nse_nsecm_dropcopy_nnfdc_v3_0.compression_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.compression_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.compression_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.compression_indicator, range, value, display)

  return offset + length, value
end

-- Concurrent Login Id
nse_nsecm_dropcopy_nnfdc_v3_0.concurrent_login_id = {}

-- Size: Concurrent Login Id
nse_nsecm_dropcopy_nnfdc_v3_0.concurrent_login_id.size = 2

-- Display: Concurrent Login Id
nse_nsecm_dropcopy_nnfdc_v3_0.concurrent_login_id.display = function(value)
  return "Concurrent Login Id: "..value
end

-- Dissect: Concurrent Login Id
nse_nsecm_dropcopy_nnfdc_v3_0.concurrent_login_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.concurrent_login_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.concurrent_login_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.concurrent_login_id, range, value, display)

  return offset + length, value
end

-- Cryptographic Iv
nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_iv = {}

-- Size: Cryptographic Iv
nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_iv.size = 16

-- Display: Cryptographic Iv
nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_iv.display = function(value)
  return "Cryptographic Iv: "..value
end

-- Dissect: Cryptographic Iv
nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_iv.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_iv.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_iv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.cryptographic_iv, range, value, display)

  return offset + length, value
end

-- Cryptographic Key
nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_key = {}

-- Size: Cryptographic Key
nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_key.size = 32

-- Display: Cryptographic Key
nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_key.display = function(value)
  return "Cryptographic Key: "..value
end

-- Dissect: Cryptographic Key
nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.cryptographic_key, range, value, display)

  return offset + length, value
end

-- Disclosed Vol Remaining
nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining = {}

-- Size: Disclosed Vol Remaining
nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size = 4

-- Display: Disclosed Vol Remaining
nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.display = function(value)
  return "Disclosed Vol Remaining: "..value
end

-- Dissect: Disclosed Vol Remaining
nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.disclosed_vol_remaining, range, value, display)

  return offset + length, value
end

-- Disclosed Volume
nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume = {}

-- Size: Disclosed Volume
nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size = 4

-- Display: Disclosed Volume
nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.display = function(value)
  return "Disclosed Volume: "..value
end

-- Dissect: Disclosed Volume
nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.disclosed_volume, range, value, display)

  return offset + length, value
end

-- Environment Type
nse_nsecm_dropcopy_nnfdc_v3_0.environment_type = {}

-- Size: Environment Type
nse_nsecm_dropcopy_nnfdc_v3_0.environment_type.size = 1

-- Display: Environment Type
nse_nsecm_dropcopy_nnfdc_v3_0.environment_type.labels = {
  ["1"] = "Environment Type: Production Environment (1)",
  ["2"] = "Environment Type: Prod Parallel Mock Environment (2)",
  ["3"] = "Environment Type: Testing Environment (3)",
}

nse_nsecm_dropcopy_nnfdc_v3_0.environment_type.display = function(value)
  return nse_nsecm_dropcopy_nnfdc_v3_0.environment_type.labels[value] or "Environment Type: Unknown("..value..")"
end

-- Dissect: Environment Type
nse_nsecm_dropcopy_nnfdc_v3_0.environment_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.environment_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.environment_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.environment_type, range, value, display)

  return offset + length, value
end

-- Error Code
nse_nsecm_dropcopy_nnfdc_v3_0.error_code = {}

-- Size: Error Code
nse_nsecm_dropcopy_nnfdc_v3_0.error_code.size = 2

-- Display: Error Code
nse_nsecm_dropcopy_nnfdc_v3_0.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
nse_nsecm_dropcopy_nnfdc_v3_0.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.error_code, range, value, display)

  return offset + length, value
end

-- Error Message
nse_nsecm_dropcopy_nnfdc_v3_0.error_message = {}

-- Size: Error Message
nse_nsecm_dropcopy_nnfdc_v3_0.error_message.size = 128

-- Display: Error Message
nse_nsecm_dropcopy_nnfdc_v3_0.error_message.display = function(value)
  return "Error Message: "..value
end

-- Dissect: Error Message
nse_nsecm_dropcopy_nnfdc_v3_0.error_message.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.error_message.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.error_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.error_message, range, value, display)

  return offset + length, value
end

-- Fill Number
nse_nsecm_dropcopy_nnfdc_v3_0.fill_number = {}

-- Size: Fill Number
nse_nsecm_dropcopy_nnfdc_v3_0.fill_number.size = 4

-- Display: Fill Number
nse_nsecm_dropcopy_nnfdc_v3_0.fill_number.display = function(value)
  return "Fill Number: "..value
end

-- Dissect: Fill Number
nse_nsecm_dropcopy_nnfdc_v3_0.fill_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.fill_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.fill_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.fill_number, range, value, display)

  return offset + length, value
end

-- Fill Price
nse_nsecm_dropcopy_nnfdc_v3_0.fill_price = {}

-- Size: Fill Price
nse_nsecm_dropcopy_nnfdc_v3_0.fill_price.size = 4

-- Display: Fill Price
nse_nsecm_dropcopy_nnfdc_v3_0.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Translate: Fill Price
nse_nsecm_dropcopy_nnfdc_v3_0.fill_price.translate = function(raw)
  return raw/100
end

-- Dissect: Fill Price
nse_nsecm_dropcopy_nnfdc_v3_0.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.fill_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_dropcopy_nnfdc_v3_0.fill_price.translate(raw)
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Qty
nse_nsecm_dropcopy_nnfdc_v3_0.fill_qty = {}

-- Size: Fill Qty
nse_nsecm_dropcopy_nnfdc_v3_0.fill_qty.size = 4

-- Display: Fill Qty
nse_nsecm_dropcopy_nnfdc_v3_0.fill_qty.display = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
nse_nsecm_dropcopy_nnfdc_v3_0.fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.fill_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Filler
nse_nsecm_dropcopy_nnfdc_v3_0.filler = {}

-- Size: Filler
nse_nsecm_dropcopy_nnfdc_v3_0.filler.size = 1

-- Display: Filler
nse_nsecm_dropcopy_nnfdc_v3_0.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
nse_nsecm_dropcopy_nnfdc_v3_0.filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.filler, range, value, display)

  return offset + length, value
end

-- Func Indc
nse_nsecm_dropcopy_nnfdc_v3_0.func_indc = {}

-- Size: Func Indc
nse_nsecm_dropcopy_nnfdc_v3_0.func_indc.size = 1

-- Display: Func Indc
nse_nsecm_dropcopy_nnfdc_v3_0.func_indc.display = function(value)
  return "Func Indc: "..value
end

-- Dissect: Func Indc
nse_nsecm_dropcopy_nnfdc_v3_0.func_indc.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.func_indc.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.func_indc.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.func_indc, range, value, display)

  return offset + length, value
end

-- Ip Address
nse_nsecm_dropcopy_nnfdc_v3_0.ip_address = {}

-- Size: Ip Address
nse_nsecm_dropcopy_nnfdc_v3_0.ip_address.size = 16

-- Display: Ip Address
nse_nsecm_dropcopy_nnfdc_v3_0.ip_address.display = function(value)
  return "Ip Address: "..value
end

-- Dissect: Ip Address
nse_nsecm_dropcopy_nnfdc_v3_0.ip_address.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.ip_address.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.ip_address.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.ip_address, range, value, display)

  return offset + length, value
end

-- Message Indicator
nse_nsecm_dropcopy_nnfdc_v3_0.message_indicator = {}

-- Size: Message Indicator
nse_nsecm_dropcopy_nnfdc_v3_0.message_indicator.size = 2

-- Display: Message Indicator
nse_nsecm_dropcopy_nnfdc_v3_0.message_indicator.labels = {
  [0] = "Message Indicator: Interim Message (0)",
  [1] = "Message Indicator: Last Message (1)",
}

nse_nsecm_dropcopy_nnfdc_v3_0.message_indicator.display = function(value)
  return nse_nsecm_dropcopy_nnfdc_v3_0.message_indicator.labels[value] or "Message Indicator: Unknown("..value..")"
end

-- Dissect: Message Indicator
nse_nsecm_dropcopy_nnfdc_v3_0.message_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.message_indicator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.message_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.message_indicator, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nsecm_dropcopy_nnfdc_v3_0.message_length = {}

-- Size: Message Length
nse_nsecm_dropcopy_nnfdc_v3_0.message_length.size = 2

-- Display: Message Length
nse_nsecm_dropcopy_nnfdc_v3_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nsecm_dropcopy_nnfdc_v3_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Nnf Field
nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field = {}

-- Size: Nnf Field
nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size = 8

-- Display: Nnf Field
nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.display = function(value)
  return "Nnf Field: "..string.format("%.0f", value)
end

-- Dissect: Nnf Field
nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.nnf_field, range, value, display)

  return offset + length, value
end

-- Order Number
nse_nsecm_dropcopy_nnfdc_v3_0.order_number = {}

-- Size: Order Number
nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size = 8

-- Display: Order Number
nse_nsecm_dropcopy_nnfdc_v3_0.order_number.display = function(value)
  return "Order Number: "..string.format("%.0f", value)
end

-- Dissect: Order Number
nse_nsecm_dropcopy_nnfdc_v3_0.order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_number, range, value, display)

  return offset + length, value
end

-- Original Volume
nse_nsecm_dropcopy_nnfdc_v3_0.original_volume = {}

-- Size: Original Volume
nse_nsecm_dropcopy_nnfdc_v3_0.original_volume.size = 4

-- Display: Original Volume
nse_nsecm_dropcopy_nnfdc_v3_0.original_volume.display = function(value)
  return "Original Volume: "..value
end

-- Dissect: Original Volume
nse_nsecm_dropcopy_nnfdc_v3_0.original_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.original_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.original_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.original_volume, range, value, display)

  return offset + length, value
end

-- Packet Length
nse_nsecm_dropcopy_nnfdc_v3_0.packet_length = {}

-- Size: Packet Length
nse_nsecm_dropcopy_nnfdc_v3_0.packet_length.size = 2

-- Display: Packet Length
nse_nsecm_dropcopy_nnfdc_v3_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nse_nsecm_dropcopy_nnfdc_v3_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
nse_nsecm_dropcopy_nnfdc_v3_0.packet_sequence_number = {}

-- Size: Packet Sequence Number
nse_nsecm_dropcopy_nnfdc_v3_0.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
nse_nsecm_dropcopy_nnfdc_v3_0.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
nse_nsecm_dropcopy_nnfdc_v3_0.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Pan
nse_nsecm_dropcopy_nnfdc_v3_0.pan = {}

-- Size: Pan
nse_nsecm_dropcopy_nnfdc_v3_0.pan.size = 10

-- Display: Pan
nse_nsecm_dropcopy_nnfdc_v3_0.pan.display = function(value)
  return "Pan: "..value
end

-- Dissect: Pan
nse_nsecm_dropcopy_nnfdc_v3_0.pan.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.pan.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.pan.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.pan, range, value, display)

  return offset + length, value
end

-- Participant Type
nse_nsecm_dropcopy_nnfdc_v3_0.participant_type = {}

-- Size: Participant Type
nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.size = 1

-- Display: Participant Type
nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.labels = {
  ["I"] = "Participant Type: Initiator (I)",
  ["C"] = "Participant Type: Competitor Order (C)",
  ["S"] = "Participant Type: Solicitor Order (S)",
}

nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.display = function(value)
  return nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.labels[value] or "Participant Type: Unknown("..value..")"
end

-- Dissect: Participant Type
nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.participant_type, range, value, display)

  return offset + length, value
end

-- Partition Count
nse_nsecm_dropcopy_nnfdc_v3_0.partition_count = {}

-- Size: Partition Count
nse_nsecm_dropcopy_nnfdc_v3_0.partition_count.size = 2

-- Display: Partition Count
nse_nsecm_dropcopy_nnfdc_v3_0.partition_count.display = function(value)
  return "Partition Count: "..value
end

-- Dissect: Partition Count
nse_nsecm_dropcopy_nnfdc_v3_0.partition_count.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.partition_count.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.partition_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.partition_count, range, value, display)

  return offset + length, value
end

-- Partition Id
nse_nsecm_dropcopy_nnfdc_v3_0.partition_id = {}

-- Size: Partition Id
nse_nsecm_dropcopy_nnfdc_v3_0.partition_id.size = 6

-- Display: Partition Id
nse_nsecm_dropcopy_nnfdc_v3_0.partition_id.display = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
nse_nsecm_dropcopy_nnfdc_v3_0.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.partition_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Password
nse_nsecm_dropcopy_nnfdc_v3_0.password = {}

-- Size: Password
nse_nsecm_dropcopy_nnfdc_v3_0.password.size = 8

-- Display: Password
nse_nsecm_dropcopy_nnfdc_v3_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nse_nsecm_dropcopy_nnfdc_v3_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.password, range, value, display)

  return offset + length, value
end

-- Port
nse_nsecm_dropcopy_nnfdc_v3_0.port = {}

-- Size: Port
nse_nsecm_dropcopy_nnfdc_v3_0.port.size = 4

-- Display: Port
nse_nsecm_dropcopy_nnfdc_v3_0.port.display = function(value)
  return "Port: "..value
end

-- Dissect: Port
nse_nsecm_dropcopy_nnfdc_v3_0.port.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.port.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.port.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.port, range, value, display)

  return offset + length, value
end

-- Price
nse_nsecm_dropcopy_nnfdc_v3_0.price = {}

-- Size: Price
nse_nsecm_dropcopy_nnfdc_v3_0.price.size = 4

-- Display: Price
nse_nsecm_dropcopy_nnfdc_v3_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nsecm_dropcopy_nnfdc_v3_0.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
nse_nsecm_dropcopy_nnfdc_v3_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_dropcopy_nnfdc_v3_0.price.translate(raw)
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.price, range, value, display)

  return offset + length, value
end

-- Pro Client Char 1
nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1 = {}

-- Size: Pro Client Char 1
nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.size = 1

-- Display: Pro Client Char 1
nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.display = function(value)
  return "Pro Client Char 1: "..value
end

-- Dissect: Pro Client Char 1
nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.pro_client_char_1, range, value, display)

  return offset + length, value
end

-- Pro Client Short 2
nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2 = {}

-- Size: Pro Client Short 2
nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2.size = 2

-- Display: Pro Client Short 2
nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2.labels = {
  [1] = "Pro Client Short 2: Clients Order (1)",
  [2] = "Pro Client Short 2: Brokers Order (2)",
  [4] = "Pro Client Short 2: Warehousing Order (4)",
}

nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2.display = function(value)
  return nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2.labels[value] or "Pro Client Short 2: Unknown("..value..")"
end

-- Dissect: Pro Client Short 2
nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.pro_client_short_2, range, value, display)

  return offset + length, value
end

-- Reason Code
nse_nsecm_dropcopy_nnfdc_v3_0.reason_code = {}

-- Size: Reason Code
nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.size = 2

-- Display: Reason Code
nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.display = function(value)
  return "Reason Code: "..value
end

-- Dissect: Reason Code
nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Remaining Volume
nse_nsecm_dropcopy_nnfdc_v3_0.remaining_volume = {}

-- Size: Remaining Volume
nse_nsecm_dropcopy_nnfdc_v3_0.remaining_volume.size = 4

-- Display: Remaining Volume
nse_nsecm_dropcopy_nnfdc_v3_0.remaining_volume.display = function(value)
  return "Remaining Volume: "..value
end

-- Dissect: Remaining Volume
nse_nsecm_dropcopy_nnfdc_v3_0.remaining_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.remaining_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.remaining_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.remaining_volume, range, value, display)

  return offset + length, value
end

-- Request Sequence Number
nse_nsecm_dropcopy_nnfdc_v3_0.request_sequence_number = {}

-- Size: Request Sequence Number
nse_nsecm_dropcopy_nnfdc_v3_0.request_sequence_number.size = 8

-- Display: Request Sequence Number
nse_nsecm_dropcopy_nnfdc_v3_0.request_sequence_number.display = function(value)
  return "Request Sequence Number: "..value
end

-- Dissect: Request Sequence Number
nse_nsecm_dropcopy_nnfdc_v3_0.request_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.request_sequence_number.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.request_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.request_sequence_number, range, value, display)

  return offset + length, value
end

-- Reserve
nse_nsecm_dropcopy_nnfdc_v3_0.reserve = {}

-- Size: Reserve
nse_nsecm_dropcopy_nnfdc_v3_0.reserve.size = 1

-- Display: Reserve
nse_nsecm_dropcopy_nnfdc_v3_0.reserve.display = function(value)
  return "Reserve: "..value
end

-- Dissect: Reserve
nse_nsecm_dropcopy_nnfdc_v3_0.reserve.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.reserve.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.reserve.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.reserve, range, value, display)

  return offset + length, value
end

-- Segment Char 1
nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1 = {}

-- Size: Segment Char 1
nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.size = 1

-- Display: Segment Char 1
nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.display = function(value)
  return "Segment Char 1: "..value
end

-- Dissect: Segment Char 1
nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.segment_char_1, range, value, display)

  return offset + length, value
end

-- Segment Short 2
nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2 = {}

-- Size: Segment Short 2
nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2.size = 2

-- Display: Segment Short 2
nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2.labels = {
  [1] = "Segment Short 2: Equity Derivatives Fo (1)",
  [2] = "Segment Short 2: Currency Derivatives (2)",
  [3] = "Segment Short 2: Capital Markets Cash Equity (3)",
  [4] = "Segment Short 2: Slbm Markets (4)",
  [5] = "Segment Short 2: Commodity Derivatives (5)",
}

nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2.display = function(value)
  return nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2.labels[value] or "Segment Short 2: Unknown("..value..")"
end

-- Dissect: Segment Short 2
nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.segment_short_2, range, value, display)

  return offset + length, value
end

-- Sequence Number
nse_nsecm_dropcopy_nnfdc_v3_0.sequence_number = {}

-- Size: Sequence Number
nse_nsecm_dropcopy_nnfdc_v3_0.sequence_number.size = 8

-- Display: Sequence Number
nse_nsecm_dropcopy_nnfdc_v3_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nse_nsecm_dropcopy_nnfdc_v3_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Key
nse_nsecm_dropcopy_nnfdc_v3_0.session_key = {}

-- Size: Session Key
nse_nsecm_dropcopy_nnfdc_v3_0.session_key.size = 8

-- Display: Session Key
nse_nsecm_dropcopy_nnfdc_v3_0.session_key.display = function(value)
  return "Session Key: "..value
end

-- Dissect: Session Key
nse_nsecm_dropcopy_nnfdc_v3_0.session_key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.session_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.session_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.session_key, range, value, display)

  return offset + length, value
end

-- Settlement Type
nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type = {}

-- Size: Settlement Type
nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.size = 1

-- Display: Settlement Type
nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.labels = {
  ["0"] = "Settlement Type: T 0 Settlement (0)",
  ["1"] = "Settlement Type: T 1 Settlement (1)",
  ["2"] = "Settlement Type: T 2 Settlement (2)",
}

nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.display = function(value)
  return nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.labels[value] or "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Settlor
nse_nsecm_dropcopy_nnfdc_v3_0.settlor = {}

-- Size: Settlor
nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size = 12

-- Display: Settlor
nse_nsecm_dropcopy_nnfdc_v3_0.settlor.display = function(value)
  return "Settlor: "..value
end

-- Dissect: Settlor
nse_nsecm_dropcopy_nnfdc_v3_0.settlor.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.settlor, range, value, display)

  return offset + length, value
end

-- Solicitor Period
nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period = {}

-- Size: Solicitor Period
nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.size = 2

-- Display: Solicitor Period
nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.display = function(value)
  return "Solicitor Period: "..value
end

-- Dissect: Solicitor Period
nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.solicitor_period, range, value, display)

  return offset + length, value
end

-- Suspended
nse_nsecm_dropcopy_nnfdc_v3_0.suspended = {}

-- Size: Suspended
nse_nsecm_dropcopy_nnfdc_v3_0.suspended.size = 1

-- Display: Suspended
nse_nsecm_dropcopy_nnfdc_v3_0.suspended.display = function(value)
  return "Suspended: "..value
end

-- Dissect: Suspended
nse_nsecm_dropcopy_nnfdc_v3_0.suspended.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.suspended.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.suspended.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.suspended, range, value, display)

  return offset + length, value
end

-- Token
nse_nsecm_dropcopy_nnfdc_v3_0.token = {}

-- Size: Token
nse_nsecm_dropcopy_nnfdc_v3_0.token.size = 4

-- Display: Token
nse_nsecm_dropcopy_nnfdc_v3_0.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nsecm_dropcopy_nnfdc_v3_0.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.token.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.token, range, value, display)

  return offset + length, value
end

-- Total Vol Remaining
nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining = {}

-- Size: Total Vol Remaining
nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.size = 4

-- Display: Total Vol Remaining
nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.display = function(value)
  return "Total Vol Remaining: "..value
end

-- Dissect: Total Vol Remaining
nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.total_vol_remaining, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nsecm_dropcopy_nnfdc_v3_0.trader_id = {}

-- Size: Trader Id
nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.size = 4

-- Display: Trader Id
nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trader Number
nse_nsecm_dropcopy_nnfdc_v3_0.trader_number = {}

-- Size: Trader Number
nse_nsecm_dropcopy_nnfdc_v3_0.trader_number.size = 4

-- Display: Trader Number
nse_nsecm_dropcopy_nnfdc_v3_0.trader_number.display = function(value)
  return "Trader Number: "..value
end

-- Dissect: Trader Number
nse_nsecm_dropcopy_nnfdc_v3_0.trader_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.trader_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.trader_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.trader_number, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nsecm_dropcopy_nnfdc_v3_0.transaction_code = {}

-- Size: Transaction Code
nse_nsecm_dropcopy_nnfdc_v3_0.transaction_code.size = 2

-- Display: Transaction Code
nse_nsecm_dropcopy_nnfdc_v3_0.transaction_code.labels = {
  [2400] = "Transaction Code: Gr Request Message (2400)",
  [2401] = "Transaction Code: Gr Response Message (2401)",
  [23008] = "Transaction Code: Gr Secure User Registration Request Message (23008)",
  [23009] = "Transaction Code: Gr Secure User Registration Response Message (23009)",
  [23506] = "Transaction Code: Heartbeat Message (23506)",
  [2500] = "Transaction Code: Dc Signon In Message (2500)",
  [2501] = "Transaction Code: Dc Signon Out Message (2501)",
  [8000] = "Transaction Code: Dc Trd Subscription Request Message (8000)",
  [9000] = "Transaction Code: Dc Ont Subscription Request Message (9000)",
  [8006] = "Transaction Code: Dc Error Response Trade Message (8006)",
  [9006] = "Transaction Code: Dc Error Response Order Message (9006)",
  [2222] = "Transaction Code: Trade Confirmation Message (2222)",
  [2282] = "Transaction Code: Trade Cancel Confirm Message (2282)",
  [2286] = "Transaction Code: Trade Cancel Reject Message (2286)",
  [2287] = "Transaction Code: Trade Modify Confirm Message (2287)",
  [2012] = "Transaction Code: Price Confirmation Message (2012)",
  [2042] = "Transaction Code: Order Mod Reject Message (2042)",
  [2072] = "Transaction Code: Order Cancel Reject Message (2072)",
  [2073] = "Transaction Code: Order Confirmation Message (2073)",
  [2074] = "Transaction Code: Order Mod Confirmation Message (2074)",
  [2075] = "Transaction Code: Order Cancel Confirmation Message (2075)",
  [2170] = "Transaction Code: Freeze To Control Message (2170)",
  [2212] = "Transaction Code: On Stop Notification Message (2212)",
  [2231] = "Transaction Code: Order Error Message (2231)",
  [9002] = "Transaction Code: Batch Order Cancel Message (9002)",
}

nse_nsecm_dropcopy_nnfdc_v3_0.transaction_code.display = function(value)
  return nse_nsecm_dropcopy_nnfdc_v3_0.transaction_code.labels[value] or "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nsecm_dropcopy_nnfdc_v3_0.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.transaction_code, range, value, display)

  return offset + length, value
end

-- Trigger Price
nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price = {}

-- Size: Trigger Price
nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.size = 4

-- Display: Trigger Price
nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.display = function(value)
  return "Trigger Price: "..value
end

-- Translate: Trigger Price
nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.translate = function(raw)
  return raw/100
end

-- Dissect: Trigger Price
nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.translate(raw)
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.trigger_price, range, value, display)

  return offset + length, value
end

-- User Id
nse_nsecm_dropcopy_nnfdc_v3_0.user_id = {}

-- Size: User Id
nse_nsecm_dropcopy_nnfdc_v3_0.user_id.size = 4

-- Display: User Id
nse_nsecm_dropcopy_nnfdc_v3_0.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
nse_nsecm_dropcopy_nnfdc_v3_0.user_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.user_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.user_id, range, value, display)

  return offset + length, value
end

-- Volume
nse_nsecm_dropcopy_nnfdc_v3_0.volume = {}

-- Size: Volume
nse_nsecm_dropcopy_nnfdc_v3_0.volume.size = 4

-- Display: Volume
nse_nsecm_dropcopy_nnfdc_v3_0.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nse_nsecm_dropcopy_nnfdc_v3_0.volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_dropcopy_nnfdc_v3_0.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseCm DropCopy NnfDc 3.0
-----------------------------------------------------------------------

-- St Order Flags
nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags = {}

-- Size: St Order Flags
nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size = 2

-- Display: St Order Flags
nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Matched Ind flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Matched Ind"
  end
  -- Is Traded flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Traded"
  end
  -- Is Modified flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Modified"
  end
  -- Is Frozen flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Frozen"
  end
  -- Is Preopen flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Preopen"
  end
  -- Is Stpc flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Stpc"
  end
  -- Is Ato flag set?
  if bit.band(value, 0x0100) ~= 0 then
    flags[#flags + 1] = "Ato"
  end
  -- Is Mkt flag set?
  if bit.band(value, 0x0200) ~= 0 then
    flags[#flags + 1] = "Mkt"
  end
  -- Is On Stop flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "On Stop"
  end
  -- Is Day flag set?
  if bit.band(value, 0x0800) ~= 0 then
    flags[#flags + 1] = "Day"
  end
  -- Is Gtc flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Gtc"
  end
  -- Is Ioc flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Ioc"
  end
  -- Is Aon flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Aon"
  end
  -- Is Mf flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Mf"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: St Order Flags
nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.bits = function(range, value, packet, parent)

  -- Matched Ind: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.matched_ind, range, value)

  -- Traded: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.traded, range, value)

  -- Modified: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.modified, range, value)

  -- Frozen: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.frozen, range, value)

  -- Preopen: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.preopen, range, value)

  -- Order Flags Reserved 5: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_flags_reserved_5, range, value)

  -- Stpc: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.stpc, range, value)

  -- Order Flags Reserved 7: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_flags_reserved_7, range, value)

  -- Ato: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.ato, range, value)

  -- Mkt: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.mkt, range, value)

  -- On Stop: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.on_stop, range, value)

  -- Day: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.day, range, value)

  -- Gtc: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.gtc, range, value)

  -- Ioc: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.ioc, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.aon, range, value)

  -- Mf: 1 Bit
  parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.mf, range, value)
end

-- Dissect: St Order Flags
nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.st_order_flags, range, display)

  if show.structs then
    nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Batch Order Cancel Message
nse_nsecm_dropcopy_nnfdc_v3_0.batch_order_cancel_message = {}

-- Size: Batch Order Cancel Message
nse_nsecm_dropcopy_nnfdc_v3_0.batch_order_cancel_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size

-- Display: Batch Order Cancel Message
nse_nsecm_dropcopy_nnfdc_v3_0.batch_order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Batch Order Cancel Message
nse_nsecm_dropcopy_nnfdc_v3_0.batch_order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecm_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsecm_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecm_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Settlement Type: CHAR
  index, settlement_type = nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Batch Order Cancel Message
nse_nsecm_dropcopy_nnfdc_v3_0.batch_order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.batch_order_cancel_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.batch_order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.batch_order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.batch_order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Error Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_error_message = {}

-- Size: Order Error Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_error_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size

-- Display: Order Error Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Error Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecm_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsecm_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecm_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Settlement Type: CHAR
  index, settlement_type = nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Error Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_error_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.order_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.order_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.order_error_message.fields(buffer, offset, packet, parent)
  end
end

-- On Stop Notification Message
nse_nsecm_dropcopy_nnfdc_v3_0.on_stop_notification_message = {}

-- Size: On Stop Notification Message
nse_nsecm_dropcopy_nnfdc_v3_0.on_stop_notification_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size

-- Display: On Stop Notification Message
nse_nsecm_dropcopy_nnfdc_v3_0.on_stop_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: On Stop Notification Message
nse_nsecm_dropcopy_nnfdc_v3_0.on_stop_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecm_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsecm_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecm_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Settlement Type: CHAR
  index, settlement_type = nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: On Stop Notification Message
nse_nsecm_dropcopy_nnfdc_v3_0.on_stop_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.on_stop_notification_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.on_stop_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.on_stop_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.on_stop_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Freeze To Control Message
nse_nsecm_dropcopy_nnfdc_v3_0.freeze_to_control_message = {}

-- Size: Freeze To Control Message
nse_nsecm_dropcopy_nnfdc_v3_0.freeze_to_control_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size

-- Display: Freeze To Control Message
nse_nsecm_dropcopy_nnfdc_v3_0.freeze_to_control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Freeze To Control Message
nse_nsecm_dropcopy_nnfdc_v3_0.freeze_to_control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecm_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsecm_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecm_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Settlement Type: CHAR
  index, settlement_type = nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Freeze To Control Message
nse_nsecm_dropcopy_nnfdc_v3_0.freeze_to_control_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.freeze_to_control_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.freeze_to_control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.freeze_to_control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.freeze_to_control_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message = {}

-- Size: Order Cancel Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size

-- Display: Order Cancel Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecm_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsecm_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecm_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Settlement Type: CHAR
  index, settlement_type = nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_cancel_confirmation_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mod Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_confirmation_message = {}

-- Size: Order Mod Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size

-- Display: Order Mod Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mod Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecm_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsecm_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecm_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Settlement Type: CHAR
  index, settlement_type = nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mod Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_mod_confirmation_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_confirmation_message = {}

-- Size: Order Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_confirmation_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size

-- Display: Order Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecm_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsecm_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecm_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Settlement Type: CHAR
  index, settlement_type = nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_confirmation_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.order_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.order_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.order_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Reject Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_reject_message = {}

-- Size: Order Cancel Reject Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_reject_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size

-- Display: Order Cancel Reject Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecm_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsecm_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecm_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Settlement Type: CHAR
  index, settlement_type = nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mod Reject Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_reject_message = {}

-- Size: Order Mod Reject Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_reject_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size

-- Display: Order Mod Reject Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mod Reject Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecm_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsecm_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecm_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Settlement Type: CHAR
  index, settlement_type = nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mod Reject Message
nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.order_mod_reject_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.price_confirmation_message = {}

-- Size: Price Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.price_confirmation_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size

-- Display: Price Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.price_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.price_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsecm_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecm_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsecm_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecm_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsecm_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsecm_dropcopy_nnfdc_v3_0.solicitor_period.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_dropcopy_nnfdc_v3_0.auction_number.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsecm_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Settlement Type: CHAR
  index, settlement_type = nse_nsecm_dropcopy_nnfdc_v3_0.settlement_type.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.price_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.price_confirmation_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.price_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.price_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.price_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Modify Confirm Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_modify_confirm_message = {}

-- Size: Trade Modify Confirm Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trader_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.original_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.remaining_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.fill_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.fill_qty.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.fill_price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.broker_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size

-- Display: Trade Modify Confirm Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Modify Confirm Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Trader Number: INT
  index, trader_number = nse_nsecm_dropcopy_nnfdc_v3_0.trader_number.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Volume: INT
  index, original_volume = nse_nsecm_dropcopy_nnfdc_v3_0.original_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume: INT
  index, remaining_volume = nse_nsecm_dropcopy_nnfdc_v3_0.remaining_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecm_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Fill Number: INT
  index, fill_number = nse_nsecm_dropcopy_nnfdc_v3_0.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: INT
  index, fill_qty = nse_nsecm_dropcopy_nnfdc_v3_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: INT
  index, fill_price = nse_nsecm_dropcopy_nnfdc_v3_0.fill_price.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecm_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Pro Client Short 2: SHORT
  index, pro_client_short_2 = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Segment Short 2: SHORT
  index, segment_short_2 = nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_dropcopy_nnfdc_v3_0.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Modify Confirm Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.trade_modify_confirm_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Reject Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_reject_message = {}

-- Size: Trade Cancel Reject Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trader_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.original_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.remaining_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.fill_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.fill_qty.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.fill_price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.broker_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size

-- Display: Trade Cancel Reject Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Reject Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Trader Number: INT
  index, trader_number = nse_nsecm_dropcopy_nnfdc_v3_0.trader_number.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Volume: INT
  index, original_volume = nse_nsecm_dropcopy_nnfdc_v3_0.original_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume: INT
  index, remaining_volume = nse_nsecm_dropcopy_nnfdc_v3_0.remaining_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecm_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Fill Number: INT
  index, fill_number = nse_nsecm_dropcopy_nnfdc_v3_0.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: INT
  index, fill_qty = nse_nsecm_dropcopy_nnfdc_v3_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: INT
  index, fill_price = nse_nsecm_dropcopy_nnfdc_v3_0.fill_price.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecm_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Pro Client Short 2: SHORT
  index, pro_client_short_2 = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Segment Short 2: SHORT
  index, segment_short_2 = nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_dropcopy_nnfdc_v3_0.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Reject Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.trade_cancel_reject_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Confirm Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message = {}

-- Size: Trade Cancel Confirm Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trader_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.original_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.remaining_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.fill_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.fill_qty.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.fill_price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.broker_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size

-- Display: Trade Cancel Confirm Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Confirm Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Trader Number: INT
  index, trader_number = nse_nsecm_dropcopy_nnfdc_v3_0.trader_number.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Volume: INT
  index, original_volume = nse_nsecm_dropcopy_nnfdc_v3_0.original_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume: INT
  index, remaining_volume = nse_nsecm_dropcopy_nnfdc_v3_0.remaining_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecm_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Fill Number: INT
  index, fill_number = nse_nsecm_dropcopy_nnfdc_v3_0.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: INT
  index, fill_qty = nse_nsecm_dropcopy_nnfdc_v3_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: INT
  index, fill_price = nse_nsecm_dropcopy_nnfdc_v3_0.fill_price.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecm_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Pro Client Short 2: SHORT
  index, pro_client_short_2 = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Segment Short 2: SHORT
  index, segment_short_2 = nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_dropcopy_nnfdc_v3_0.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Confirm Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.trade_cancel_confirm_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_confirmation_message = {}

-- Size: Trade Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_confirmation_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trader_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.original_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.remaining_volume.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.fill_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.fill_qty.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.fill_price.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.broker_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.settlor.size

-- Display: Trade Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Trader Number: INT
  index, trader_number = nse_nsecm_dropcopy_nnfdc_v3_0.trader_number.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Volume: INT
  index, original_volume = nse_nsecm_dropcopy_nnfdc_v3_0.original_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume: INT
  index, remaining_volume = nse_nsecm_dropcopy_nnfdc_v3_0.remaining_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsecm_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecm_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Fill Number: INT
  index, fill_number = nse_nsecm_dropcopy_nnfdc_v3_0.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: INT
  index, fill_qty = nse_nsecm_dropcopy_nnfdc_v3_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: INT
  index, fill_price = nse_nsecm_dropcopy_nnfdc_v3_0.fill_price.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecm_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Pro Client Short 2: SHORT
  index, pro_client_short_2 = nse_nsecm_dropcopy_nnfdc_v3_0.pro_client_short_2.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsecm_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsecm_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Segment Short 2: SHORT
  index, segment_short_2 = nse_nsecm_dropcopy_nnfdc_v3_0.segment_short_2.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_dropcopy_nnfdc_v3_0.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Confirmation Message
nse_nsecm_dropcopy_nnfdc_v3_0.trade_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.trade_confirmation_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.trade_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.trade_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.trade_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Error Response Order Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_order_message = {}

-- Size: Dc Error Response Order Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_order_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.error_message.size

-- Display: Dc Error Response Order Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Error Response Order Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Error Message: CHAR
  index, error_message = nse_nsecm_dropcopy_nnfdc_v3_0.error_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Error Response Order Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.dc_error_response_order_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Error Response Trade Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_trade_message = {}

-- Size: Dc Error Response Trade Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.error_message.size

-- Display: Dc Error Response Trade Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Error Response Trade Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Error Message: CHAR
  index, error_message = nse_nsecm_dropcopy_nnfdc_v3_0.error_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Error Response Trade Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.dc_error_response_trade_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Signon Out Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_out_message = {}

-- Size: Dc Signon Out Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_out_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.user_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.partition_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.concurrent_login_id.size

-- Display: Dc Signon Out Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Signon Out Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: INT
  index, user_id = nse_nsecm_dropcopy_nnfdc_v3_0.user_id.dissect(buffer, index, packet, parent)

  -- Partition Id: CHAR
  index, partition_id = nse_nsecm_dropcopy_nnfdc_v3_0.partition_id.dissect(buffer, index, packet, parent)

  -- Concurrent Login Id: SHORT
  index, concurrent_login_id = nse_nsecm_dropcopy_nnfdc_v3_0.concurrent_login_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Signon Out Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.dc_signon_out_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Gr Secure User Registration Response Message
nse_nsecm_dropcopy_nnfdc_v3_0.gr_secure_user_registration_response_message = {}

-- Display: Gr Secure User Registration Response Message
nse_nsecm_dropcopy_nnfdc_v3_0.gr_secure_user_registration_response_message.display = function(packet, parent, length)
  return "Gr Secure User Registration Response Message"
end


-- Dissect: Gr Secure User Registration Response Message
nse_nsecm_dropcopy_nnfdc_v3_0.gr_secure_user_registration_response_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.gr_secure_user_registration_response_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Ip Details Partition Wise
nse_nsecm_dropcopy_nnfdc_v3_0.ip_details_partition_wise = {}

-- Size: Ip Details Partition Wise
nse_nsecm_dropcopy_nnfdc_v3_0.ip_details_partition_wise.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.ip_address.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.port.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.partition_id.size

-- Display: Ip Details Partition Wise
nse_nsecm_dropcopy_nnfdc_v3_0.ip_details_partition_wise.display = function(packet, parent, value, length)
  -- Check if struct has text
  if value == nil or value == '' then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Ip Details Partition Wise
nse_nsecm_dropcopy_nnfdc_v3_0.ip_details_partition_wise.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ip Address: CHAR
  index, ip_address = nse_nsecm_dropcopy_nnfdc_v3_0.ip_address.dissect(buffer, index, packet, parent)

  -- Port: INT
  index, port = nse_nsecm_dropcopy_nnfdc_v3_0.port.dissect(buffer, index, packet, parent)

  -- Partition Id: CHAR
  index, partition_id = nse_nsecm_dropcopy_nnfdc_v3_0.partition_id.dissect(buffer, index, packet, parent)

  -- Struct text: the bytes the fields covered, trimmed at the first null
  local ip_details_partition_wise = ''
  if index > offset then
    local text = buffer(offset, index - offset)
    local tail = buffer(index - 1, 1):uint()
    if tail == 0 then
      ip_details_partition_wise = text:stringz()
    else
      ip_details_partition_wise = text:string()
    end
  end

  return index, ip_details_partition_wise
end

-- Dissect: Ip Details Partition Wise
nse_nsecm_dropcopy_nnfdc_v3_0.ip_details_partition_wise.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.ip_details_partition_wise, buffer(offset, 0))
    local index, value = nse_nsecm_dropcopy_nnfdc_v3_0.ip_details_partition_wise.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.ip_details_partition_wise.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.ip_details_partition_wise.fields(buffer, offset, packet, parent)
  end
end

-- Gr Response Message
nse_nsecm_dropcopy_nnfdc_v3_0.gr_response_message = {}

-- Size: Gr Response Message
nse_nsecm_dropcopy_nnfdc_v3_0.gr_response_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.message_indicator.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.partition_count.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.ip_details_partition_wise.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.session_key.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_key.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_iv.size

-- Display: Gr Response Message
nse_nsecm_dropcopy_nnfdc_v3_0.gr_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gr Response Message
nse_nsecm_dropcopy_nnfdc_v3_0.gr_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Indicator: SHORT
  index, message_indicator = nse_nsecm_dropcopy_nnfdc_v3_0.message_indicator.dissect(buffer, index, packet, parent)

  -- Partition Count: SHORT
  index, partition_count = nse_nsecm_dropcopy_nnfdc_v3_0.partition_count.dissect(buffer, index, packet, parent)

  -- Ip Details Partition Wise: Struct of 3 fields
  index, ip_details_partition_wise = nse_nsecm_dropcopy_nnfdc_v3_0.ip_details_partition_wise.dissect(buffer, index, packet, parent)

  -- Session Key: CHAR
  index, session_key = nse_nsecm_dropcopy_nnfdc_v3_0.session_key.dissect(buffer, index, packet, parent)

  -- Cryptographic Key: CHAR
  index, cryptographic_key = nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_key.dissect(buffer, index, packet, parent)

  -- Cryptographic Iv: CHAR
  index, cryptographic_iv = nse_nsecm_dropcopy_nnfdc_v3_0.cryptographic_iv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gr Response Message
nse_nsecm_dropcopy_nnfdc_v3_0.gr_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.gr_response_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.gr_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.gr_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.gr_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Server Message Payload
nse_nsecm_dropcopy_nnfdc_v3_0.server_message_payload = {}

-- Dispatch: Server Message Payload
nse_nsecm_dropcopy_nnfdc_v3_0.server_message_payload.dispatch = {
  [2401] = nse_nsecm_dropcopy_nnfdc_v3_0.gr_response_message.dissect,
  [23009] = nse_nsecm_dropcopy_nnfdc_v3_0.gr_secure_user_registration_response_message.dissect,
  [2501] = nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_out_message.dissect,
  [8006] = nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.dissect,
  [9006] = nse_nsecm_dropcopy_nnfdc_v3_0.dc_error_response_order_message.dissect,
  [2222] = nse_nsecm_dropcopy_nnfdc_v3_0.trade_confirmation_message.dissect,
  [2282] = nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.dissect,
  [2286] = nse_nsecm_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.dissect,
  [2287] = nse_nsecm_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.dissect,
  [2012] = nse_nsecm_dropcopy_nnfdc_v3_0.price_confirmation_message.dissect,
  [2042] = nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_reject_message.dissect,
  [2072] = nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_reject_message.dissect,
  [2073] = nse_nsecm_dropcopy_nnfdc_v3_0.order_confirmation_message.dissect,
  [2074] = nse_nsecm_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.dissect,
  [2075] = nse_nsecm_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.dissect,
  [2170] = nse_nsecm_dropcopy_nnfdc_v3_0.freeze_to_control_message.dissect,
  [2212] = nse_nsecm_dropcopy_nnfdc_v3_0.on_stop_notification_message.dissect,
  [2231] = nse_nsecm_dropcopy_nnfdc_v3_0.order_error_message.dissect,
  [9002] = nse_nsecm_dropcopy_nnfdc_v3_0.batch_order_cancel_message.dissect,
}

-- Dissect: Server Message Payload
nse_nsecm_dropcopy_nnfdc_v3_0.server_message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nsecm_dropcopy_nnfdc_v3_0.server_message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nse_nsecm_dropcopy_nnfdc_v3_0.message_header = {}

-- Size: Message Header
nse_nsecm_dropcopy_nnfdc_v3_0.message_header.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.transaction_code.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.error_code.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.sequence_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.message_length.size

-- Display: Message Header
nse_nsecm_dropcopy_nnfdc_v3_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nse_nsecm_dropcopy_nnfdc_v3_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsecm_dropcopy_nnfdc_v3_0.transaction_code.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nsecm_dropcopy_nnfdc_v3_0.error_code.dissect(buffer, index, packet, parent)

  -- Sequence Number: LONG LONG
  index, sequence_number = nse_nsecm_dropcopy_nnfdc_v3_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Length: SHORT
  index, message_length = nse_nsecm_dropcopy_nnfdc_v3_0.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nse_nsecm_dropcopy_nnfdc_v3_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.message_header, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Message
nse_nsecm_dropcopy_nnfdc_v3_0.server_message = {}

-- Display: Server Message
nse_nsecm_dropcopy_nnfdc_v3_0.server_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Message
nse_nsecm_dropcopy_nnfdc_v3_0.server_message.fields = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset

  -- Message Header: Struct of 4 fields
  index, message_header = nse_nsecm_dropcopy_nnfdc_v3_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 14, 2):int()

  -- Server Message Payload: Runtime Type with 19 branches
  index = nse_nsecm_dropcopy_nnfdc_v3_0.server_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Server Message
nse_nsecm_dropcopy_nnfdc_v3_0.server_message.dissect = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset + size_of_server_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.server_message, buffer(offset, 0))
    local current = nse_nsecm_dropcopy_nnfdc_v3_0.server_message.fields(buffer, offset, packet, parent, size_of_server_message)
    parent:set_len(size_of_server_message)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.server_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsecm_dropcopy_nnfdc_v3_0.server_message.fields(buffer, offset, packet, parent, size_of_server_message)

    return index
  end
end

-- Message Buffer
nse_nsecm_dropcopy_nnfdc_v3_0.message_buffer = {}

-- Size: Message Buffer
nse_nsecm_dropcopy_nnfdc_v3_0.message_buffer.size = function(buffer, offset)
  return buffer:len() - offset
end

-- Display: Message Buffer
nse_nsecm_dropcopy_nnfdc_v3_0.message_buffer.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Buffer
nse_nsecm_dropcopy_nnfdc_v3_0.message_buffer.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency for Server Message
  local end_of_payload = buffer:len()

  -- Server Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index + 12, 2):int()

    -- Runtime Size Of: Server Message
    index, server_message = nse_nsecm_dropcopy_nnfdc_v3_0.server_message.dissect(buffer, index, packet, parent, message_length)
  end

  return index
end

-- Dissect: Message Buffer
nse_nsecm_dropcopy_nnfdc_v3_0.message_buffer.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.message_buffer, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.message_buffer.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.message_buffer.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.message_buffer.fields(buffer, offset, packet, parent)
  end
end

-- Response Message Header
nse_nsecm_dropcopy_nnfdc_v3_0.response_message_header = {}

-- Size: Response Message Header
nse_nsecm_dropcopy_nnfdc_v3_0.response_message_header.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.environment_type.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.compression_indicator.size

-- Display: Response Message Header
nse_nsecm_dropcopy_nnfdc_v3_0.response_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Response Message Header
nse_nsecm_dropcopy_nnfdc_v3_0.response_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Environment Type: CHAR
  index, environment_type = nse_nsecm_dropcopy_nnfdc_v3_0.environment_type.dissect(buffer, index, packet, parent)

  -- Compression Indicator: CHAR
  index, compression_indicator = nse_nsecm_dropcopy_nnfdc_v3_0.compression_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Response Message Header
nse_nsecm_dropcopy_nnfdc_v3_0.response_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.response_message_header, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.response_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.response_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.response_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nse_nsecm_dropcopy_nnfdc_v3_0.packet_header = {}

-- Size: Packet Header
nse_nsecm_dropcopy_nnfdc_v3_0.packet_header.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.packet_length.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.packet_sequence_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.checksum.size

-- Display: Packet Header
nse_nsecm_dropcopy_nnfdc_v3_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nse_nsecm_dropcopy_nnfdc_v3_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nse_nsecm_dropcopy_nnfdc_v3_0.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = nse_nsecm_dropcopy_nnfdc_v3_0.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Checksum: 16 Byte
  index, checksum = nse_nsecm_dropcopy_nnfdc_v3_0.checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nse_nsecm_dropcopy_nnfdc_v3_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.packet_header, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Drop Copy Packet
nse_nsecm_dropcopy_nnfdc_v3_0.server_drop_copy_packet = {}

-- Display: Server Drop Copy Packet
nse_nsecm_dropcopy_nnfdc_v3_0.server_drop_copy_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Drop Copy Packet
nse_nsecm_dropcopy_nnfdc_v3_0.server_drop_copy_packet.fields = function(buffer, offset, packet, parent, size_of_server_drop_copy_packet)
  local index = offset

  -- Packet Header: Struct of 3 fields
  index, packet_header = nse_nsecm_dropcopy_nnfdc_v3_0.packet_header.dissect(buffer, index, packet, parent)

  -- Response Message Header: Struct of 2 fields
  index, response_message_header = nse_nsecm_dropcopy_nnfdc_v3_0.response_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Compression Indicator
  local compression_indicator = buffer(index - 1, 1):string()

  local message_buffer_conversion = compression_indicator == "1"

  if message_buffer_conversion then
    local compressed = buffer(index, buffer:len() - index):bytes()
    buffer = lz4_decompress(compressed, 4096):tvb("Decompressed")
    index = 0
  end

  -- Message Buffer: Struct of 1 fields
  index, message_buffer = nse_nsecm_dropcopy_nnfdc_v3_0.message_buffer.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Drop Copy Packet
nse_nsecm_dropcopy_nnfdc_v3_0.server_drop_copy_packet.dissect = function(buffer, offset, packet, parent, size_of_server_drop_copy_packet)
  local index = offset + size_of_server_drop_copy_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.server_drop_copy_packet, buffer(offset, 0))
    local current = nse_nsecm_dropcopy_nnfdc_v3_0.server_drop_copy_packet.fields(buffer, offset, packet, parent, size_of_server_drop_copy_packet)
    parent:set_len(size_of_server_drop_copy_packet)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.server_drop_copy_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsecm_dropcopy_nnfdc_v3_0.server_drop_copy_packet.fields(buffer, offset, packet, parent, size_of_server_drop_copy_packet)

    return index
  end
end

-- Remaining Bytes For: Server Drop Copy Packet
local server_drop_copy_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nsecm_dropcopy_nnfdc_v3_0.packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
nse_nsecm_dropcopy_nnfdc_v3_0.server_packet = {}

-- Verify required size of Tcp packet
nse_nsecm_dropcopy_nnfdc_v3_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsecm_dropcopy_nnfdc_v3_0.packet_header.size + nse_nsecm_dropcopy_nnfdc_v3_0.response_message_header.size + nse_nsecm_dropcopy_nnfdc_v3_0.message_header.size
end

-- Dissect Server Packet
nse_nsecm_dropcopy_nnfdc_v3_0.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Drop Copy Packet
  local end_of_payload = buffer:len()

  -- Server Drop Copy Packet: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_drop_copy_packet = server_drop_copy_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_drop_copy_packet):tvb()
      index = nse_nsecm_dropcopy_nnfdc_v3_0.server_drop_copy_packet.dissect(frame, index, packet, parent, size_of_server_drop_copy_packet)
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

-- Dc Ont Subscription Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message = {}

-- Size: Dc Ont Subscription Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.sequence_number.size

-- Display: Dc Ont Subscription Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Ont Subscription Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: LONG LONG
  index, sequence_number = nse_nsecm_dropcopy_nnfdc_v3_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Ont Subscription Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.dc_ont_subscription_request_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Trd Subscription Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message = {}

-- Size: Dc Trd Subscription Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.sequence_number.size

-- Display: Dc Trd Subscription Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Trd Subscription Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: LONG LONG
  index, sequence_number = nse_nsecm_dropcopy_nnfdc_v3_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Trd Subscription Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.dc_trd_subscription_request_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Signon In Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_in_message = {}

-- Size: Dc Signon In Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_in_message.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.password.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.session_key.size

-- Display: Dc Signon In Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Signon In Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Password: CHAR
  index, password = nse_nsecm_dropcopy_nnfdc_v3_0.password.dissect(buffer, index, packet, parent)

  -- Session Key: CHAR
  index, session_key = nse_nsecm_dropcopy_nnfdc_v3_0.session_key.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Signon In Message
nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.dc_signon_in_message, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
nse_nsecm_dropcopy_nnfdc_v3_0.heartbeat_message = {}

-- Display: Heartbeat Message
nse_nsecm_dropcopy_nnfdc_v3_0.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
nse_nsecm_dropcopy_nnfdc_v3_0.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Gr Secure User Registration Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.gr_secure_user_registration_request_message = {}

-- Display: Gr Secure User Registration Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.gr_secure_user_registration_request_message.display = function(packet, parent, length)
  return "Gr Secure User Registration Request Message"
end


-- Dissect: Gr Secure User Registration Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.gr_secure_user_registration_request_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.gr_secure_user_registration_request_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Gr Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.gr_request_message = {}

-- Display: Gr Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.gr_request_message.display = function(packet, parent, length)
  return "Gr Request Message"
end


-- Dissect: Gr Request Message
nse_nsecm_dropcopy_nnfdc_v3_0.gr_request_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nsecm_dropcopy_nnfdc_v3_0.gr_request_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Message Payload
nse_nsecm_dropcopy_nnfdc_v3_0.client_message_payload = {}

-- Dispatch: Client Message Payload
nse_nsecm_dropcopy_nnfdc_v3_0.client_message_payload.dispatch = {
  [2400] = nse_nsecm_dropcopy_nnfdc_v3_0.gr_request_message.dissect,
  [23008] = nse_nsecm_dropcopy_nnfdc_v3_0.gr_secure_user_registration_request_message.dissect,
  [23506] = nse_nsecm_dropcopy_nnfdc_v3_0.heartbeat_message.dissect,
  [2500] = nse_nsecm_dropcopy_nnfdc_v3_0.dc_signon_in_message.dissect,
  [8000] = nse_nsecm_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.dissect,
  [9000] = nse_nsecm_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.dissect,
}

-- Dissect: Client Message Payload
nse_nsecm_dropcopy_nnfdc_v3_0.client_message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nsecm_dropcopy_nnfdc_v3_0.client_message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Request Message Header
nse_nsecm_dropcopy_nnfdc_v3_0.request_message_header = {}

-- Size: Request Message Header
nse_nsecm_dropcopy_nnfdc_v3_0.request_message_header.size =
  nse_nsecm_dropcopy_nnfdc_v3_0.transaction_code.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.request_sequence_number.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.partition_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.concurrent_login_id.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.func_indc.size + 
  nse_nsecm_dropcopy_nnfdc_v3_0.reserve.size

-- Display: Request Message Header
nse_nsecm_dropcopy_nnfdc_v3_0.request_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Message Header
nse_nsecm_dropcopy_nnfdc_v3_0.request_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsecm_dropcopy_nnfdc_v3_0.transaction_code.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsecm_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Request Sequence Number: LONG
  index, request_sequence_number = nse_nsecm_dropcopy_nnfdc_v3_0.request_sequence_number.dissect(buffer, index, packet, parent)

  -- Partition Id: CHAR
  index, partition_id = nse_nsecm_dropcopy_nnfdc_v3_0.partition_id.dissect(buffer, index, packet, parent)

  -- Concurrent Login Id: SHORT
  index, concurrent_login_id = nse_nsecm_dropcopy_nnfdc_v3_0.concurrent_login_id.dissect(buffer, index, packet, parent)

  -- Func Indc: CHAR
  index, func_indc = nse_nsecm_dropcopy_nnfdc_v3_0.func_indc.dissect(buffer, index, packet, parent)

  -- Reserve: CHAR
  index, reserve = nse_nsecm_dropcopy_nnfdc_v3_0.reserve.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Message Header
nse_nsecm_dropcopy_nnfdc_v3_0.request_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.request_message_header, buffer(offset, 0))
    local index = nse_nsecm_dropcopy_nnfdc_v3_0.request_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.request_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_dropcopy_nnfdc_v3_0.request_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Drop Copy Packet
nse_nsecm_dropcopy_nnfdc_v3_0.client_drop_copy_packet = {}

-- Display: Client Drop Copy Packet
nse_nsecm_dropcopy_nnfdc_v3_0.client_drop_copy_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Drop Copy Packet
nse_nsecm_dropcopy_nnfdc_v3_0.client_drop_copy_packet.fields = function(buffer, offset, packet, parent, size_of_client_drop_copy_packet)
  local index = offset

  -- Packet Header: Struct of 3 fields
  index, packet_header = nse_nsecm_dropcopy_nnfdc_v3_0.packet_header.dissect(buffer, index, packet, parent)

  -- Request Message Header: Struct of 7 fields
  index, request_message_header = nse_nsecm_dropcopy_nnfdc_v3_0.request_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 24, 2):int()

  -- Client Message Payload: Runtime Type with 6 branches
  index = nse_nsecm_dropcopy_nnfdc_v3_0.client_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Client Drop Copy Packet
nse_nsecm_dropcopy_nnfdc_v3_0.client_drop_copy_packet.dissect = function(buffer, offset, packet, parent, size_of_client_drop_copy_packet)
  local index = offset + size_of_client_drop_copy_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0.fields.client_drop_copy_packet, buffer(offset, 0))
    local current = nse_nsecm_dropcopy_nnfdc_v3_0.client_drop_copy_packet.fields(buffer, offset, packet, parent, size_of_client_drop_copy_packet)
    parent:set_len(size_of_client_drop_copy_packet)
    local display = nse_nsecm_dropcopy_nnfdc_v3_0.client_drop_copy_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsecm_dropcopy_nnfdc_v3_0.client_drop_copy_packet.fields(buffer, offset, packet, parent, size_of_client_drop_copy_packet)

    return index
  end
end

-- Remaining Bytes For: Client Drop Copy Packet
local client_drop_copy_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nsecm_dropcopy_nnfdc_v3_0.packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
nse_nsecm_dropcopy_nnfdc_v3_0.client_packet = {}

-- Verify required size of Tcp packet
nse_nsecm_dropcopy_nnfdc_v3_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsecm_dropcopy_nnfdc_v3_0.packet_header.size + nse_nsecm_dropcopy_nnfdc_v3_0.request_message_header.size
end

-- Dissect Client Packet
nse_nsecm_dropcopy_nnfdc_v3_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Drop Copy Packet
  local end_of_payload = buffer:len()

  -- Client Drop Copy Packet: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_drop_copy_packet = client_drop_copy_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_drop_copy_packet):tvb()
      index = nse_nsecm_dropcopy_nnfdc_v3_0.client_drop_copy_packet.dissect(frame, index, packet, parent, size_of_client_drop_copy_packet)
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
function omi_nse_nsecm_dropcopy_nnfdc_v3_0.init()
end

-- Connection roles for Nse NseCm DropCopy NnfDc 3.0: Client is the initiator, Server is the acceptor
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
nse_nsecm_dropcopy_nnfdc_v3_0.role = function(packet)
  if omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.acceptor_port

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

  if omi_nse_nsecm_dropcopy_nnfdc_v3_0.prefs.swap_sides then
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
nse_nsecm_dropcopy_nnfdc_v3_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nse NseCm DropCopy NnfDc 3.0
function omi_nse_nsecm_dropcopy_nnfdc_v3_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nsecm_dropcopy_nnfdc_v3_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nsecm_dropcopy_nnfdc_v3_0, buffer(), omi_nse_nsecm_dropcopy_nnfdc_v3_0.description, "("..buffer:len().." Bytes)")
  local role = nse_nsecm_dropcopy_nnfdc_v3_0.role(packet)

  if role == "initiator" then
    return nse_nsecm_dropcopy_nnfdc_v3_0.client_packet.dissect(buffer, packet, protocol)
  end

  return nse_nsecm_dropcopy_nnfdc_v3_0.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nse_nsecm_dropcopy_nnfdc_v3_0.client_packet.fingerprint = function(buffer)
  if buffer:len() < 24 then
    return false
  end

  local transaction_code = buffer(22, 2):int()

  -- Gr Request Message
  if transaction_code == 2400 then
    return true
  end

  -- Gr Secure User Registration Request Message
  if transaction_code == 23008 then
    return true
  end

  -- Heartbeat Message
  if transaction_code == 23506 then
    return true
  end

  -- Dc Signon In Message
  if transaction_code == 2500 then
    return true
  end

  -- Dc Trd Subscription Request Message
  if transaction_code == 8000 then
    return true
  end

  -- Dc Ont Subscription Request Message
  if transaction_code == 9000 then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nse_nsecm_dropcopy_nnfdc_v3_0.server_packet.fingerprint = function(buffer)
  if buffer:len() < 26 then
    return false
  end

  local transaction_code = buffer(24, 2):int()

  -- Gr Response Message
  if transaction_code == 2401 then
    return true
  end

  -- Gr Secure User Registration Response Message
  if transaction_code == 23009 then
    return true
  end

  -- Dc Signon Out Message
  if transaction_code == 2501 then
    return true
  end

  -- Dc Error Response Trade Message
  if transaction_code == 8006 then
    return true
  end

  -- Dc Error Response Order Message
  if transaction_code == 9006 then
    return true
  end

  -- Trade Confirmation Message
  if transaction_code == 2222 then
    return true
  end

  -- Trade Cancel Confirm Message
  if transaction_code == 2282 then
    return true
  end

  -- Trade Cancel Reject Message
  if transaction_code == 2286 then
    return true
  end

  -- Trade Modify Confirm Message
  if transaction_code == 2287 then
    return true
  end

  -- Price Confirmation Message
  if transaction_code == 2012 then
    return true
  end

  -- Order Mod Reject Message
  if transaction_code == 2042 then
    return true
  end

  -- Order Cancel Reject Message
  if transaction_code == 2072 then
    return true
  end

  -- Order Confirmation Message
  if transaction_code == 2073 then
    return true
  end

  -- Order Mod Confirmation Message
  if transaction_code == 2074 then
    return true
  end

  -- Order Cancel Confirmation Message
  if transaction_code == 2075 then
    return true
  end

  -- Freeze To Control Message
  if transaction_code == 2170 then
    return true
  end

  -- On Stop Notification Message
  if transaction_code == 2212 then
    return true
  end

  -- Order Error Message
  if transaction_code == 2231 then
    return true
  end

  -- Batch Order Cancel Message
  if transaction_code == 9002 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseCm DropCopy NnfDc 3.0 (Tcp)
local function omi_nse_nsecm_dropcopy_nnfdc_v3_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsecm_dropcopy_nnfdc_v3_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nse_nsecm_dropcopy_nnfdc_v3_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsecm_dropcopy_nnfdc_v3_0
  omi_nse_nsecm_dropcopy_nnfdc_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseCm DropCopy NnfDc 3.0 (Tcp)
local function omi_nse_nsecm_dropcopy_nnfdc_v3_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsecm_dropcopy_nnfdc_v3_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nse_nsecm_dropcopy_nnfdc_v3_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsecm_dropcopy_nnfdc_v3_0
  omi_nse_nsecm_dropcopy_nnfdc_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseCm DropCopy NnfDc 3.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_nse_nsecm_dropcopy_nnfdc_v3_0_tcp_heuristic(buffer, packet, parent)
  local role = nse_nsecm_dropcopy_nnfdc_v3_0.role(packet)
  local initiator = omi_nse_nsecm_dropcopy_nnfdc_v3_0_tcp_initiator_heuristic
  local acceptor = omi_nse_nsecm_dropcopy_nnfdc_v3_0_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nse_nsecm_dropcopy_nnfdc_v3_0.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nse_nsecm_dropcopy_nnfdc_v3_0.swap(packet)

  return false
end

-- Register Heuristics for Nse NseCm DropCopy NnfDc 3.0
omi_nse_nsecm_dropcopy_nnfdc_v3_0:register_heuristic("tcp", omi_nse_nsecm_dropcopy_nnfdc_v3_0_tcp_heuristic)

-- Register Nse NseCm DropCopy NnfDc 3.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nse_nsecm_dropcopy_nnfdc_v3_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 3.0
--   Date: Monday, September 1, 2025
--   Specification: DC_CM_Normal_DROPCOPY_PROTOCOL_3.0_0.pdf
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
