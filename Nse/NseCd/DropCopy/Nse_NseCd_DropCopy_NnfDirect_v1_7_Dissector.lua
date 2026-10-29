-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseCd DropCopy NnfDirect 1.7 Protocol
local omi_nse_nsecd_dropcopy_nnfdirect_v1_7 = Proto("Omi.Nse.NseCd.DropCopy.NnfDirect.v1.7", "Nse NseCd DropCopy NnfDirect 1.7")

-- Protocol table
local nse_nsecd_dropcopy_nnfdirect_v1_7 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseCd DropCopy NnfDirect 1.7 Fields
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.account_num = ProtoField.new("Account Num", "nse.nsecd.dropcopy.nnfdirect.v1.7.accountnum", ftypes.STRING, nil, nil, nil, "Account number or client code")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.activity_time = ProtoField.new("Activity Time", "nse.nsecd.dropcopy.nnfdirect.v1.7.activitytime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the activity occurred")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.activity_time_utc = ProtoField.new("Activity Time", "nse.nsecd.dropcopy.nnfdirect.v1.7.activitytime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the activity occurred")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.activity_type = ProtoField.new("Activity Type", "nse.nsecd.dropcopy.nnfdirect.v1.7.activitytype", ftypes.STRING, nil, nil, nil, "Type of activity being confirmed")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.additional_order_flags = ProtoField.new("Additional Order Flags", "nse.nsecd.dropcopy.nnfdirect.v1.7.additionalorderflags", ftypes.STRING, nil, nil, nil, "Further terms attached to the order")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.additional_order_flags_reserved_1 = ProtoField.new("Additional Order Flags Reserved 1", "nse.nsecd.dropcopy.nnfdirect.v1.7.additionalorderflagsreserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.additional_order_flags_reserved_38 = ProtoField.new("Additional Order Flags Reserved 38", "nse.nsecd.dropcopy.nnfdirect.v1.7.additionalorderflagsreserved38", ftypes.UINT8, nil, base.DEC, 0xFC, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.algo_category = ProtoField.new("Algo Category", "nse.nsecd.dropcopy.nnfdirect.v1.7.algocategory", ftypes.INT16)
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.algo_id = ProtoField.new("Algo Id", "nse.nsecd.dropcopy.nnfdirect.v1.7.algoid", ftypes.INT32, nil, nil, nil, "Algo Id issued by the exchange, zero for a non algo order")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.alpha_char = ProtoField.new("Alpha Char", "nse.nsecd.dropcopy.nnfdirect.v1.7.alphachar", ftypes.STRING, nil, nil, nil, "First two characters of Symbol when the message carries one")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.aon = ProtoField.new("Aon", "nse.nsecd.dropcopy.nnfdirect.v1.7.aon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100, "All or none order")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.ato = ProtoField.new("Ato", "nse.nsecd.dropcopy.nnfdirect.v1.7.ato", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "At the opening order")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.book_type_char_1 = ProtoField.new("Book Type Char 1", "nse.nsecd.dropcopy.nnfdirect.v1.7.booktypechar1", ftypes.STRING, nil, nil, nil, "Book the order belongs to")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.book_type_short_2 = ProtoField.new("Book Type Short 2", "nse.nsecd.dropcopy.nnfdirect.v1.7.booktypeshort2", ftypes.INT16, nil, nil, nil, "Book the order belongs to")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.broker_id = ProtoField.new("Broker Id", "nse.nsecd.dropcopy.nnfdirect.v1.7.brokerid", ftypes.STRING, nil, nil, nil, "Trading member Id")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.buy_sell = ProtoField.new("Buy Sell", "nse.nsecd.dropcopy.nnfdirect.v1.7.buysell", ftypes.INT16, nil, nil, nil, "Whether the order taking part is a buy or a sell")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.ca_level = ProtoField.new("Ca Level", "nse.nsecd.dropcopy.nnfdirect.v1.7.calevel", ftypes.INT16, nil, nil, nil, "Corporate action level")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.checksum = ProtoField.new("Checksum", "nse.nsecd.dropcopy.nnfdirect.v1.7.checksum", ftypes.BYTES, nil, nil, nil, "Md5 digest of the message data, or the Gcm authentication tag under the new encryption")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.col = ProtoField.new("Col", "nse.nsecd.dropcopy.nnfdirect.v1.7.col", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "Collateral order")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.contract_desc = ProtoField.new("Contract Desc", "nse.nsecd.dropcopy.nnfdirect.v1.7.contractdesc", ftypes.STRING, nil, nil, nil, "CONTRACT_DESC")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.day = ProtoField.new("Day", "nse.nsecd.dropcopy.nnfdirect.v1.7.day", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800, "Day order")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.deleted = ProtoField.new("Deleted", "nse.nsecd.dropcopy.nnfdirect.v1.7.deleted", ftypes.STRING, nil, nil, nil, "Whether the give up was deleted")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.disclosed_vol = ProtoField.new("Disclosed Vol", "nse.nsecd.dropcopy.nnfdirect.v1.7.disclosedvol", ftypes.INT32, nil, nil, nil, "Quantity disclosed to the market")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.disclosed_vol_remaining = ProtoField.new("Disclosed Vol Remaining", "nse.nsecd.dropcopy.nnfdirect.v1.7.disclosedvolremaining", ftypes.INT32, nil, nil, nil, "Disclosed volume remaining after the trade")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.error_code = ProtoField.new("Error Code", "nse.nsecd.dropcopy.nnfdirect.v1.7.errorcode", ftypes.INT16, nil, nil, nil, "Zero when the request succeeded, otherwise an Error Response follows")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.expiry_date = ProtoField.new("Expiry Date", "nse.nsecd.dropcopy.nnfdirect.v1.7.expirydate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Expiry date of the contract")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.expiry_date_utc = ProtoField.new("Expiry Date", "nse.nsecd.dropcopy.nnfdirect.v1.7.expirydate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Expiry date of the contract")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.fifth_reserved_1 = ProtoField.new("Fifth Reserved 1", "nse.nsecd.dropcopy.nnfdirect.v1.7.fifthreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.fill_number = ProtoField.new("Fill Number", "nse.nsecd.dropcopy.nnfdirect.v1.7.fillnumber", ftypes.INT32, nil, nil, nil, "Trade number")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.fill_price = ProtoField.new("Fill Price", "nse.nsecd.dropcopy.nnfdirect.v1.7.fillprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the order traded, to be divided by 10000000 to get the price in rupees")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.fill_qty = ProtoField.new("Fill Qty", "nse.nsecd.dropcopy.nnfdirect.v1.7.fillqty", ftypes.INT32, nil, nil, nil, "Traded volume")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.fill_volume = ProtoField.new("Fill Volume", "nse.nsecd.dropcopy.nnfdirect.v1.7.fillvolume", ftypes.INT32, nil, nil, nil, "Traded volume")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.filler = ProtoField.new("Filler", "nse.nsecd.dropcopy.nnfdirect.v1.7.filler", ftypes.STRING)
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.fourth_reserved_1 = ProtoField.new("Fourth Reserved 1", "nse.nsecd.dropcopy.nnfdirect.v1.7.fourthreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.frozen = ProtoField.new("Frozen", "nse.nsecd.dropcopy.nnfdirect.v1.7.frozen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "Order is frozen for Nse Control to release")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.give_up_trade = ProtoField.new("Give Up Trade", "nse.nsecd.dropcopy.nnfdirect.v1.7.giveuptrade", ftypes.STRING, nil, nil, nil, "Whether the trade is a give up")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.giveup_flag = ProtoField.new("Giveup Flag", "nse.nsecd.dropcopy.nnfdirect.v1.7.giveupflag", ftypes.STRING, nil, nil, nil, "Give up flag")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.gtc = ProtoField.new("Gtc", "nse.nsecd.dropcopy.nnfdirect.v1.7.gtc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400, "Good till cancelled order")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.gtd = ProtoField.new("Gtd", "nse.nsecd.dropcopy.nnfdirect.v1.7.gtd", ftypes.INT32, nil, nil, nil, "Number of days for a GTD order")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.header_timestamp = ProtoField.new("Header Timestamp", "nse.nsecd.dropcopy.nnfdirect.v1.7.headertimestamp", ftypes.INT64, nil, nil, nil, "Host end field, carrying nanoseconds since midnight 01-Jan-1980 on the transaction codes listed in the appendix")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.initiated_by_control = ProtoField.new("Initiated By Control", "nse.nsecd.dropcopy.nnfdirect.v1.7.initiatedbycontrol", ftypes.STRING, nil, nil, nil, "Whether the give up was initiated by Nse Control")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.instrument_name = ProtoField.new("Instrument Name", "nse.nsecd.dropcopy.nnfdirect.v1.7.instrumentname", ftypes.STRING, nil, nil, nil, "Instrument name of the contract")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.ioc = ProtoField.new("Ioc", "nse.nsecd.dropcopy.nnfdirect.v1.7.ioc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200, "Immediate or cancel order")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.last_activity_reference = ProtoField.new("Last Activity Reference", "nse.nsecd.dropcopy.nnfdirect.v1.7.lastactivityreference", ftypes.INT64, nil, nil, nil, "Unique value for the activity, currently in nanoseconds")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.last_modified_date_time = ProtoField.new("Last Modified Date Time", "nse.nsecd.dropcopy.nnfdirect.v1.7.lastmodifieddatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the order was last modified")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.last_modified_date_time_utc = ProtoField.new("Last Modified Date Time", "nse.nsecd.dropcopy.nnfdirect.v1.7.lastmodifieddatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the order was last modified")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.log_time = ProtoField.new("Log Time", "nse.nsecd.dropcopy.nnfdirect.v1.7.logtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the message was generated by the trading system")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.log_time_utc = ProtoField.new("Log Time", "nse.nsecd.dropcopy.nnfdirect.v1.7.logtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the message was generated by the trading system")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.market = ProtoField.new("Market", "nse.nsecd.dropcopy.nnfdirect.v1.7.market", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Market order")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.matched_ind = ProtoField.new("Matched Ind", "nse.nsecd.dropcopy.nnfdirect.v1.7.matchedind", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040, "Order has been matched")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.message_length = ProtoField.new("Message Length", "nse.nsecd.dropcopy.nnfdirect.v1.7.messagelength", ftypes.INT16, nil, nil, nil, "Length of the message including the message header, twenty two less than Packet Length")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.mf = ProtoField.new("Mf", "nse.nsecd.dropcopy.nnfdirect.v1.7.mf", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080, "Minimum fill order")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.mit = ProtoField.new("Mit", "nse.nsecd.dropcopy.nnfdirect.v1.7.mit", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000, "Market if touched order")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.modified = ProtoField.new("Modified", "nse.nsecd.dropcopy.nnfdirect.v1.7.modified", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "Order has been modified")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.new_volume = ProtoField.new("New Volume", "nse.nsecd.dropcopy.nnfdirect.v1.7.newvolume", ftypes.INT32, nil, nil, nil, "Revised volume")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.nnf_field = ProtoField.new("Nnf Field", "nse.nsecd.dropcopy.nnfdirect.v1.7.nnffield", ftypes.DOUBLE, nil, nil, nil, "Fifteen digit unique identifier for the product")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.old_account_number = ProtoField.new("Old Account Number", "nse.nsecd.dropcopy.nnfdirect.v1.7.oldaccountnumber", ftypes.STRING, nil, nil, nil, "Previous account number")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.old_open_close = ProtoField.new("Old Open Close", "nse.nsecd.dropcopy.nnfdirect.v1.7.oldopenclose", ftypes.STRING, nil, nil, nil, "Previous open or close indicator")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.old_pan = ProtoField.new("Old Pan", "nse.nsecd.dropcopy.nnfdirect.v1.7.oldpan", ftypes.STRING, nil, nil, nil, "Previous Permanent Account Number")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.old_participant = ProtoField.new("Old Participant", "nse.nsecd.dropcopy.nnfdirect.v1.7.oldparticipant", ftypes.STRING, nil, nil, nil, "Previous participant's name")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.op_broker_id = ProtoField.new("Op Broker Id", "nse.nsecd.dropcopy.nnfdirect.v1.7.opbrokerid", ftypes.STRING, nil, nil, nil, "Trading member Id of the counter party")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.op_order_number = ProtoField.new("Op Order Number", "nse.nsecd.dropcopy.nnfdirect.v1.7.opordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number on the counter party side")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.open_close = ProtoField.new("Open Close", "nse.nsecd.dropcopy.nnfdirect.v1.7.openclose", ftypes.STRING, nil, nil, nil, "Whether the trade opens or closes a position")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.option_type = ProtoField.new("Option Type", "nse.nsecd.dropcopy.nnfdirect.v1.7.optiontype", ftypes.STRING, nil, nil, nil, "Option type identifier")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.order_number = ProtoField.new("Order Number", "nse.nsecd.dropcopy.nnfdirect.v1.7.ordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number of the order")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.original_vol = ProtoField.new("Original Vol", "nse.nsecd.dropcopy.nnfdirect.v1.7.originalvol", ftypes.INT32, nil, nil, nil, "Original traded volume")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.packet_length = ProtoField.new("Packet Length", "nse.nsecd.dropcopy.nnfdirect.v1.7.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the entire packet including this field, capped at 1024 bytes")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "nse.nsecd.dropcopy.nnfdirect.v1.7.packetsequencenumber", ftypes.UINT32, nil, nil, nil, "Echoed back on responses to order related requests, zero on a non encrypting connection")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.pan = ProtoField.new("Pan", "nse.nsecd.dropcopy.nnfdirect.v1.7.pan", ftypes.STRING, nil, nil, nil, "Permanent Account Number")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.participant = ProtoField.new("Participant", "nse.nsecd.dropcopy.nnfdirect.v1.7.participant", ftypes.STRING, nil, nil, nil, "Participant's name")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.password = ProtoField.new("Password", "nse.nsecd.dropcopy.nnfdirect.v1.7.password", ftypes.STRING, nil, nil, nil, "Password entered by the user; alphabet, numbers and special characters are allowed")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.price = ProtoField.new("Price", "nse.nsecd.dropcopy.nnfdirect.v1.7.price", ftypes.DOUBLE, nil, nil, nil, "Order price")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reason_code = ProtoField.new("Reason Code", "nse.nsecd.dropcopy.nnfdirect.v1.7.reasoncode", ftypes.INT16, nil, nil, nil, "Reason code for the give up packet")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.remaining_vol = ProtoField.new("Remaining Vol", "nse.nsecd.dropcopy.nnfdirect.v1.7.remainingvol", ftypes.INT32, nil, nil, nil, "Volume remaining after the trade")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_1 = ProtoField.new("Reserved 1", "nse.nsecd.dropcopy.nnfdirect.v1.7.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_119 = ProtoField.new("Reserved 119", "nse.nsecd.dropcopy.nnfdirect.v1.7.reserved119", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_13 = ProtoField.new("Reserved 13", "nse.nsecd.dropcopy.nnfdirect.v1.7.reserved13", ftypes.UINT16, nil, base.DEC, 0x0007, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_16 = ProtoField.new("Reserved 16", "nse.nsecd.dropcopy.nnfdirect.v1.7.reserved16", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_38 = ProtoField.new("Reserved 38", "nse.nsecd.dropcopy.nnfdirect.v1.7.reserved38", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_4 = ProtoField.new("Reserved 4", "nse.nsecd.dropcopy.nnfdirect.v1.7.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_44 = ProtoField.new("Reserved 44", "nse.nsecd.dropcopy.nnfdirect.v1.7.reserved44", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_8 = ProtoField.new("Reserved 8", "nse.nsecd.dropcopy.nnfdirect.v1.7.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.response_order_number = ProtoField.new("Response Order Number", "nse.nsecd.dropcopy.nnfdirect.v1.7.responseordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number of the order taking part in the trade")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "nse.nsecd.dropcopy.nnfdirect.v1.7.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.second_reserved_16 = ProtoField.new("Second Reserved 16", "nse.nsecd.dropcopy.nnfdirect.v1.7.secondreserved16", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.sequence_number = ProtoField.new("Sequence Number", "nse.nsecd.dropcopy.nnfdirect.v1.7.sequencenumber", ftypes.DOUBLE, nil, nil, nil, "Time the last message was received by the user, taken from Time Stamp 1 of the last trade confirmation; zero to retrieve from the beginning of the trading day")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.sl = ProtoField.new("Sl", "nse.nsecd.dropcopy.nnfdirect.v1.7.sl", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Stop loss order")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.st_order_flags = ProtoField.new("St Order Flags", "nse.nsecd.dropcopy.nnfdirect.v1.7.storderflags", ftypes.STRING, nil, nil, nil, "Terms attached to the order")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.strike_price = ProtoField.new("Strike Price", "nse.nsecd.dropcopy.nnfdirect.v1.7.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Valid strike for an options contract, and -1 for a futures contract")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.symbol = ProtoField.new("Symbol", "nse.nsecd.dropcopy.nnfdirect.v1.7.symbol", ftypes.STRING, nil, nil, nil, "Symbol of the underlying")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.third_reserved_1 = ProtoField.new("Third Reserved 1", "nse.nsecd.dropcopy.nnfdirect.v1.7.thirdreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.third_reserved_16 = ProtoField.new("Third Reserved 16", "nse.nsecd.dropcopy.nnfdirect.v1.7.thirdreserved16", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.time_stamp_1 = ProtoField.new("Time Stamp 1", "nse.nsecd.dropcopy.nnfdirect.v1.7.timestamp1", ftypes.STRING, nil, nil, nil, "Reserved for the host")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.time_stamp_2 = ProtoField.new("Time Stamp 2", "nse.nsecd.dropcopy.nnfdirect.v1.7.timestamp2", ftypes.STRING, nil, nil, nil, "Time the message reached the gateway")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.token = ProtoField.new("Token", "nse.nsecd.dropcopy.nnfdirect.v1.7.token", ftypes.INT32, nil, nil, nil, "Token number of the contract")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.traded = ProtoField.new("Traded", "nse.nsecd.dropcopy.nnfdirect.v1.7.traded", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020, "Order has traded")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.trader_id = ProtoField.new("Trader Id", "nse.nsecd.dropcopy.nnfdirect.v1.7.traderid", ftypes.INT32, nil, nil, nil, "User Id of the trader")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.trader_num = ProtoField.new("Trader Num", "nse.nsecd.dropcopy.nnfdirect.v1.7.tradernum", ftypes.INT32, nil, nil, nil, "Trader or user Id")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nsecd.dropcopy.nnfdirect.v1.7.transactioncode", ftypes.INT16, nil, nil, nil, "Type of message sent or received")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.user_id = ProtoField.new("User Id", "nse.nsecd.dropcopy.nnfdirect.v1.7.userid", ftypes.INT32, nil, nil, nil, "User Id of the user")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.vol_filled_today = ProtoField.new("Vol Filled Today", "nse.nsecd.dropcopy.nnfdirect.v1.7.volfilledtoday", ftypes.INT32, nil, nil, nil, "Quantity traded today")

-- Nse NseCd DropCopy NnfDirect 1.7 Framing
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.client_direct_packet = ProtoField.new("Client Direct Packet", "nse.nsecd.dropcopy.nnfdirect.v1.7.clientdirectpacket", ftypes.STRING, nil, nil, nil, "One framed interactive message sent by the firm")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.client_packet = ProtoField.new("Client Packet", "nse.nsecd.dropcopy.nnfdirect.v1.7.clientpacket", ftypes.STRING, nil, nil, nil, "Nnf direct interface Tcp block of one or more packets sent by the firm")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.message_header = ProtoField.new("Message Header", "nse.nsecd.dropcopy.nnfdirect.v1.7.messageheader", ftypes.STRING, nil, nil, nil, "MESSAGE_HEADER")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.packet_header = ProtoField.new("Packet Header", "nse.nsecd.dropcopy.nnfdirect.v1.7.packetheader", ftypes.STRING, nil, nil, nil, "Direct interface twenty two byte packet header")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.server_direct_packet = ProtoField.new("Server Direct Packet", "nse.nsecd.dropcopy.nnfdirect.v1.7.serverdirectpacket", ftypes.STRING, nil, nil, nil, "One framed interactive message sent by the exchange")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.server_packet = ProtoField.new("Server Packet", "nse.nsecd.dropcopy.nnfdirect.v1.7.serverpacket", ftypes.STRING, nil, nil, nil, "Nnf direct interface Tcp block of one or more packets sent by the exchange")

-- Nse NseCd DropCopy 1.7 Application Messages
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.dc_download_request_message = ProtoField.new("Dc Download Request Message", "nse.nsecd.dropcopy.nnfdirect.v1.7.dcdownloadrequestmessage", ftypes.STRING, nil, nil, nil, "Requests the trade download for one stream, named in the first byte of Alpha Char, from the time given in Sequence Number")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.giveup_app_confirm_tm_message = ProtoField.new("Giveup App Confirm Tm Message", "nse.nsecd.dropcopy.nnfdirect.v1.7.giveupappconfirmtmmessage", ftypes.STRING, nil, nil, nil, "Approves a give up")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.giveup_rej_confirm_tm_message = ProtoField.new("Giveup Rej Confirm Tm Message", "nse.nsecd.dropcopy.nnfdirect.v1.7.giveuprejconfirmtmmessage", ftypes.STRING, nil, nil, nil, "Rejects a give up")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.sign_on_out_message = ProtoField.new("Sign On Out Message", "nse.nsecd.dropcopy.nnfdirect.v1.7.signonoutmessage", ftypes.STRING, nil, nil, nil, "Confirms the logon. Alpha Char carries the number of streams the drop copy feed is sent from, one download request being needed per stream. On an error the same transaction code carries the Error Response layout instead, distinguished only by a non zero Error Code")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.signon_in_message = ProtoField.new("Signon In Message", "nse.nsecd.dropcopy.nnfdirect.v1.7.signoninmessage", ftypes.STRING, nil, nil, nil, "Logs the user on to the drop copy feed")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.trade_cancel_confirm_message = ProtoField.new("Trade Cancel Confirm Message", "nse.nsecd.dropcopy.nnfdirect.v1.7.tradecancelconfirmmessage", ftypes.STRING, nil, nil, nil, "Confirms the cancellation of a trade")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.trade_cancel_reject_message = ProtoField.new("Trade Cancel Reject Message", "nse.nsecd.dropcopy.nnfdirect.v1.7.tradecancelrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects a trade cancellation")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.trade_confirmation_message = ProtoField.new("Trade Confirmation Message", "nse.nsecd.dropcopy.nnfdirect.v1.7.tradeconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms a trade")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.trade_modify_confirm_message = ProtoField.new("Trade Modify Confirm Message", "nse.nsecd.dropcopy.nnfdirect.v1.7.trademodifyconfirmmessage", ftypes.STRING, nil, nil, nil, "Confirms the modification of a trade")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.trade_modify_reject_message = ProtoField.new("Trade Modify Reject Message", "nse.nsecd.dropcopy.nnfdirect.v1.7.trademodifyrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects a trade modification")

-- Nse NseCd DropCopy 1.7 Session Messages
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "nse.nsecd.dropcopy.nnfdirect.v1.7.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "Keeps the connection alive during periods of inactivity")

-----------------------------------------------------------------------
-- Nse NseCd DropCopy NnfDirect 1.7 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nse_nsecd_dropcopy_nnfdirect_v1_7.absolute_time_base = 0

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

-- Nse NseCd DropCopy NnfDirect 1.7 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true

-- Register Nse NseCd DropCopy NnfDirect 1.7 Show Options
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.show_application_messages then
    show.application_messages = omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.show_application_messages
  end
  if show.headers ~= omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.show_headers then
    show.headers = omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.show_headers
  end
  if show.structs ~= omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.show_structs then
    show.structs = omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.show_structs
  end
  if nse_nsecd_dropcopy_nnfdirect_v1_7.absolute_time_base ~= omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.absolute_time_base then
    nse_nsecd_dropcopy_nnfdirect_v1_7.absolute_time_base = omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.absolute_time_base
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
-- Nse NseCd DropCopy NnfDirect 1.7 Fields
-----------------------------------------------------------------------

-- Account Num
nse_nsecd_dropcopy_nnfdirect_v1_7.account_num = {}

-- Size: Account Num
nse_nsecd_dropcopy_nnfdirect_v1_7.account_num.size = 10

-- Display: Account Num
nse_nsecd_dropcopy_nnfdirect_v1_7.account_num.display = function(value)
  return "Account Num: "..value
end

-- Dissect: Account Num
nse_nsecd_dropcopy_nnfdirect_v1_7.account_num.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.account_num.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.account_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.account_num, range, value, display)

  return offset + length, value
end

-- Activity Time
nse_nsecd_dropcopy_nnfdirect_v1_7.activity_time = {}

-- Size: Activity Time
nse_nsecd_dropcopy_nnfdirect_v1_7.activity_time.size = 4

-- Dissect: Activity Time
nse_nsecd_dropcopy_nnfdirect_v1_7.activity_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.activity_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.activity_time
  if nse_nsecd_dropcopy_nnfdirect_v1_7.absolute_time_base == 1 then field = omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.activity_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Activity Type
nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type = {}

-- Size: Activity Type
nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.size = 2

-- Display: Activity Type
nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.labels = {
  ["B"] = "Activity Type: Buy (B)",
  ["S"] = "Activity Type: Sell (S)",
}

nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.display = function(value)
  return nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.labels[value] or "Activity Type: Unknown("..value..")"
end

-- Dissect: Activity Type
nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.activity_type, range, value, display)

  return offset + length, value
end

-- Algo Category
nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category = {}

-- Size: Algo Category
nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category.size = 2

-- Display: Algo Category
nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category.display = function(value)
  return "Algo Category: "..value
end

-- Dissect: Algo Category
nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.algo_category, range, value, display)

  return offset + length, value
end

-- Algo Id
nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id = {}

-- Size: Algo Id
nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id.size = 4

-- Display: Algo Id
nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id.display = function(value)
  return "Algo Id: "..value
end

-- Dissect: Algo Id
nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.algo_id, range, value, display)

  return offset + length, value
end

-- Alpha Char
nse_nsecd_dropcopy_nnfdirect_v1_7.alpha_char = {}

-- Size: Alpha Char
nse_nsecd_dropcopy_nnfdirect_v1_7.alpha_char.size = 2

-- Display: Alpha Char
nse_nsecd_dropcopy_nnfdirect_v1_7.alpha_char.display = function(value)
  return "Alpha Char: "..value
end

-- Dissect: Alpha Char
nse_nsecd_dropcopy_nnfdirect_v1_7.alpha_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.alpha_char.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.alpha_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.alpha_char, range, value, display)

  return offset + length, value
end

-- Book Type Char 1
nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1 = {}

-- Size: Book Type Char 1
nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1.size = 1

-- Display: Book Type Char 1
nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1.display = function(value)
  return "Book Type Char 1: "..value
end

-- Dissect: Book Type Char 1
nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.book_type_char_1, range, value, display)

  return offset + length, value
end

-- Book Type Short 2
nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_short_2 = {}

-- Size: Book Type Short 2
nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_short_2.size = 2

-- Display: Book Type Short 2
nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_short_2.labels = {
  [1] = "Book Type Short 2: Regular Lot Order (1)",
  [2] = "Book Type Short 2: Special Terms Order (2)",
  [3] = "Book Type Short 2: Stop Loss Mit Order (3)",
  [4] = "Book Type Short 2: Negotiated Order Not Used (4)",
  [5] = "Book Type Short 2: Odd Lot Order Not Used (5)",
  [6] = "Book Type Short 2: Spot Order Not Used (6)",
  [7] = "Book Type Short 2: Auction Order Not Used (7)",
}

nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_short_2.display = function(value)
  return nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_short_2.labels[value] or "Book Type Short 2: Unknown("..value..")"
end

-- Dissect: Book Type Short 2
nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_short_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.book_type_short_2, range, value, display)

  return offset + length, value
end

-- Broker Id
nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id = {}

-- Size: Broker Id
nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.size = 5

-- Display: Broker Id
nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.display = function(value)
  return "Broker Id: "..value
end

-- Dissect: Broker Id
nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.broker_id, range, value, display)

  return offset + length, value
end

-- Buy Sell
nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell = {}

-- Size: Buy Sell
nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.size = 2

-- Display: Buy Sell
nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.labels = {
  [1] = "Buy Sell: Buy Order (1)",
  [2] = "Buy Sell: Sell Order (2)",
}

nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.display = function(value)
  return nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.labels[value] or "Buy Sell: Unknown("..value..")"
end

-- Dissect: Buy Sell
nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.buy_sell, range, value, display)

  return offset + length, value
end

-- Ca Level
nse_nsecd_dropcopy_nnfdirect_v1_7.ca_level = {}

-- Size: Ca Level
nse_nsecd_dropcopy_nnfdirect_v1_7.ca_level.size = 2

-- Display: Ca Level
nse_nsecd_dropcopy_nnfdirect_v1_7.ca_level.display = function(value)
  return "Ca Level: "..value
end

-- Dissect: Ca Level
nse_nsecd_dropcopy_nnfdirect_v1_7.ca_level.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.ca_level.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.ca_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.ca_level, range, value, display)

  return offset + length, value
end

-- Checksum
nse_nsecd_dropcopy_nnfdirect_v1_7.checksum = {}

-- Size: Checksum
nse_nsecd_dropcopy_nnfdirect_v1_7.checksum.size = 16

-- Display: Checksum
nse_nsecd_dropcopy_nnfdirect_v1_7.checksum.display = function(value)
  return "Checksum: "..value
end

-- Dissect: Checksum
nse_nsecd_dropcopy_nnfdirect_v1_7.checksum.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.checksum.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.checksum, range, value, display)

  return offset + length, value
end

-- Deleted
nse_nsecd_dropcopy_nnfdirect_v1_7.deleted = {}

-- Size: Deleted
nse_nsecd_dropcopy_nnfdirect_v1_7.deleted.size = 1

-- Display: Deleted
nse_nsecd_dropcopy_nnfdirect_v1_7.deleted.display = function(value)
  return "Deleted: "..value
end

-- Dissect: Deleted
nse_nsecd_dropcopy_nnfdirect_v1_7.deleted.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.deleted.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.deleted.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.deleted, range, value, display)

  return offset + length, value
end

-- Disclosed Vol
nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol = {}

-- Size: Disclosed Vol
nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol.size = 4

-- Display: Disclosed Vol
nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol.display = function(value)
  return "Disclosed Vol: "..value
end

-- Dissect: Disclosed Vol
nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.disclosed_vol, range, value, display)

  return offset + length, value
end

-- Disclosed Vol Remaining
nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining = {}

-- Size: Disclosed Vol Remaining
nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining.size = 4

-- Display: Disclosed Vol Remaining
nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining.display = function(value)
  return "Disclosed Vol Remaining: "..value
end

-- Dissect: Disclosed Vol Remaining
nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.disclosed_vol_remaining, range, value, display)

  return offset + length, value
end

-- Error Code
nse_nsecd_dropcopy_nnfdirect_v1_7.error_code = {}

-- Size: Error Code
nse_nsecd_dropcopy_nnfdirect_v1_7.error_code.size = 2

-- Display: Error Code
nse_nsecd_dropcopy_nnfdirect_v1_7.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
nse_nsecd_dropcopy_nnfdirect_v1_7.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.error_code, range, value, display)

  return offset + length, value
end

-- Expiry Date
nse_nsecd_dropcopy_nnfdirect_v1_7.expiry_date = {}

-- Size: Expiry Date
nse_nsecd_dropcopy_nnfdirect_v1_7.expiry_date.size = 4

-- Dissect: Expiry Date
nse_nsecd_dropcopy_nnfdirect_v1_7.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.expiry_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.expiry_date
  if nse_nsecd_dropcopy_nnfdirect_v1_7.absolute_time_base == 1 then field = omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.expiry_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Fifth Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1 = {}

-- Size: Fifth Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1.size = 1

-- Display: Fifth Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1.display = function(value)
  return "Fifth Reserved 1: "..value
end

-- Dissect: Fifth Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.fifth_reserved_1, range, value, display)

  return offset + length, value
end

-- Fill Number
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number = {}

-- Size: Fill Number
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.size = 4

-- Display: Fill Number
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.display = function(value)
  return "Fill Number: "..value
end

-- Dissect: Fill Number
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.fill_number, range, value, display)

  return offset + length, value
end

-- Fill Price
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price = {}

-- Size: Fill Price
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.size = 4

-- Display: Fill Price
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Translate: Fill Price
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.translate = function(raw)
  return raw/10000000
end

-- Dissect: Fill Price
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.translate(raw)
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Qty
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty = {}

-- Size: Fill Qty
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty.size = 4

-- Display: Fill Qty
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty.display = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Fill Volume
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_volume = {}

-- Size: Fill Volume
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_volume.size = 4

-- Display: Fill Volume
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_volume.display = function(value)
  return "Fill Volume: "..value
end

-- Dissect: Fill Volume
nse_nsecd_dropcopy_nnfdirect_v1_7.fill_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.fill_volume, range, value, display)

  return offset + length, value
end

-- Filler
nse_nsecd_dropcopy_nnfdirect_v1_7.filler = {}

-- Size: Filler
nse_nsecd_dropcopy_nnfdirect_v1_7.filler.size = 1

-- Display: Filler
nse_nsecd_dropcopy_nnfdirect_v1_7.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
nse_nsecd_dropcopy_nnfdirect_v1_7.filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.filler, range, value, display)

  return offset + length, value
end

-- Fourth Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1 = {}

-- Size: Fourth Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1.size = 1

-- Display: Fourth Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1.display = function(value)
  return "Fourth Reserved 1: "..value
end

-- Dissect: Fourth Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.fourth_reserved_1, range, value, display)

  return offset + length, value
end

-- Give Up Trade
nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade = {}

-- Size: Give Up Trade
nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade.size = 1

-- Display: Give Up Trade
nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade.display = function(value)
  return "Give Up Trade: "..value
end

-- Dissect: Give Up Trade
nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.give_up_trade, range, value, display)

  return offset + length, value
end

-- Giveup Flag
nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_flag = {}

-- Size: Giveup Flag
nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_flag.size = 1

-- Display: Giveup Flag
nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_flag.display = function(value)
  return "Giveup Flag: "..value
end

-- Dissect: Giveup Flag
nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.giveup_flag, range, value, display)

  return offset + length, value
end

-- Gtd
nse_nsecd_dropcopy_nnfdirect_v1_7.gtd = {}

-- Size: Gtd
nse_nsecd_dropcopy_nnfdirect_v1_7.gtd.size = 4

-- Display: Gtd
nse_nsecd_dropcopy_nnfdirect_v1_7.gtd.display = function(value)
  return "Gtd: "..value
end

-- Dissect: Gtd
nse_nsecd_dropcopy_nnfdirect_v1_7.gtd.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.gtd.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.gtd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.gtd, range, value, display)

  return offset + length, value
end

-- Header Timestamp
nse_nsecd_dropcopy_nnfdirect_v1_7.header_timestamp = {}

-- Size: Header Timestamp
nse_nsecd_dropcopy_nnfdirect_v1_7.header_timestamp.size = 8

-- Display: Header Timestamp
nse_nsecd_dropcopy_nnfdirect_v1_7.header_timestamp.display = function(value)
  return "Header Timestamp: "..value
end

-- Dissect: Header Timestamp
nse_nsecd_dropcopy_nnfdirect_v1_7.header_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.header_timestamp.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.header_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.header_timestamp, range, value, display)

  return offset + length, value
end

-- Initiated By Control
nse_nsecd_dropcopy_nnfdirect_v1_7.initiated_by_control = {}

-- Size: Initiated By Control
nse_nsecd_dropcopy_nnfdirect_v1_7.initiated_by_control.size = 1

-- Display: Initiated By Control
nse_nsecd_dropcopy_nnfdirect_v1_7.initiated_by_control.display = function(value)
  return "Initiated By Control: "..value
end

-- Dissect: Initiated By Control
nse_nsecd_dropcopy_nnfdirect_v1_7.initiated_by_control.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.initiated_by_control.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.initiated_by_control.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.initiated_by_control, range, value, display)

  return offset + length, value
end

-- Instrument Name
nse_nsecd_dropcopy_nnfdirect_v1_7.instrument_name = {}

-- Size: Instrument Name
nse_nsecd_dropcopy_nnfdirect_v1_7.instrument_name.size = 6

-- Display: Instrument Name
nse_nsecd_dropcopy_nnfdirect_v1_7.instrument_name.display = function(value)
  return "Instrument Name: "..value
end

-- Dissect: Instrument Name
nse_nsecd_dropcopy_nnfdirect_v1_7.instrument_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.instrument_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.instrument_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.instrument_name, range, value, display)

  return offset + length, value
end

-- Last Activity Reference
nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference = {}

-- Size: Last Activity Reference
nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference.size = 8

-- Display: Last Activity Reference
nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference.display = function(value)
  return "Last Activity Reference: "..value
end

-- Dissect: Last Activity Reference
nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.last_activity_reference, range, value, display)

  return offset + length, value
end

-- Last Modified Date Time
nse_nsecd_dropcopy_nnfdirect_v1_7.last_modified_date_time = {}

-- Size: Last Modified Date Time
nse_nsecd_dropcopy_nnfdirect_v1_7.last_modified_date_time.size = 4

-- Dissect: Last Modified Date Time
nse_nsecd_dropcopy_nnfdirect_v1_7.last_modified_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.last_modified_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.last_modified_date_time
  if nse_nsecd_dropcopy_nnfdirect_v1_7.absolute_time_base == 1 then field = omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.last_modified_date_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Log Time
nse_nsecd_dropcopy_nnfdirect_v1_7.log_time = {}

-- Size: Log Time
nse_nsecd_dropcopy_nnfdirect_v1_7.log_time.size = 4

-- Dissect: Log Time
nse_nsecd_dropcopy_nnfdirect_v1_7.log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.log_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.log_time
  if nse_nsecd_dropcopy_nnfdirect_v1_7.absolute_time_base == 1 then field = omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.log_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Message Length
nse_nsecd_dropcopy_nnfdirect_v1_7.message_length = {}

-- Size: Message Length
nse_nsecd_dropcopy_nnfdirect_v1_7.message_length.size = 2

-- Display: Message Length
nse_nsecd_dropcopy_nnfdirect_v1_7.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nsecd_dropcopy_nnfdirect_v1_7.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.message_length, range, value, display)

  return offset + length, value
end

-- New Volume
nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume = {}

-- Size: New Volume
nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume.size = 4

-- Display: New Volume
nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume.display = function(value)
  return "New Volume: "..value
end

-- Dissect: New Volume
nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.new_volume, range, value, display)

  return offset + length, value
end

-- Nnf Field
nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field = {}

-- Size: Nnf Field
nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field.size = 8

-- Display: Nnf Field
nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field.display = function(value)
  return "Nnf Field: "..string.format("%.0f", value)
end

-- Dissect: Nnf Field
nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.nnf_field, range, value, display)

  return offset + length, value
end

-- Old Account Number
nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number = {}

-- Size: Old Account Number
nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number.size = 10

-- Display: Old Account Number
nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number.display = function(value)
  return "Old Account Number: "..value
end

-- Dissect: Old Account Number
nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.old_account_number, range, value, display)

  return offset + length, value
end

-- Old Open Close
nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close = {}

-- Size: Old Open Close
nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close.size = 1

-- Display: Old Open Close
nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close.display = function(value)
  return "Old Open Close: "..value
end

-- Dissect: Old Open Close
nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.old_open_close, range, value, display)

  return offset + length, value
end

-- Old Pan
nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan = {}

-- Size: Old Pan
nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan.size = 10

-- Display: Old Pan
nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan.display = function(value)
  return "Old Pan: "..value
end

-- Dissect: Old Pan
nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.old_pan, range, value, display)

  return offset + length, value
end

-- Old Participant
nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant = {}

-- Size: Old Participant
nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant.size = 12

-- Display: Old Participant
nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant.display = function(value)
  return "Old Participant: "..value
end

-- Dissect: Old Participant
nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.old_participant, range, value, display)

  return offset + length, value
end

-- Op Broker Id
nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id = {}

-- Size: Op Broker Id
nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id.size = 5

-- Display: Op Broker Id
nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id.display = function(value)
  return "Op Broker Id: "..value
end

-- Dissect: Op Broker Id
nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.op_broker_id, range, value, display)

  return offset + length, value
end

-- Op Order Number
nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number = {}

-- Size: Op Order Number
nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number.size = 8

-- Display: Op Order Number
nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number.display = function(value)
  return "Op Order Number: "..string.format("%.0f", value)
end

-- Dissect: Op Order Number
nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.op_order_number, range, value, display)

  return offset + length, value
end

-- Open Close
nse_nsecd_dropcopy_nnfdirect_v1_7.open_close = {}

-- Size: Open Close
nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.size = 1

-- Display: Open Close
nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.labels = {
  ["O"] = "Open Close: Open (O)",
  ["C"] = "Open Close: Close (C)",
}

nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.display = function(value)
  return nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.labels[value] or "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.open_close, range, value, display)

  return offset + length, value
end

-- Option Type
nse_nsecd_dropcopy_nnfdirect_v1_7.option_type = {}

-- Size: Option Type
nse_nsecd_dropcopy_nnfdirect_v1_7.option_type.size = 2

-- Display: Option Type
nse_nsecd_dropcopy_nnfdirect_v1_7.option_type.labels = {
  ["CE"] = "Option Type: Call Option (CE)",
  ["PE"] = "Option Type: Put Option (PE)",
  ["XX"] = "Option Type: Futures Contract (XX)",
}

nse_nsecd_dropcopy_nnfdirect_v1_7.option_type.display = function(value)
  return nse_nsecd_dropcopy_nnfdirect_v1_7.option_type.labels[value] or "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nse_nsecd_dropcopy_nnfdirect_v1_7.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.option_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Number
nse_nsecd_dropcopy_nnfdirect_v1_7.order_number = {}

-- Size: Order Number
nse_nsecd_dropcopy_nnfdirect_v1_7.order_number.size = 8

-- Display: Order Number
nse_nsecd_dropcopy_nnfdirect_v1_7.order_number.display = function(value)
  return "Order Number: "..string.format("%.0f", value)
end

-- Dissect: Order Number
nse_nsecd_dropcopy_nnfdirect_v1_7.order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.order_number, range, value, display)

  return offset + length, value
end

-- Original Vol
nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol = {}

-- Size: Original Vol
nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol.size = 4

-- Display: Original Vol
nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol.display = function(value)
  return "Original Vol: "..value
end

-- Dissect: Original Vol
nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.original_vol, range, value, display)

  return offset + length, value
end

-- Packet Length
nse_nsecd_dropcopy_nnfdirect_v1_7.packet_length = {}

-- Size: Packet Length
nse_nsecd_dropcopy_nnfdirect_v1_7.packet_length.size = 2

-- Display: Packet Length
nse_nsecd_dropcopy_nnfdirect_v1_7.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nse_nsecd_dropcopy_nnfdirect_v1_7.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
nse_nsecd_dropcopy_nnfdirect_v1_7.packet_sequence_number = {}

-- Size: Packet Sequence Number
nse_nsecd_dropcopy_nnfdirect_v1_7.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
nse_nsecd_dropcopy_nnfdirect_v1_7.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
nse_nsecd_dropcopy_nnfdirect_v1_7.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Pan
nse_nsecd_dropcopy_nnfdirect_v1_7.pan = {}

-- Size: Pan
nse_nsecd_dropcopy_nnfdirect_v1_7.pan.size = 10

-- Display: Pan
nse_nsecd_dropcopy_nnfdirect_v1_7.pan.display = function(value)
  return "Pan: "..value
end

-- Dissect: Pan
nse_nsecd_dropcopy_nnfdirect_v1_7.pan.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.pan.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.pan.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.pan, range, value, display)

  return offset + length, value
end

-- Participant
nse_nsecd_dropcopy_nnfdirect_v1_7.participant = {}

-- Size: Participant
nse_nsecd_dropcopy_nnfdirect_v1_7.participant.size = 12

-- Display: Participant
nse_nsecd_dropcopy_nnfdirect_v1_7.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
nse_nsecd_dropcopy_nnfdirect_v1_7.participant.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.participant, range, value, display)

  return offset + length, value
end

-- Password
nse_nsecd_dropcopy_nnfdirect_v1_7.password = {}

-- Size: Password
nse_nsecd_dropcopy_nnfdirect_v1_7.password.size = 12

-- Display: Password
nse_nsecd_dropcopy_nnfdirect_v1_7.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nse_nsecd_dropcopy_nnfdirect_v1_7.password.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nse_nsecd_dropcopy_nnfdirect_v1_7.price = {}

-- Size: Price
nse_nsecd_dropcopy_nnfdirect_v1_7.price.size = 4

-- Display: Price
nse_nsecd_dropcopy_nnfdirect_v1_7.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nsecd_dropcopy_nnfdirect_v1_7.price.translate = function(raw)
  return raw/10000000
end

-- Dissect: Price
nse_nsecd_dropcopy_nnfdirect_v1_7.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecd_dropcopy_nnfdirect_v1_7.price.translate(raw)
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.price, range, value, display)

  return offset + length, value
end

-- Reason Code
nse_nsecd_dropcopy_nnfdirect_v1_7.reason_code = {}

-- Size: Reason Code
nse_nsecd_dropcopy_nnfdirect_v1_7.reason_code.size = 2

-- Display: Reason Code
nse_nsecd_dropcopy_nnfdirect_v1_7.reason_code.display = function(value)
  return "Reason Code: "..value
end

-- Dissect: Reason Code
nse_nsecd_dropcopy_nnfdirect_v1_7.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.reason_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Remaining Vol
nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol = {}

-- Size: Remaining Vol
nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol.size = 4

-- Display: Remaining Vol
nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol.display = function(value)
  return "Remaining Vol: "..value
end

-- Dissect: Remaining Vol
nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.remaining_vol, range, value, display)

  return offset + length, value
end

-- Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1 = {}

-- Size: Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.size = 1

-- Display: Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 119
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_119 = {}

-- Size: Reserved 119
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_119.size = 119

-- Display: Reserved 119
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_119.display = function(value)
  return "Reserved 119: "..value
end

-- Dissect: Reserved 119
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_119.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_119.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_119.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_119, range, value, display)

  return offset + length, value
end

-- Reserved 16
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_16 = {}

-- Size: Reserved 16
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_16.size = 16

-- Display: Reserved 16
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 38
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_38 = {}

-- Size: Reserved 38
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_38.size = 38

-- Display: Reserved 38
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_38.display = function(value)
  return "Reserved 38: "..value
end

-- Dissect: Reserved 38
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_38.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_38.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_38.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_38, range, value, display)

  return offset + length, value
end

-- Reserved 4
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_4 = {}

-- Size: Reserved 4
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_4.size = 4

-- Display: Reserved 4
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 44
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44 = {}

-- Size: Reserved 44
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44.size = 44

-- Display: Reserved 44
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44.display = function(value)
  return "Reserved 44: "..value
end

-- Dissect: Reserved 44
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_44, range, value, display)

  return offset + length, value
end

-- Reserved 8
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_8 = {}

-- Size: Reserved 8
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_8.size = 8

-- Display: Reserved 8
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Response Order Number
nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number = {}

-- Size: Response Order Number
nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number.size = 8

-- Display: Response Order Number
nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number.display = function(value)
  return "Response Order Number: "..string.format("%.0f", value)
end

-- Dissect: Response Order Number
nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.response_order_number, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1 = {}

-- Size: Second Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.size = 1

-- Display: Second Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Second Reserved 16
nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_16 = {}

-- Size: Second Reserved 16
nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_16.size = 16

-- Display: Second Reserved 16
nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_16.display = function(value)
  return "Second Reserved 16: "..value
end

-- Dissect: Second Reserved 16
nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.second_reserved_16, range, value, display)

  return offset + length, value
end

-- Sequence Number
nse_nsecd_dropcopy_nnfdirect_v1_7.sequence_number = {}

-- Size: Sequence Number
nse_nsecd_dropcopy_nnfdirect_v1_7.sequence_number.size = 8

-- Display: Sequence Number
nse_nsecd_dropcopy_nnfdirect_v1_7.sequence_number.display = function(value)
  return "Sequence Number: "..string.format("%.0f", value)
end

-- Dissect: Sequence Number
nse_nsecd_dropcopy_nnfdirect_v1_7.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.sequence_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Strike Price
nse_nsecd_dropcopy_nnfdirect_v1_7.strike_price = {}

-- Size: Strike Price
nse_nsecd_dropcopy_nnfdirect_v1_7.strike_price.size = 4

-- Display: Strike Price
nse_nsecd_dropcopy_nnfdirect_v1_7.strike_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == -1 then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Translate: Strike Price
nse_nsecd_dropcopy_nnfdirect_v1_7.strike_price.translate = function(raw)
  -- Check null sentinel value
  if raw == -1 then
    return 0/0
  end

  return raw/10000000
end

-- Dissect: Strike Price
nse_nsecd_dropcopy_nnfdirect_v1_7.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.strike_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecd_dropcopy_nnfdirect_v1_7.strike_price.translate(raw)
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.strike_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
nse_nsecd_dropcopy_nnfdirect_v1_7.symbol = {}

-- Size: Symbol
nse_nsecd_dropcopy_nnfdirect_v1_7.symbol.size = 10

-- Display: Symbol
nse_nsecd_dropcopy_nnfdirect_v1_7.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nse_nsecd_dropcopy_nnfdirect_v1_7.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.symbol, range, value, display)

  return offset + length, value
end

-- Third Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1 = {}

-- Size: Third Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1.size = 1

-- Display: Third Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1.display = function(value)
  return "Third Reserved 1: "..value
end

-- Dissect: Third Reserved 1
nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.third_reserved_1, range, value, display)

  return offset + length, value
end

-- Third Reserved 16
nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_16 = {}

-- Size: Third Reserved 16
nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_16.size = 16

-- Display: Third Reserved 16
nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_16.display = function(value)
  return "Third Reserved 16: "..value
end

-- Dissect: Third Reserved 16
nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.third_reserved_16, range, value, display)

  return offset + length, value
end

-- Time Stamp 1
nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_1 = {}

-- Size: Time Stamp 1
nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_1.size = 8

-- Display: Time Stamp 1
nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_1.display = function(value)
  return "Time Stamp 1: "..value
end

-- Dissect: Time Stamp 1
nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.time_stamp_1, range, value, display)

  return offset + length, value
end

-- Time Stamp 2
nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_2 = {}

-- Size: Time Stamp 2
nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_2.size = 8

-- Display: Time Stamp 2
nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_2.display = function(value)
  return "Time Stamp 2: "..value
end

-- Dissect: Time Stamp 2
nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.time_stamp_2, range, value, display)

  return offset + length, value
end

-- Token
nse_nsecd_dropcopy_nnfdirect_v1_7.token = {}

-- Size: Token
nse_nsecd_dropcopy_nnfdirect_v1_7.token.size = 4

-- Display: Token
nse_nsecd_dropcopy_nnfdirect_v1_7.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nsecd_dropcopy_nnfdirect_v1_7.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.token.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.token, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nsecd_dropcopy_nnfdirect_v1_7.trader_id = {}

-- Size: Trader Id
nse_nsecd_dropcopy_nnfdirect_v1_7.trader_id.size = 4

-- Display: Trader Id
nse_nsecd_dropcopy_nnfdirect_v1_7.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nsecd_dropcopy_nnfdirect_v1_7.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trader Num
nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num = {}

-- Size: Trader Num
nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num.size = 4

-- Display: Trader Num
nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num.display = function(value)
  return "Trader Num: "..value
end

-- Dissect: Trader Num
nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.trader_num, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nsecd_dropcopy_nnfdirect_v1_7.transaction_code = {}

-- Size: Transaction Code
nse_nsecd_dropcopy_nnfdirect_v1_7.transaction_code.size = 2

-- Display: Transaction Code
nse_nsecd_dropcopy_nnfdirect_v1_7.transaction_code.labels = {
  [2300] = "Transaction Code: Signon In Message (2300)",
  [2301] = "Transaction Code: Sign On Out Message (2301)",
  [23506] = "Transaction Code: Heartbeat Message (23506)",
  [8000] = "Transaction Code: Dc Download Request Message (8000)",
  [2222] = "Transaction Code: Trade Confirmation Message (2222)",
  [2282] = "Transaction Code: Trade Cancel Confirm Message (2282)",
  [2286] = "Transaction Code: Trade Cancel Reject Message (2286)",
  [2287] = "Transaction Code: Trade Modify Confirm Message (2287)",
  [2288] = "Transaction Code: Trade Modify Reject Message (2288)",
  [4506] = "Transaction Code: Giveup App Confirm Tm Message (4506)",
  [4507] = "Transaction Code: Giveup Rej Confirm Tm Message (4507)",
}

nse_nsecd_dropcopy_nnfdirect_v1_7.transaction_code.display = function(value)
  return nse_nsecd_dropcopy_nnfdirect_v1_7.transaction_code.labels[value] or "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nsecd_dropcopy_nnfdirect_v1_7.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.transaction_code, range, value, display)

  return offset + length, value
end

-- User Id
nse_nsecd_dropcopy_nnfdirect_v1_7.user_id = {}

-- Size: User Id
nse_nsecd_dropcopy_nnfdirect_v1_7.user_id.size = 4

-- Display: User Id
nse_nsecd_dropcopy_nnfdirect_v1_7.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
nse_nsecd_dropcopy_nnfdirect_v1_7.user_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.user_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.user_id, range, value, display)

  return offset + length, value
end

-- Vol Filled Today
nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today = {}

-- Size: Vol Filled Today
nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today.size = 4

-- Display: Vol Filled Today
nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today.display = function(value)
  return "Vol Filled Today: "..value
end

-- Dissect: Vol Filled Today
nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.vol_filled_today, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseCd DropCopy NnfDirect 1.7
-----------------------------------------------------------------------

-- Giveup Rej Confirm Tm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_rej_confirm_tm_message = {}

-- Size: Giveup Rej Confirm Tm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_rej_confirm_tm_message.size =
  nse_nsecd_dropcopy_nnfdirect_v1_7.reason_code.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.order_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.instrument_name.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.symbol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.expiry_date.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.strike_price.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.option_type.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.ca_level.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_volume.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.filler.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_short_2.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.last_modified_date_time.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.initiated_by_control.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.participant.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_flag.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.deleted.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.size

-- Display: Giveup Rej Confirm Tm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_rej_confirm_tm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Giveup Rej Confirm Tm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_rej_confirm_tm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsecd_dropcopy_nnfdirect_v1_7.reason_code.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecd_dropcopy_nnfdirect_v1_7.order_number.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.dissect(buffer, index, packet, parent)

  -- Instrument Name: CHAR
  index, instrument_name = nse_nsecd_dropcopy_nnfdirect_v1_7.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nsecd_dropcopy_nnfdirect_v1_7.symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nsecd_dropcopy_nnfdirect_v1_7.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nsecd_dropcopy_nnfdirect_v1_7.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nsecd_dropcopy_nnfdirect_v1_7.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nsecd_dropcopy_nnfdirect_v1_7.ca_level.dissect(buffer, index, packet, parent)

  -- Fill Volume: LONG
  index, fill_volume = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_volume.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecd_dropcopy_nnfdirect_v1_7.filler.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Book Type Short 2: SHORT
  index, book_type_short_2 = nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_short_2.dissect(buffer, index, packet, parent)

  -- Last Modified Date Time: LONG
  index, last_modified_date_time = nse_nsecd_dropcopy_nnfdirect_v1_7.last_modified_date_time.dissect(buffer, index, packet, parent)

  -- Initiated By Control: CHAR
  index, initiated_by_control = nse_nsecd_dropcopy_nnfdirect_v1_7.initiated_by_control.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsecd_dropcopy_nnfdirect_v1_7.participant.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_flag.dissect(buffer, index, packet, parent)

  -- Deleted: CHAR
  index, deleted = nse_nsecd_dropcopy_nnfdirect_v1_7.deleted.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  index, second_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Giveup Rej Confirm Tm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_rej_confirm_tm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.giveup_rej_confirm_tm_message, buffer(offset, 0))
    local index = nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_rej_confirm_tm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_rej_confirm_tm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_rej_confirm_tm_message.fields(buffer, offset, packet, parent)
  end
end

-- Giveup App Confirm Tm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_app_confirm_tm_message = {}

-- Size: Giveup App Confirm Tm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_app_confirm_tm_message.size =
  nse_nsecd_dropcopy_nnfdirect_v1_7.reason_code.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.order_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.instrument_name.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.symbol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.expiry_date.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.strike_price.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.option_type.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.ca_level.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_volume.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.filler.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_short_2.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.last_modified_date_time.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.initiated_by_control.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.participant.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_flag.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.deleted.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.size

-- Display: Giveup App Confirm Tm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_app_confirm_tm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Giveup App Confirm Tm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_app_confirm_tm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsecd_dropcopy_nnfdirect_v1_7.reason_code.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecd_dropcopy_nnfdirect_v1_7.order_number.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.dissect(buffer, index, packet, parent)

  -- Instrument Name: CHAR
  index, instrument_name = nse_nsecd_dropcopy_nnfdirect_v1_7.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nsecd_dropcopy_nnfdirect_v1_7.symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nsecd_dropcopy_nnfdirect_v1_7.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nsecd_dropcopy_nnfdirect_v1_7.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nsecd_dropcopy_nnfdirect_v1_7.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nsecd_dropcopy_nnfdirect_v1_7.ca_level.dissect(buffer, index, packet, parent)

  -- Fill Volume: LONG
  index, fill_volume = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_volume.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecd_dropcopy_nnfdirect_v1_7.filler.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Book Type Short 2: SHORT
  index, book_type_short_2 = nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_short_2.dissect(buffer, index, packet, parent)

  -- Last Modified Date Time: LONG
  index, last_modified_date_time = nse_nsecd_dropcopy_nnfdirect_v1_7.last_modified_date_time.dissect(buffer, index, packet, parent)

  -- Initiated By Control: CHAR
  index, initiated_by_control = nse_nsecd_dropcopy_nnfdirect_v1_7.initiated_by_control.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsecd_dropcopy_nnfdirect_v1_7.participant.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_flag.dissect(buffer, index, packet, parent)

  -- Deleted: CHAR
  index, deleted = nse_nsecd_dropcopy_nnfdirect_v1_7.deleted.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  index, second_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Giveup App Confirm Tm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_app_confirm_tm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.giveup_app_confirm_tm_message, buffer(offset, 0))
    local index = nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_app_confirm_tm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_app_confirm_tm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_app_confirm_tm_message.fields(buffer, offset, packet, parent)
  end
end

-- Additional Order Flags
nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags = {}

-- Size: Additional Order Flags
nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.size = 1

-- Display: Additional Order Flags
nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Col flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Col"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Additional Order Flags
nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.bits = function(range, value, packet, parent)

  -- Additional Order Flags Reserved 1: 1 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.additional_order_flags_reserved_1, range, value)

  -- Col: 1 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.col, range, value)

  -- Additional Order Flags Reserved 38: 6 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.additional_order_flags_reserved_38, range, value)
end

-- Dissect: Additional Order Flags
nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.additional_order_flags, range, display)

  if show.structs then
    nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Contract Desc
nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc = {}

-- Size: Contract Desc
nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.size =
  nse_nsecd_dropcopy_nnfdirect_v1_7.instrument_name.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.symbol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.expiry_date.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.strike_price.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.option_type.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.ca_level.size

-- Display: Contract Desc
nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Desc
nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Name: CHAR
  index, instrument_name = nse_nsecd_dropcopy_nnfdirect_v1_7.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nsecd_dropcopy_nnfdirect_v1_7.symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nsecd_dropcopy_nnfdirect_v1_7.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nsecd_dropcopy_nnfdirect_v1_7.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nsecd_dropcopy_nnfdirect_v1_7.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nsecd_dropcopy_nnfdirect_v1_7.ca_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Desc
nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.contract_desc, buffer(offset, 0))
    local index = nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.fields(buffer, offset, packet, parent)
  end
end

-- St Order Flags
nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags = {}

-- Size: St Order Flags
nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.size = 2

-- Display: St Order Flags
nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Frozen flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Frozen"
  end
  -- Is Modified flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Modified"
  end
  -- Is Traded flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Traded"
  end
  -- Is Matched Ind flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Matched Ind"
  end
  -- Is Mf flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Mf"
  end
  -- Is Aon flag set?
  if bit.band(value, 0x0100) ~= 0 then
    flags[#flags + 1] = "Aon"
  end
  -- Is Ioc flag set?
  if bit.band(value, 0x0200) ~= 0 then
    flags[#flags + 1] = "Ioc"
  end
  -- Is Gtc flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "Gtc"
  end
  -- Is Day flag set?
  if bit.band(value, 0x0800) ~= 0 then
    flags[#flags + 1] = "Day"
  end
  -- Is Mit flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Mit"
  end
  -- Is Sl flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Sl"
  end
  -- Is Market flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Market"
  end
  -- Is Ato flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Ato"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: St Order Flags
nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.bits = function(range, value, packet, parent)

  -- Reserved 13: 3 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.reserved_13, range, value)

  -- Frozen: 1 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.frozen, range, value)

  -- Modified: 1 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.modified, range, value)

  -- Traded: 1 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.traded, range, value)

  -- Matched Ind: 1 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.matched_ind, range, value)

  -- Mf: 1 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.mf, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.aon, range, value)

  -- Ioc: 1 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.ioc, range, value)

  -- Gtc: 1 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.gtc, range, value)

  -- Day: 1 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.day, range, value)

  -- Mit: 1 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.mit, range, value)

  -- Sl: 1 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.sl, range, value)

  -- Market: 1 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.market, range, value)

  -- Ato: 1 Bit
  parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.ato, range, value)
end

-- Dissect: St Order Flags
nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.st_order_flags, range, display)

  if show.structs then
    nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Modify Reject Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_reject_message = {}

-- Size: Trade Modify Reject Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_reject_message.size =
  nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.account_num.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.price.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.gtd.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.activity_time.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.token.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.participant.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.pan.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44.size

-- Display: Trade Modify Reject Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Modify Reject Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.dissect(buffer, index, packet, parent)

  -- Trader Num: LONG
  index, trader_num = nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nsecd_dropcopy_nnfdirect_v1_7.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsecd_dropcopy_nnfdirect_v1_7.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 14 fields
  index, st_order_flags = nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nsecd_dropcopy_nnfdirect_v1_7.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nsecd_dropcopy_nnfdirect_v1_7.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  index, second_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Token: LONG
  index, token = nse_nsecd_dropcopy_nnfdirect_v1_7.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close.dissect(buffer, index, packet, parent)

  -- Book Type Char 1: CHAR
  index, book_type_char_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  index, third_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1.dissect(buffer, index, packet, parent)

  -- New Volume: LONG
  index, new_volume = nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsecd_dropcopy_nnfdirect_v1_7.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 3 fields
  index, additional_order_flags = nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  index, fourth_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1.dissect(buffer, index, packet, parent)

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: CHAR
  index, fifth_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecd_dropcopy_nnfdirect_v1_7.pan.dissect(buffer, index, packet, parent)

  -- Old Pan: CHAR
  index, old_pan = nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id.dissect(buffer, index, packet, parent)

  -- Algo Category: SHORT
  index, algo_category = nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Reserved 44: CHAR
  index, reserved_44 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Modify Reject Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.trade_modify_reject_message, buffer(offset, 0))
    local index = nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Modify Confirm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_confirm_message = {}

-- Size: Trade Modify Confirm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_confirm_message.size =
  nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.account_num.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.price.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.gtd.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.activity_time.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.token.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.participant.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.pan.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44.size

-- Display: Trade Modify Confirm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_confirm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Modify Confirm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_confirm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.dissect(buffer, index, packet, parent)

  -- Trader Num: LONG
  index, trader_num = nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nsecd_dropcopy_nnfdirect_v1_7.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsecd_dropcopy_nnfdirect_v1_7.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 14 fields
  index, st_order_flags = nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nsecd_dropcopy_nnfdirect_v1_7.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nsecd_dropcopy_nnfdirect_v1_7.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  index, second_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Token: LONG
  index, token = nse_nsecd_dropcopy_nnfdirect_v1_7.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close.dissect(buffer, index, packet, parent)

  -- Book Type Char 1: CHAR
  index, book_type_char_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  index, third_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1.dissect(buffer, index, packet, parent)

  -- New Volume: LONG
  index, new_volume = nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsecd_dropcopy_nnfdirect_v1_7.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 3 fields
  index, additional_order_flags = nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  index, fourth_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1.dissect(buffer, index, packet, parent)

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: CHAR
  index, fifth_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecd_dropcopy_nnfdirect_v1_7.pan.dissect(buffer, index, packet, parent)

  -- Old Pan: CHAR
  index, old_pan = nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id.dissect(buffer, index, packet, parent)

  -- Algo Category: SHORT
  index, algo_category = nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Reserved 44: CHAR
  index, reserved_44 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Modify Confirm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_confirm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.trade_modify_confirm_message, buffer(offset, 0))
    local index = nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_confirm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_confirm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_confirm_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Reject Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_reject_message = {}

-- Size: Trade Cancel Reject Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_reject_message.size =
  nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.account_num.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.price.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.gtd.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.activity_time.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.token.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.participant.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.pan.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44.size

-- Display: Trade Cancel Reject Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Reject Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.dissect(buffer, index, packet, parent)

  -- Trader Num: LONG
  index, trader_num = nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nsecd_dropcopy_nnfdirect_v1_7.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsecd_dropcopy_nnfdirect_v1_7.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 14 fields
  index, st_order_flags = nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nsecd_dropcopy_nnfdirect_v1_7.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nsecd_dropcopy_nnfdirect_v1_7.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  index, second_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Token: LONG
  index, token = nse_nsecd_dropcopy_nnfdirect_v1_7.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close.dissect(buffer, index, packet, parent)

  -- Book Type Char 1: CHAR
  index, book_type_char_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  index, third_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1.dissect(buffer, index, packet, parent)

  -- New Volume: LONG
  index, new_volume = nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsecd_dropcopy_nnfdirect_v1_7.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 3 fields
  index, additional_order_flags = nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  index, fourth_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1.dissect(buffer, index, packet, parent)

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: CHAR
  index, fifth_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecd_dropcopy_nnfdirect_v1_7.pan.dissect(buffer, index, packet, parent)

  -- Old Pan: CHAR
  index, old_pan = nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id.dissect(buffer, index, packet, parent)

  -- Algo Category: SHORT
  index, algo_category = nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Reserved 44: CHAR
  index, reserved_44 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Reject Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.trade_cancel_reject_message, buffer(offset, 0))
    local index = nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Confirm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_confirm_message = {}

-- Size: Trade Cancel Confirm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_confirm_message.size =
  nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.account_num.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.price.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.gtd.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.activity_time.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.token.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.participant.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.pan.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44.size

-- Display: Trade Cancel Confirm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_confirm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Confirm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_confirm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.dissect(buffer, index, packet, parent)

  -- Trader Num: LONG
  index, trader_num = nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nsecd_dropcopy_nnfdirect_v1_7.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsecd_dropcopy_nnfdirect_v1_7.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 14 fields
  index, st_order_flags = nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nsecd_dropcopy_nnfdirect_v1_7.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nsecd_dropcopy_nnfdirect_v1_7.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  index, second_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Token: LONG
  index, token = nse_nsecd_dropcopy_nnfdirect_v1_7.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close.dissect(buffer, index, packet, parent)

  -- Book Type Char 1: CHAR
  index, book_type_char_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  index, third_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1.dissect(buffer, index, packet, parent)

  -- New Volume: LONG
  index, new_volume = nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsecd_dropcopy_nnfdirect_v1_7.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 3 fields
  index, additional_order_flags = nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  index, fourth_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1.dissect(buffer, index, packet, parent)

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: CHAR
  index, fifth_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecd_dropcopy_nnfdirect_v1_7.pan.dissect(buffer, index, packet, parent)

  -- Old Pan: CHAR
  index, old_pan = nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id.dissect(buffer, index, packet, parent)

  -- Algo Category: SHORT
  index, algo_category = nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Reserved 44: CHAR
  index, reserved_44 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Confirm Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_confirm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.trade_cancel_confirm_message, buffer(offset, 0))
    local index = nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_confirm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_confirm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_confirm_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Confirmation Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_confirmation_message = {}

-- Size: Trade Confirmation Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_confirmation_message.size =
  nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.account_num.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.price.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.gtd.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.activity_time.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.token.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.participant.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.pan.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44.size

-- Display: Trade Confirmation Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Confirmation Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nsecd_dropcopy_nnfdirect_v1_7.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_1.dissect(buffer, index, packet, parent)

  -- Trader Num: LONG
  index, trader_num = nse_nsecd_dropcopy_nnfdirect_v1_7.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nsecd_dropcopy_nnfdirect_v1_7.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecd_dropcopy_nnfdirect_v1_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nsecd_dropcopy_nnfdirect_v1_7.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nsecd_dropcopy_nnfdirect_v1_7.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nsecd_dropcopy_nnfdirect_v1_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsecd_dropcopy_nnfdirect_v1_7.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 14 fields
  index, st_order_flags = nse_nsecd_dropcopy_nnfdirect_v1_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nsecd_dropcopy_nnfdirect_v1_7.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsecd_dropcopy_nnfdirect_v1_7.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nsecd_dropcopy_nnfdirect_v1_7.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nsecd_dropcopy_nnfdirect_v1_7.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nsecd_dropcopy_nnfdirect_v1_7.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nsecd_dropcopy_nnfdirect_v1_7.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nsecd_dropcopy_nnfdirect_v1_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  index, second_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Token: LONG
  index, token = nse_nsecd_dropcopy_nnfdirect_v1_7.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nsecd_dropcopy_nnfdirect_v1_7.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsecd_dropcopy_nnfdirect_v1_7.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nsecd_dropcopy_nnfdirect_v1_7.old_open_close.dissect(buffer, index, packet, parent)

  -- Book Type Char 1: CHAR
  index, book_type_char_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.book_type_char_1.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  index, third_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_1.dissect(buffer, index, packet, parent)

  -- New Volume: LONG
  index, new_volume = nse_nsecd_dropcopy_nnfdirect_v1_7.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nsecd_dropcopy_nnfdirect_v1_7.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsecd_dropcopy_nnfdirect_v1_7.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nsecd_dropcopy_nnfdirect_v1_7.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 3 fields
  index, additional_order_flags = nse_nsecd_dropcopy_nnfdirect_v1_7.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  index, fourth_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.fourth_reserved_1.dissect(buffer, index, packet, parent)

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nsecd_dropcopy_nnfdirect_v1_7.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: CHAR
  index, fifth_reserved_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.fifth_reserved_1.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecd_dropcopy_nnfdirect_v1_7.pan.dissect(buffer, index, packet, parent)

  -- Old Pan: CHAR
  index, old_pan = nse_nsecd_dropcopy_nnfdirect_v1_7.old_pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsecd_dropcopy_nnfdirect_v1_7.algo_id.dissect(buffer, index, packet, parent)

  -- Algo Category: SHORT
  index, algo_category = nse_nsecd_dropcopy_nnfdirect_v1_7.algo_category.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsecd_dropcopy_nnfdirect_v1_7.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecd_dropcopy_nnfdirect_v1_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Reserved 44: CHAR
  index, reserved_44 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_44.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Confirmation Message
nse_nsecd_dropcopy_nnfdirect_v1_7.trade_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.trade_confirmation_message, buffer(offset, 0))
    local index = nse_nsecd_dropcopy_nnfdirect_v1_7.trade_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_dropcopy_nnfdirect_v1_7.trade_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_dropcopy_nnfdirect_v1_7.trade_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Sign On Out Message
nse_nsecd_dropcopy_nnfdirect_v1_7.sign_on_out_message = {}

-- Size: Sign On Out Message
nse_nsecd_dropcopy_nnfdirect_v1_7.sign_on_out_message.size =
  nse_nsecd_dropcopy_nnfdirect_v1_7.user_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_8.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.password.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_4.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_38.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_119.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_16.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_16.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_16.size

-- Display: Sign On Out Message
nse_nsecd_dropcopy_nnfdirect_v1_7.sign_on_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sign On Out Message
nse_nsecd_dropcopy_nnfdirect_v1_7.sign_on_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsecd_dropcopy_nnfdirect_v1_7.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 8: CHAR
  index, reserved_8 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_8.dissect(buffer, index, packet, parent)

  -- Password: CHAR
  index, password = nse_nsecd_dropcopy_nnfdirect_v1_7.password.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  index, reserved_4 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_4.dissect(buffer, index, packet, parent)

  -- Reserved 38: CHAR
  index, reserved_38 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_38.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 119: CHAR
  index, reserved_119 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_119.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  index, reserved_16 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_16.dissect(buffer, index, packet, parent)

  -- Second Reserved 16: CHAR
  index, second_reserved_16 = nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_16.dissect(buffer, index, packet, parent)

  -- Third Reserved 16: CHAR
  index, third_reserved_16 = nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sign On Out Message
nse_nsecd_dropcopy_nnfdirect_v1_7.sign_on_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.sign_on_out_message, buffer(offset, 0))
    local index = nse_nsecd_dropcopy_nnfdirect_v1_7.sign_on_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_dropcopy_nnfdirect_v1_7.sign_on_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_dropcopy_nnfdirect_v1_7.sign_on_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Server Message Payload
nse_nsecd_dropcopy_nnfdirect_v1_7.server_message_payload = {}

-- Dispatch: Server Message Payload
nse_nsecd_dropcopy_nnfdirect_v1_7.server_message_payload.dispatch = {
  [2301] = nse_nsecd_dropcopy_nnfdirect_v1_7.sign_on_out_message.dissect,
  [2222] = nse_nsecd_dropcopy_nnfdirect_v1_7.trade_confirmation_message.dissect,
  [2282] = nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_confirm_message.dissect,
  [2286] = nse_nsecd_dropcopy_nnfdirect_v1_7.trade_cancel_reject_message.dissect,
  [2287] = nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_confirm_message.dissect,
  [2288] = nse_nsecd_dropcopy_nnfdirect_v1_7.trade_modify_reject_message.dissect,
  [4506] = nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_app_confirm_tm_message.dissect,
  [4507] = nse_nsecd_dropcopy_nnfdirect_v1_7.giveup_rej_confirm_tm_message.dissect,
}

-- Dissect: Server Message Payload
nse_nsecd_dropcopy_nnfdirect_v1_7.server_message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nsecd_dropcopy_nnfdirect_v1_7.server_message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nse_nsecd_dropcopy_nnfdirect_v1_7.message_header = {}

-- Size: Message Header
nse_nsecd_dropcopy_nnfdirect_v1_7.message_header.size =
  nse_nsecd_dropcopy_nnfdirect_v1_7.transaction_code.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.log_time.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.alpha_char.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.trader_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.error_code.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.header_timestamp.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_1.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_2.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.message_length.size

-- Display: Message Header
nse_nsecd_dropcopy_nnfdirect_v1_7.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nse_nsecd_dropcopy_nnfdirect_v1_7.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsecd_dropcopy_nnfdirect_v1_7.transaction_code.dissect(buffer, index, packet, parent)

  -- Log Time: LONG
  index, log_time = nse_nsecd_dropcopy_nnfdirect_v1_7.log_time.dissect(buffer, index, packet, parent)

  -- Alpha Char: CHAR
  index, alpha_char = nse_nsecd_dropcopy_nnfdirect_v1_7.alpha_char.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsecd_dropcopy_nnfdirect_v1_7.trader_id.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nsecd_dropcopy_nnfdirect_v1_7.error_code.dissect(buffer, index, packet, parent)

  -- Header Timestamp: LONG LONG
  index, header_timestamp = nse_nsecd_dropcopy_nnfdirect_v1_7.header_timestamp.dissect(buffer, index, packet, parent)

  -- Time Stamp 1: CHAR
  index, time_stamp_1 = nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_1.dissect(buffer, index, packet, parent)

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nsecd_dropcopy_nnfdirect_v1_7.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Message Length: SHORT
  index, message_length = nse_nsecd_dropcopy_nnfdirect_v1_7.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nse_nsecd_dropcopy_nnfdirect_v1_7.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.message_header, buffer(offset, 0))
    local index = nse_nsecd_dropcopy_nnfdirect_v1_7.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_dropcopy_nnfdirect_v1_7.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_dropcopy_nnfdirect_v1_7.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nse_nsecd_dropcopy_nnfdirect_v1_7.packet_header = {}

-- Size: Packet Header
nse_nsecd_dropcopy_nnfdirect_v1_7.packet_header.size =
  nse_nsecd_dropcopy_nnfdirect_v1_7.packet_length.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.packet_sequence_number.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.checksum.size

-- Display: Packet Header
nse_nsecd_dropcopy_nnfdirect_v1_7.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nse_nsecd_dropcopy_nnfdirect_v1_7.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nse_nsecd_dropcopy_nnfdirect_v1_7.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = nse_nsecd_dropcopy_nnfdirect_v1_7.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Checksum: 16 Byte
  index, checksum = nse_nsecd_dropcopy_nnfdirect_v1_7.checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nse_nsecd_dropcopy_nnfdirect_v1_7.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.packet_header, buffer(offset, 0))
    local index = nse_nsecd_dropcopy_nnfdirect_v1_7.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_dropcopy_nnfdirect_v1_7.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_dropcopy_nnfdirect_v1_7.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Direct Packet
nse_nsecd_dropcopy_nnfdirect_v1_7.server_direct_packet = {}

-- Display: Server Direct Packet
nse_nsecd_dropcopy_nnfdirect_v1_7.server_direct_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Direct Packet
nse_nsecd_dropcopy_nnfdirect_v1_7.server_direct_packet.fields = function(buffer, offset, packet, parent, size_of_server_direct_packet)
  local index = offset

  -- Packet Header: Struct of 3 fields
  index, packet_header = nse_nsecd_dropcopy_nnfdirect_v1_7.packet_header.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nsecd_dropcopy_nnfdirect_v1_7.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 40, 2):int()

  -- Server Message Payload: Runtime Type with 8 branches
  index = nse_nsecd_dropcopy_nnfdirect_v1_7.server_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Server Direct Packet
nse_nsecd_dropcopy_nnfdirect_v1_7.server_direct_packet.dissect = function(buffer, offset, packet, parent, size_of_server_direct_packet)
  local index = offset + size_of_server_direct_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.server_direct_packet, buffer(offset, 0))
    local current = nse_nsecd_dropcopy_nnfdirect_v1_7.server_direct_packet.fields(buffer, offset, packet, parent, size_of_server_direct_packet)
    parent:set_len(size_of_server_direct_packet)
    local display = nse_nsecd_dropcopy_nnfdirect_v1_7.server_direct_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsecd_dropcopy_nnfdirect_v1_7.server_direct_packet.fields(buffer, offset, packet, parent, size_of_server_direct_packet)

    return index
  end
end

-- Remaining Bytes For: Server Direct Packet
local server_direct_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nsecd_dropcopy_nnfdirect_v1_7.packet_header.size then
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
nse_nsecd_dropcopy_nnfdirect_v1_7.server_packet = {}

-- Verify required size of Tcp packet
nse_nsecd_dropcopy_nnfdirect_v1_7.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsecd_dropcopy_nnfdirect_v1_7.packet_header.size + nse_nsecd_dropcopy_nnfdirect_v1_7.message_header.size
end

-- Dissect Server Packet
nse_nsecd_dropcopy_nnfdirect_v1_7.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Direct Packet
  local end_of_payload = buffer:len()

  -- Server Direct Packet: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_direct_packet = server_direct_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_direct_packet):tvb()
      index = nse_nsecd_dropcopy_nnfdirect_v1_7.server_direct_packet.dissect(frame, index, packet, parent, size_of_server_direct_packet)
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

-- Dc Download Request Message
nse_nsecd_dropcopy_nnfdirect_v1_7.dc_download_request_message = {}

-- Size: Dc Download Request Message
nse_nsecd_dropcopy_nnfdirect_v1_7.dc_download_request_message.size =
  nse_nsecd_dropcopy_nnfdirect_v1_7.sequence_number.size

-- Display: Dc Download Request Message
nse_nsecd_dropcopy_nnfdirect_v1_7.dc_download_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Download Request Message
nse_nsecd_dropcopy_nnfdirect_v1_7.dc_download_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: DOUBLE
  index, sequence_number = nse_nsecd_dropcopy_nnfdirect_v1_7.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Download Request Message
nse_nsecd_dropcopy_nnfdirect_v1_7.dc_download_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.dc_download_request_message, buffer(offset, 0))
    local index = nse_nsecd_dropcopy_nnfdirect_v1_7.dc_download_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_dropcopy_nnfdirect_v1_7.dc_download_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_dropcopy_nnfdirect_v1_7.dc_download_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
nse_nsecd_dropcopy_nnfdirect_v1_7.heartbeat_message = {}

-- Display: Heartbeat Message
nse_nsecd_dropcopy_nnfdirect_v1_7.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
nse_nsecd_dropcopy_nnfdirect_v1_7.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nsecd_dropcopy_nnfdirect_v1_7.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Signon In Message
nse_nsecd_dropcopy_nnfdirect_v1_7.signon_in_message = {}

-- Size: Signon In Message
nse_nsecd_dropcopy_nnfdirect_v1_7.signon_in_message.size =
  nse_nsecd_dropcopy_nnfdirect_v1_7.user_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_8.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.password.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_4.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_38.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_119.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_16.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_16.size + 
  nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_16.size

-- Display: Signon In Message
nse_nsecd_dropcopy_nnfdirect_v1_7.signon_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Signon In Message
nse_nsecd_dropcopy_nnfdirect_v1_7.signon_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsecd_dropcopy_nnfdirect_v1_7.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 8: CHAR
  index, reserved_8 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_8.dissect(buffer, index, packet, parent)

  -- Password: CHAR
  index, password = nse_nsecd_dropcopy_nnfdirect_v1_7.password.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  index, reserved_4 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_4.dissect(buffer, index, packet, parent)

  -- Reserved 38: CHAR
  index, reserved_38 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_38.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecd_dropcopy_nnfdirect_v1_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 119: CHAR
  index, reserved_119 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_119.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  index, reserved_16 = nse_nsecd_dropcopy_nnfdirect_v1_7.reserved_16.dissect(buffer, index, packet, parent)

  -- Second Reserved 16: CHAR
  index, second_reserved_16 = nse_nsecd_dropcopy_nnfdirect_v1_7.second_reserved_16.dissect(buffer, index, packet, parent)

  -- Third Reserved 16: CHAR
  index, third_reserved_16 = nse_nsecd_dropcopy_nnfdirect_v1_7.third_reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Signon In Message
nse_nsecd_dropcopy_nnfdirect_v1_7.signon_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.signon_in_message, buffer(offset, 0))
    local index = nse_nsecd_dropcopy_nnfdirect_v1_7.signon_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_dropcopy_nnfdirect_v1_7.signon_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_dropcopy_nnfdirect_v1_7.signon_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Message Payload
nse_nsecd_dropcopy_nnfdirect_v1_7.client_message_payload = {}

-- Dispatch: Client Message Payload
nse_nsecd_dropcopy_nnfdirect_v1_7.client_message_payload.dispatch = {
  [2300] = nse_nsecd_dropcopy_nnfdirect_v1_7.signon_in_message.dissect,
  [23506] = nse_nsecd_dropcopy_nnfdirect_v1_7.heartbeat_message.dissect,
  [8000] = nse_nsecd_dropcopy_nnfdirect_v1_7.dc_download_request_message.dissect,
}

-- Dissect: Client Message Payload
nse_nsecd_dropcopy_nnfdirect_v1_7.client_message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nsecd_dropcopy_nnfdirect_v1_7.client_message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Direct Packet
nse_nsecd_dropcopy_nnfdirect_v1_7.client_direct_packet = {}

-- Display: Client Direct Packet
nse_nsecd_dropcopy_nnfdirect_v1_7.client_direct_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Direct Packet
nse_nsecd_dropcopy_nnfdirect_v1_7.client_direct_packet.fields = function(buffer, offset, packet, parent, size_of_client_direct_packet)
  local index = offset

  -- Packet Header: Struct of 3 fields
  index, packet_header = nse_nsecd_dropcopy_nnfdirect_v1_7.packet_header.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nsecd_dropcopy_nnfdirect_v1_7.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 40, 2):int()

  -- Client Message Payload: Runtime Type with 3 branches
  index = nse_nsecd_dropcopy_nnfdirect_v1_7.client_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Client Direct Packet
nse_nsecd_dropcopy_nnfdirect_v1_7.client_direct_packet.dissect = function(buffer, offset, packet, parent, size_of_client_direct_packet)
  local index = offset + size_of_client_direct_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7.fields.client_direct_packet, buffer(offset, 0))
    local current = nse_nsecd_dropcopy_nnfdirect_v1_7.client_direct_packet.fields(buffer, offset, packet, parent, size_of_client_direct_packet)
    parent:set_len(size_of_client_direct_packet)
    local display = nse_nsecd_dropcopy_nnfdirect_v1_7.client_direct_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsecd_dropcopy_nnfdirect_v1_7.client_direct_packet.fields(buffer, offset, packet, parent, size_of_client_direct_packet)

    return index
  end
end

-- Remaining Bytes For: Client Direct Packet
local client_direct_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nsecd_dropcopy_nnfdirect_v1_7.packet_header.size then
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
nse_nsecd_dropcopy_nnfdirect_v1_7.client_packet = {}

-- Verify required size of Tcp packet
nse_nsecd_dropcopy_nnfdirect_v1_7.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsecd_dropcopy_nnfdirect_v1_7.packet_header.size + nse_nsecd_dropcopy_nnfdirect_v1_7.message_header.size
end

-- Dissect Client Packet
nse_nsecd_dropcopy_nnfdirect_v1_7.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Direct Packet
  local end_of_payload = buffer:len()

  -- Client Direct Packet: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_direct_packet = client_direct_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_direct_packet):tvb()
      index = nse_nsecd_dropcopy_nnfdirect_v1_7.client_direct_packet.dissect(frame, index, packet, parent, size_of_client_direct_packet)
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
function omi_nse_nsecd_dropcopy_nnfdirect_v1_7.init()
end

-- Connection roles for Nse NseCd DropCopy NnfDirect 1.7: Client is the initiator, Server is the acceptor
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
nse_nsecd_dropcopy_nnfdirect_v1_7.role = function(packet)
  if omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.acceptor_port

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

  if omi_nse_nsecd_dropcopy_nnfdirect_v1_7.prefs.swap_sides then
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
nse_nsecd_dropcopy_nnfdirect_v1_7.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nse NseCd DropCopy NnfDirect 1.7
function omi_nse_nsecd_dropcopy_nnfdirect_v1_7.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nsecd_dropcopy_nnfdirect_v1_7.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nsecd_dropcopy_nnfdirect_v1_7, buffer(), omi_nse_nsecd_dropcopy_nnfdirect_v1_7.description, "("..buffer:len().." Bytes)")
  local role = nse_nsecd_dropcopy_nnfdirect_v1_7.role(packet)

  if role == "initiator" then
    return nse_nsecd_dropcopy_nnfdirect_v1_7.client_packet.dissect(buffer, packet, protocol)
  end

  return nse_nsecd_dropcopy_nnfdirect_v1_7.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nse_nsecd_dropcopy_nnfdirect_v1_7.client_packet.fingerprint = function(buffer)
  if buffer:len() < 24 then
    return false
  end

  local transaction_code = buffer(22, 2):int()

  -- Signon In Message
  if transaction_code == 2300 then
    return true
  end

  -- Heartbeat Message
  if transaction_code == 23506 then
    return true
  end

  -- Dc Download Request Message
  if transaction_code == 8000 then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nse_nsecd_dropcopy_nnfdirect_v1_7.server_packet.fingerprint = function(buffer)
  if buffer:len() < 24 then
    return false
  end

  local transaction_code = buffer(22, 2):int()

  -- Sign On Out Message
  if transaction_code == 2301 then
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

  -- Trade Modify Reject Message
  if transaction_code == 2288 then
    return true
  end

  -- Giveup App Confirm Tm Message
  if transaction_code == 4506 then
    return true
  end

  -- Giveup Rej Confirm Tm Message
  if transaction_code == 4507 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseCd DropCopy NnfDirect 1.7 (Tcp)
local function omi_nse_nsecd_dropcopy_nnfdirect_v1_7_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsecd_dropcopy_nnfdirect_v1_7.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nse_nsecd_dropcopy_nnfdirect_v1_7.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsecd_dropcopy_nnfdirect_v1_7
  omi_nse_nsecd_dropcopy_nnfdirect_v1_7.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseCd DropCopy NnfDirect 1.7 (Tcp)
local function omi_nse_nsecd_dropcopy_nnfdirect_v1_7_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsecd_dropcopy_nnfdirect_v1_7.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nse_nsecd_dropcopy_nnfdirect_v1_7.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsecd_dropcopy_nnfdirect_v1_7
  omi_nse_nsecd_dropcopy_nnfdirect_v1_7.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseCd DropCopy NnfDirect 1.7 (Tcp): apply the heuristic of the sender's connection role
local function omi_nse_nsecd_dropcopy_nnfdirect_v1_7_tcp_heuristic(buffer, packet, parent)
  local role = nse_nsecd_dropcopy_nnfdirect_v1_7.role(packet)
  local initiator = omi_nse_nsecd_dropcopy_nnfdirect_v1_7_tcp_initiator_heuristic
  local acceptor = omi_nse_nsecd_dropcopy_nnfdirect_v1_7_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nse_nsecd_dropcopy_nnfdirect_v1_7.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nse_nsecd_dropcopy_nnfdirect_v1_7.swap(packet)

  return false
end

-- Register Heuristics for Nse NseCd DropCopy NnfDirect 1.7
omi_nse_nsecd_dropcopy_nnfdirect_v1_7:register_heuristic("tcp", omi_nse_nsecd_dropcopy_nnfdirect_v1_7_tcp_heuristic)

-- Register Nse NseCd DropCopy NnfDirect 1.7 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nse_nsecd_dropcopy_nnfdirect_v1_7)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 1.7
--   Date: Thursday, September 1, 2022
--   Specification: DC_CUR_Normal_DROPCOPY_PROTOCOL_1.7_1.pdf
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
