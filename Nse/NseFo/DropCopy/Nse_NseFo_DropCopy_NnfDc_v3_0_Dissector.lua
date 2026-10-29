-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseFo DropCopy NnfDc 3.0 Protocol
local omi_nse_nsefo_dropcopy_nnfdc_v3_0 = Proto("Omi.Nse.NseFo.DropCopy.NnfDc.v3.0", "Nse NseFo DropCopy NnfDc 3.0")

-- Protocol table
local nse_nsefo_dropcopy_nnfdc_v3_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseFo DropCopy NnfDc 3.0 Fields
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.account_number = ProtoField.new("Account Number", "nse.nsefo.dropcopy.nnfdc.v3.0.accountnumber", ftypes.STRING, nil, nil, nil, "Account Number or client code")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.account_number_1 = ProtoField.new("Account Number 1", "nse.nsefo.dropcopy.nnfdc.v3.0.accountnumber1", ftypes.STRING, nil, nil, nil, "Trader account number, blank for a broker's own order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.activity_time_in_nanos = ProtoField.new("Activity Time In Nanos", "nse.nsefo.dropcopy.nnfdc.v3.0.activitytimeinnanos", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Activity time in nanoseconds")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.activity_time_in_nanos_utc = ProtoField.new("Activity Time In Nanos", "nse.nsefo.dropcopy.nnfdc.v3.0.activitytimeinnanos.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Activity time in nanoseconds")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.algo_id = ProtoField.new("Algo Id", "nse.nsefo.dropcopy.nnfdc.v3.0.algoid", ftypes.INT32, nil, nil, nil, "Algo Id issued by the exchange, zero for a non algo order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.aon = ProtoField.new("Aon", "nse.nsefo.dropcopy.nnfdc.v3.0.aon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "All or none order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.ato = ProtoField.new("Ato", "nse.nsefo.dropcopy.nnfdc.v3.0.ato", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100, "At the opening order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.boc = ProtoField.new("Boc", "nse.nsefo.dropcopy.nnfdc.v3.0.boc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020, "Book or cancel order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.book_type = ProtoField.new("Book Type", "nse.nsefo.dropcopy.nnfdc.v3.0.booktype", ftypes.INT16, nil, nil, nil, "Book type the order belongs to")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.book_type_1 = ProtoField.new("Book Type 1", "nse.nsefo.dropcopy.nnfdc.v3.0.booktype1", ftypes.INT16, nil, nil, nil, "Regular lot order or special terms order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.broker_id = ProtoField.new("Broker Id", "nse.nsefo.dropcopy.nnfdc.v3.0.brokerid", ftypes.STRING, nil, nil, nil, "Trading Member Id")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.buy_sell = ProtoField.new("Buy Sell", "nse.nsefo.dropcopy.nnfdc.v3.0.buysell", ftypes.INT16, nil, nil, nil, "Whether the order taking part is a buy or a sell")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.buy_sell_1 = ProtoField.new("Buy Sell 1", "nse.nsefo.dropcopy.nnfdc.v3.0.buysell1", ftypes.INT16, nil, nil, nil, "Whether the first leg is a buy or a sell")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.buy_sell_2 = ProtoField.new("Buy Sell 2", "nse.nsefo.dropcopy.nnfdc.v3.0.buysell2", ftypes.INT16, nil, nil, nil, "Whether the leg is a buy or a sell")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.checksum = ProtoField.new("Checksum", "nse.nsefo.dropcopy.nnfdc.v3.0.checksum", ftypes.BYTES, nil, nil, nil, "Md5 digest of the message data on the registration request, and the Gcm authentication tag over it on every packet after")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.compression_indicator = ProtoField.new("Compression Indicator", "nse.nsefo.dropcopy.nnfdc.v3.0.compressionindicator", ftypes.STRING, nil, nil, nil, "Whether the message buffer behind this header is Lz4 compressed")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.concurrent_login_id = ProtoField.new("Concurrent Login Id", "nse.nsefo.dropcopy.nnfdc.v3.0.concurrentloginid", ftypes.INT16, nil, nil, nil, "Concurrent login number of the user for which the user has logged in")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.cryptographic_additional_key = ProtoField.new("Cryptographic Additional Key", "nse.nsefo.dropcopy.nnfdc.v3.0.cryptographicadditionalkey", ftypes.STRING, nil, nil, nil, "Cryptographic additional key for encrypting and decrypting every message to the allocated gateway server")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.cryptographic_key = ProtoField.new("Cryptographic Key", "nse.nsefo.dropcopy.nnfdc.v3.0.cryptographickey", ftypes.STRING, nil, nil, nil, "Cryptographic key for encrypting and decrypting every message to the allocated gateway server")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.day = ProtoField.new("Day", "nse.nsefo.dropcopy.nnfdc.v3.0.day", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800, "Day order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.disclosed_vol_remaining = ProtoField.new("Disclosed Vol Remaining", "nse.nsefo.dropcopy.nnfdc.v3.0.disclosedvolremaining", ftypes.INT32, nil, nil, nil, "Disclosed volume remaining after the trade")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.disclosed_volume = ProtoField.new("Disclosed Volume", "nse.nsefo.dropcopy.nnfdc.v3.0.disclosedvolume", ftypes.INT32, nil, nil, nil, "Quantity to be disclosed to the market")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dynamic_cryptographic_iv = ProtoField.new("Dynamic Cryptographic Iv", "nse.nsefo.dropcopy.nnfdc.v3.0.dynamiccryptographiciv", ftypes.INT64, nil, nil, nil, "Dynamic part of the Initialization Vector, incremented before each encryption and decremented before each decryption")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.environment_type = ProtoField.new("Environment Type", "nse.nsefo.dropcopy.nnfdc.v3.0.environmenttype", ftypes.STRING, nil, nil, nil, "Which environment the host is, as a digit")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.error_code = ProtoField.new("Error Code", "nse.nsefo.dropcopy.nnfdc.v3.0.errorcode", ftypes.INT16, nil, nil, nil, "Zero when the request succeeded, otherwise an Error Response follows")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.error_message = ProtoField.new("Error Message", "nse.nsefo.dropcopy.nnfdc.v3.0.errormessage", ftypes.STRING, nil, nil, nil, "The error message describing the error received")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.fill_number = ProtoField.new("Fill Number", "nse.nsefo.dropcopy.nnfdc.v3.0.fillnumber", ftypes.INT32, nil, nil, nil, "Trade number")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.fill_price = ProtoField.new("Fill Price", "nse.nsefo.dropcopy.nnfdc.v3.0.fillprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the order traded")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.fill_qty = ProtoField.new("Fill Qty", "nse.nsefo.dropcopy.nnfdc.v3.0.fillqty", ftypes.INT32, nil, nil, nil, "Traded volume")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.filler = ProtoField.new("Filler", "nse.nsefo.dropcopy.nnfdc.v3.0.filler", ftypes.STRING)
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.frozen = ProtoField.new("Frozen", "nse.nsefo.dropcopy.nnfdc.v3.0.frozen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "Order is frozen for Nse Control to release")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.func_indc = ProtoField.new("Func Indc", "nse.nsefo.dropcopy.nnfdc.v3.0.funcindc", ftypes.STRING, nil, nil, nil, "Functionality the connection is for, which on this service is always D for drop copy")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.giveup_flag = ProtoField.new("Giveup Flag", "nse.nsefo.dropcopy.nnfdc.v3.0.giveupflag", ftypes.STRING, nil, nil, nil, "Give up flag, carried on the give up confirmations and blank otherwise")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.gtc = ProtoField.new("Gtc", "nse.nsefo.dropcopy.nnfdc.v3.0.gtc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000, "Good till cancelled order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.ioc = ProtoField.new("Ioc", "nse.nsefo.dropcopy.nnfdc.v3.0.ioc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Immediate or cancel order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.ip_address = ProtoField.new("Ip Address", "nse.nsefo.dropcopy.nnfdc.v3.0.ipaddress", ftypes.STRING, nil, nil, nil, "IP address of the drop copy gateway")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.ip_details_partition_wise = ProtoField.new("Ip Details Partition Wise", "nse.nsefo.dropcopy.nnfdc.v3.0.ipdetailspartitionwise", ftypes.STRING, nil, nil, nil, "IP_DETAILS_PARTITION_WISE")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.matched_ind = ProtoField.new("Matched Ind", "nse.nsefo.dropcopy.nnfdc.v3.0.matchedind", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "Order has been matched")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.message_buffer = ProtoField.new("Message Buffer", "nse.nsefo.dropcopy.nnfdc.v3.0.messagebuffer", ftypes.STRING, nil, nil, nil, "Messages packed in Fifo order, inflated first when Compression Indicator says they arrive compressed")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.message_indicator = ProtoField.new("Message Indicator", "nse.nsefo.dropcopy.nnfdc.v3.0.messageindicator", ftypes.INT16, nil, nil, nil, "Whether a further response follows: zero for an interim message, one for the last")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.message_length = ProtoField.new("Message Length", "nse.nsefo.dropcopy.nnfdc.v3.0.messagelength", ftypes.INT16, nil, nil, nil, "Length of the entire message including the fourteen byte message header")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.mf = ProtoField.new("Mf", "nse.nsefo.dropcopy.nnfdc.v3.0.mf", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Minimum fill order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.mkt = ProtoField.new("Mkt", "nse.nsefo.dropcopy.nnfdc.v3.0.mkt", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200, "Market order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.modified = ProtoField.new("Modified", "nse.nsefo.dropcopy.nnfdc.v3.0.modified", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "Order has been modified")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.ms_spd_leg_info_leg_2 = ProtoField.new("Ms Spd Leg Info Leg 2", "nse.nsefo.dropcopy.nnfdc.v3.0.msspdleginfoleg2", ftypes.STRING, nil, nil, nil, "MS_SPD_LEG_INFO Leg 2")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.ms_spd_leg_info_leg_3 = ProtoField.new("Ms Spd Leg Info Leg 3", "nse.nsefo.dropcopy.nnfdc.v3.0.msspdleginfoleg3", ftypes.STRING, nil, nil, nil, "MS_SPD_LEG_INFO Leg 3")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.nnf_field = ProtoField.new("Nnf Field", "nse.nsefo.dropcopy.nnfdc.v3.0.nnffield", ftypes.DOUBLE, nil, nil, nil, "Fifteen digit unique identifier for the product, populated only on Trade Confirmation")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.on_stop = ProtoField.new("On Stop", "nse.nsefo.dropcopy.nnfdc.v3.0.onstop", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400, "Stop loss order, triggered on its trigger price")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.open_close = ProtoField.new("Open Close", "nse.nsefo.dropcopy.nnfdc.v3.0.openclose", ftypes.STRING, nil, nil, nil, "Whether the trade opens or closes a position")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.open_close_1 = ProtoField.new("Open Close 1", "nse.nsefo.dropcopy.nnfdc.v3.0.openclose1", ftypes.STRING, nil, nil, nil, "Open or close order indicator")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.open_close_2 = ProtoField.new("Open Close 2", "nse.nsefo.dropcopy.nnfdc.v3.0.openclose2", ftypes.STRING, nil, nil, nil, "Open or close order indicator")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_flags_reserved_7 = ProtoField.new("Order Flags Reserved 7", "nse.nsefo.dropcopy.nnfdc.v3.0.orderflagsreserved7", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080, "Reserved. Named by its position in the container, and qualified by that container: a bare Reserved bit collapses onto the one byte Reserved field the order and spread bodies carry, which is bytes rather than bits")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_number = ProtoField.new("Order Number", "nse.nsefo.dropcopy.nnfdc.v3.0.ordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number of the trader's order taking part in the trade")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_number_1 = ProtoField.new("Order Number 1", "nse.nsefo.dropcopy.nnfdc.v3.0.ordernumber1", ftypes.DOUBLE, nil, nil, nil, "Order number of the first leg")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.original_volume = ProtoField.new("Original Volume", "nse.nsefo.dropcopy.nnfdc.v3.0.originalvolume", ftypes.INT32, nil, nil, nil, "Original traded volume")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.packet_length = ProtoField.new("Packet Length", "nse.nsefo.dropcopy.nnfdc.v3.0.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the whole packet including its own two bytes, capped at 1400")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "nse.nsefo.dropcopy.nnfdc.v3.0.packetsequencenumber", ftypes.UINT32, nil, nil, nil, "Packet counter, starting at one on a fresh connection and incrementing for every packet")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.pan = ProtoField.new("Pan", "nse.nsefo.dropcopy.nnfdc.v3.0.pan", ftypes.STRING, nil, nil, nil, "Permanent Account Number")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.participant = ProtoField.new("Participant", "nse.nsefo.dropcopy.nnfdc.v3.0.participant", ftypes.STRING, nil, nil, nil, "Participant's name for the trade confirmation")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.participant_type = ProtoField.new("Participant Type", "nse.nsefo.dropcopy.nnfdc.v3.0.participanttype", ftypes.STRING, nil, nil, nil, "Initiator, competitor or solicitor order, applicable for the Capital Market segment only")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.partition_count = ProtoField.new("Partition Count", "nse.nsefo.dropcopy.nnfdc.v3.0.partitioncount", ftypes.INT16, nil, nil, nil, "Count of partition details present in this message")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.partition_id = ProtoField.new("Partition Id", "nse.nsefo.dropcopy.nnfdc.v3.0.partitionid", ftypes.STRING, nil, nil, nil, "Partition or stream the packet is sent from")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.password = ProtoField.new("Password", "nse.nsefo.dropcopy.nnfdc.v3.0.password", ftypes.STRING, nil, nil, nil, "Password entered by the user, blank padded when shorter than eight characters")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.port = ProtoField.new("Port", "nse.nsefo.dropcopy.nnfdc.v3.0.port", ftypes.INT32, nil, nil, nil, "Port of the drop copy gateway")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.preopen = ProtoField.new("Preopen", "nse.nsefo.dropcopy.nnfdc.v3.0.preopen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "Set for a trade in the call auction 2 market, and zero for a normal market trade or a pre open carried forward order. Applicable for the Capital Market segment only")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.price = ProtoField.new("Price", "nse.nsefo.dropcopy.nnfdc.v3.0.price", ftypes.DOUBLE, nil, nil, nil, "Order price")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.price_diff = ProtoField.new("Price Diff", "nse.nsefo.dropcopy.nnfdc.v3.0.pricediff", ftypes.DOUBLE, nil, nil, nil, "Difference between the prices at which leg two and leg one should trade, used for a spread order only")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.pro_client_1 = ProtoField.new("Pro Client 1", "nse.nsefo.dropcopy.nnfdc.v3.0.proclient1", ftypes.STRING, nil, nil, nil, "Whether the order is entered on behalf of a client or the broker")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.pro_client_char_1 = ProtoField.new("Pro Client Char 1", "nse.nsefo.dropcopy.nnfdc.v3.0.proclientchar1", ftypes.STRING, nil, nil, nil, "Whether the order is a client, broker or warehousing order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.pro_client_short_2 = ProtoField.new("Pro Client Short 2", "nse.nsefo.dropcopy.nnfdc.v3.0.proclientshort2", ftypes.INT16, nil, nil, nil, "Whether the order is a client, broker or warehousing order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.reason_code = ProtoField.new("Reason Code", "nse.nsefo.dropcopy.nnfdc.v3.0.reasoncode", ftypes.INT16, nil, nil, nil, "Reason code for the give up packets")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.reference_id = ProtoField.new("Reference Id", "nse.nsefo.dropcopy.nnfdc.v3.0.referenceid", ftypes.INT32, nil, nil, nil, "Echoed back as received in the respective order packet's ReferenceId")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.remaining_volume = ProtoField.new("Remaining Volume", "nse.nsefo.dropcopy.nnfdc.v3.0.remainingvolume", ftypes.INT32, nil, nil, nil, "Volume remaining after the trade")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.request_sequence_number = ProtoField.new("Request Sequence Number", "nse.nsefo.dropcopy.nnfdc.v3.0.requestsequencenumber", ftypes.INT64, nil, nil, nil, "Sequence number of the messages the member sends")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.reserve = ProtoField.new("Reserve", "nse.nsefo.dropcopy.nnfdc.v3.0.reserve", ftypes.BYTES, nil, nil, nil, "Reserved, blank filled as chapter 2 directs for every reserved field")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.reserved_1 = ProtoField.new("Reserved 1", "nse.nsefo.dropcopy.nnfdc.v3.0.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved, not to be used")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.reserved_2 = ProtoField.new("Reserved 2", "nse.nsefo.dropcopy.nnfdc.v3.0.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved, not to be used")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.second_reserved_2 = ProtoField.new("Second Reserved 2", "nse.nsefo.dropcopy.nnfdc.v3.0.secondreserved2", ftypes.BYTES, nil, nil, nil, "Reserved, not to be used")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.segment_char_1 = ProtoField.new("Segment Char 1", "nse.nsefo.dropcopy.nnfdc.v3.0.segmentchar1", ftypes.STRING, nil, nil, nil, "Business segment the order belongs to")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.segment_short_2 = ProtoField.new("Segment Short 2", "nse.nsefo.dropcopy.nnfdc.v3.0.segmentshort2", ftypes.INT16, nil, nil, nil, "Business segment the trade belongs to")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.sequence_number = ProtoField.new("Sequence Number", "nse.nsefo.dropcopy.nnfdc.v3.0.sequencenumber", ftypes.INT64, nil, nil, nil, "Last sequence number received by the user, zero to retrieve from the beginning of the trading day")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.server_drop_copy_packet = ProtoField.new("Server Drop Copy Packet", "nse.nsefo.dropcopy.nnfdc.v3.0.serverdropcopypacket", ftypes.STRING, nil, nil, nil, "One drop copy packet sent by the host, carrying a packed buffer of messages")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.session_key = ProtoField.new("Session Key", "nse.nsefo.dropcopy.nnfdc.v3.0.sessionkey", ftypes.STRING, nil, nil, nil, "Session Key for the validated session")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.settlor = ProtoField.new("Settlor", "nse.nsefo.dropcopy.nnfdc.v3.0.settlor", ftypes.STRING, nil, nil, nil, "Participant responsible for settling the trade through the custodian, defaulting to the Broker Code")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.settlor_1 = ProtoField.new("Settlor 1", "nse.nsefo.dropcopy.nnfdc.v3.0.settlor1", ftypes.STRING, nil, nil, nil, "Participant responsible for settling the trades through the custodian, blank for a broker's own order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.st_order_flags = ProtoField.new("St Order Flags", "nse.nsefo.dropcopy.nnfdc.v3.0.storderflags", ftypes.STRING, nil, nil, nil, "Terms attached to the order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.static_cryptographic_iv = ProtoField.new("Static Cryptographic Iv", "nse.nsefo.dropcopy.nnfdc.v3.0.staticcryptographiciv", ftypes.STRING, nil, nil, nil, "Static part of the Initialization Vector, which does not change")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.stpc = ProtoField.new("Stpc", "nse.nsefo.dropcopy.nnfdc.v3.0.stpc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040, "Self trade prevention check")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.suspended = ProtoField.new("Suspended", "nse.nsefo.dropcopy.nnfdc.v3.0.suspended", ftypes.STRING, nil, nil, nil, "Whether the security is suspended")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.third_reserved_2 = ProtoField.new("Third Reserved 2", "nse.nsefo.dropcopy.nnfdc.v3.0.thirdreserved2", ftypes.BYTES, nil, nil, nil, "Reserved, not to be used")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.token = ProtoField.new("Token", "nse.nsefo.dropcopy.nnfdc.v3.0.token", ftypes.INT32, nil, nil, nil, "Security identifier")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.token_1 = ProtoField.new("Token 1", "nse.nsefo.dropcopy.nnfdc.v3.0.token1", ftypes.INT32, nil, nil, nil, "Contract descriptor of the contract, which is what the validations are done on")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.token_2 = ProtoField.new("Token 2", "nse.nsefo.dropcopy.nnfdc.v3.0.token2", ftypes.INT32, nil, nil, nil, "Contract descriptor of the contract, which is what the validations are done on")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.total_vol_remaining = ProtoField.new("Total Vol Remaining", "nse.nsefo.dropcopy.nnfdc.v3.0.totalvolremaining", ftypes.INT32, nil, nil, nil, "Total quantity remaining from the original quantity after trades")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.total_vol_remaining_1 = ProtoField.new("Total Vol Remaining 1", "nse.nsefo.dropcopy.nnfdc.v3.0.totalvolremaining1", ftypes.INT32, nil, nil, nil, "Total quantity remaining from the original quantity after trades")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.total_vol_remaining_2 = ProtoField.new("Total Vol Remaining 2", "nse.nsefo.dropcopy.nnfdc.v3.0.totalvolremaining2", ftypes.INT32, nil, nil, nil, "Total quantity remaining from the original quantity after trades")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.traded = ProtoField.new("Traded", "nse.nsefo.dropcopy.nnfdc.v3.0.traded", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "Order has traded")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trader_id = ProtoField.new("Trader Id", "nse.nsefo.dropcopy.nnfdc.v3.0.traderid", ftypes.INT32, nil, nil, nil, "Id of the user on whose behalf the order is modified or cancelled")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trader_id_1 = ProtoField.new("Trader Id 1", "nse.nsefo.dropcopy.nnfdc.v3.0.traderid1", ftypes.INT32, nil, nil, nil, "User Id")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trader_number = ProtoField.new("Trader Number", "nse.nsefo.dropcopy.nnfdc.v3.0.tradernumber", ftypes.INT32, nil, nil, nil, "Trader or user Id")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nsefo.dropcopy.nnfdc.v3.0.transactioncode", ftypes.INT16, nil, nil, nil, "Type of message sent or received")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trigger_price = ProtoField.new("Trigger Price", "nse.nsefo.dropcopy.nnfdc.v3.0.triggerprice", ftypes.DOUBLE, nil, nil, nil, "Price at which a stop loss order is triggered and brought to the market")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.user_id = ProtoField.new("User Id", "nse.nsefo.dropcopy.nnfdc.v3.0.userid", ftypes.INT32, nil, nil, nil, "User Id of the user")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.volume = ProtoField.new("Volume", "nse.nsefo.dropcopy.nnfdc.v3.0.volume", ftypes.INT32, nil, nil, nil, "Quantity of the order placed")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.volume_1 = ProtoField.new("Volume 1", "nse.nsefo.dropcopy.nnfdc.v3.0.volume1", ftypes.INT32, nil, nil, nil, "Quantity for which the order is placed, in multiples of the regular lot")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.volume_2 = ProtoField.new("Volume 2", "nse.nsefo.dropcopy.nnfdc.v3.0.volume2", ftypes.INT32, nil, nil, nil, "Quantity of the order placed, in multiples of the regular lot")

-- Nse NseFo DropCopy NnfDc 3.0 Framing
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.client_drop_copy_packet = ProtoField.new("Client Drop Copy Packet", "nse.nsefo.dropcopy.nnfdc.v3.0.clientdropcopypacket", ftypes.STRING, nil, nil, nil, "One drop copy packet sent by the member, carrying a single message")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.client_packet = ProtoField.new("Client Packet", "nse.nsefo.dropcopy.nnfdc.v3.0.clientpacket", ftypes.STRING, nil, nil, nil, "Drop copy Tcp block of one or more packets sent by the member")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.message_header = ProtoField.new("Message Header", "nse.nsefo.dropcopy.nnfdc.v3.0.messageheader", ftypes.STRING, nil, nil, nil, "MESSAGE_HEADER")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.packet_header = ProtoField.new("Packet Header", "nse.nsefo.dropcopy.nnfdc.v3.0.packetheader", ftypes.STRING, nil, nil, nil, "Drop copy twenty two byte packet header")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.request_message_header = ProtoField.new("Request Message Header", "nse.nsefo.dropcopy.nnfdc.v3.0.requestmessageheader", ftypes.STRING, nil, nil, nil, "REQUEST_MESSAGE_HEADER")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.response_message_header = ProtoField.new("Response Message Header", "nse.nsefo.dropcopy.nnfdc.v3.0.responsemessageheader", ftypes.STRING, nil, nil, nil, "RESPONSE_MESSAGE_HEADER, present once per packet however many messages are packed behind it")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.server_message = ProtoField.new("Server Message", "nse.nsefo.dropcopy.nnfdc.v3.0.servermessage", ftypes.STRING, nil, nil, nil, "One packed drop copy message sent by the host")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.server_packet = ProtoField.new("Server Packet", "nse.nsefo.dropcopy.nnfdc.v3.0.serverpacket", ftypes.STRING, nil, nil, nil, "Drop copy Tcp block of one or more packets sent by the host")

-- Nse NseFo DropCopy 3.0 Application Messages
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.batch_order_cancel_message = ProtoField.new("Batch Order Cancel Message", "nse.nsefo.dropcopy.nnfdc.v3.0.batchordercancelmessage", ftypes.STRING, nil, nil, nil, "Reports an order cancelled in a batch cancellation")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.batch_spread_cxl_out_message = ProtoField.new("Batch Spread Cxl Out Message", "nse.nsefo.dropcopy.nnfdc.v3.0.batchspreadcxloutmessage", ftypes.STRING, nil, nil, nil, "Reports a spread order cancelled in a batch cancellation")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dc_error_response_order_message = ProtoField.new("Dc Error Response Order Message", "nse.nsefo.dropcopy.nnfdc.v3.0.dcerrorresponseordermessage", ftypes.STRING, nil, nil, nil, "Rejects an order and trade request, the reason given in the Error Code of the Message Header")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dc_error_response_trade_message = ProtoField.new("Dc Error Response Trade Message", "nse.nsefo.dropcopy.nnfdc.v3.0.dcerrorresponsetrademessage", ftypes.STRING, nil, nil, nil, "Rejects a trade only request, the reason given in the Error Code of the Message Header")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dc_ont_subscription_request_message = ProtoField.new("Dc Ont Subscription Request Message", "nse.nsefo.dropcopy.nnfdc.v3.0.dcontsubscriptionrequestmessage", ftypes.STRING, nil, nil, nil, "Subscribes to the order and trade drop copy on this partition from the named sequence number")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dc_sign_off_message = ProtoField.new("Dc Sign Off Message", "nse.nsefo.dropcopy.nnfdc.v3.0.dcsignoffmessage", ftypes.STRING, nil, nil, nil, "Signs the user off the partition")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dc_signon_in_message = ProtoField.new("Dc Signon In Message", "nse.nsefo.dropcopy.nnfdc.v3.0.dcsignoninmessage", ftypes.STRING, nil, nil, nil, "Logs the member on to a partition of the drop copy service")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dc_signon_out_message = ProtoField.new("Dc Signon Out Message", "nse.nsefo.dropcopy.nnfdc.v3.0.dcsignonoutmessage", ftypes.STRING, nil, nil, nil, "Confirms the logon, or terminates the connection when Error Code is set")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dc_trd_subscription_request_message = ProtoField.new("Dc Trd Subscription Request Message", "nse.nsefo.dropcopy.nnfdc.v3.0.dctrdsubscriptionrequestmessage", ftypes.STRING, nil, nil, nil, "Subscribes to the trade only drop copy on this partition from the named sequence number")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.freeze_to_control_message = ProtoField.new("Freeze To Control Message", "nse.nsefo.dropcopy.nnfdc.v3.0.freezetocontrolmessage", ftypes.STRING, nil, nil, nil, "Reports an order frozen and referred to Nse Control")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.giveup_app_confirm_message = ProtoField.new("Giveup App Confirm Message", "nse.nsefo.dropcopy.nnfdc.v3.0.giveupappconfirmmessage", ftypes.STRING, nil, nil, nil, "Approves a give up, with 'A' in Giveup Flag")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.giveup_rej_confirm_message = ProtoField.new("Giveup Rej Confirm Message", "nse.nsefo.dropcopy.nnfdc.v3.0.giveuprejconfirmmessage", ftypes.STRING, nil, nil, nil, "Rejects a give up")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.gr_response_message = ProtoField.new("Gr Response Message", "nse.nsefo.dropcopy.nnfdc.v3.0.grresponsemessage", ftypes.STRING, nil, nil, nil, "Returns the addresses of every partition the member must connect to, together with the session key and the cryptographic material for those connections")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.on_stop_notification_message = ProtoField.new("On Stop Notification Message", "nse.nsefo.dropcopy.nnfdc.v3.0.onstopnotificationmessage", ftypes.STRING, nil, nil, nil, "Reports a stop loss order triggered and brought to the market")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_cancel_confirmation_message = ProtoField.new("Order Cancel Confirmation Message", "nse.nsefo.dropcopy.nnfdc.v3.0.ordercancelconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an order cancellation")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "nse.nsefo.dropcopy.nnfdc.v3.0.ordercancelrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects an order cancellation")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_confirmation_message = ProtoField.new("Order Confirmation Message", "nse.nsefo.dropcopy.nnfdc.v3.0.orderconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_error_message = ProtoField.new("Order Error Message", "nse.nsefo.dropcopy.nnfdc.v3.0.ordererrormessage", ftypes.STRING, nil, nil, nil, "Reports an error on an order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_mod_confirmation_message = ProtoField.new("Order Mod Confirmation Message", "nse.nsefo.dropcopy.nnfdc.v3.0.ordermodconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an order modification")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_mod_reject_message = ProtoField.new("Order Mod Reject Message", "nse.nsefo.dropcopy.nnfdc.v3.0.ordermodrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects an order modification")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.price_confirmation_message = ProtoField.new("Price Confirmation Message", "nse.nsefo.dropcopy.nnfdc.v3.0.priceconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms the price of an order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.sp_order_confirmation_message = ProtoField.new("Sp Order Confirmation Message", "nse.nsefo.dropcopy.nnfdc.v3.0.sporderconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms a spread order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.sp_order_cxl_confirmation_message = ProtoField.new("Sp Order Cxl Confirmation Message", "nse.nsefo.dropcopy.nnfdc.v3.0.spordercxlconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms a spread order cancellation")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.sp_order_cxl_rejected_message = ProtoField.new("Sp Order Cxl Rejected Message", "nse.nsefo.dropcopy.nnfdc.v3.0.spordercxlrejectedmessage", ftypes.STRING, nil, nil, nil, "Rejects a spread order cancellation")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.sp_order_mod_confirmation_message = ProtoField.new("Sp Order Mod Confirmation Message", "nse.nsefo.dropcopy.nnfdc.v3.0.spordermodconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms a spread order modification")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.sp_order_mod_reject_message = ProtoField.new("Sp Order Mod Reject Message", "nse.nsefo.dropcopy.nnfdc.v3.0.spordermodrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects a spread order modification")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.sp_order_rejected_message = ProtoField.new("Sp Order Rejected Message", "nse.nsefo.dropcopy.nnfdc.v3.0.sporderrejectedmessage", ftypes.STRING, nil, nil, nil, "Rejects a spread order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.thrl_order_confirmation_message = ProtoField.new("Thrl Order Confirmation Message", "nse.nsefo.dropcopy.nnfdc.v3.0.thrlorderconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms a three leg order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.thrl_order_cxl_confirmation_message = ProtoField.new("Thrl Order Cxl Confirmation Message", "nse.nsefo.dropcopy.nnfdc.v3.0.thrlordercxlconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms a three leg order cancellation")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.thrl_order_error_message = ProtoField.new("Thrl Order Error Message", "nse.nsefo.dropcopy.nnfdc.v3.0.thrlordererrormessage", ftypes.STRING, nil, nil, nil, "Reports an error on a three leg order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trade_cancel_confirm_message = ProtoField.new("Trade Cancel Confirm Message", "nse.nsefo.dropcopy.nnfdc.v3.0.tradecancelconfirmmessage", ftypes.STRING, nil, nil, nil, "Confirms the cancellation of a trade")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trade_cancel_reject_message = ProtoField.new("Trade Cancel Reject Message", "nse.nsefo.dropcopy.nnfdc.v3.0.tradecancelrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects a trade cancellation")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trade_confirmation_message = ProtoField.new("Trade Confirmation Message", "nse.nsefo.dropcopy.nnfdc.v3.0.tradeconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms a trade")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trade_modify_confirm_message = ProtoField.new("Trade Modify Confirm Message", "nse.nsefo.dropcopy.nnfdc.v3.0.trademodifyconfirmmessage", ftypes.STRING, nil, nil, nil, "Confirms the modification of a trade")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trade_modify_rejected_message = ProtoField.new("Trade Modify Rejected Message", "nse.nsefo.dropcopy.nnfdc.v3.0.trademodifyrejectedmessage", ftypes.STRING, nil, nil, nil, "Rejects a trade modification")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.twol_order_confirmation_message = ProtoField.new("Twol Order Confirmation Message", "nse.nsefo.dropcopy.nnfdc.v3.0.twolorderconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms a two leg order")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.twol_order_cxl_confirmation_message = ProtoField.new("Twol Order Cxl Confirmation Message", "nse.nsefo.dropcopy.nnfdc.v3.0.twolordercxlconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms a two leg order cancellation")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.twol_order_error_message = ProtoField.new("Twol Order Error Message", "nse.nsefo.dropcopy.nnfdc.v3.0.twolordererrormessage", ftypes.STRING, nil, nil, nil, "Reports an error on a two leg order")

-- Nse NseFo DropCopy 3.0 Session Messages
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.gr_request_message = ProtoField.new("Gr Request Message", "nse.nsefo.dropcopy.nnfdc.v3.0.grrequestmessage", ftypes.BYTES, nil, nil, nil, "Asks the gateway router for the member's partition list, with Partition Id sent as zero")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.gr_secure_user_registration_request_message = ProtoField.new("Gr Secure User Registration Request Message", "nse.nsefo.dropcopy.nnfdc.v3.0.grsecureuserregistrationrequestmessage", ftypes.BYTES, nil, nil, nil, "Declares to an allocated gateway server that the member application is using encryption, sent unencrypted as the first message on each partition connection")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.gr_secure_user_registration_response_message = ProtoField.new("Gr Secure User Registration Response Message", "nse.nsefo.dropcopy.nnfdc.v3.0.grsecureuserregistrationresponsemessage", ftypes.BYTES, nil, nil, nil, "Acknowledges the registration, its Error Code terminating the connection when set")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "nse.nsefo.dropcopy.nnfdc.v3.0.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "Keeps the connection alive, sent after thirty seconds of inactivity; the host disconnects the socket after two missed in succession")

-----------------------------------------------------------------------
-- Nse NseFo DropCopy NnfDc 3.0 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nse_nsefo_dropcopy_nnfdc_v3_0.absolute_time_base = 0

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

-- Nse NseFo DropCopy NnfDc 3.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Nse NseFo DropCopy NnfDc 3.0 Show Options
omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.show_application_messages then
    show.application_messages = omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.show_headers then
    show.headers = omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.show_headers
  end
  if show.structs ~= omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.show_structs then
    show.structs = omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.show_structs
  end
  if nse_nsefo_dropcopy_nnfdc_v3_0.absolute_time_base ~= omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.absolute_time_base then
    nse_nsefo_dropcopy_nnfdc_v3_0.absolute_time_base = omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.absolute_time_base
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
-- Nse NseFo DropCopy NnfDc 3.0 Fields
-----------------------------------------------------------------------

-- Account Number
nse_nsefo_dropcopy_nnfdc_v3_0.account_number = {}

-- Size: Account Number
nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size = 10

-- Display: Account Number
nse_nsefo_dropcopy_nnfdc_v3_0.account_number.display = function(value)
  return "Account Number: "..value
end

-- Dissect: Account Number
nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.account_number, range, value, display)

  return offset + length, value
end

-- Account Number 1
nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1 = {}

-- Size: Account Number 1
nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.size = 10

-- Display: Account Number 1
nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.display = function(value)
  return "Account Number 1: "..value
end

-- Dissect: Account Number 1
nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.account_number_1, range, value, display)

  return offset + length, value
end

-- Activity Time In Nanos
nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos = {}

-- Size: Activity Time In Nanos
nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size = 8

-- Dissect: Activity Time In Nanos
nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.activity_time_in_nanos
  if nse_nsefo_dropcopy_nnfdc_v3_0.absolute_time_base == 1 then field = omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.activity_time_in_nanos_utc end

  local seconds = (value / UInt64(1000000000)):tonumber() + 315532800
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Algo Id
nse_nsefo_dropcopy_nnfdc_v3_0.algo_id = {}

-- Size: Algo Id
nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size = 4

-- Display: Algo Id
nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.display = function(value)
  return "Algo Id: "..value
end

-- Dissect: Algo Id
nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.algo_id, range, value, display)

  return offset + length, value
end

-- Book Type
nse_nsefo_dropcopy_nnfdc_v3_0.book_type = {}

-- Size: Book Type
nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size = 2

-- Display: Book Type
nse_nsefo_dropcopy_nnfdc_v3_0.book_type.labels = {
  [1] = "Book Type: Regular Lot Order (1)",
  [2] = "Book Type: Special Terms Order (2)",
  [3] = "Book Type: Stop Loss Order (3)",
  [4] = "Book Type: Negotiated Order Not Used (4)",
  [5] = "Book Type: Odd Lot Order Not Used (5)",
  [6] = "Book Type: Spot Order Not Used (6)",
  [7] = "Book Type: Auction Order Not Used (7)",
  [11] = "Book Type: Call Auction 1 Not Used (11)",
  [12] = "Book Type: Call Auction 2 Not Used (12)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.book_type.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.book_type.labels[value] or "Book Type: Unknown("..value..")"
end

-- Dissect: Book Type
nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.book_type, range, value, display)

  return offset + length, value
end

-- Book Type 1
nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1 = {}

-- Size: Book Type 1
nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.size = 2

-- Display: Book Type 1
nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.labels = {
  [1] = "Book Type 1: Regular Lot Order (1)",
  [2] = "Book Type 1: Special Terms Order (2)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.labels[value] or "Book Type 1: Unknown("..value..")"
end

-- Dissect: Book Type 1
nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.book_type_1, range, value, display)

  return offset + length, value
end

-- Broker Id
nse_nsefo_dropcopy_nnfdc_v3_0.broker_id = {}

-- Size: Broker Id
nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.size = 5

-- Display: Broker Id
nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.display = function(value)
  return "Broker Id: "..value
end

-- Dissect: Broker Id
nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.broker_id, range, value, display)

  return offset + length, value
end

-- Buy Sell
nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell = {}

-- Size: Buy Sell
nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size = 2

-- Display: Buy Sell
nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.labels = {
  [1] = "Buy Sell: Buy Order (1)",
  [2] = "Buy Sell: Sell Order (2)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.labels[value] or "Buy Sell: Unknown("..value..")"
end

-- Dissect: Buy Sell
nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.buy_sell, range, value, display)

  return offset + length, value
end

-- Buy Sell 1
nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1 = {}

-- Size: Buy Sell 1
nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.size = 2

-- Display: Buy Sell 1
nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.labels = {
  [1] = "Buy Sell 1: Buy Order (1)",
  [2] = "Buy Sell 1: Sell Order (2)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.labels[value] or "Buy Sell 1: Unknown("..value..")"
end

-- Dissect: Buy Sell 1
nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.buy_sell_1, range, value, display)

  return offset + length, value
end

-- Buy Sell 2
nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_2 = {}

-- Size: Buy Sell 2
nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_2.size = 2

-- Display: Buy Sell 2
nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_2.labels = {
  [1] = "Buy Sell 2: Buy Order (1)",
  [2] = "Buy Sell 2: Sell Order (2)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_2.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_2.labels[value] or "Buy Sell 2: Unknown("..value..")"
end

-- Dissect: Buy Sell 2
nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.buy_sell_2, range, value, display)

  return offset + length, value
end

-- Checksum
nse_nsefo_dropcopy_nnfdc_v3_0.checksum = {}

-- Size: Checksum
nse_nsefo_dropcopy_nnfdc_v3_0.checksum.size = 16

-- Display: Checksum
nse_nsefo_dropcopy_nnfdc_v3_0.checksum.display = function(value)
  return "Checksum: "..value
end

-- Dissect: Checksum
nse_nsefo_dropcopy_nnfdc_v3_0.checksum.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.checksum.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.checksum, range, value, display)

  return offset + length, value
end

-- Compression Indicator
nse_nsefo_dropcopy_nnfdc_v3_0.compression_indicator = {}

-- Size: Compression Indicator
nse_nsefo_dropcopy_nnfdc_v3_0.compression_indicator.size = 1

-- Display: Compression Indicator
nse_nsefo_dropcopy_nnfdc_v3_0.compression_indicator.labels = {
  ["0"] = "Compression Indicator: No Compression Done (0)",
  ["1"] = "Compression Indicator: Data Is Compressed (1)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.compression_indicator.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.compression_indicator.labels[value] or "Compression Indicator: Unknown("..value..")"
end

-- Dissect: Compression Indicator
nse_nsefo_dropcopy_nnfdc_v3_0.compression_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.compression_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.compression_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.compression_indicator, range, value, display)

  return offset + length, value
end

-- Concurrent Login Id
nse_nsefo_dropcopy_nnfdc_v3_0.concurrent_login_id = {}

-- Size: Concurrent Login Id
nse_nsefo_dropcopy_nnfdc_v3_0.concurrent_login_id.size = 2

-- Display: Concurrent Login Id
nse_nsefo_dropcopy_nnfdc_v3_0.concurrent_login_id.display = function(value)
  return "Concurrent Login Id: "..value
end

-- Dissect: Concurrent Login Id
nse_nsefo_dropcopy_nnfdc_v3_0.concurrent_login_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.concurrent_login_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.concurrent_login_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.concurrent_login_id, range, value, display)

  return offset + length, value
end

-- Cryptographic Additional Key
nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_additional_key = {}

-- Size: Cryptographic Additional Key
nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_additional_key.size = 12

-- Display: Cryptographic Additional Key
nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_additional_key.display = function(value)
  return "Cryptographic Additional Key: "..value
end

-- Dissect: Cryptographic Additional Key
nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_additional_key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_additional_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_additional_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.cryptographic_additional_key, range, value, display)

  return offset + length, value
end

-- Cryptographic Key
nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_key = {}

-- Size: Cryptographic Key
nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_key.size = 32

-- Display: Cryptographic Key
nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_key.display = function(value)
  return "Cryptographic Key: "..value
end

-- Dissect: Cryptographic Key
nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.cryptographic_key, range, value, display)

  return offset + length, value
end

-- Disclosed Vol Remaining
nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining = {}

-- Size: Disclosed Vol Remaining
nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size = 4

-- Display: Disclosed Vol Remaining
nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.display = function(value)
  return "Disclosed Vol Remaining: "..value
end

-- Dissect: Disclosed Vol Remaining
nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.disclosed_vol_remaining, range, value, display)

  return offset + length, value
end

-- Disclosed Volume
nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume = {}

-- Size: Disclosed Volume
nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size = 4

-- Display: Disclosed Volume
nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.display = function(value)
  return "Disclosed Volume: "..value
end

-- Dissect: Disclosed Volume
nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.disclosed_volume, range, value, display)

  return offset + length, value
end

-- Dynamic Cryptographic Iv
nse_nsefo_dropcopy_nnfdc_v3_0.dynamic_cryptographic_iv = {}

-- Size: Dynamic Cryptographic Iv
nse_nsefo_dropcopy_nnfdc_v3_0.dynamic_cryptographic_iv.size = 8

-- Display: Dynamic Cryptographic Iv
nse_nsefo_dropcopy_nnfdc_v3_0.dynamic_cryptographic_iv.display = function(value)
  return "Dynamic Cryptographic Iv: "..value
end

-- Dissect: Dynamic Cryptographic Iv
nse_nsefo_dropcopy_nnfdc_v3_0.dynamic_cryptographic_iv.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.dynamic_cryptographic_iv.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.dynamic_cryptographic_iv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dynamic_cryptographic_iv, range, value, display)

  return offset + length, value
end

-- Environment Type
nse_nsefo_dropcopy_nnfdc_v3_0.environment_type = {}

-- Size: Environment Type
nse_nsefo_dropcopy_nnfdc_v3_0.environment_type.size = 1

-- Display: Environment Type
nse_nsefo_dropcopy_nnfdc_v3_0.environment_type.labels = {
  ["1"] = "Environment Type: Production Environment (1)",
  ["2"] = "Environment Type: Prod Parallel Mock Environment (2)",
  ["3"] = "Environment Type: Testing Environment (3)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.environment_type.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.environment_type.labels[value] or "Environment Type: Unknown("..value..")"
end

-- Dissect: Environment Type
nse_nsefo_dropcopy_nnfdc_v3_0.environment_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.environment_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.environment_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.environment_type, range, value, display)

  return offset + length, value
end

-- Error Code
nse_nsefo_dropcopy_nnfdc_v3_0.error_code = {}

-- Size: Error Code
nse_nsefo_dropcopy_nnfdc_v3_0.error_code.size = 2

-- Display: Error Code
nse_nsefo_dropcopy_nnfdc_v3_0.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
nse_nsefo_dropcopy_nnfdc_v3_0.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.error_code, range, value, display)

  return offset + length, value
end

-- Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.error_message = {}

-- Size: Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.error_message.size = 128

-- Display: Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.error_message.display = function(value)
  return "Error Message: "..value
end

-- Dissect: Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.error_message.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.error_message.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.error_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.error_message, range, value, display)

  return offset + length, value
end

-- Fill Number
nse_nsefo_dropcopy_nnfdc_v3_0.fill_number = {}

-- Size: Fill Number
nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.size = 4

-- Display: Fill Number
nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.display = function(value)
  return "Fill Number: "..value
end

-- Dissect: Fill Number
nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.fill_number, range, value, display)

  return offset + length, value
end

-- Fill Price
nse_nsefo_dropcopy_nnfdc_v3_0.fill_price = {}

-- Size: Fill Price
nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.size = 4

-- Display: Fill Price
nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Translate: Fill Price
nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.translate = function(raw)
  return raw/100
end

-- Dissect: Fill Price
nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.translate(raw)
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Qty
nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty = {}

-- Size: Fill Qty
nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.size = 4

-- Display: Fill Qty
nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.display = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Filler
nse_nsefo_dropcopy_nnfdc_v3_0.filler = {}

-- Size: Filler
nse_nsefo_dropcopy_nnfdc_v3_0.filler.size = 1

-- Display: Filler
nse_nsefo_dropcopy_nnfdc_v3_0.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
nse_nsefo_dropcopy_nnfdc_v3_0.filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.filler, range, value, display)

  return offset + length, value
end

-- Func Indc
nse_nsefo_dropcopy_nnfdc_v3_0.func_indc = {}

-- Size: Func Indc
nse_nsefo_dropcopy_nnfdc_v3_0.func_indc.size = 1

-- Display: Func Indc
nse_nsefo_dropcopy_nnfdc_v3_0.func_indc.display = function(value)
  return "Func Indc: "..value
end

-- Dissect: Func Indc
nse_nsefo_dropcopy_nnfdc_v3_0.func_indc.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.func_indc.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.func_indc.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.func_indc, range, value, display)

  return offset + length, value
end

-- Giveup Flag
nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag = {}

-- Size: Giveup Flag
nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.size = 1

-- Display: Giveup Flag
nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.labels = {
  ["A"] = "Giveup Flag: Give Up Approved (A)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.labels[value] or "Giveup Flag: Unknown("..value..")"
end

-- Dissect: Giveup Flag
nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.giveup_flag, range, value, display)

  return offset + length, value
end

-- Ip Address
nse_nsefo_dropcopy_nnfdc_v3_0.ip_address = {}

-- Size: Ip Address
nse_nsefo_dropcopy_nnfdc_v3_0.ip_address.size = 16

-- Display: Ip Address
nse_nsefo_dropcopy_nnfdc_v3_0.ip_address.display = function(value)
  return "Ip Address: "..value
end

-- Dissect: Ip Address
nse_nsefo_dropcopy_nnfdc_v3_0.ip_address.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.ip_address.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.ip_address.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.ip_address, range, value, display)

  return offset + length, value
end

-- Message Indicator
nse_nsefo_dropcopy_nnfdc_v3_0.message_indicator = {}

-- Size: Message Indicator
nse_nsefo_dropcopy_nnfdc_v3_0.message_indicator.size = 2

-- Display: Message Indicator
nse_nsefo_dropcopy_nnfdc_v3_0.message_indicator.labels = {
  [0] = "Message Indicator: Interim Message (0)",
  [1] = "Message Indicator: Last Message (1)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.message_indicator.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.message_indicator.labels[value] or "Message Indicator: Unknown("..value..")"
end

-- Dissect: Message Indicator
nse_nsefo_dropcopy_nnfdc_v3_0.message_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.message_indicator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.message_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.message_indicator, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nsefo_dropcopy_nnfdc_v3_0.message_length = {}

-- Size: Message Length
nse_nsefo_dropcopy_nnfdc_v3_0.message_length.size = 2

-- Display: Message Length
nse_nsefo_dropcopy_nnfdc_v3_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nsefo_dropcopy_nnfdc_v3_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Nnf Field
nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field = {}

-- Size: Nnf Field
nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size = 8

-- Display: Nnf Field
nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.display = function(value)
  return "Nnf Field: "..string.format("%.0f", value)
end

-- Dissect: Nnf Field
nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.nnf_field, range, value, display)

  return offset + length, value
end

-- Open Close
nse_nsefo_dropcopy_nnfdc_v3_0.open_close = {}

-- Size: Open Close
nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size = 1

-- Display: Open Close
nse_nsefo_dropcopy_nnfdc_v3_0.open_close.labels = {
  ["O"] = "Open Close: Open (O)",
  ["C"] = "Open Close: Close (C)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.open_close.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.open_close.labels[value] or "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.open_close, range, value, display)

  return offset + length, value
end

-- Open Close 1
nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1 = {}

-- Size: Open Close 1
nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.size = 1

-- Display: Open Close 1
nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.labels = {
  ["O"] = "Open Close 1: Open (O)",
  ["C"] = "Open Close 1: Close (C)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.labels[value] or "Open Close 1: Unknown("..value..")"
end

-- Dissect: Open Close 1
nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.open_close_1, range, value, display)

  return offset + length, value
end

-- Open Close 2
nse_nsefo_dropcopy_nnfdc_v3_0.open_close_2 = {}

-- Size: Open Close 2
nse_nsefo_dropcopy_nnfdc_v3_0.open_close_2.size = 1

-- Display: Open Close 2
nse_nsefo_dropcopy_nnfdc_v3_0.open_close_2.labels = {
  ["O"] = "Open Close 2: Open (O)",
  ["C"] = "Open Close 2: Close (C)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.open_close_2.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.open_close_2.labels[value] or "Open Close 2: Unknown("..value..")"
end

-- Dissect: Open Close 2
nse_nsefo_dropcopy_nnfdc_v3_0.open_close_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.open_close_2, range, value, display)

  return offset + length, value
end

-- Order Number
nse_nsefo_dropcopy_nnfdc_v3_0.order_number = {}

-- Size: Order Number
nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size = 8

-- Display: Order Number
nse_nsefo_dropcopy_nnfdc_v3_0.order_number.display = function(value)
  return "Order Number: "..string.format("%.0f", value)
end

-- Dissect: Order Number
nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Number 1
nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1 = {}

-- Size: Order Number 1
nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.size = 8

-- Display: Order Number 1
nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.display = function(value)
  return "Order Number 1: "..string.format("%.0f", value)
end

-- Dissect: Order Number 1
nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_number_1, range, value, display)

  return offset + length, value
end

-- Original Volume
nse_nsefo_dropcopy_nnfdc_v3_0.original_volume = {}

-- Size: Original Volume
nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.size = 4

-- Display: Original Volume
nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.display = function(value)
  return "Original Volume: "..value
end

-- Dissect: Original Volume
nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.original_volume, range, value, display)

  return offset + length, value
end

-- Packet Length
nse_nsefo_dropcopy_nnfdc_v3_0.packet_length = {}

-- Size: Packet Length
nse_nsefo_dropcopy_nnfdc_v3_0.packet_length.size = 2

-- Display: Packet Length
nse_nsefo_dropcopy_nnfdc_v3_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nse_nsefo_dropcopy_nnfdc_v3_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
nse_nsefo_dropcopy_nnfdc_v3_0.packet_sequence_number = {}

-- Size: Packet Sequence Number
nse_nsefo_dropcopy_nnfdc_v3_0.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
nse_nsefo_dropcopy_nnfdc_v3_0.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
nse_nsefo_dropcopy_nnfdc_v3_0.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Pan
nse_nsefo_dropcopy_nnfdc_v3_0.pan = {}

-- Size: Pan
nse_nsefo_dropcopy_nnfdc_v3_0.pan.size = 10

-- Display: Pan
nse_nsefo_dropcopy_nnfdc_v3_0.pan.display = function(value)
  return "Pan: "..value
end

-- Dissect: Pan
nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.pan.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.pan.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.pan, range, value, display)

  return offset + length, value
end

-- Participant
nse_nsefo_dropcopy_nnfdc_v3_0.participant = {}

-- Size: Participant
nse_nsefo_dropcopy_nnfdc_v3_0.participant.size = 12

-- Display: Participant
nse_nsefo_dropcopy_nnfdc_v3_0.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
nse_nsefo_dropcopy_nnfdc_v3_0.participant.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.participant, range, value, display)

  return offset + length, value
end

-- Participant Type
nse_nsefo_dropcopy_nnfdc_v3_0.participant_type = {}

-- Size: Participant Type
nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.size = 1

-- Display: Participant Type
nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.labels = {
  ["I"] = "Participant Type: Initiator (I)",
  ["C"] = "Participant Type: Competitor Order (C)",
  ["S"] = "Participant Type: Solicitor Order (S)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.labels[value] or "Participant Type: Unknown("..value..")"
end

-- Dissect: Participant Type
nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.participant_type, range, value, display)

  return offset + length, value
end

-- Partition Count
nse_nsefo_dropcopy_nnfdc_v3_0.partition_count = {}

-- Size: Partition Count
nse_nsefo_dropcopy_nnfdc_v3_0.partition_count.size = 2

-- Display: Partition Count
nse_nsefo_dropcopy_nnfdc_v3_0.partition_count.display = function(value)
  return "Partition Count: "..value
end

-- Dissect: Partition Count
nse_nsefo_dropcopy_nnfdc_v3_0.partition_count.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.partition_count.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.partition_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.partition_count, range, value, display)

  return offset + length, value
end

-- Partition Id
nse_nsefo_dropcopy_nnfdc_v3_0.partition_id = {}

-- Size: Partition Id
nse_nsefo_dropcopy_nnfdc_v3_0.partition_id.size = 6

-- Display: Partition Id
nse_nsefo_dropcopy_nnfdc_v3_0.partition_id.display = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
nse_nsefo_dropcopy_nnfdc_v3_0.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.partition_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Password
nse_nsefo_dropcopy_nnfdc_v3_0.password = {}

-- Size: Password
nse_nsefo_dropcopy_nnfdc_v3_0.password.size = 8

-- Display: Password
nse_nsefo_dropcopy_nnfdc_v3_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nse_nsefo_dropcopy_nnfdc_v3_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.password, range, value, display)

  return offset + length, value
end

-- Port
nse_nsefo_dropcopy_nnfdc_v3_0.port = {}

-- Size: Port
nse_nsefo_dropcopy_nnfdc_v3_0.port.size = 4

-- Display: Port
nse_nsefo_dropcopy_nnfdc_v3_0.port.display = function(value)
  return "Port: "..value
end

-- Dissect: Port
nse_nsefo_dropcopy_nnfdc_v3_0.port.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.port.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.port.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.port, range, value, display)

  return offset + length, value
end

-- Price
nse_nsefo_dropcopy_nnfdc_v3_0.price = {}

-- Size: Price
nse_nsefo_dropcopy_nnfdc_v3_0.price.size = 4

-- Display: Price
nse_nsefo_dropcopy_nnfdc_v3_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nsefo_dropcopy_nnfdc_v3_0.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_dropcopy_nnfdc_v3_0.price.translate(raw)
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.price, range, value, display)

  return offset + length, value
end

-- Price Diff
nse_nsefo_dropcopy_nnfdc_v3_0.price_diff = {}

-- Size: Price Diff
nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.size = 4

-- Display: Price Diff
nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.display = function(value)
  return "Price Diff: "..value
end

-- Translate: Price Diff
nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.translate = function(raw)
  return raw/100
end

-- Dissect: Price Diff
nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.translate(raw)
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.price_diff, range, value, display)

  return offset + length, value
end

-- Pro Client 1
nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1 = {}

-- Size: Pro Client 1
nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.size = 1

-- Display: Pro Client 1
nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.display = function(value)
  return "Pro Client 1: "..value
end

-- Dissect: Pro Client 1
nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.pro_client_1, range, value, display)

  return offset + length, value
end

-- Pro Client Char 1
nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1 = {}

-- Size: Pro Client Char 1
nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.size = 1

-- Display: Pro Client Char 1
nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.display = function(value)
  return "Pro Client Char 1: "..value
end

-- Dissect: Pro Client Char 1
nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.pro_client_char_1, range, value, display)

  return offset + length, value
end

-- Pro Client Short 2
nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2 = {}

-- Size: Pro Client Short 2
nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.size = 2

-- Display: Pro Client Short 2
nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.labels = {
  [1] = "Pro Client Short 2: Clients Order (1)",
  [2] = "Pro Client Short 2: Brokers Order (2)",
  [4] = "Pro Client Short 2: Warehousing Order (4)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.labels[value] or "Pro Client Short 2: Unknown("..value..")"
end

-- Dissect: Pro Client Short 2
nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.pro_client_short_2, range, value, display)

  return offset + length, value
end

-- Reason Code
nse_nsefo_dropcopy_nnfdc_v3_0.reason_code = {}

-- Size: Reason Code
nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size = 2

-- Display: Reason Code
nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.display = function(value)
  return "Reason Code: "..value
end

-- Dissect: Reason Code
nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Reference Id
nse_nsefo_dropcopy_nnfdc_v3_0.reference_id = {}

-- Size: Reference Id
nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size = 4

-- Display: Reference Id
nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.display = function(value)
  return "Reference Id: "..value
end

-- Dissect: Reference Id
nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.reference_id, range, value, display)

  return offset + length, value
end

-- Remaining Volume
nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume = {}

-- Size: Remaining Volume
nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.size = 4

-- Display: Remaining Volume
nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.display = function(value)
  return "Remaining Volume: "..value
end

-- Dissect: Remaining Volume
nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.remaining_volume, range, value, display)

  return offset + length, value
end

-- Request Sequence Number
nse_nsefo_dropcopy_nnfdc_v3_0.request_sequence_number = {}

-- Size: Request Sequence Number
nse_nsefo_dropcopy_nnfdc_v3_0.request_sequence_number.size = 8

-- Display: Request Sequence Number
nse_nsefo_dropcopy_nnfdc_v3_0.request_sequence_number.display = function(value)
  return "Request Sequence Number: "..value
end

-- Dissect: Request Sequence Number
nse_nsefo_dropcopy_nnfdc_v3_0.request_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.request_sequence_number.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.request_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.request_sequence_number, range, value, display)

  return offset + length, value
end

-- Reserve
nse_nsefo_dropcopy_nnfdc_v3_0.reserve = {}

-- Size: Reserve
nse_nsefo_dropcopy_nnfdc_v3_0.reserve.size = 1

-- Display: Reserve
nse_nsefo_dropcopy_nnfdc_v3_0.reserve.display = function(value)
  return "Reserve: "..value
end

-- Dissect: Reserve
nse_nsefo_dropcopy_nnfdc_v3_0.reserve.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.reserve.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.reserve.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.reserve, range, value, display)

  return offset + length, value
end

-- Reserved 1
nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1 = {}

-- Size: Reserved 1
nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size = 1

-- Display: Reserved 1
nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2 = {}

-- Size: Reserved 2
nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.size = 2

-- Display: Reserved 2
nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Second Reserved 2
nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2 = {}

-- Size: Second Reserved 2
nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.size = 2

-- Display: Second Reserved 2
nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.display = function(value)
  return "Second Reserved 2: "..value
end

-- Dissect: Second Reserved 2
nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.second_reserved_2, range, value, display)

  return offset + length, value
end

-- Segment Char 1
nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1 = {}

-- Size: Segment Char 1
nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size = 1

-- Display: Segment Char 1
nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.display = function(value)
  return "Segment Char 1: "..value
end

-- Dissect: Segment Char 1
nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.segment_char_1, range, value, display)

  return offset + length, value
end

-- Segment Short 2
nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2 = {}

-- Size: Segment Short 2
nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.size = 2

-- Display: Segment Short 2
nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.labels = {
  [1] = "Segment Short 2: Equity Derivatives Fo (1)",
  [2] = "Segment Short 2: Currency Derivatives (2)",
  [3] = "Segment Short 2: Capital Markets Cash Equity (3)",
  [4] = "Segment Short 2: Slbm Markets (4)",
  [5] = "Segment Short 2: Commodity Derivatives (5)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.labels[value] or "Segment Short 2: Unknown("..value..")"
end

-- Dissect: Segment Short 2
nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.segment_short_2, range, value, display)

  return offset + length, value
end

-- Sequence Number
nse_nsefo_dropcopy_nnfdc_v3_0.sequence_number = {}

-- Size: Sequence Number
nse_nsefo_dropcopy_nnfdc_v3_0.sequence_number.size = 8

-- Display: Sequence Number
nse_nsefo_dropcopy_nnfdc_v3_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nse_nsefo_dropcopy_nnfdc_v3_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Key
nse_nsefo_dropcopy_nnfdc_v3_0.session_key = {}

-- Size: Session Key
nse_nsefo_dropcopy_nnfdc_v3_0.session_key.size = 8

-- Display: Session Key
nse_nsefo_dropcopy_nnfdc_v3_0.session_key.display = function(value)
  return "Session Key: "..value
end

-- Dissect: Session Key
nse_nsefo_dropcopy_nnfdc_v3_0.session_key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.session_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.session_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.session_key, range, value, display)

  return offset + length, value
end

-- Settlor
nse_nsefo_dropcopy_nnfdc_v3_0.settlor = {}

-- Size: Settlor
nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size = 12

-- Display: Settlor
nse_nsefo_dropcopy_nnfdc_v3_0.settlor.display = function(value)
  return "Settlor: "..value
end

-- Dissect: Settlor
nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.settlor, range, value, display)

  return offset + length, value
end

-- Settlor 1
nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1 = {}

-- Size: Settlor 1
nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.size = 12

-- Display: Settlor 1
nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.display = function(value)
  return "Settlor 1: "..value
end

-- Dissect: Settlor 1
nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.settlor_1, range, value, display)

  return offset + length, value
end

-- Static Cryptographic Iv
nse_nsefo_dropcopy_nnfdc_v3_0.static_cryptographic_iv = {}

-- Size: Static Cryptographic Iv
nse_nsefo_dropcopy_nnfdc_v3_0.static_cryptographic_iv.size = 8

-- Display: Static Cryptographic Iv
nse_nsefo_dropcopy_nnfdc_v3_0.static_cryptographic_iv.display = function(value)
  return "Static Cryptographic Iv: "..value
end

-- Dissect: Static Cryptographic Iv
nse_nsefo_dropcopy_nnfdc_v3_0.static_cryptographic_iv.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.static_cryptographic_iv.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.static_cryptographic_iv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.static_cryptographic_iv, range, value, display)

  return offset + length, value
end

-- Suspended
nse_nsefo_dropcopy_nnfdc_v3_0.suspended = {}

-- Size: Suspended
nse_nsefo_dropcopy_nnfdc_v3_0.suspended.size = 1

-- Display: Suspended
nse_nsefo_dropcopy_nnfdc_v3_0.suspended.display = function(value)
  return "Suspended: "..value
end

-- Dissect: Suspended
nse_nsefo_dropcopy_nnfdc_v3_0.suspended.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.suspended.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.suspended.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.suspended, range, value, display)

  return offset + length, value
end

-- Third Reserved 2
nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2 = {}

-- Size: Third Reserved 2
nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.size = 2

-- Display: Third Reserved 2
nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.display = function(value)
  return "Third Reserved 2: "..value
end

-- Dissect: Third Reserved 2
nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.third_reserved_2, range, value, display)

  return offset + length, value
end

-- Token
nse_nsefo_dropcopy_nnfdc_v3_0.token = {}

-- Size: Token
nse_nsefo_dropcopy_nnfdc_v3_0.token.size = 4

-- Display: Token
nse_nsefo_dropcopy_nnfdc_v3_0.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.token.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.token, range, value, display)

  return offset + length, value
end

-- Token 1
nse_nsefo_dropcopy_nnfdc_v3_0.token_1 = {}

-- Size: Token 1
nse_nsefo_dropcopy_nnfdc_v3_0.token_1.size = 4

-- Display: Token 1
nse_nsefo_dropcopy_nnfdc_v3_0.token_1.display = function(value)
  return "Token 1: "..value
end

-- Dissect: Token 1
nse_nsefo_dropcopy_nnfdc_v3_0.token_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.token_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.token_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.token_1, range, value, display)

  return offset + length, value
end

-- Token 2
nse_nsefo_dropcopy_nnfdc_v3_0.token_2 = {}

-- Size: Token 2
nse_nsefo_dropcopy_nnfdc_v3_0.token_2.size = 4

-- Display: Token 2
nse_nsefo_dropcopy_nnfdc_v3_0.token_2.display = function(value)
  return "Token 2: "..value
end

-- Dissect: Token 2
nse_nsefo_dropcopy_nnfdc_v3_0.token_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.token_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.token_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.token_2, range, value, display)

  return offset + length, value
end

-- Total Vol Remaining
nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining = {}

-- Size: Total Vol Remaining
nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.size = 4

-- Display: Total Vol Remaining
nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.display = function(value)
  return "Total Vol Remaining: "..value
end

-- Dissect: Total Vol Remaining
nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.total_vol_remaining, range, value, display)

  return offset + length, value
end

-- Total Vol Remaining 1
nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1 = {}

-- Size: Total Vol Remaining 1
nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.size = 4

-- Display: Total Vol Remaining 1
nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.display = function(value)
  return "Total Vol Remaining 1: "..value
end

-- Dissect: Total Vol Remaining 1
nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.total_vol_remaining_1, range, value, display)

  return offset + length, value
end

-- Total Vol Remaining 2
nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_2 = {}

-- Size: Total Vol Remaining 2
nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_2.size = 4

-- Display: Total Vol Remaining 2
nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_2.display = function(value)
  return "Total Vol Remaining 2: "..value
end

-- Dissect: Total Vol Remaining 2
nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.total_vol_remaining_2, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nsefo_dropcopy_nnfdc_v3_0.trader_id = {}

-- Size: Trader Id
nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.size = 4

-- Display: Trader Id
nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trader Id 1
nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1 = {}

-- Size: Trader Id 1
nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.size = 4

-- Display: Trader Id 1
nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.display = function(value)
  return "Trader Id 1: "..value
end

-- Dissect: Trader Id 1
nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trader_id_1, range, value, display)

  return offset + length, value
end

-- Trader Number
nse_nsefo_dropcopy_nnfdc_v3_0.trader_number = {}

-- Size: Trader Number
nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.size = 4

-- Display: Trader Number
nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.display = function(value)
  return "Trader Number: "..value
end

-- Dissect: Trader Number
nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trader_number, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nsefo_dropcopy_nnfdc_v3_0.transaction_code = {}

-- Size: Transaction Code
nse_nsefo_dropcopy_nnfdc_v3_0.transaction_code.size = 2

-- Display: Transaction Code
nse_nsefo_dropcopy_nnfdc_v3_0.transaction_code.labels = {
  [2400] = "Transaction Code: Gr Request Message (2400)",
  [2401] = "Transaction Code: Gr Response Message (2401)",
  [23008] = "Transaction Code: Gr Secure User Registration Request Message (23008)",
  [23009] = "Transaction Code: Gr Secure User Registration Response Message (23009)",
  [23506] = "Transaction Code: Heartbeat Message (23506)",
  [2500] = "Transaction Code: Dc Signon In Message (2500)",
  [2501] = "Transaction Code: Dc Signon Out Message (2501)",
  [2320] = "Transaction Code: Dc Sign Off Message (2320)",
  [8000] = "Transaction Code: Dc Trd Subscription Request Message (8000)",
  [9000] = "Transaction Code: Dc Ont Subscription Request Message (9000)",
  [8006] = "Transaction Code: Dc Error Response Trade Message (8006)",
  [9006] = "Transaction Code: Dc Error Response Order Message (9006)",
  [2222] = "Transaction Code: Trade Confirmation Message (2222)",
  [2282] = "Transaction Code: Trade Cancel Confirm Message (2282)",
  [2286] = "Transaction Code: Trade Cancel Reject Message (2286)",
  [2287] = "Transaction Code: Trade Modify Confirm Message (2287)",
  [2288] = "Transaction Code: Trade Modify Rejected Message (2288)",
  [4506] = "Transaction Code: Giveup App Confirm Message (4506)",
  [4507] = "Transaction Code: Giveup Rej Confirm Message (4507)",
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
  [2124] = "Transaction Code: Sp Order Confirmation Message (2124)",
  [2125] = "Transaction Code: Twol Order Confirmation Message (2125)",
  [2126] = "Transaction Code: Thrl Order Confirmation Message (2126)",
  [2127] = "Transaction Code: Sp Order Cxl Rejected Message (2127)",
  [2130] = "Transaction Code: Sp Order Cxl Confirmation Message (2130)",
  [2131] = "Transaction Code: Twol Order Cxl Confirmation Message (2131)",
  [2132] = "Transaction Code: Thrl Order Cxl Confirmation Message (2132)",
  [2133] = "Transaction Code: Sp Order Mod Reject Message (2133)",
  [2136] = "Transaction Code: Sp Order Mod Confirmation Message (2136)",
  [2154] = "Transaction Code: Sp Order Rejected Message (2154)",
  [2155] = "Transaction Code: Twol Order Error Message (2155)",
  [2156] = "Transaction Code: Thrl Order Error Message (2156)",
  [9004] = "Transaction Code: Batch Spread Cxl Out Message (9004)",
}

nse_nsefo_dropcopy_nnfdc_v3_0.transaction_code.display = function(value)
  return nse_nsefo_dropcopy_nnfdc_v3_0.transaction_code.labels[value] or "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nsefo_dropcopy_nnfdc_v3_0.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.transaction_code, range, value, display)

  return offset + length, value
end

-- Trigger Price
nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price = {}

-- Size: Trigger Price
nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.size = 4

-- Display: Trigger Price
nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.display = function(value)
  return "Trigger Price: "..value
end

-- Translate: Trigger Price
nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.translate = function(raw)
  return raw/100
end

-- Dissect: Trigger Price
nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.translate(raw)
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trigger_price, range, value, display)

  return offset + length, value
end

-- User Id
nse_nsefo_dropcopy_nnfdc_v3_0.user_id = {}

-- Size: User Id
nse_nsefo_dropcopy_nnfdc_v3_0.user_id.size = 4

-- Display: User Id
nse_nsefo_dropcopy_nnfdc_v3_0.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
nse_nsefo_dropcopy_nnfdc_v3_0.user_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.user_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.user_id, range, value, display)

  return offset + length, value
end

-- Volume
nse_nsefo_dropcopy_nnfdc_v3_0.volume = {}

-- Size: Volume
nse_nsefo_dropcopy_nnfdc_v3_0.volume.size = 4

-- Display: Volume
nse_nsefo_dropcopy_nnfdc_v3_0.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nse_nsefo_dropcopy_nnfdc_v3_0.volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.volume, range, value, display)

  return offset + length, value
end

-- Volume 1
nse_nsefo_dropcopy_nnfdc_v3_0.volume_1 = {}

-- Size: Volume 1
nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.size = 4

-- Display: Volume 1
nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.display = function(value)
  return "Volume 1: "..value
end

-- Dissect: Volume 1
nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.volume_1, range, value, display)

  return offset + length, value
end

-- Volume 2
nse_nsefo_dropcopy_nnfdc_v3_0.volume_2 = {}

-- Size: Volume 2
nse_nsefo_dropcopy_nnfdc_v3_0.volume_2.size = 4

-- Display: Volume 2
nse_nsefo_dropcopy_nnfdc_v3_0.volume_2.display = function(value)
  return "Volume 2: "..value
end

-- Dissect: Volume 2
nse_nsefo_dropcopy_nnfdc_v3_0.volume_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_dropcopy_nnfdc_v3_0.volume_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.volume_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.volume_2, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseFo DropCopy NnfDc 3.0
-----------------------------------------------------------------------

-- St Order Flags
nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags = {}

-- Size: St Order Flags
nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size = 2

-- Display: St Order Flags
nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.display = function(range, value, packet, parent)
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
  -- Is Boc flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Boc"
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
nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.bits = function(range, value, packet, parent)

  -- Matched Ind: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.matched_ind, range, value)

  -- Traded: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.traded, range, value)

  -- Modified: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.modified, range, value)

  -- Frozen: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.frozen, range, value)

  -- Preopen: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.preopen, range, value)

  -- Boc: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.boc, range, value)

  -- Stpc: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.stpc, range, value)

  -- Order Flags Reserved 7: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_flags_reserved_7, range, value)

  -- Ato: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.ato, range, value)

  -- Mkt: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.mkt, range, value)

  -- On Stop: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.on_stop, range, value)

  -- Day: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.day, range, value)

  -- Gtc: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.gtc, range, value)

  -- Ioc: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.ioc, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.aon, range, value)

  -- Mf: 1 Bit
  parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.mf, range, value)
end

-- Dissect: St Order Flags
nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.st_order_flags, range, display)

  if show.structs then
    nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Ms Spd Leg Info Leg 3
nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3 = {}

-- Size: Ms Spd Leg Info Leg 3
nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.token_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size

-- Display: Ms Spd Leg Info Leg 3
nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ms Spd Leg Info Leg 3
nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 2: INT
  index, token_2 = nse_nsefo_dropcopy_nnfdc_v3_0.token_2.dissect(buffer, index, packet, parent)

  -- Buy Sell 2: SHORT
  index, buy_sell_2 = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_2.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 2: INT
  index, total_vol_remaining_2 = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_2.dissect(buffer, index, packet, parent)

  -- Volume 2: INT
  index, volume_2 = nse_nsefo_dropcopy_nnfdc_v3_0.volume_2.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Open Close 2: CHAR
  index, open_close_2 = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_2.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ms Spd Leg Info Leg 3
nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.ms_spd_leg_info_leg_3, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.fields(buffer, offset, packet, parent)
  end
end

-- Ms Spd Leg Info Leg 2
nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2 = {}

-- Size: Ms Spd Leg Info Leg 2
nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.token_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size

-- Display: Ms Spd Leg Info Leg 2
nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ms Spd Leg Info Leg 2
nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 2: INT
  index, token_2 = nse_nsefo_dropcopy_nnfdc_v3_0.token_2.dissect(buffer, index, packet, parent)

  -- Buy Sell 2: SHORT
  index, buy_sell_2 = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_2.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 2: INT
  index, total_vol_remaining_2 = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_2.dissect(buffer, index, packet, parent)

  -- Volume 2: INT
  index, volume_2 = nse_nsefo_dropcopy_nnfdc_v3_0.volume_2.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Open Close 2: CHAR
  index, open_close_2 = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_2.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ms Spd Leg Info Leg 2
nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.ms_spd_leg_info_leg_2, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.fields(buffer, offset, packet, parent)
  end
end

-- Batch Spread Cxl Out Message
nse_nsefo_dropcopy_nnfdc_v3_0.batch_spread_cxl_out_message = {}

-- Size: Batch Spread Cxl Out Message
nse_nsefo_dropcopy_nnfdc_v3_0.batch_spread_cxl_out_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.token_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.size

-- Display: Batch Spread Cxl Out Message
nse_nsefo_dropcopy_nnfdc_v3_0.batch_spread_cxl_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Batch Spread Cxl Out Message
nse_nsefo_dropcopy_nnfdc_v3_0.batch_spread_cxl_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: INT
  index, token_1 = nse_nsefo_dropcopy_nnfdc_v3_0.token_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: INT
  index, total_vol_remaining_1 = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: INT
  index, volume_1 = nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id 1: INT
  index, trader_id_1 = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: CHAR
  index, pro_client_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.dissect(buffer, index, packet, parent)

  -- Price Diff: INT
  index, price_diff = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 7 fields
  index, ms_spd_leg_info_leg_2 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 7 fields
  index, ms_spd_leg_info_leg_3 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Batch Spread Cxl Out Message
nse_nsefo_dropcopy_nnfdc_v3_0.batch_spread_cxl_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.batch_spread_cxl_out_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.batch_spread_cxl_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.batch_spread_cxl_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.batch_spread_cxl_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Thrl Order Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_error_message = {}

-- Size: Thrl Order Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_error_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.token_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.size

-- Display: Thrl Order Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Thrl Order Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: INT
  index, token_1 = nse_nsefo_dropcopy_nnfdc_v3_0.token_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: INT
  index, total_vol_remaining_1 = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: INT
  index, volume_1 = nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id 1: INT
  index, trader_id_1 = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: CHAR
  index, pro_client_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.dissect(buffer, index, packet, parent)

  -- Price Diff: INT
  index, price_diff = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 7 fields
  index, ms_spd_leg_info_leg_2 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 7 fields
  index, ms_spd_leg_info_leg_3 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Thrl Order Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.thrl_order_error_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Twol Order Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_error_message = {}

-- Size: Twol Order Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_error_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.token_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.size

-- Display: Twol Order Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Twol Order Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: INT
  index, token_1 = nse_nsefo_dropcopy_nnfdc_v3_0.token_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: INT
  index, total_vol_remaining_1 = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: INT
  index, volume_1 = nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id 1: INT
  index, trader_id_1 = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: CHAR
  index, pro_client_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.dissect(buffer, index, packet, parent)

  -- Price Diff: INT
  index, price_diff = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 7 fields
  index, ms_spd_leg_info_leg_2 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 7 fields
  index, ms_spd_leg_info_leg_3 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Twol Order Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.twol_order_error_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Sp Order Rejected Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_rejected_message = {}

-- Size: Sp Order Rejected Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_rejected_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.token_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.size

-- Display: Sp Order Rejected Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sp Order Rejected Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: INT
  index, token_1 = nse_nsefo_dropcopy_nnfdc_v3_0.token_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: INT
  index, total_vol_remaining_1 = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: INT
  index, volume_1 = nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id 1: INT
  index, trader_id_1 = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: CHAR
  index, pro_client_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.dissect(buffer, index, packet, parent)

  -- Price Diff: INT
  index, price_diff = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 7 fields
  index, ms_spd_leg_info_leg_2 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 7 fields
  index, ms_spd_leg_info_leg_3 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sp Order Rejected Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.sp_order_rejected_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Sp Order Mod Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_confirmation_message = {}

-- Size: Sp Order Mod Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_confirmation_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.token_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.size

-- Display: Sp Order Mod Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sp Order Mod Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: INT
  index, token_1 = nse_nsefo_dropcopy_nnfdc_v3_0.token_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: INT
  index, total_vol_remaining_1 = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: INT
  index, volume_1 = nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id 1: INT
  index, trader_id_1 = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: CHAR
  index, pro_client_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.dissect(buffer, index, packet, parent)

  -- Price Diff: INT
  index, price_diff = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 7 fields
  index, ms_spd_leg_info_leg_2 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 7 fields
  index, ms_spd_leg_info_leg_3 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sp Order Mod Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.sp_order_mod_confirmation_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Sp Order Mod Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_reject_message = {}

-- Size: Sp Order Mod Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_reject_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.token_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.size

-- Display: Sp Order Mod Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sp Order Mod Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: INT
  index, token_1 = nse_nsefo_dropcopy_nnfdc_v3_0.token_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: INT
  index, total_vol_remaining_1 = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: INT
  index, volume_1 = nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id 1: INT
  index, trader_id_1 = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: CHAR
  index, pro_client_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.dissect(buffer, index, packet, parent)

  -- Price Diff: INT
  index, price_diff = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 7 fields
  index, ms_spd_leg_info_leg_2 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 7 fields
  index, ms_spd_leg_info_leg_3 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sp Order Mod Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.sp_order_mod_reject_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Thrl Order Cxl Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_cxl_confirmation_message = {}

-- Size: Thrl Order Cxl Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_cxl_confirmation_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.token_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.size

-- Display: Thrl Order Cxl Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_cxl_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Thrl Order Cxl Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_cxl_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: INT
  index, token_1 = nse_nsefo_dropcopy_nnfdc_v3_0.token_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: INT
  index, total_vol_remaining_1 = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: INT
  index, volume_1 = nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id 1: INT
  index, trader_id_1 = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: CHAR
  index, pro_client_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.dissect(buffer, index, packet, parent)

  -- Price Diff: INT
  index, price_diff = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 7 fields
  index, ms_spd_leg_info_leg_2 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 7 fields
  index, ms_spd_leg_info_leg_3 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Thrl Order Cxl Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_cxl_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.thrl_order_cxl_confirmation_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_cxl_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_cxl_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_cxl_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Twol Order Cxl Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_cxl_confirmation_message = {}

-- Size: Twol Order Cxl Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_cxl_confirmation_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.token_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.size

-- Display: Twol Order Cxl Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_cxl_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Twol Order Cxl Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_cxl_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: INT
  index, token_1 = nse_nsefo_dropcopy_nnfdc_v3_0.token_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: INT
  index, total_vol_remaining_1 = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: INT
  index, volume_1 = nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id 1: INT
  index, trader_id_1 = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: CHAR
  index, pro_client_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.dissect(buffer, index, packet, parent)

  -- Price Diff: INT
  index, price_diff = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 7 fields
  index, ms_spd_leg_info_leg_2 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 7 fields
  index, ms_spd_leg_info_leg_3 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Twol Order Cxl Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_cxl_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.twol_order_cxl_confirmation_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_cxl_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_cxl_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_cxl_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Sp Order Cxl Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_confirmation_message = {}

-- Size: Sp Order Cxl Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_confirmation_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.token_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.size

-- Display: Sp Order Cxl Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sp Order Cxl Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: INT
  index, token_1 = nse_nsefo_dropcopy_nnfdc_v3_0.token_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: INT
  index, total_vol_remaining_1 = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: INT
  index, volume_1 = nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id 1: INT
  index, trader_id_1 = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: CHAR
  index, pro_client_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.dissect(buffer, index, packet, parent)

  -- Price Diff: INT
  index, price_diff = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 7 fields
  index, ms_spd_leg_info_leg_2 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 7 fields
  index, ms_spd_leg_info_leg_3 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sp Order Cxl Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.sp_order_cxl_confirmation_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Sp Order Cxl Rejected Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_rejected_message = {}

-- Size: Sp Order Cxl Rejected Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_rejected_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.token_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.size

-- Display: Sp Order Cxl Rejected Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sp Order Cxl Rejected Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: INT
  index, token_1 = nse_nsefo_dropcopy_nnfdc_v3_0.token_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: INT
  index, total_vol_remaining_1 = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: INT
  index, volume_1 = nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id 1: INT
  index, trader_id_1 = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: CHAR
  index, pro_client_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.dissect(buffer, index, packet, parent)

  -- Price Diff: INT
  index, price_diff = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 7 fields
  index, ms_spd_leg_info_leg_2 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 7 fields
  index, ms_spd_leg_info_leg_3 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sp Order Cxl Rejected Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.sp_order_cxl_rejected_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Thrl Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_confirmation_message = {}

-- Size: Thrl Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_confirmation_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.token_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.size

-- Display: Thrl Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Thrl Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: INT
  index, token_1 = nse_nsefo_dropcopy_nnfdc_v3_0.token_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: INT
  index, total_vol_remaining_1 = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: INT
  index, volume_1 = nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id 1: INT
  index, trader_id_1 = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: CHAR
  index, pro_client_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.dissect(buffer, index, packet, parent)

  -- Price Diff: INT
  index, price_diff = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 7 fields
  index, ms_spd_leg_info_leg_2 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 7 fields
  index, ms_spd_leg_info_leg_3 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Thrl Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.thrl_order_confirmation_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Twol Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_confirmation_message = {}

-- Size: Twol Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_confirmation_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.token_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.size

-- Display: Twol Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Twol Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: INT
  index, token_1 = nse_nsefo_dropcopy_nnfdc_v3_0.token_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: INT
  index, total_vol_remaining_1 = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: INT
  index, volume_1 = nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id 1: INT
  index, trader_id_1 = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: CHAR
  index, pro_client_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.dissect(buffer, index, packet, parent)

  -- Price Diff: INT
  index, price_diff = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 7 fields
  index, ms_spd_leg_info_leg_2 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 7 fields
  index, ms_spd_leg_info_leg_3 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Twol Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.twol_order_confirmation_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Sp Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_confirmation_message = {}

-- Size: Sp Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_confirmation_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.token_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.size

-- Display: Sp Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sp Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: INT
  index, token_1 = nse_nsefo_dropcopy_nnfdc_v3_0.token_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.order_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nsefo_dropcopy_nnfdc_v3_0.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: INT
  index, total_vol_remaining_1 = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: INT
  index, volume_1 = nse_nsefo_dropcopy_nnfdc_v3_0.volume_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id 1: INT
  index, trader_id_1 = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id_1.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nsefo_dropcopy_nnfdc_v3_0.account_number_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: CHAR
  index, pro_client_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_1.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nsefo_dropcopy_nnfdc_v3_0.open_close_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nsefo_dropcopy_nnfdc_v3_0.settlor_1.dissect(buffer, index, packet, parent)

  -- Price Diff: INT
  index, price_diff = nse_nsefo_dropcopy_nnfdc_v3_0.price_diff.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 7 fields
  index, ms_spd_leg_info_leg_2 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 7 fields
  index, ms_spd_leg_info_leg_3 = nse_nsefo_dropcopy_nnfdc_v3_0.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sp Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.sp_order_confirmation_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Batch Order Cancel Message
nse_nsefo_dropcopy_nnfdc_v3_0.batch_order_cancel_message = {}

-- Size: Batch Order Cancel Message
nse_nsefo_dropcopy_nnfdc_v3_0.batch_order_cancel_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size

-- Display: Batch Order Cancel Message
nse_nsefo_dropcopy_nnfdc_v3_0.batch_order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Batch Order Cancel Message
nse_nsefo_dropcopy_nnfdc_v3_0.batch_order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsefo_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.dissect(buffer, index, packet, parent)

  -- Second Reserved 2: SHORT
  index, second_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.dissect(buffer, index, packet, parent)

  -- Third Reserved 2: SHORT
  index, third_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsefo_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Batch Order Cancel Message
nse_nsefo_dropcopy_nnfdc_v3_0.batch_order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.batch_order_cancel_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.batch_order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.batch_order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.batch_order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_error_message = {}

-- Size: Order Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_error_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size

-- Display: Order Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsefo_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.dissect(buffer, index, packet, parent)

  -- Second Reserved 2: SHORT
  index, second_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.dissect(buffer, index, packet, parent)

  -- Third Reserved 2: SHORT
  index, third_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsefo_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Error Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_error_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.order_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.order_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.order_error_message.fields(buffer, offset, packet, parent)
  end
end

-- On Stop Notification Message
nse_nsefo_dropcopy_nnfdc_v3_0.on_stop_notification_message = {}

-- Size: On Stop Notification Message
nse_nsefo_dropcopy_nnfdc_v3_0.on_stop_notification_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size

-- Display: On Stop Notification Message
nse_nsefo_dropcopy_nnfdc_v3_0.on_stop_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: On Stop Notification Message
nse_nsefo_dropcopy_nnfdc_v3_0.on_stop_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsefo_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.dissect(buffer, index, packet, parent)

  -- Second Reserved 2: SHORT
  index, second_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.dissect(buffer, index, packet, parent)

  -- Third Reserved 2: SHORT
  index, third_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsefo_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: On Stop Notification Message
nse_nsefo_dropcopy_nnfdc_v3_0.on_stop_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.on_stop_notification_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.on_stop_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.on_stop_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.on_stop_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Freeze To Control Message
nse_nsefo_dropcopy_nnfdc_v3_0.freeze_to_control_message = {}

-- Size: Freeze To Control Message
nse_nsefo_dropcopy_nnfdc_v3_0.freeze_to_control_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size

-- Display: Freeze To Control Message
nse_nsefo_dropcopy_nnfdc_v3_0.freeze_to_control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Freeze To Control Message
nse_nsefo_dropcopy_nnfdc_v3_0.freeze_to_control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsefo_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.dissect(buffer, index, packet, parent)

  -- Second Reserved 2: SHORT
  index, second_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.dissect(buffer, index, packet, parent)

  -- Third Reserved 2: SHORT
  index, third_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsefo_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Freeze To Control Message
nse_nsefo_dropcopy_nnfdc_v3_0.freeze_to_control_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.freeze_to_control_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.freeze_to_control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.freeze_to_control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.freeze_to_control_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message = {}

-- Size: Order Cancel Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size

-- Display: Order Cancel Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsefo_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.dissect(buffer, index, packet, parent)

  -- Second Reserved 2: SHORT
  index, second_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.dissect(buffer, index, packet, parent)

  -- Third Reserved 2: SHORT
  index, third_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsefo_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_cancel_confirmation_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mod Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_confirmation_message = {}

-- Size: Order Mod Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size

-- Display: Order Mod Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mod Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsefo_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.dissect(buffer, index, packet, parent)

  -- Second Reserved 2: SHORT
  index, second_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.dissect(buffer, index, packet, parent)

  -- Third Reserved 2: SHORT
  index, third_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsefo_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mod Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_mod_confirmation_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_confirmation_message = {}

-- Size: Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_confirmation_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size

-- Display: Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsefo_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.dissect(buffer, index, packet, parent)

  -- Second Reserved 2: SHORT
  index, second_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.dissect(buffer, index, packet, parent)

  -- Third Reserved 2: SHORT
  index, third_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsefo_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_confirmation_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.order_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.order_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.order_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_reject_message = {}

-- Size: Order Cancel Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_reject_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size

-- Display: Order Cancel Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsefo_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.dissect(buffer, index, packet, parent)

  -- Second Reserved 2: SHORT
  index, second_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.dissect(buffer, index, packet, parent)

  -- Third Reserved 2: SHORT
  index, third_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsefo_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mod Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_reject_message = {}

-- Size: Order Mod Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_reject_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size

-- Display: Order Mod Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mod Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsefo_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.dissect(buffer, index, packet, parent)

  -- Second Reserved 2: SHORT
  index, second_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.dissect(buffer, index, packet, parent)

  -- Third Reserved 2: SHORT
  index, third_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsefo_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mod Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.order_mod_reject_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.price_confirmation_message = {}

-- Size: Price Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.price_confirmation_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.suspended.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.size

-- Display: Price Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.price_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.price_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: INT
  index, total_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: INT
  index, volume = nse_nsefo_dropcopy_nnfdc_v3_0.volume.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: INT
  index, trigger_price = nse_nsefo_dropcopy_nnfdc_v3_0.trigger_price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_2.dissect(buffer, index, packet, parent)

  -- Second Reserved 2: SHORT
  index, second_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.second_reserved_2.dissect(buffer, index, packet, parent)

  -- Third Reserved 2: SHORT
  index, third_reserved_2 = nse_nsefo_dropcopy_nnfdc_v3_0.third_reserved_2.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsefo_dropcopy_nnfdc_v3_0.suspended.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Segment Char 1: CHAR
  index, segment_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_char_1.dissect(buffer, index, packet, parent)

  -- Participant Type: CHAR
  index, participant_type = nse_nsefo_dropcopy_nnfdc_v3_0.participant_type.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Pro Client Char 1: CHAR
  index, pro_client_char_1 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_char_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_dropcopy_nnfdc_v3_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Reference Id: INT
  index, reference_id = nse_nsefo_dropcopy_nnfdc_v3_0.reference_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.price_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.price_confirmation_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.price_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.price_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.price_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Giveup Rej Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.giveup_rej_confirm_message = {}

-- Size: Giveup Rej Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.giveup_rej_confirm_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size

-- Display: Giveup Rej Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.giveup_rej_confirm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Giveup Rej Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.giveup_rej_confirm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Trader Number: INT
  index, trader_number = nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Volume: INT
  index, original_volume = nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume: INT
  index, remaining_volume = nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Fill Number: INT
  index, fill_number = nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: INT
  index, fill_qty = nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: INT
  index, fill_price = nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Pro Client Short 2: SHORT
  index, pro_client_short_2 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Segment Short 2: SHORT
  index, segment_short_2 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsefo_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsefo_dropcopy_nnfdc_v3_0.participant.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Giveup Rej Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.giveup_rej_confirm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.giveup_rej_confirm_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.giveup_rej_confirm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.giveup_rej_confirm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.giveup_rej_confirm_message.fields(buffer, offset, packet, parent)
  end
end

-- Giveup App Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.giveup_app_confirm_message = {}

-- Size: Giveup App Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.giveup_app_confirm_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size

-- Display: Giveup App Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.giveup_app_confirm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Giveup App Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.giveup_app_confirm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Trader Number: INT
  index, trader_number = nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Volume: INT
  index, original_volume = nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume: INT
  index, remaining_volume = nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Fill Number: INT
  index, fill_number = nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: INT
  index, fill_qty = nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: INT
  index, fill_price = nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Pro Client Short 2: SHORT
  index, pro_client_short_2 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Segment Short 2: SHORT
  index, segment_short_2 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsefo_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsefo_dropcopy_nnfdc_v3_0.participant.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Giveup App Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.giveup_app_confirm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.giveup_app_confirm_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.giveup_app_confirm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.giveup_app_confirm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.giveup_app_confirm_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Modify Rejected Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_rejected_message = {}

-- Size: Trade Modify Rejected Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_rejected_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size

-- Display: Trade Modify Rejected Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Modify Rejected Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Trader Number: INT
  index, trader_number = nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Volume: INT
  index, original_volume = nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume: INT
  index, remaining_volume = nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Fill Number: INT
  index, fill_number = nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: INT
  index, fill_qty = nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: INT
  index, fill_price = nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Pro Client Short 2: SHORT
  index, pro_client_short_2 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Segment Short 2: SHORT
  index, segment_short_2 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsefo_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsefo_dropcopy_nnfdc_v3_0.participant.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Modify Rejected Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trade_modify_rejected_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Modify Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_confirm_message = {}

-- Size: Trade Modify Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size

-- Display: Trade Modify Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Modify Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Trader Number: INT
  index, trader_number = nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Volume: INT
  index, original_volume = nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume: INT
  index, remaining_volume = nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Fill Number: INT
  index, fill_number = nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: INT
  index, fill_qty = nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: INT
  index, fill_price = nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Pro Client Short 2: SHORT
  index, pro_client_short_2 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Segment Short 2: SHORT
  index, segment_short_2 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsefo_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsefo_dropcopy_nnfdc_v3_0.participant.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Modify Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trade_modify_confirm_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_reject_message = {}

-- Size: Trade Cancel Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size

-- Display: Trade Cancel Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Trader Number: INT
  index, trader_number = nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Volume: INT
  index, original_volume = nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume: INT
  index, remaining_volume = nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Fill Number: INT
  index, fill_number = nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: INT
  index, fill_qty = nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: INT
  index, fill_price = nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Pro Client Short 2: SHORT
  index, pro_client_short_2 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Segment Short 2: SHORT
  index, segment_short_2 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsefo_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsefo_dropcopy_nnfdc_v3_0.participant.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Reject Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trade_cancel_reject_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message = {}

-- Size: Trade Cancel Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size

-- Display: Trade Cancel Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Trader Number: INT
  index, trader_number = nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Volume: INT
  index, original_volume = nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume: INT
  index, remaining_volume = nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Fill Number: INT
  index, fill_number = nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: INT
  index, fill_qty = nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: INT
  index, fill_price = nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Pro Client Short 2: SHORT
  index, pro_client_short_2 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Segment Short 2: SHORT
  index, segment_short_2 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsefo_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsefo_dropcopy_nnfdc_v3_0.participant.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Confirm Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trade_cancel_confirm_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_confirmation_message = {}

-- Size: Trade Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_confirmation_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.order_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.token.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.book_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.filler.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.pan.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.account_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.settlor.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.open_close.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.participant.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.size

-- Display: Trade Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_dropcopy_nnfdc_v3_0.order_number.dissect(buffer, index, packet, parent)

  -- Trader Number: INT
  index, trader_number = nse_nsefo_dropcopy_nnfdc_v3_0.trader_number.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_dropcopy_nnfdc_v3_0.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Volume: INT
  index, original_volume = nse_nsefo_dropcopy_nnfdc_v3_0.original_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: INT
  index, disclosed_volume = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume: INT
  index, remaining_volume = nse_nsefo_dropcopy_nnfdc_v3_0.remaining_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: INT
  index, disclosed_vol_remaining = nse_nsefo_dropcopy_nnfdc_v3_0.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_dropcopy_nnfdc_v3_0.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsefo_dropcopy_nnfdc_v3_0.st_order_flags.dissect(buffer, index, packet, parent)

  -- Fill Number: INT
  index, fill_number = nse_nsefo_dropcopy_nnfdc_v3_0.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: INT
  index, fill_qty = nse_nsefo_dropcopy_nnfdc_v3_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: INT
  index, fill_price = nse_nsefo_dropcopy_nnfdc_v3_0.fill_price.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_dropcopy_nnfdc_v3_0.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_dropcopy_nnfdc_v3_0.book_type.dissect(buffer, index, packet, parent)

  -- Pro Client Short 2: SHORT
  index, pro_client_short_2 = nse_nsefo_dropcopy_nnfdc_v3_0.pro_client_short_2.dissect(buffer, index, packet, parent)

  -- Algo Id: INT
  index, algo_id = nse_nsefo_dropcopy_nnfdc_v3_0.algo_id.dissect(buffer, index, packet, parent)

  -- Activity Time In Nanos: LONG
  index, activity_time_in_nanos = nse_nsefo_dropcopy_nnfdc_v3_0.activity_time_in_nanos.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_dropcopy_nnfdc_v3_0.nnf_field.dissect(buffer, index, packet, parent)

  -- Segment Short 2: SHORT
  index, segment_short_2 = nse_nsefo_dropcopy_nnfdc_v3_0.segment_short_2.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_dropcopy_nnfdc_v3_0.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsefo_dropcopy_nnfdc_v3_0.filler.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_dropcopy_nnfdc_v3_0.pan.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_dropcopy_nnfdc_v3_0.account_number.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_dropcopy_nnfdc_v3_0.settlor.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nsefo_dropcopy_nnfdc_v3_0.giveup_flag.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_dropcopy_nnfdc_v3_0.open_close.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsefo_dropcopy_nnfdc_v3_0.participant.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_dropcopy_nnfdc_v3_0.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Confirmation Message
nse_nsefo_dropcopy_nnfdc_v3_0.trade_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.trade_confirmation_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.trade_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.trade_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.trade_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Error Response Order Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_order_message = {}

-- Size: Dc Error Response Order Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_order_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.error_message.size

-- Display: Dc Error Response Order Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Error Response Order Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Error Message: CHAR
  index, error_message = nse_nsefo_dropcopy_nnfdc_v3_0.error_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Error Response Order Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dc_error_response_order_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Error Response Trade Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_trade_message = {}

-- Size: Dc Error Response Trade Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.error_message.size

-- Display: Dc Error Response Trade Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Error Response Trade Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Error Message: CHAR
  index, error_message = nse_nsefo_dropcopy_nnfdc_v3_0.error_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Error Response Trade Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dc_error_response_trade_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Sign Off Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_sign_off_message = {}

-- Size: Dc Sign Off Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_sign_off_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.user_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.partition_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.concurrent_login_id.size

-- Display: Dc Sign Off Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_sign_off_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Sign Off Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_sign_off_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: INT
  index, user_id = nse_nsefo_dropcopy_nnfdc_v3_0.user_id.dissect(buffer, index, packet, parent)

  -- Partition Id: CHAR
  index, partition_id = nse_nsefo_dropcopy_nnfdc_v3_0.partition_id.dissect(buffer, index, packet, parent)

  -- Concurrent Login Id: SHORT
  index, concurrent_login_id = nse_nsefo_dropcopy_nnfdc_v3_0.concurrent_login_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Sign Off Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_sign_off_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dc_sign_off_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.dc_sign_off_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.dc_sign_off_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.dc_sign_off_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Signon Out Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_out_message = {}

-- Size: Dc Signon Out Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_out_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.user_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.partition_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.concurrent_login_id.size

-- Display: Dc Signon Out Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Signon Out Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: INT
  index, user_id = nse_nsefo_dropcopy_nnfdc_v3_0.user_id.dissect(buffer, index, packet, parent)

  -- Partition Id: CHAR
  index, partition_id = nse_nsefo_dropcopy_nnfdc_v3_0.partition_id.dissect(buffer, index, packet, parent)

  -- Concurrent Login Id: SHORT
  index, concurrent_login_id = nse_nsefo_dropcopy_nnfdc_v3_0.concurrent_login_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Signon Out Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dc_signon_out_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Gr Secure User Registration Response Message
nse_nsefo_dropcopy_nnfdc_v3_0.gr_secure_user_registration_response_message = {}

-- Display: Gr Secure User Registration Response Message
nse_nsefo_dropcopy_nnfdc_v3_0.gr_secure_user_registration_response_message.display = function(packet, parent, length)
  return "Gr Secure User Registration Response Message"
end


-- Dissect: Gr Secure User Registration Response Message
nse_nsefo_dropcopy_nnfdc_v3_0.gr_secure_user_registration_response_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.gr_secure_user_registration_response_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Ip Details Partition Wise
nse_nsefo_dropcopy_nnfdc_v3_0.ip_details_partition_wise = {}

-- Size: Ip Details Partition Wise
nse_nsefo_dropcopy_nnfdc_v3_0.ip_details_partition_wise.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.ip_address.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.port.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.partition_id.size

-- Display: Ip Details Partition Wise
nse_nsefo_dropcopy_nnfdc_v3_0.ip_details_partition_wise.display = function(packet, parent, value, length)
  -- Check if struct has text
  if value == nil or value == '' then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Ip Details Partition Wise
nse_nsefo_dropcopy_nnfdc_v3_0.ip_details_partition_wise.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ip Address: CHAR
  index, ip_address = nse_nsefo_dropcopy_nnfdc_v3_0.ip_address.dissect(buffer, index, packet, parent)

  -- Port: INT
  index, port = nse_nsefo_dropcopy_nnfdc_v3_0.port.dissect(buffer, index, packet, parent)

  -- Partition Id: CHAR
  index, partition_id = nse_nsefo_dropcopy_nnfdc_v3_0.partition_id.dissect(buffer, index, packet, parent)

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
nse_nsefo_dropcopy_nnfdc_v3_0.ip_details_partition_wise.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.ip_details_partition_wise, buffer(offset, 0))
    local index, value = nse_nsefo_dropcopy_nnfdc_v3_0.ip_details_partition_wise.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.ip_details_partition_wise.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.ip_details_partition_wise.fields(buffer, offset, packet, parent)
  end
end

-- Gr Response Message
nse_nsefo_dropcopy_nnfdc_v3_0.gr_response_message = {}

-- Size: Gr Response Message
nse_nsefo_dropcopy_nnfdc_v3_0.gr_response_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.message_indicator.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.partition_count.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.ip_details_partition_wise.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.session_key.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_key.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.static_cryptographic_iv.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.dynamic_cryptographic_iv.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_additional_key.size

-- Display: Gr Response Message
nse_nsefo_dropcopy_nnfdc_v3_0.gr_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gr Response Message
nse_nsefo_dropcopy_nnfdc_v3_0.gr_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Indicator: SHORT
  index, message_indicator = nse_nsefo_dropcopy_nnfdc_v3_0.message_indicator.dissect(buffer, index, packet, parent)

  -- Partition Count: SHORT
  index, partition_count = nse_nsefo_dropcopy_nnfdc_v3_0.partition_count.dissect(buffer, index, packet, parent)

  -- Ip Details Partition Wise: Struct of 3 fields
  index, ip_details_partition_wise = nse_nsefo_dropcopy_nnfdc_v3_0.ip_details_partition_wise.dissect(buffer, index, packet, parent)

  -- Session Key: CHAR
  index, session_key = nse_nsefo_dropcopy_nnfdc_v3_0.session_key.dissect(buffer, index, packet, parent)

  -- Cryptographic Key: CHAR
  index, cryptographic_key = nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_key.dissect(buffer, index, packet, parent)

  -- Static Cryptographic Iv: CHAR
  index, static_cryptographic_iv = nse_nsefo_dropcopy_nnfdc_v3_0.static_cryptographic_iv.dissect(buffer, index, packet, parent)

  -- Dynamic Cryptographic Iv: LONG LONG
  index, dynamic_cryptographic_iv = nse_nsefo_dropcopy_nnfdc_v3_0.dynamic_cryptographic_iv.dissect(buffer, index, packet, parent)

  -- Cryptographic Additional Key: CHAR
  index, cryptographic_additional_key = nse_nsefo_dropcopy_nnfdc_v3_0.cryptographic_additional_key.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gr Response Message
nse_nsefo_dropcopy_nnfdc_v3_0.gr_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.gr_response_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.gr_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.gr_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.gr_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Server Message Payload
nse_nsefo_dropcopy_nnfdc_v3_0.server_message_payload = {}

-- Dispatch: Server Message Payload
nse_nsefo_dropcopy_nnfdc_v3_0.server_message_payload.dispatch = {
  [2401] = nse_nsefo_dropcopy_nnfdc_v3_0.gr_response_message.dissect,
  [23009] = nse_nsefo_dropcopy_nnfdc_v3_0.gr_secure_user_registration_response_message.dissect,
  [2501] = nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_out_message.dissect,
  [2320] = nse_nsefo_dropcopy_nnfdc_v3_0.dc_sign_off_message.dissect,
  [8006] = nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_trade_message.dissect,
  [9006] = nse_nsefo_dropcopy_nnfdc_v3_0.dc_error_response_order_message.dissect,
  [2222] = nse_nsefo_dropcopy_nnfdc_v3_0.trade_confirmation_message.dissect,
  [2282] = nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_confirm_message.dissect,
  [2286] = nse_nsefo_dropcopy_nnfdc_v3_0.trade_cancel_reject_message.dissect,
  [2287] = nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_confirm_message.dissect,
  [2288] = nse_nsefo_dropcopy_nnfdc_v3_0.trade_modify_rejected_message.dissect,
  [4506] = nse_nsefo_dropcopy_nnfdc_v3_0.giveup_app_confirm_message.dissect,
  [4507] = nse_nsefo_dropcopy_nnfdc_v3_0.giveup_rej_confirm_message.dissect,
  [2012] = nse_nsefo_dropcopy_nnfdc_v3_0.price_confirmation_message.dissect,
  [2042] = nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_reject_message.dissect,
  [2072] = nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_reject_message.dissect,
  [2073] = nse_nsefo_dropcopy_nnfdc_v3_0.order_confirmation_message.dissect,
  [2074] = nse_nsefo_dropcopy_nnfdc_v3_0.order_mod_confirmation_message.dissect,
  [2075] = nse_nsefo_dropcopy_nnfdc_v3_0.order_cancel_confirmation_message.dissect,
  [2170] = nse_nsefo_dropcopy_nnfdc_v3_0.freeze_to_control_message.dissect,
  [2212] = nse_nsefo_dropcopy_nnfdc_v3_0.on_stop_notification_message.dissect,
  [2231] = nse_nsefo_dropcopy_nnfdc_v3_0.order_error_message.dissect,
  [9002] = nse_nsefo_dropcopy_nnfdc_v3_0.batch_order_cancel_message.dissect,
  [2124] = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_confirmation_message.dissect,
  [2125] = nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_confirmation_message.dissect,
  [2126] = nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_confirmation_message.dissect,
  [2127] = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_rejected_message.dissect,
  [2130] = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_cxl_confirmation_message.dissect,
  [2131] = nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_cxl_confirmation_message.dissect,
  [2132] = nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_cxl_confirmation_message.dissect,
  [2133] = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_reject_message.dissect,
  [2136] = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_mod_confirmation_message.dissect,
  [2154] = nse_nsefo_dropcopy_nnfdc_v3_0.sp_order_rejected_message.dissect,
  [2155] = nse_nsefo_dropcopy_nnfdc_v3_0.twol_order_error_message.dissect,
  [2156] = nse_nsefo_dropcopy_nnfdc_v3_0.thrl_order_error_message.dissect,
  [9004] = nse_nsefo_dropcopy_nnfdc_v3_0.batch_spread_cxl_out_message.dissect,
}

-- Dissect: Server Message Payload
nse_nsefo_dropcopy_nnfdc_v3_0.server_message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nsefo_dropcopy_nnfdc_v3_0.server_message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nse_nsefo_dropcopy_nnfdc_v3_0.message_header = {}

-- Size: Message Header
nse_nsefo_dropcopy_nnfdc_v3_0.message_header.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.transaction_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.error_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.sequence_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.message_length.size

-- Display: Message Header
nse_nsefo_dropcopy_nnfdc_v3_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nse_nsefo_dropcopy_nnfdc_v3_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsefo_dropcopy_nnfdc_v3_0.transaction_code.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nsefo_dropcopy_nnfdc_v3_0.error_code.dissect(buffer, index, packet, parent)

  -- Sequence Number: LONG LONG
  index, sequence_number = nse_nsefo_dropcopy_nnfdc_v3_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Length: SHORT
  index, message_length = nse_nsefo_dropcopy_nnfdc_v3_0.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nse_nsefo_dropcopy_nnfdc_v3_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.message_header, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Message
nse_nsefo_dropcopy_nnfdc_v3_0.server_message = {}

-- Display: Server Message
nse_nsefo_dropcopy_nnfdc_v3_0.server_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Message
nse_nsefo_dropcopy_nnfdc_v3_0.server_message.fields = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset

  -- Message Header: Struct of 4 fields
  index, message_header = nse_nsefo_dropcopy_nnfdc_v3_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 14, 2):int()

  -- Server Message Payload: Runtime Type with 36 branches
  index = nse_nsefo_dropcopy_nnfdc_v3_0.server_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Server Message
nse_nsefo_dropcopy_nnfdc_v3_0.server_message.dissect = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset + size_of_server_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.server_message, buffer(offset, 0))
    local current = nse_nsefo_dropcopy_nnfdc_v3_0.server_message.fields(buffer, offset, packet, parent, size_of_server_message)
    parent:set_len(size_of_server_message)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.server_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsefo_dropcopy_nnfdc_v3_0.server_message.fields(buffer, offset, packet, parent, size_of_server_message)

    return index
  end
end

-- Message Buffer
nse_nsefo_dropcopy_nnfdc_v3_0.message_buffer = {}

-- Size: Message Buffer
nse_nsefo_dropcopy_nnfdc_v3_0.message_buffer.size = function(buffer, offset)
  return buffer:len() - offset
end

-- Display: Message Buffer
nse_nsefo_dropcopy_nnfdc_v3_0.message_buffer.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Buffer
nse_nsefo_dropcopy_nnfdc_v3_0.message_buffer.fields = function(buffer, offset, packet, parent)
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
    index, server_message = nse_nsefo_dropcopy_nnfdc_v3_0.server_message.dissect(buffer, index, packet, parent, message_length)
  end

  return index
end

-- Dissect: Message Buffer
nse_nsefo_dropcopy_nnfdc_v3_0.message_buffer.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.message_buffer, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.message_buffer.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.message_buffer.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.message_buffer.fields(buffer, offset, packet, parent)
  end
end

-- Response Message Header
nse_nsefo_dropcopy_nnfdc_v3_0.response_message_header = {}

-- Size: Response Message Header
nse_nsefo_dropcopy_nnfdc_v3_0.response_message_header.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.environment_type.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.compression_indicator.size

-- Display: Response Message Header
nse_nsefo_dropcopy_nnfdc_v3_0.response_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Response Message Header
nse_nsefo_dropcopy_nnfdc_v3_0.response_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Environment Type: CHAR
  index, environment_type = nse_nsefo_dropcopy_nnfdc_v3_0.environment_type.dissect(buffer, index, packet, parent)

  -- Compression Indicator: CHAR
  index, compression_indicator = nse_nsefo_dropcopy_nnfdc_v3_0.compression_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Response Message Header
nse_nsefo_dropcopy_nnfdc_v3_0.response_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.response_message_header, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.response_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.response_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.response_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nse_nsefo_dropcopy_nnfdc_v3_0.packet_header = {}

-- Size: Packet Header
nse_nsefo_dropcopy_nnfdc_v3_0.packet_header.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.packet_length.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.packet_sequence_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.checksum.size

-- Display: Packet Header
nse_nsefo_dropcopy_nnfdc_v3_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nse_nsefo_dropcopy_nnfdc_v3_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nse_nsefo_dropcopy_nnfdc_v3_0.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = nse_nsefo_dropcopy_nnfdc_v3_0.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Checksum: 16 Byte
  index, checksum = nse_nsefo_dropcopy_nnfdc_v3_0.checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nse_nsefo_dropcopy_nnfdc_v3_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.packet_header, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Drop Copy Packet
nse_nsefo_dropcopy_nnfdc_v3_0.server_drop_copy_packet = {}

-- Display: Server Drop Copy Packet
nse_nsefo_dropcopy_nnfdc_v3_0.server_drop_copy_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Drop Copy Packet
nse_nsefo_dropcopy_nnfdc_v3_0.server_drop_copy_packet.fields = function(buffer, offset, packet, parent, size_of_server_drop_copy_packet)
  local index = offset

  -- Packet Header: Struct of 3 fields
  index, packet_header = nse_nsefo_dropcopy_nnfdc_v3_0.packet_header.dissect(buffer, index, packet, parent)

  -- Response Message Header: Struct of 2 fields
  index, response_message_header = nse_nsefo_dropcopy_nnfdc_v3_0.response_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Compression Indicator
  local compression_indicator = buffer(index - 1, 1):string()

  local message_buffer_conversion = compression_indicator == "1"

  if message_buffer_conversion then
    local compressed = buffer(index, buffer:len() - index):bytes()
    buffer = lz4_decompress(compressed, 4096):tvb("Decompressed")
    index = 0
  end

  -- Message Buffer: Struct of 1 fields
  index, message_buffer = nse_nsefo_dropcopy_nnfdc_v3_0.message_buffer.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Drop Copy Packet
nse_nsefo_dropcopy_nnfdc_v3_0.server_drop_copy_packet.dissect = function(buffer, offset, packet, parent, size_of_server_drop_copy_packet)
  local index = offset + size_of_server_drop_copy_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.server_drop_copy_packet, buffer(offset, 0))
    local current = nse_nsefo_dropcopy_nnfdc_v3_0.server_drop_copy_packet.fields(buffer, offset, packet, parent, size_of_server_drop_copy_packet)
    parent:set_len(size_of_server_drop_copy_packet)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.server_drop_copy_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsefo_dropcopy_nnfdc_v3_0.server_drop_copy_packet.fields(buffer, offset, packet, parent, size_of_server_drop_copy_packet)

    return index
  end
end

-- Remaining Bytes For: Server Drop Copy Packet
local server_drop_copy_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nsefo_dropcopy_nnfdc_v3_0.packet_header.size then
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
nse_nsefo_dropcopy_nnfdc_v3_0.server_packet = {}

-- Verify required size of Tcp packet
nse_nsefo_dropcopy_nnfdc_v3_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsefo_dropcopy_nnfdc_v3_0.packet_header.size + nse_nsefo_dropcopy_nnfdc_v3_0.response_message_header.size + nse_nsefo_dropcopy_nnfdc_v3_0.message_header.size
end

-- Dissect Server Packet
nse_nsefo_dropcopy_nnfdc_v3_0.server_packet.dissect = function(buffer, packet, parent)
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
      index = nse_nsefo_dropcopy_nnfdc_v3_0.server_drop_copy_packet.dissect(frame, index, packet, parent, size_of_server_drop_copy_packet)
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
nse_nsefo_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message = {}

-- Size: Dc Ont Subscription Request Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.sequence_number.size

-- Display: Dc Ont Subscription Request Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Ont Subscription Request Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: LONG LONG
  index, sequence_number = nse_nsefo_dropcopy_nnfdc_v3_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Ont Subscription Request Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dc_ont_subscription_request_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Trd Subscription Request Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message = {}

-- Size: Dc Trd Subscription Request Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.sequence_number.size

-- Display: Dc Trd Subscription Request Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Trd Subscription Request Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: LONG LONG
  index, sequence_number = nse_nsefo_dropcopy_nnfdc_v3_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Trd Subscription Request Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dc_trd_subscription_request_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Signon In Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_in_message = {}

-- Size: Dc Signon In Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_in_message.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.password.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.session_key.size

-- Display: Dc Signon In Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Signon In Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Password: CHAR
  index, password = nse_nsefo_dropcopy_nnfdc_v3_0.password.dissect(buffer, index, packet, parent)

  -- Session Key: CHAR
  index, session_key = nse_nsefo_dropcopy_nnfdc_v3_0.session_key.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Signon In Message
nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.dc_signon_in_message, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
nse_nsefo_dropcopy_nnfdc_v3_0.heartbeat_message = {}

-- Display: Heartbeat Message
nse_nsefo_dropcopy_nnfdc_v3_0.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
nse_nsefo_dropcopy_nnfdc_v3_0.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Gr Secure User Registration Request Message
nse_nsefo_dropcopy_nnfdc_v3_0.gr_secure_user_registration_request_message = {}

-- Display: Gr Secure User Registration Request Message
nse_nsefo_dropcopy_nnfdc_v3_0.gr_secure_user_registration_request_message.display = function(packet, parent, length)
  return "Gr Secure User Registration Request Message"
end


-- Dissect: Gr Secure User Registration Request Message
nse_nsefo_dropcopy_nnfdc_v3_0.gr_secure_user_registration_request_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.gr_secure_user_registration_request_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Gr Request Message
nse_nsefo_dropcopy_nnfdc_v3_0.gr_request_message = {}

-- Display: Gr Request Message
nse_nsefo_dropcopy_nnfdc_v3_0.gr_request_message.display = function(packet, parent, length)
  return "Gr Request Message"
end


-- Dissect: Gr Request Message
nse_nsefo_dropcopy_nnfdc_v3_0.gr_request_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nsefo_dropcopy_nnfdc_v3_0.gr_request_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Message Payload
nse_nsefo_dropcopy_nnfdc_v3_0.client_message_payload = {}

-- Dispatch: Client Message Payload
nse_nsefo_dropcopy_nnfdc_v3_0.client_message_payload.dispatch = {
  [2400] = nse_nsefo_dropcopy_nnfdc_v3_0.gr_request_message.dissect,
  [23008] = nse_nsefo_dropcopy_nnfdc_v3_0.gr_secure_user_registration_request_message.dissect,
  [23506] = nse_nsefo_dropcopy_nnfdc_v3_0.heartbeat_message.dissect,
  [2500] = nse_nsefo_dropcopy_nnfdc_v3_0.dc_signon_in_message.dissect,
  [8000] = nse_nsefo_dropcopy_nnfdc_v3_0.dc_trd_subscription_request_message.dissect,
  [9000] = nse_nsefo_dropcopy_nnfdc_v3_0.dc_ont_subscription_request_message.dissect,
}

-- Dissect: Client Message Payload
nse_nsefo_dropcopy_nnfdc_v3_0.client_message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nsefo_dropcopy_nnfdc_v3_0.client_message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Request Message Header
nse_nsefo_dropcopy_nnfdc_v3_0.request_message_header = {}

-- Size: Request Message Header
nse_nsefo_dropcopy_nnfdc_v3_0.request_message_header.size =
  nse_nsefo_dropcopy_nnfdc_v3_0.transaction_code.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.request_sequence_number.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.partition_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.concurrent_login_id.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.func_indc.size + 
  nse_nsefo_dropcopy_nnfdc_v3_0.reserve.size

-- Display: Request Message Header
nse_nsefo_dropcopy_nnfdc_v3_0.request_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Message Header
nse_nsefo_dropcopy_nnfdc_v3_0.request_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsefo_dropcopy_nnfdc_v3_0.transaction_code.dissect(buffer, index, packet, parent)

  -- Trader Id: INT
  index, trader_id = nse_nsefo_dropcopy_nnfdc_v3_0.trader_id.dissect(buffer, index, packet, parent)

  -- Request Sequence Number: LONG
  index, request_sequence_number = nse_nsefo_dropcopy_nnfdc_v3_0.request_sequence_number.dissect(buffer, index, packet, parent)

  -- Partition Id: CHAR
  index, partition_id = nse_nsefo_dropcopy_nnfdc_v3_0.partition_id.dissect(buffer, index, packet, parent)

  -- Concurrent Login Id: SHORT
  index, concurrent_login_id = nse_nsefo_dropcopy_nnfdc_v3_0.concurrent_login_id.dissect(buffer, index, packet, parent)

  -- Func Indc: CHAR
  index, func_indc = nse_nsefo_dropcopy_nnfdc_v3_0.func_indc.dissect(buffer, index, packet, parent)

  -- Reserve: CHAR
  index, reserve = nse_nsefo_dropcopy_nnfdc_v3_0.reserve.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Message Header
nse_nsefo_dropcopy_nnfdc_v3_0.request_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.request_message_header, buffer(offset, 0))
    local index = nse_nsefo_dropcopy_nnfdc_v3_0.request_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.request_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_dropcopy_nnfdc_v3_0.request_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Drop Copy Packet
nse_nsefo_dropcopy_nnfdc_v3_0.client_drop_copy_packet = {}

-- Display: Client Drop Copy Packet
nse_nsefo_dropcopy_nnfdc_v3_0.client_drop_copy_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Drop Copy Packet
nse_nsefo_dropcopy_nnfdc_v3_0.client_drop_copy_packet.fields = function(buffer, offset, packet, parent, size_of_client_drop_copy_packet)
  local index = offset

  -- Packet Header: Struct of 3 fields
  index, packet_header = nse_nsefo_dropcopy_nnfdc_v3_0.packet_header.dissect(buffer, index, packet, parent)

  -- Request Message Header: Struct of 7 fields
  index, request_message_header = nse_nsefo_dropcopy_nnfdc_v3_0.request_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 24, 2):int()

  -- Client Message Payload: Runtime Type with 6 branches
  index = nse_nsefo_dropcopy_nnfdc_v3_0.client_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Client Drop Copy Packet
nse_nsefo_dropcopy_nnfdc_v3_0.client_drop_copy_packet.dissect = function(buffer, offset, packet, parent, size_of_client_drop_copy_packet)
  local index = offset + size_of_client_drop_copy_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0.fields.client_drop_copy_packet, buffer(offset, 0))
    local current = nse_nsefo_dropcopy_nnfdc_v3_0.client_drop_copy_packet.fields(buffer, offset, packet, parent, size_of_client_drop_copy_packet)
    parent:set_len(size_of_client_drop_copy_packet)
    local display = nse_nsefo_dropcopy_nnfdc_v3_0.client_drop_copy_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsefo_dropcopy_nnfdc_v3_0.client_drop_copy_packet.fields(buffer, offset, packet, parent, size_of_client_drop_copy_packet)

    return index
  end
end

-- Remaining Bytes For: Client Drop Copy Packet
local client_drop_copy_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nsefo_dropcopy_nnfdc_v3_0.packet_header.size then
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
nse_nsefo_dropcopy_nnfdc_v3_0.client_packet = {}

-- Verify required size of Tcp packet
nse_nsefo_dropcopy_nnfdc_v3_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsefo_dropcopy_nnfdc_v3_0.packet_header.size + nse_nsefo_dropcopy_nnfdc_v3_0.request_message_header.size
end

-- Dissect Client Packet
nse_nsefo_dropcopy_nnfdc_v3_0.client_packet.dissect = function(buffer, packet, parent)
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
      index = nse_nsefo_dropcopy_nnfdc_v3_0.client_drop_copy_packet.dissect(frame, index, packet, parent, size_of_client_drop_copy_packet)
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
function omi_nse_nsefo_dropcopy_nnfdc_v3_0.init()
end

-- Connection roles for Nse NseFo DropCopy NnfDc 3.0: Client is the initiator, Server is the acceptor
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
nse_nsefo_dropcopy_nnfdc_v3_0.role = function(packet)
  if omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.acceptor_port

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

  if omi_nse_nsefo_dropcopy_nnfdc_v3_0.prefs.swap_sides then
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
nse_nsefo_dropcopy_nnfdc_v3_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nse NseFo DropCopy NnfDc 3.0
function omi_nse_nsefo_dropcopy_nnfdc_v3_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nsefo_dropcopy_nnfdc_v3_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nsefo_dropcopy_nnfdc_v3_0, buffer(), omi_nse_nsefo_dropcopy_nnfdc_v3_0.description, "("..buffer:len().." Bytes)")
  local role = nse_nsefo_dropcopy_nnfdc_v3_0.role(packet)

  if role == "initiator" then
    return nse_nsefo_dropcopy_nnfdc_v3_0.client_packet.dissect(buffer, packet, protocol)
  end

  return nse_nsefo_dropcopy_nnfdc_v3_0.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nse_nsefo_dropcopy_nnfdc_v3_0.client_packet.fingerprint = function(buffer)
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
nse_nsefo_dropcopy_nnfdc_v3_0.server_packet.fingerprint = function(buffer)
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

  -- Dc Sign Off Message
  if transaction_code == 2320 then
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

  -- Trade Modify Rejected Message
  if transaction_code == 2288 then
    return true
  end

  -- Giveup App Confirm Message
  if transaction_code == 4506 then
    return true
  end

  -- Giveup Rej Confirm Message
  if transaction_code == 4507 then
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

  -- Sp Order Confirmation Message
  if transaction_code == 2124 then
    return true
  end

  -- Twol Order Confirmation Message
  if transaction_code == 2125 then
    return true
  end

  -- Thrl Order Confirmation Message
  if transaction_code == 2126 then
    return true
  end

  -- Sp Order Cxl Rejected Message
  if transaction_code == 2127 then
    return true
  end

  -- Sp Order Cxl Confirmation Message
  if transaction_code == 2130 then
    return true
  end

  -- Twol Order Cxl Confirmation Message
  if transaction_code == 2131 then
    return true
  end

  -- Thrl Order Cxl Confirmation Message
  if transaction_code == 2132 then
    return true
  end

  -- Sp Order Mod Reject Message
  if transaction_code == 2133 then
    return true
  end

  -- Sp Order Mod Confirmation Message
  if transaction_code == 2136 then
    return true
  end

  -- Sp Order Rejected Message
  if transaction_code == 2154 then
    return true
  end

  -- Twol Order Error Message
  if transaction_code == 2155 then
    return true
  end

  -- Thrl Order Error Message
  if transaction_code == 2156 then
    return true
  end

  -- Batch Spread Cxl Out Message
  if transaction_code == 9004 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseFo DropCopy NnfDc 3.0 (Tcp)
local function omi_nse_nsefo_dropcopy_nnfdc_v3_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsefo_dropcopy_nnfdc_v3_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nse_nsefo_dropcopy_nnfdc_v3_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsefo_dropcopy_nnfdc_v3_0
  omi_nse_nsefo_dropcopy_nnfdc_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseFo DropCopy NnfDc 3.0 (Tcp)
local function omi_nse_nsefo_dropcopy_nnfdc_v3_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsefo_dropcopy_nnfdc_v3_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nse_nsefo_dropcopy_nnfdc_v3_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsefo_dropcopy_nnfdc_v3_0
  omi_nse_nsefo_dropcopy_nnfdc_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseFo DropCopy NnfDc 3.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_nse_nsefo_dropcopy_nnfdc_v3_0_tcp_heuristic(buffer, packet, parent)
  local role = nse_nsefo_dropcopy_nnfdc_v3_0.role(packet)
  local initiator = omi_nse_nsefo_dropcopy_nnfdc_v3_0_tcp_initiator_heuristic
  local acceptor = omi_nse_nsefo_dropcopy_nnfdc_v3_0_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nse_nsefo_dropcopy_nnfdc_v3_0.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nse_nsefo_dropcopy_nnfdc_v3_0.swap(packet)

  return false
end

-- Register Heuristics for Nse NseFo DropCopy NnfDc 3.0
omi_nse_nsefo_dropcopy_nnfdc_v3_0:register_heuristic("tcp", omi_nse_nsefo_dropcopy_nnfdc_v3_0_tcp_heuristic)

-- Register Nse NseFo DropCopy NnfDc 3.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nse_nsefo_dropcopy_nnfdc_v3_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 3.0
--   Date: Wednesday, September 2, 2026
--   Specification: DC_FO_Normal_DROPCOPY_PROTOCOL_3.0_20260902172916.pdf
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
