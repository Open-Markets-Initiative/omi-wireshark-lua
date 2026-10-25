-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseCm OrderEntry NnfTrimmed 6.6 Protocol
local omi_nse_nsecm_orderentry_nnftrimmed_v6_6 = Proto("Omi.Nse.NseCm.OrderEntry.NnfTrimmed.v6.6", "Nse NseCm OrderEntry NnfTrimmed 6.6")

-- Protocol table
local nse_nsecm_orderentry_nnftrimmed_v6_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseCm OrderEntry NnfTrimmed 6.6 Fields
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.account_num = ProtoField.new("Account Num", "nse.nsecm.orderentry.nnftrimmed.v6.6.accountnum", ftypes.STRING, nil, nil, nil, "Trader account number for an order on behalf of a trader, or the broker code for a broker's own order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.account_number = ProtoField.new("Account Number", "nse.nsecm.orderentry.nnftrimmed.v6.6.accountnumber", ftypes.STRING, nil, nil, nil, "Trader account number for an order on behalf of a trader, or the broker code for a broker's own order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.activity_time = ProtoField.new("Activity Time", "nse.nsecm.orderentry.nnftrimmed.v6.6.activitytime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time of the activity, seconds from midnight January 1 1980")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.activity_time_utc = ProtoField.new("Activity Time", "nse.nsecm.orderentry.nnftrimmed.v6.6.activitytime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time of the activity, seconds from midnight January 1 1980")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.activity_type = ProtoField.new("Activity Type", "nse.nsecm.orderentry.nnftrimmed.v6.6.activitytype", ftypes.STRING, nil, nil, nil, "Type of the activity")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.algo_id = ProtoField.new("Algo Id", "nse.nsecm.orderentry.nnftrimmed.v6.6.algoid", ftypes.INT32, nil, nil, nil, "Algorithm Id of an algorithmic order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.aon = ProtoField.new("Aon", "nse.nsecm.orderentry.nnftrimmed.v6.6.aon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200, "All or none order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.ato = ProtoField.new("Ato", "nse.nsecm.orderentry.nnftrimmed.v6.6.ato", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "At the open order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.book_type = ProtoField.new("Book Type", "nse.nsecm.orderentry.nnftrimmed.v6.6.booktype", ftypes.INT16, nil, nil, nil, "Type of order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.branch_id = ProtoField.new("Branch Id", "nse.nsecm.orderentry.nnftrimmed.v6.6.branchid", ftypes.INT16, nil, nil, nil, "Branch Id of the trading member")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.broker_id = ProtoField.new("Broker Id", "nse.nsecm.orderentry.nnftrimmed.v6.6.brokerid", ftypes.STRING, nil, nil, nil, "Trading member Id")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.buy_sell = ProtoField.new("Buy Sell", "nse.nsecm.orderentry.nnftrimmed.v6.6.buysell", ftypes.INT16, nil, nil, nil, "Whether the order is a buy or a sell")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.day = ProtoField.new("Day", "nse.nsecm.orderentry.nnftrimmed.v6.6.day", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000, "Day order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.disclosed_vol = ProtoField.new("Disclosed Vol", "nse.nsecm.orderentry.nnftrimmed.v6.6.disclosedvol", ftypes.INT32, nil, nil, nil, "Quantity to be disclosed to the market")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.disclosed_vol_remaining = ProtoField.new("Disclosed Vol Remaining", "nse.nsecm.orderentry.nnftrimmed.v6.6.disclosedvolremaining", ftypes.INT32, nil, nil, nil, "Disclosed quantity remaining")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.entry_date_time = ProtoField.new("Entry Date Time", "nse.nsecm.orderentry.nnftrimmed.v6.6.entrydatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the order entered the system, seconds from midnight January 1 1980")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.entry_date_time_utc = ProtoField.new("Entry Date Time", "nse.nsecm.orderentry.nnftrimmed.v6.6.entrydatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the order entered the system, seconds from midnight January 1 1980")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.error_code = ProtoField.new("Error Code", "nse.nsecm.orderentry.nnftrimmed.v6.6.errorcode", ftypes.INT16, nil, nil, nil, "Type of error, zero while sending to the host")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.fill_number = ProtoField.new("Fill Number", "nse.nsecm.orderentry.nnftrimmed.v6.6.fillnumber", ftypes.INT32, nil, nil, nil, "Number of the fill")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.fill_price = ProtoField.new("Fill Price", "nse.nsecm.orderentry.nnftrimmed.v6.6.fillprice", ftypes.DOUBLE, nil, nil, nil, "Price of the fill, in paise")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.fill_qty = ProtoField.new("Fill Qty", "nse.nsecm.orderentry.nnftrimmed.v6.6.fillqty", ftypes.INT32, nil, nil, nil, "Quantity of the fill")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.frozen = ProtoField.new("Frozen", "nse.nsecm.orderentry.nnftrimmed.v6.6.frozen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "Order has resulted in a freeze awaiting approval")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.good_till_date = ProtoField.new("Good Till Date", "nse.nsecm.orderentry.nnftrimmed.v6.6.goodtilldate", ftypes.INT32, nil, nil, nil, "Number of days a good till date order remains in the system")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.gtc = ProtoField.new("Gtc", "nse.nsecm.orderentry.nnftrimmed.v6.6.gtc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800, "Good till cancelled order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.ioc = ProtoField.new("Ioc", "nse.nsecm.orderentry.nnftrimmed.v6.6.ioc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400, "Immediate or cancel order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.last_activity_reference = ProtoField.new("Last Activity Reference", "nse.nsecm.orderentry.nnftrimmed.v6.6.lastactivityreference", ftypes.INT64, nil, nil, nil, "Reference of the last activity on the order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.last_modified = ProtoField.new("Last Modified", "nse.nsecm.orderentry.nnftrimmed.v6.6.lastmodified", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the order was last modified, seconds from midnight January 1 1980")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.last_modified_utc = ProtoField.new("Last Modified", "nse.nsecm.orderentry.nnftrimmed.v6.6.lastmodified.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the order was last modified, seconds from midnight January 1 1980")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.log_time = ProtoField.new("Log Time", "nse.nsecm.orderentry.nnftrimmed.v6.6.logtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the message was logged, seconds from midnight January 1 1980")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.log_time_utc = ProtoField.new("Log Time", "nse.nsecm.orderentry.nnftrimmed.v6.6.logtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the message was logged, seconds from midnight January 1 1980")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.matched_ind = ProtoField.new("Matched Ind", "nse.nsecm.orderentry.nnftrimmed.v6.6.matchedind", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080, "Order has been matched")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.message = ProtoField.new("Message", "nse.nsecm.orderentry.nnftrimmed.v6.6.message", ftypes.STRING, nil, nil, nil, "Nnf trimmed message")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.message_length = ProtoField.new("Message Length", "nse.nsecm.orderentry.nnftrimmed.v6.6.messagelength", ftypes.INT16, nil, nil, nil, "Length of the entire message")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.mf = ProtoField.new("Mf", "nse.nsecm.orderentry.nnftrimmed.v6.6.mf", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100, "Minimum fill order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.mkt = ProtoField.new("Mkt", "nse.nsecm.orderentry.nnftrimmed.v6.6.mkt", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Market order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.modified = ProtoField.new("Modified", "nse.nsecm.orderentry.nnftrimmed.v6.6.modified", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020, "Order has been modified")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.modified_cancelled_by = ProtoField.new("Modified Cancelled By", "nse.nsecm.orderentry.nnftrimmed.v6.6.modifiedcancelledby", ftypes.STRING, nil, nil, nil, "Whether the order was modified or cancelled by the trader, the branch manager or the corporate manager")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.nnf_field = ProtoField.new("Nnf Field", "nse.nsecm.orderentry.nnftrimmed.v6.6.nnffield", ftypes.DOUBLE, nil, nil, nil, "Nnf field as the exchange prescribes")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.on_stop = ProtoField.new("On Stop", "nse.nsecm.orderentry.nnftrimmed.v6.6.onstop", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Stop loss order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.order_number = ProtoField.new("Order Number", "nse.nsecm.orderentry.nnftrimmed.v6.6.ordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number the trading system assigned")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.original_vol = ProtoField.new("Original Vol", "nse.nsecm.orderentry.nnftrimmed.v6.6.originalvol", ftypes.INT32, nil, nil, nil, "Quantity of the order when it was entered")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.pan = ProtoField.new("Pan", "nse.nsecm.orderentry.nnftrimmed.v6.6.pan", ftypes.STRING, nil, nil, nil, "Permanent Account Number")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.preopen = ProtoField.new("Preopen", "nse.nsecm.orderentry.nnftrimmed.v6.6.preopen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "Order belongs to the pre open session")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.price = ProtoField.new("Price", "nse.nsecm.orderentry.nnftrimmed.v6.6.price", ftypes.DOUBLE, nil, nil, nil, "Price of the order, in paise")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.pro_client = ProtoField.new("Pro Client", "nse.nsecm.orderentry.nnftrimmed.v6.6.proclient", ftypes.INT16, nil, nil, nil, "Whether the order is a participant's own or on behalf of a client")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reason_code = ProtoField.new("Reason Code", "nse.nsecm.orderentry.nnftrimmed.v6.6.reasoncode", ftypes.INT16, nil, nil, nil, "Reason the request was rejected")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reference = ProtoField.new("Reference", "nse.nsecm.orderentry.nnftrimmed.v6.6.reference", ftypes.INT32, nil, nil, nil, "Echo of the value received in the filler or reference field of the order packet")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.remaining_vol = ProtoField.new("Remaining Vol", "nse.nsecm.orderentry.nnftrimmed.v6.6.remainingvol", ftypes.INT32, nil, nil, nil, "Quantity remaining")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reserved_1 = ProtoField.new("Reserved 1", "nse.nsecm.orderentry.nnftrimmed.v6.6.reserved1", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "Reserved")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reserved_2 = ProtoField.new("Reserved 2", "nse.nsecm.orderentry.nnftrimmed.v6.6.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reserved_24 = ProtoField.new("Reserved 24", "nse.nsecm.orderentry.nnftrimmed.v6.6.reserved24", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reserved_3 = ProtoField.new("Reserved 3", "nse.nsecm.orderentry.nnftrimmed.v6.6.reserved3", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "Reserved")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reserved_32 = ProtoField.new("Reserved 32", "nse.nsecm.orderentry.nnftrimmed.v6.6.reserved32", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reserved_52 = ProtoField.new("Reserved 52", "nse.nsecm.orderentry.nnftrimmed.v6.6.reserved52", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.response_order_number = ProtoField.new("Response Order Number", "nse.nsecm.orderentry.nnftrimmed.v6.6.responseordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number the trading system assigned")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.sec_info = ProtoField.new("Sec Info", "nse.nsecm.orderentry.nnftrimmed.v6.6.secinfo", ftypes.STRING, nil, nil, nil, "SEC_INFO")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.second_user_id = ProtoField.new("Second User Id", "nse.nsecm.orderentry.nnftrimmed.v6.6.seconduserid", ftypes.INT32, nil, nil, nil, "Id of the user")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.series = ProtoField.new("Series", "nse.nsecm.orderentry.nnftrimmed.v6.6.series", ftypes.STRING, nil, nil, nil, "Series of the security")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.settlement_type = ProtoField.new("Settlement Type", "nse.nsecm.orderentry.nnftrimmed.v6.6.settlementtype", ftypes.INT16, nil, nil, nil, "Settlement period of the security")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.settlor = ProtoField.new("Settlor", "nse.nsecm.orderentry.nnftrimmed.v6.6.settlor", ftypes.STRING, nil, nil, nil, "Settling party name")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.st_order_flags = ProtoField.new("St Order Flags", "nse.nsecm.orderentry.nnftrimmed.v6.6.storderflags", ftypes.STRING, nil, nil, nil, "Terms attached to the order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.stpc = ProtoField.new("Stpc", "nse.nsecm.orderentry.nnftrimmed.v6.6.stpc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "Self trade prevention check")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.suspended = ProtoField.new("Suspended", "nse.nsecm.orderentry.nnftrimmed.v6.6.suspended", ftypes.STRING, nil, nil, nil, "Whether the security is suspended")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.symbol = ProtoField.new("Symbol", "nse.nsecm.orderentry.nnftrimmed.v6.6.symbol", ftypes.STRING, nil, nil, nil, "Symbol of the security")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.time_stamp_1_char_8 = ProtoField.new("Time Stamp 1 Char 8", "nse.nsecm.orderentry.nnftrimmed.v6.6.timestamp1char8", ftypes.STRING, nil, nil, nil, "Time the message arrives at the trading system host")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.time_stamp_1_long_long_8 = ProtoField.new("Time Stamp 1 Long Long 8", "nse.nsecm.orderentry.nnftrimmed.v6.6.timestamp1longlong8", ftypes.INT64, nil, nil, nil, "Time the message arrives at the trading system host")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.time_stamp_2 = ProtoField.new("Time Stamp 2", "nse.nsecm.orderentry.nnftrimmed.v6.6.timestamp2", ftypes.STRING, nil, nil, nil, "Reserved for the host")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.timestamp = ProtoField.new("Timestamp", "nse.nsecm.orderentry.nnftrimmed.v6.6.timestamp", ftypes.INT64, nil, nil, nil, "Time stamped at the matching engine, in nanoseconds from January 1 1980 for the transaction codes the appendix lists")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.total_vol_remaining = ProtoField.new("Total Vol Remaining", "nse.nsecm.orderentry.nnftrimmed.v6.6.totalvolremaining", ftypes.INT32, nil, nil, nil, "Total quantity remaining")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.traded = ProtoField.new("Traded", "nse.nsecm.orderentry.nnftrimmed.v6.6.traded", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040, "Order has traded at least partly")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.trader_id = ProtoField.new("Trader Id", "nse.nsecm.orderentry.nnftrimmed.v6.6.traderid", ftypes.INT32, nil, nil, nil, "User ID of the user entering the order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.trader_num = ProtoField.new("Trader Num", "nse.nsecm.orderentry.nnftrimmed.v6.6.tradernum", ftypes.INT32, nil, nil, nil, "Id of the trader")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nsecm.orderentry.nnftrimmed.v6.6.transactioncode", ftypes.INT16, nil, nil, nil, "The transaction code is ORDER_MOD_IN_TR (20040), TRIMMED_ORDER_MOD_ACK_IN (20402), ORDER_CANCEL_IN_TR (20070) or TRIMMED_ORDER_CANCEL_ACK_IN (20404)")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.transaction_id = ProtoField.new("Transaction Id", "nse.nsecm.orderentry.nnftrimmed.v6.6.transactionid", ftypes.INT32, nil, nil, nil, "Transaction Id of the order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.transcode = ProtoField.new("Transcode", "nse.nsecm.orderentry.nnftrimmed.v6.6.transcode", ftypes.INT16, nil, nil, nil, "The transaction code is BOARD_LOT_IN_TR (20000) or TRIMMED_BOARD_LOT_ACK_IN (20400)")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.user_id = ProtoField.new("User Id", "nse.nsecm.orderentry.nnftrimmed.v6.6.userid", ftypes.INT32, nil, nil, nil, "Id of the user")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.vol_filled_today = ProtoField.new("Vol Filled Today", "nse.nsecm.orderentry.nnftrimmed.v6.6.volfilledtoday", ftypes.INT32, nil, nil, nil, "Quantity filled today")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.volume = ProtoField.new("Volume", "nse.nsecm.orderentry.nnftrimmed.v6.6.volume", ftypes.INT32, nil, nil, nil, "Quantity of the order")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.volume_filled_today = ProtoField.new("Volume Filled Today", "nse.nsecm.orderentry.nnftrimmed.v6.6.volumefilledtoday", ftypes.INT32, nil, nil, nil, "Quantity filled today")

-- Nse NseCm OrderEntry NnfTrimmed 6.6 Framing
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.packet = ProtoField.new("Packet", "nse.nsecm.orderentry.nnftrimmed.v6.6.packet", ftypes.STRING, nil, nil, nil, "NnfTrimmed Tcp block of one or more messages")

-- Nse NseCm OrderEntry 6.6 Application Messages
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.order_entry_request_trimmed_message = ProtoField.new("Order Entry Request Trimmed Message", "nse.nsecm.orderentry.nnftrimmed.v6.6.orderentryrequesttrimmedmessage", ftypes.STRING, nil, nil, nil, "Trimmed order entry request, and the same structure sent as an immediate acknowledgement request. Chapter 4 directs an order of book type 1, 11 or 12 to this structure rather than to the interactive MS_OE_REQUEST, under transaction code 20000 or 20400")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.order_modify_cancel_request_trimmed_message = ProtoField.new("Order Modify Cancel Request Trimmed Message", "nse.nsecm.orderentry.nnftrimmed.v6.6.ordermodifycancelrequesttrimmedmessage", ftypes.STRING, nil, nil, nil, "Trimmed order modification and cancellation request, and the same structure sent as an immediate acknowledgement request. The body text names it MS_OM_REQUEST_TR where the appendix table names it ORDER_OM_REQUEST_TR")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.order_modify_cancel_response_trimmed_message = ProtoField.new("Order Modify Cancel Response Trimmed Message", "nse.nsecm.orderentry.nnftrimmed.v6.6.ordermodifycancelresponsetrimmedmessage", ftypes.STRING, nil, nil, nil, "Trimmed response to an order entry, modification or cancellation: a confirmation, a rejection, a price confirmation or an order error")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.quick_acknowledgement_message = ProtoField.new("Quick Acknowledgement Message", "nse.nsecm.orderentry.nnftrimmed.v6.6.quickacknowledgementmessage", ftypes.STRING, nil, nil, nil, "Immediate acknowledgement of a trimmed order entry, modification or cancellation request, answered on the separate port of the gateway router server")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.trade_confirmation_trimmed_message = ProtoField.new("Trade Confirmation Trimmed Message", "nse.nsecm.orderentry.nnftrimmed.v6.6.tradeconfirmationtrimmedmessage", ftypes.STRING, nil, nil, nil, "Trimmed trade confirmation, sent when an order of a trimmed book type trades")

-----------------------------------------------------------------------
-- Nse NseCm OrderEntry NnfTrimmed 6.6 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nse_nsecm_orderentry_nnftrimmed_v6_6.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nse NseCm OrderEntry NnfTrimmed 6.6 Element Dissection Options
show.structs = true
show.application_messages = true

-- Register Nse NseCm OrderEntry NnfTrimmed 6.6 Show Options
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nsecm_orderentry_nnftrimmed_v6_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")

omi_nse_nsecm_orderentry_nnftrimmed_v6_6.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nse_nsecm_orderentry_nnftrimmed_v6_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nsecm_orderentry_nnftrimmed_v6_6.prefs.show_application_messages then
    show.application_messages = omi_nse_nsecm_orderentry_nnftrimmed_v6_6.prefs.show_application_messages
  end
  if show.structs ~= omi_nse_nsecm_orderentry_nnftrimmed_v6_6.prefs.show_structs then
    show.structs = omi_nse_nsecm_orderentry_nnftrimmed_v6_6.prefs.show_structs
  end
  if nse_nsecm_orderentry_nnftrimmed_v6_6.absolute_time_base ~= omi_nse_nsecm_orderentry_nnftrimmed_v6_6.prefs.absolute_time_base then
    nse_nsecm_orderentry_nnftrimmed_v6_6.absolute_time_base = omi_nse_nsecm_orderentry_nnftrimmed_v6_6.prefs.absolute_time_base
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
-- Nse NseCm OrderEntry NnfTrimmed 6.6 Fields
-----------------------------------------------------------------------

-- Account Num
nse_nsecm_orderentry_nnftrimmed_v6_6.account_num = {}

-- Size: Account Num
nse_nsecm_orderentry_nnftrimmed_v6_6.account_num.size = 10

-- Display: Account Num
nse_nsecm_orderentry_nnftrimmed_v6_6.account_num.display = function(value)
  return "Account Num: "..value
end

-- Dissect: Account Num
nse_nsecm_orderentry_nnftrimmed_v6_6.account_num.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.account_num.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.account_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.account_num, range, value, display)

  return offset + length, value
end

-- Account Number
nse_nsecm_orderentry_nnftrimmed_v6_6.account_number = {}

-- Size: Account Number
nse_nsecm_orderentry_nnftrimmed_v6_6.account_number.size = 10

-- Display: Account Number
nse_nsecm_orderentry_nnftrimmed_v6_6.account_number.display = function(value)
  return "Account Number: "..value
end

-- Dissect: Account Number
nse_nsecm_orderentry_nnftrimmed_v6_6.account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.account_number, range, value, display)

  return offset + length, value
end

-- Activity Time
nse_nsecm_orderentry_nnftrimmed_v6_6.activity_time = {}

-- Size: Activity Time
nse_nsecm_orderentry_nnftrimmed_v6_6.activity_time.size = 4

-- Dissect: Activity Time
nse_nsecm_orderentry_nnftrimmed_v6_6.activity_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.activity_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.activity_time
  if nse_nsecm_orderentry_nnftrimmed_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.activity_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Activity Type
nse_nsecm_orderentry_nnftrimmed_v6_6.activity_type = {}

-- Size: Activity Type
nse_nsecm_orderentry_nnftrimmed_v6_6.activity_type.size = 2

-- Display: Activity Type
nse_nsecm_orderentry_nnftrimmed_v6_6.activity_type.display = function(value)
  return "Activity Type: "..value
end

-- Dissect: Activity Type
nse_nsecm_orderentry_nnftrimmed_v6_6.activity_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.activity_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.activity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.activity_type, range, value, display)

  return offset + length, value
end

-- Algo Id
nse_nsecm_orderentry_nnftrimmed_v6_6.algo_id = {}

-- Size: Algo Id
nse_nsecm_orderentry_nnftrimmed_v6_6.algo_id.size = 4

-- Display: Algo Id
nse_nsecm_orderentry_nnftrimmed_v6_6.algo_id.display = function(value)
  return "Algo Id: "..value
end

-- Dissect: Algo Id
nse_nsecm_orderentry_nnftrimmed_v6_6.algo_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.algo_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.algo_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.algo_id, range, value, display)

  return offset + length, value
end

-- Book Type
nse_nsecm_orderentry_nnftrimmed_v6_6.book_type = {}

-- Size: Book Type
nse_nsecm_orderentry_nnftrimmed_v6_6.book_type.size = 2

-- Display: Book Type
nse_nsecm_orderentry_nnftrimmed_v6_6.book_type.display = function(value)
  return "Book Type: "..value
end

-- Dissect: Book Type
nse_nsecm_orderentry_nnftrimmed_v6_6.book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.book_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.book_type, range, value, display)

  return offset + length, value
end

-- Branch Id
nse_nsecm_orderentry_nnftrimmed_v6_6.branch_id = {}

-- Size: Branch Id
nse_nsecm_orderentry_nnftrimmed_v6_6.branch_id.size = 2

-- Display: Branch Id
nse_nsecm_orderentry_nnftrimmed_v6_6.branch_id.display = function(value)
  return "Branch Id: "..value
end

-- Dissect: Branch Id
nse_nsecm_orderentry_nnftrimmed_v6_6.branch_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.branch_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.branch_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.branch_id, range, value, display)

  return offset + length, value
end

-- Broker Id
nse_nsecm_orderentry_nnftrimmed_v6_6.broker_id = {}

-- Size: Broker Id
nse_nsecm_orderentry_nnftrimmed_v6_6.broker_id.size = 5

-- Display: Broker Id
nse_nsecm_orderentry_nnftrimmed_v6_6.broker_id.display = function(value)
  return "Broker Id: "..value
end

-- Dissect: Broker Id
nse_nsecm_orderentry_nnftrimmed_v6_6.broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.broker_id, range, value, display)

  return offset + length, value
end

-- Buy Sell
nse_nsecm_orderentry_nnftrimmed_v6_6.buy_sell = {}

-- Size: Buy Sell
nse_nsecm_orderentry_nnftrimmed_v6_6.buy_sell.size = 2

-- Display: Buy Sell
nse_nsecm_orderentry_nnftrimmed_v6_6.buy_sell.display = function(value)
  return "Buy Sell: "..value
end

-- Dissect: Buy Sell
nse_nsecm_orderentry_nnftrimmed_v6_6.buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.buy_sell.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.buy_sell, range, value, display)

  return offset + length, value
end

-- Disclosed Vol
nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol = {}

-- Size: Disclosed Vol
nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol.size = 4

-- Display: Disclosed Vol
nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol.display = function(value)
  return "Disclosed Vol: "..value
end

-- Dissect: Disclosed Vol
nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.disclosed_vol, range, value, display)

  return offset + length, value
end

-- Disclosed Vol Remaining
nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol_remaining = {}

-- Size: Disclosed Vol Remaining
nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol_remaining.size = 4

-- Display: Disclosed Vol Remaining
nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol_remaining.display = function(value)
  return "Disclosed Vol Remaining: "..value
end

-- Dissect: Disclosed Vol Remaining
nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.disclosed_vol_remaining, range, value, display)

  return offset + length, value
end

-- Entry Date Time
nse_nsecm_orderentry_nnftrimmed_v6_6.entry_date_time = {}

-- Size: Entry Date Time
nse_nsecm_orderentry_nnftrimmed_v6_6.entry_date_time.size = 4

-- Dissect: Entry Date Time
nse_nsecm_orderentry_nnftrimmed_v6_6.entry_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.entry_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.entry_date_time
  if nse_nsecm_orderentry_nnftrimmed_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.entry_date_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Error Code
nse_nsecm_orderentry_nnftrimmed_v6_6.error_code = {}

-- Size: Error Code
nse_nsecm_orderentry_nnftrimmed_v6_6.error_code.size = 2

-- Display: Error Code
nse_nsecm_orderentry_nnftrimmed_v6_6.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
nse_nsecm_orderentry_nnftrimmed_v6_6.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.error_code, range, value, display)

  return offset + length, value
end

-- Fill Number
nse_nsecm_orderentry_nnftrimmed_v6_6.fill_number = {}

-- Size: Fill Number
nse_nsecm_orderentry_nnftrimmed_v6_6.fill_number.size = 4

-- Display: Fill Number
nse_nsecm_orderentry_nnftrimmed_v6_6.fill_number.display = function(value)
  return "Fill Number: "..value
end

-- Dissect: Fill Number
nse_nsecm_orderentry_nnftrimmed_v6_6.fill_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.fill_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.fill_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.fill_number, range, value, display)

  return offset + length, value
end

-- Fill Price
nse_nsecm_orderentry_nnftrimmed_v6_6.fill_price = {}

-- Size: Fill Price
nse_nsecm_orderentry_nnftrimmed_v6_6.fill_price.size = 4

-- Display: Fill Price
nse_nsecm_orderentry_nnftrimmed_v6_6.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Translate: Fill Price
nse_nsecm_orderentry_nnftrimmed_v6_6.fill_price.translate = function(raw)
  return raw/100
end

-- Dissect: Fill Price
nse_nsecm_orderentry_nnftrimmed_v6_6.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.fill_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_orderentry_nnftrimmed_v6_6.fill_price.translate(raw)
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Qty
nse_nsecm_orderentry_nnftrimmed_v6_6.fill_qty = {}

-- Size: Fill Qty
nse_nsecm_orderentry_nnftrimmed_v6_6.fill_qty.size = 4

-- Display: Fill Qty
nse_nsecm_orderentry_nnftrimmed_v6_6.fill_qty.display = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
nse_nsecm_orderentry_nnftrimmed_v6_6.fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.fill_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Good Till Date
nse_nsecm_orderentry_nnftrimmed_v6_6.good_till_date = {}

-- Size: Good Till Date
nse_nsecm_orderentry_nnftrimmed_v6_6.good_till_date.size = 4

-- Display: Good Till Date
nse_nsecm_orderentry_nnftrimmed_v6_6.good_till_date.display = function(value)
  return "Good Till Date: "..value
end

-- Dissect: Good Till Date
nse_nsecm_orderentry_nnftrimmed_v6_6.good_till_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.good_till_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.good_till_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.good_till_date, range, value, display)

  return offset + length, value
end

-- Last Activity Reference
nse_nsecm_orderentry_nnftrimmed_v6_6.last_activity_reference = {}

-- Size: Last Activity Reference
nse_nsecm_orderentry_nnftrimmed_v6_6.last_activity_reference.size = 8

-- Display: Last Activity Reference
nse_nsecm_orderentry_nnftrimmed_v6_6.last_activity_reference.display = function(value)
  return "Last Activity Reference: "..value
end

-- Dissect: Last Activity Reference
nse_nsecm_orderentry_nnftrimmed_v6_6.last_activity_reference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.last_activity_reference.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.last_activity_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.last_activity_reference, range, value, display)

  return offset + length, value
end

-- Last Modified
nse_nsecm_orderentry_nnftrimmed_v6_6.last_modified = {}

-- Size: Last Modified
nse_nsecm_orderentry_nnftrimmed_v6_6.last_modified.size = 4

-- Dissect: Last Modified
nse_nsecm_orderentry_nnftrimmed_v6_6.last_modified.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.last_modified.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.last_modified
  if nse_nsecm_orderentry_nnftrimmed_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.last_modified_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Log Time
nse_nsecm_orderentry_nnftrimmed_v6_6.log_time = {}

-- Size: Log Time
nse_nsecm_orderentry_nnftrimmed_v6_6.log_time.size = 4

-- Dissect: Log Time
nse_nsecm_orderentry_nnftrimmed_v6_6.log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.log_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.log_time
  if nse_nsecm_orderentry_nnftrimmed_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.log_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Message Length
nse_nsecm_orderentry_nnftrimmed_v6_6.message_length = {}

-- Size: Message Length
nse_nsecm_orderentry_nnftrimmed_v6_6.message_length.size = 2

-- Display: Message Length
nse_nsecm_orderentry_nnftrimmed_v6_6.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nsecm_orderentry_nnftrimmed_v6_6.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Modified Cancelled By
nse_nsecm_orderentry_nnftrimmed_v6_6.modified_cancelled_by = {}

-- Size: Modified Cancelled By
nse_nsecm_orderentry_nnftrimmed_v6_6.modified_cancelled_by.size = 1

-- Display: Modified Cancelled By
nse_nsecm_orderentry_nnftrimmed_v6_6.modified_cancelled_by.display = function(value)
  return "Modified Cancelled By: "..value
end

-- Dissect: Modified Cancelled By
nse_nsecm_orderentry_nnftrimmed_v6_6.modified_cancelled_by.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.modified_cancelled_by.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.modified_cancelled_by.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.modified_cancelled_by, range, value, display)

  return offset + length, value
end

-- Nnf Field
nse_nsecm_orderentry_nnftrimmed_v6_6.nnf_field = {}

-- Size: Nnf Field
nse_nsecm_orderentry_nnftrimmed_v6_6.nnf_field.size = 8

-- Display: Nnf Field
nse_nsecm_orderentry_nnftrimmed_v6_6.nnf_field.display = function(value)
  return "Nnf Field: "..string.format("%.0f", value)
end

-- Dissect: Nnf Field
nse_nsecm_orderentry_nnftrimmed_v6_6.nnf_field.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.nnf_field.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.nnf_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.nnf_field, range, value, display)

  return offset + length, value
end

-- Order Number
nse_nsecm_orderentry_nnftrimmed_v6_6.order_number = {}

-- Size: Order Number
nse_nsecm_orderentry_nnftrimmed_v6_6.order_number.size = 8

-- Display: Order Number
nse_nsecm_orderentry_nnftrimmed_v6_6.order_number.display = function(value)
  return "Order Number: "..string.format("%.0f", value)
end

-- Dissect: Order Number
nse_nsecm_orderentry_nnftrimmed_v6_6.order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.order_number, range, value, display)

  return offset + length, value
end

-- Original Vol
nse_nsecm_orderentry_nnftrimmed_v6_6.original_vol = {}

-- Size: Original Vol
nse_nsecm_orderentry_nnftrimmed_v6_6.original_vol.size = 4

-- Display: Original Vol
nse_nsecm_orderentry_nnftrimmed_v6_6.original_vol.display = function(value)
  return "Original Vol: "..value
end

-- Dissect: Original Vol
nse_nsecm_orderentry_nnftrimmed_v6_6.original_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.original_vol.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.original_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.original_vol, range, value, display)

  return offset + length, value
end

-- Pan
nse_nsecm_orderentry_nnftrimmed_v6_6.pan = {}

-- Size: Pan
nse_nsecm_orderentry_nnftrimmed_v6_6.pan.size = 10

-- Display: Pan
nse_nsecm_orderentry_nnftrimmed_v6_6.pan.display = function(value)
  return "Pan: "..value
end

-- Dissect: Pan
nse_nsecm_orderentry_nnftrimmed_v6_6.pan.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.pan.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.pan.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.pan, range, value, display)

  return offset + length, value
end

-- Price
nse_nsecm_orderentry_nnftrimmed_v6_6.price = {}

-- Size: Price
nse_nsecm_orderentry_nnftrimmed_v6_6.price.size = 4

-- Display: Price
nse_nsecm_orderentry_nnftrimmed_v6_6.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nsecm_orderentry_nnftrimmed_v6_6.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
nse_nsecm_orderentry_nnftrimmed_v6_6.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_orderentry_nnftrimmed_v6_6.price.translate(raw)
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.price, range, value, display)

  return offset + length, value
end

-- Pro Client
nse_nsecm_orderentry_nnftrimmed_v6_6.pro_client = {}

-- Size: Pro Client
nse_nsecm_orderentry_nnftrimmed_v6_6.pro_client.size = 2

-- Display: Pro Client
nse_nsecm_orderentry_nnftrimmed_v6_6.pro_client.display = function(value)
  return "Pro Client: "..value
end

-- Dissect: Pro Client
nse_nsecm_orderentry_nnftrimmed_v6_6.pro_client.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.pro_client.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.pro_client.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.pro_client, range, value, display)

  return offset + length, value
end

-- Reason Code
nse_nsecm_orderentry_nnftrimmed_v6_6.reason_code = {}

-- Size: Reason Code
nse_nsecm_orderentry_nnftrimmed_v6_6.reason_code.size = 2

-- Display: Reason Code
nse_nsecm_orderentry_nnftrimmed_v6_6.reason_code.display = function(value)
  return "Reason Code: "..value
end

-- Dissect: Reason Code
nse_nsecm_orderentry_nnftrimmed_v6_6.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.reason_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Reference
nse_nsecm_orderentry_nnftrimmed_v6_6.reference = {}

-- Size: Reference
nse_nsecm_orderentry_nnftrimmed_v6_6.reference.size = 4

-- Display: Reference
nse_nsecm_orderentry_nnftrimmed_v6_6.reference.display = function(value)
  return "Reference: "..value
end

-- Dissect: Reference
nse_nsecm_orderentry_nnftrimmed_v6_6.reference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.reference.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reference, range, value, display)

  return offset + length, value
end

-- Remaining Vol
nse_nsecm_orderentry_nnftrimmed_v6_6.remaining_vol = {}

-- Size: Remaining Vol
nse_nsecm_orderentry_nnftrimmed_v6_6.remaining_vol.size = 4

-- Display: Remaining Vol
nse_nsecm_orderentry_nnftrimmed_v6_6.remaining_vol.display = function(value)
  return "Remaining Vol: "..value
end

-- Dissect: Remaining Vol
nse_nsecm_orderentry_nnftrimmed_v6_6.remaining_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.remaining_vol.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.remaining_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.remaining_vol, range, value, display)

  return offset + length, value
end

-- Reserved 2
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_2 = {}

-- Size: Reserved 2
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_2.size = 2

-- Display: Reserved 2
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 24
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_24 = {}

-- Size: Reserved 24
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_24.size = 24

-- Display: Reserved 24
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_24.display = function(value)
  return "Reserved 24: "..value
end

-- Dissect: Reserved 24
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_24.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_24.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_24.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reserved_24, range, value, display)

  return offset + length, value
end

-- Reserved 32
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_32 = {}

-- Size: Reserved 32
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_32.size = 32

-- Display: Reserved 32
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_32.display = function(value)
  return "Reserved 32: "..value
end

-- Dissect: Reserved 32
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_32.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_32.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reserved_32, range, value, display)

  return offset + length, value
end

-- Reserved 52
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_52 = {}

-- Size: Reserved 52
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_52.size = 52

-- Display: Reserved 52
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_52.display = function(value)
  return "Reserved 52: "..value
end

-- Dissect: Reserved 52
nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_52.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_52.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_52.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reserved_52, range, value, display)

  return offset + length, value
end

-- Response Order Number
nse_nsecm_orderentry_nnftrimmed_v6_6.response_order_number = {}

-- Size: Response Order Number
nse_nsecm_orderentry_nnftrimmed_v6_6.response_order_number.size = 8

-- Display: Response Order Number
nse_nsecm_orderentry_nnftrimmed_v6_6.response_order_number.display = function(value)
  return "Response Order Number: "..string.format("%.0f", value)
end

-- Dissect: Response Order Number
nse_nsecm_orderentry_nnftrimmed_v6_6.response_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.response_order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.response_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.response_order_number, range, value, display)

  return offset + length, value
end

-- Second User Id
nse_nsecm_orderentry_nnftrimmed_v6_6.second_user_id = {}

-- Size: Second User Id
nse_nsecm_orderentry_nnftrimmed_v6_6.second_user_id.size = 4

-- Display: Second User Id
nse_nsecm_orderentry_nnftrimmed_v6_6.second_user_id.display = function(value)
  return "Second User Id: "..value
end

-- Dissect: Second User Id
nse_nsecm_orderentry_nnftrimmed_v6_6.second_user_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.second_user_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.second_user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.second_user_id, range, value, display)

  return offset + length, value
end

-- Series
nse_nsecm_orderentry_nnftrimmed_v6_6.series = {}

-- Size: Series
nse_nsecm_orderentry_nnftrimmed_v6_6.series.size = 2

-- Display: Series
nse_nsecm_orderentry_nnftrimmed_v6_6.series.display = function(value)
  return "Series: "..value
end

-- Dissect: Series
nse_nsecm_orderentry_nnftrimmed_v6_6.series.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.series, range, value, display)

  return offset + length, value
end

-- Settlement Type
nse_nsecm_orderentry_nnftrimmed_v6_6.settlement_type = {}

-- Size: Settlement Type
nse_nsecm_orderentry_nnftrimmed_v6_6.settlement_type.size = 2

-- Display: Settlement Type
nse_nsecm_orderentry_nnftrimmed_v6_6.settlement_type.display = function(value)
  return "Settlement Type: "..value
end

-- Dissect: Settlement Type
nse_nsecm_orderentry_nnftrimmed_v6_6.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.settlement_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Settlor
nse_nsecm_orderentry_nnftrimmed_v6_6.settlor = {}

-- Size: Settlor
nse_nsecm_orderentry_nnftrimmed_v6_6.settlor.size = 12

-- Display: Settlor
nse_nsecm_orderentry_nnftrimmed_v6_6.settlor.display = function(value)
  return "Settlor: "..value
end

-- Dissect: Settlor
nse_nsecm_orderentry_nnftrimmed_v6_6.settlor.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.settlor.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.settlor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.settlor, range, value, display)

  return offset + length, value
end

-- Suspended
nse_nsecm_orderentry_nnftrimmed_v6_6.suspended = {}

-- Size: Suspended
nse_nsecm_orderentry_nnftrimmed_v6_6.suspended.size = 1

-- Display: Suspended
nse_nsecm_orderentry_nnftrimmed_v6_6.suspended.display = function(value)
  return "Suspended: "..value
end

-- Dissect: Suspended
nse_nsecm_orderentry_nnftrimmed_v6_6.suspended.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.suspended.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.suspended.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.suspended, range, value, display)

  return offset + length, value
end

-- Symbol
nse_nsecm_orderentry_nnftrimmed_v6_6.symbol = {}

-- Size: Symbol
nse_nsecm_orderentry_nnftrimmed_v6_6.symbol.size = 10

-- Display: Symbol
nse_nsecm_orderentry_nnftrimmed_v6_6.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nse_nsecm_orderentry_nnftrimmed_v6_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Time Stamp 1 Char 8
nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_char_8 = {}

-- Size: Time Stamp 1 Char 8
nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_char_8.size = 8

-- Display: Time Stamp 1 Char 8
nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_char_8.display = function(value)
  return "Time Stamp 1 Char 8: "..value
end

-- Dissect: Time Stamp 1 Char 8
nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_char_8.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_char_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_char_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.time_stamp_1_char_8, range, value, display)

  return offset + length, value
end

-- Time Stamp 1 Long Long 8
nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_long_long_8 = {}

-- Size: Time Stamp 1 Long Long 8
nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_long_long_8.size = 8

-- Display: Time Stamp 1 Long Long 8
nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_long_long_8.display = function(value)
  return "Time Stamp 1 Long Long 8: "..value
end

-- Dissect: Time Stamp 1 Long Long 8
nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_long_long_8.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_long_long_8.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_long_long_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.time_stamp_1_long_long_8, range, value, display)

  return offset + length, value
end

-- Time Stamp 2
nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_2 = {}

-- Size: Time Stamp 2
nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_2.size = 1

-- Display: Time Stamp 2
nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_2.display = function(value)
  return "Time Stamp 2: "..value
end

-- Dissect: Time Stamp 2
nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.time_stamp_2, range, value, display)

  return offset + length, value
end

-- Timestamp
nse_nsecm_orderentry_nnftrimmed_v6_6.timestamp = {}

-- Size: Timestamp
nse_nsecm_orderentry_nnftrimmed_v6_6.timestamp.size = 8

-- Display: Timestamp
nse_nsecm_orderentry_nnftrimmed_v6_6.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nse_nsecm_orderentry_nnftrimmed_v6_6.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.timestamp.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Total Vol Remaining
nse_nsecm_orderentry_nnftrimmed_v6_6.total_vol_remaining = {}

-- Size: Total Vol Remaining
nse_nsecm_orderentry_nnftrimmed_v6_6.total_vol_remaining.size = 4

-- Display: Total Vol Remaining
nse_nsecm_orderentry_nnftrimmed_v6_6.total_vol_remaining.display = function(value)
  return "Total Vol Remaining: "..value
end

-- Dissect: Total Vol Remaining
nse_nsecm_orderentry_nnftrimmed_v6_6.total_vol_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.total_vol_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.total_vol_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.total_vol_remaining, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nsecm_orderentry_nnftrimmed_v6_6.trader_id = {}

-- Size: Trader Id
nse_nsecm_orderentry_nnftrimmed_v6_6.trader_id.size = 4

-- Display: Trader Id
nse_nsecm_orderentry_nnftrimmed_v6_6.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nsecm_orderentry_nnftrimmed_v6_6.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trader Num
nse_nsecm_orderentry_nnftrimmed_v6_6.trader_num = {}

-- Size: Trader Num
nse_nsecm_orderentry_nnftrimmed_v6_6.trader_num.size = 4

-- Display: Trader Num
nse_nsecm_orderentry_nnftrimmed_v6_6.trader_num.display = function(value)
  return "Trader Num: "..value
end

-- Dissect: Trader Num
nse_nsecm_orderentry_nnftrimmed_v6_6.trader_num.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.trader_num.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.trader_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.trader_num, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code = {}

-- Size: Transaction Code
nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.size = 2

-- Display: Transaction Code
nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.labels = {
  [20000] = "Transaction Code: Order Entry Request Trimmed Message (20000)",
  [20400] = "Transaction Code: Order Entry Request Trimmed Message (20400)",
  [20040] = "Transaction Code: Order Modify Cancel Request Trimmed Message (20040)",
  [20070] = "Transaction Code: Order Modify Cancel Request Trimmed Message (20070)",
  [20402] = "Transaction Code: Order Modify Cancel Request Trimmed Message (20402)",
  [20404] = "Transaction Code: Order Modify Cancel Request Trimmed Message (20404)",
  [20012] = "Transaction Code: Order Modify Cancel Response Trimmed Message (20012)",
  [20042] = "Transaction Code: Order Modify Cancel Response Trimmed Message (20042)",
  [20072] = "Transaction Code: Order Modify Cancel Response Trimmed Message (20072)",
  [20073] = "Transaction Code: Order Modify Cancel Response Trimmed Message (20073)",
  [20074] = "Transaction Code: Order Modify Cancel Response Trimmed Message (20074)",
  [20075] = "Transaction Code: Order Modify Cancel Response Trimmed Message (20075)",
  [20231] = "Transaction Code: Order Modify Cancel Response Trimmed Message (20231)",
  [20222] = "Transaction Code: Trade Confirmation Trimmed Message (20222)",
  [20401] = "Transaction Code: Quick Acknowledgement Message (20401)",
  [20403] = "Transaction Code: Quick Acknowledgement Message (20403)",
  [20405] = "Transaction Code: Quick Acknowledgement Message (20405)",
}

nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.display = function(value)
  return nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.labels[value] or "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.transaction_code, range, value, display)

  return offset + length, value
end

-- Transaction Id
nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_id = {}

-- Size: Transaction Id
nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_id.size = 4

-- Display: Transaction Id
nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_id.display = function(value)
  return "Transaction Id: "..value
end

-- Dissect: Transaction Id
nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.transaction_id, range, value, display)

  return offset + length, value
end

-- Transcode
nse_nsecm_orderentry_nnftrimmed_v6_6.transcode = {}

-- Size: Transcode
nse_nsecm_orderentry_nnftrimmed_v6_6.transcode.size = 2

-- Display: Transcode
nse_nsecm_orderentry_nnftrimmed_v6_6.transcode.display = function(value)
  return "Transcode: "..value
end

-- Dissect: Transcode
nse_nsecm_orderentry_nnftrimmed_v6_6.transcode.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.transcode.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.transcode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.transcode, range, value, display)

  return offset + length, value
end

-- User Id
nse_nsecm_orderentry_nnftrimmed_v6_6.user_id = {}

-- Size: User Id
nse_nsecm_orderentry_nnftrimmed_v6_6.user_id.size = 4

-- Display: User Id
nse_nsecm_orderentry_nnftrimmed_v6_6.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
nse_nsecm_orderentry_nnftrimmed_v6_6.user_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.user_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.user_id, range, value, display)

  return offset + length, value
end

-- Vol Filled Today
nse_nsecm_orderentry_nnftrimmed_v6_6.vol_filled_today = {}

-- Size: Vol Filled Today
nse_nsecm_orderentry_nnftrimmed_v6_6.vol_filled_today.size = 4

-- Display: Vol Filled Today
nse_nsecm_orderentry_nnftrimmed_v6_6.vol_filled_today.display = function(value)
  return "Vol Filled Today: "..value
end

-- Dissect: Vol Filled Today
nse_nsecm_orderentry_nnftrimmed_v6_6.vol_filled_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.vol_filled_today.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.vol_filled_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.vol_filled_today, range, value, display)

  return offset + length, value
end

-- Volume
nse_nsecm_orderentry_nnftrimmed_v6_6.volume = {}

-- Size: Volume
nse_nsecm_orderentry_nnftrimmed_v6_6.volume.size = 4

-- Display: Volume
nse_nsecm_orderentry_nnftrimmed_v6_6.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nse_nsecm_orderentry_nnftrimmed_v6_6.volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.volume, range, value, display)

  return offset + length, value
end

-- Volume Filled Today
nse_nsecm_orderentry_nnftrimmed_v6_6.volume_filled_today = {}

-- Size: Volume Filled Today
nse_nsecm_orderentry_nnftrimmed_v6_6.volume_filled_today.size = 4

-- Display: Volume Filled Today
nse_nsecm_orderentry_nnftrimmed_v6_6.volume_filled_today.display = function(value)
  return "Volume Filled Today: "..value
end

-- Dissect: Volume Filled Today
nse_nsecm_orderentry_nnftrimmed_v6_6.volume_filled_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnftrimmed_v6_6.volume_filled_today.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.volume_filled_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.volume_filled_today, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseCm OrderEntry NnfTrimmed 6.6
-----------------------------------------------------------------------

-- Quick Acknowledgement Message
nse_nsecm_orderentry_nnftrimmed_v6_6.quick_acknowledgement_message = {}

-- Size: Quick Acknowledgement Message
nse_nsecm_orderentry_nnftrimmed_v6_6.quick_acknowledgement_message.size =
  nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.trader_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.timestamp.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.reference.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.error_code.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.message_length.size

-- Display: Quick Acknowledgement Message
nse_nsecm_orderentry_nnftrimmed_v6_6.quick_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quick Acknowledgement Message
nse_nsecm_orderentry_nnftrimmed_v6_6.quick_acknowledgement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsecm_orderentry_nnftrimmed_v6_6.trader_id.dissect(buffer, index, packet, parent)

  -- Timestamp: LONG LONG
  index, timestamp = nse_nsecm_orderentry_nnftrimmed_v6_6.timestamp.dissect(buffer, index, packet, parent)

  -- Reference: LONG
  index, reference = nse_nsecm_orderentry_nnftrimmed_v6_6.reference.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nsecm_orderentry_nnftrimmed_v6_6.error_code.dissect(buffer, index, packet, parent)

  -- Message Length: SHORT
  index, message_length = nse_nsecm_orderentry_nnftrimmed_v6_6.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quick Acknowledgement Message
nse_nsecm_orderentry_nnftrimmed_v6_6.quick_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.quick_acknowledgement_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnftrimmed_v6_6.quick_acknowledgement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnftrimmed_v6_6.quick_acknowledgement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnftrimmed_v6_6.quick_acknowledgement_message.fields(buffer, offset, packet, parent)
  end
end

-- Sec Info
nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info = {}

-- Size: Sec Info
nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info.size =
  nse_nsecm_orderentry_nnftrimmed_v6_6.symbol.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.series.size

-- Display: Sec Info
nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sec Info
nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: CHAR
  index, symbol = nse_nsecm_orderentry_nnftrimmed_v6_6.symbol.dissect(buffer, index, packet, parent)

  -- Series: CHAR
  index, series = nse_nsecm_orderentry_nnftrimmed_v6_6.series.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sec Info
nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.sec_info, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info.fields(buffer, offset, packet, parent)
  end
end

-- St Order Flags
nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags = {}

-- Size: St Order Flags
nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags.size = 2

-- Display: St Order Flags
nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Stpc flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Stpc"
  end
  -- Is Preopen flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Preopen"
  end
  -- Is Frozen flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Frozen"
  end
  -- Is Modified flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Modified"
  end
  -- Is Traded flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Traded"
  end
  -- Is Matched Ind flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Matched Ind"
  end
  -- Is Mf flag set?
  if bit.band(value, 0x0100) ~= 0 then
    flags[#flags + 1] = "Mf"
  end
  -- Is Aon flag set?
  if bit.band(value, 0x0200) ~= 0 then
    flags[#flags + 1] = "Aon"
  end
  -- Is Ioc flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "Ioc"
  end
  -- Is Gtc flag set?
  if bit.band(value, 0x0800) ~= 0 then
    flags[#flags + 1] = "Gtc"
  end
  -- Is Day flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Day"
  end
  -- Is On Stop flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "On Stop"
  end
  -- Is Mkt flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Mkt"
  end
  -- Is Ato flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Ato"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: St Order Flags
nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags.bits = function(range, value, packet, parent)

  -- Reserved 1: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reserved_1, range, value)

  -- Stpc: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.stpc, range, value)

  -- Reserved 3: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.reserved_3, range, value)

  -- Preopen: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.preopen, range, value)

  -- Frozen: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.frozen, range, value)

  -- Modified: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.modified, range, value)

  -- Traded: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.traded, range, value)

  -- Matched Ind: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.matched_ind, range, value)

  -- Mf: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.mf, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.aon, range, value)

  -- Ioc: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.ioc, range, value)

  -- Gtc: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.gtc, range, value)

  -- Day: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.day, range, value)

  -- On Stop: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.on_stop, range, value)

  -- Mkt: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.mkt, range, value)

  -- Ato: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.ato, range, value)
end

-- Dissect: St Order Flags
nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.st_order_flags, range, display)

  if show.structs then
    nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Confirmation Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.trade_confirmation_trimmed_message = {}

-- Size: Trade Confirmation Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.trade_confirmation_trimmed_message.size =
  nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.log_time.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.timestamp.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_char_8.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.response_order_number.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_2.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.trader_num.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.buy_sell.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.account_num.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.original_vol.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.remaining_vol.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol_remaining.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.price.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.fill_number.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.fill_qty.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.fill_price.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.vol_filled_today.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.activity_type.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.activity_time.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.book_type.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.pro_client.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.pan.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.algo_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_2.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.last_activity_reference.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_52.size

-- Display: Trade Confirmation Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.trade_confirmation_trimmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Confirmation Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.trade_confirmation_trimmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.dissect(buffer, index, packet, parent)

  -- Log Time: LONG
  index, log_time = nse_nsecm_orderentry_nnftrimmed_v6_6.log_time.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnftrimmed_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Timestamp: LONG LONG
  index, timestamp = nse_nsecm_orderentry_nnftrimmed_v6_6.timestamp.dissect(buffer, index, packet, parent)

  -- Time Stamp 1 Char 8: CHAR
  index, time_stamp_1_char_8 = nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_char_8.dissect(buffer, index, packet, parent)

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nsecm_orderentry_nnftrimmed_v6_6.response_order_number.dissect(buffer, index, packet, parent)

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnftrimmed_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Trader Num: LONG
  index, trader_num = nse_nsecm_orderentry_nnftrimmed_v6_6.trader_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_orderentry_nnftrimmed_v6_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nsecm_orderentry_nnftrimmed_v6_6.account_num.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nsecm_orderentry_nnftrimmed_v6_6.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nsecm_orderentry_nnftrimmed_v6_6.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsecm_orderentry_nnftrimmed_v6_6.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nsecm_orderentry_nnftrimmed_v6_6.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nsecm_orderentry_nnftrimmed_v6_6.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsecm_orderentry_nnftrimmed_v6_6.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nsecm_orderentry_nnftrimmed_v6_6.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nsecm_orderentry_nnftrimmed_v6_6.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nsecm_orderentry_nnftrimmed_v6_6.activity_time.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_orderentry_nnftrimmed_v6_6.book_type.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nsecm_orderentry_nnftrimmed_v6_6.pro_client.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_orderentry_nnftrimmed_v6_6.pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsecm_orderentry_nnftrimmed_v6_6.algo_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_2.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsecm_orderentry_nnftrimmed_v6_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  index, reserved_52 = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_52.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Confirmation Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.trade_confirmation_trimmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.trade_confirmation_trimmed_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnftrimmed_v6_6.trade_confirmation_trimmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnftrimmed_v6_6.trade_confirmation_trimmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnftrimmed_v6_6.trade_confirmation_trimmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Cancel Response Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_response_trimmed_message = {}

-- Size: Order Modify Cancel Response Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_response_trimmed_message.size =
  nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.log_time.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.error_code.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_long_long_8.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_2.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.modified_cancelled_by.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.reason_code.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.order_number.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.account_number.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.book_type.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.buy_sell.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol_remaining.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.total_vol_remaining.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.volume.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.volume_filled_today.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.price.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.entry_date_time.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.last_modified.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.branch_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.second_user_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.suspended.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.settlor.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.pro_client.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.settlement_type.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.nnf_field.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.timestamp.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.pan.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.algo_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_2.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.last_activity_reference.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_52.size

-- Display: Order Modify Cancel Response Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_response_trimmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Cancel Response Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_response_trimmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.dissect(buffer, index, packet, parent)

  -- Log Time: LONG
  index, log_time = nse_nsecm_orderentry_nnftrimmed_v6_6.log_time.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnftrimmed_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nsecm_orderentry_nnftrimmed_v6_6.error_code.dissect(buffer, index, packet, parent)

  -- Time Stamp 1 Long Long 8: LONG LONG
  index, time_stamp_1_long_long_8 = nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_long_long_8.dissect(buffer, index, packet, parent)

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nsecm_orderentry_nnftrimmed_v6_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsecm_orderentry_nnftrimmed_v6_6.reason_code.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_orderentry_nnftrimmed_v6_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_orderentry_nnftrimmed_v6_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_orderentry_nnftrimmed_v6_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_orderentry_nnftrimmed_v6_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nsecm_orderentry_nnftrimmed_v6_6.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nsecm_orderentry_nnftrimmed_v6_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nsecm_orderentry_nnftrimmed_v6_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsecm_orderentry_nnftrimmed_v6_6.price.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nsecm_orderentry_nnftrimmed_v6_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nsecm_orderentry_nnftrimmed_v6_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsecm_orderentry_nnftrimmed_v6_6.branch_id.dissect(buffer, index, packet, parent)

  -- Second User Id: LONG
  index, second_user_id = nse_nsecm_orderentry_nnftrimmed_v6_6.second_user_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnftrimmed_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_orderentry_nnftrimmed_v6_6.suspended.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_orderentry_nnftrimmed_v6_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nsecm_orderentry_nnftrimmed_v6_6.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Type: SHORT
  index, settlement_type = nse_nsecm_orderentry_nnftrimmed_v6_6.settlement_type.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_orderentry_nnftrimmed_v6_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_id.dissect(buffer, index, packet, parent)

  -- Timestamp: LONG LONG
  index, timestamp = nse_nsecm_orderentry_nnftrimmed_v6_6.timestamp.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_orderentry_nnftrimmed_v6_6.pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsecm_orderentry_nnftrimmed_v6_6.algo_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_2.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsecm_orderentry_nnftrimmed_v6_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  index, reserved_52 = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_52.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Cancel Response Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_response_trimmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.order_modify_cancel_response_trimmed_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_response_trimmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_response_trimmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_response_trimmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Cancel Request Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_request_trimmed_message = {}

-- Size: Order Modify Cancel Request Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_request_trimmed_message.size =
  nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.log_time.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.error_code.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_long_long_8.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_2.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.modified_cancelled_by.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.reason_code.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.order_number.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.account_number.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.book_type.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.buy_sell.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol_remaining.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.total_vol_remaining.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.volume.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.volume_filled_today.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.price.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.entry_date_time.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.last_modified.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.branch_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.second_user_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.suspended.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.settlor.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.pro_client.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.settlement_type.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.nnf_field.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.pan.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.algo_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_2.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.last_activity_reference.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_24.size

-- Display: Order Modify Cancel Request Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_request_trimmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Cancel Request Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_request_trimmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.dissect(buffer, index, packet, parent)

  -- Log Time: LONG
  index, log_time = nse_nsecm_orderentry_nnftrimmed_v6_6.log_time.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnftrimmed_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nsecm_orderentry_nnftrimmed_v6_6.error_code.dissect(buffer, index, packet, parent)

  -- Time Stamp 1 Long Long 8: LONG LONG
  index, time_stamp_1_long_long_8 = nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_1_long_long_8.dissect(buffer, index, packet, parent)

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nsecm_orderentry_nnftrimmed_v6_6.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nsecm_orderentry_nnftrimmed_v6_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsecm_orderentry_nnftrimmed_v6_6.reason_code.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_orderentry_nnftrimmed_v6_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_orderentry_nnftrimmed_v6_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_orderentry_nnftrimmed_v6_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_orderentry_nnftrimmed_v6_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nsecm_orderentry_nnftrimmed_v6_6.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nsecm_orderentry_nnftrimmed_v6_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nsecm_orderentry_nnftrimmed_v6_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsecm_orderentry_nnftrimmed_v6_6.price.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nsecm_orderentry_nnftrimmed_v6_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nsecm_orderentry_nnftrimmed_v6_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsecm_orderentry_nnftrimmed_v6_6.branch_id.dissect(buffer, index, packet, parent)

  -- Second User Id: LONG
  index, second_user_id = nse_nsecm_orderentry_nnftrimmed_v6_6.second_user_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnftrimmed_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_orderentry_nnftrimmed_v6_6.suspended.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_orderentry_nnftrimmed_v6_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nsecm_orderentry_nnftrimmed_v6_6.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Type: SHORT
  index, settlement_type = nse_nsecm_orderentry_nnftrimmed_v6_6.settlement_type.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_orderentry_nnftrimmed_v6_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_id.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_orderentry_nnftrimmed_v6_6.pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsecm_orderentry_nnftrimmed_v6_6.algo_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_2.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsecm_orderentry_nnftrimmed_v6_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 24: CHAR
  index, reserved_24 = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_24.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Cancel Request Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_request_trimmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.order_modify_cancel_request_trimmed_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_request_trimmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_request_trimmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_request_trimmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Entry Request Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.order_entry_request_trimmed_message = {}

-- Size: Order Entry Request Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.order_entry_request_trimmed_message.size =
  nse_nsecm_orderentry_nnftrimmed_v6_6.transcode.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.trader_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.account_number.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.book_type.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.buy_sell.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.volume.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.price.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.good_till_date.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.branch_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.suspended.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.settlor.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.pro_client.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.nnf_field.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.pan.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.algo_id.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_2.size + 
  nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_32.size

-- Display: Order Entry Request Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.order_entry_request_trimmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Entry Request Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.order_entry_request_trimmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transcode: SHORT
  index, transcode = nse_nsecm_orderentry_nnftrimmed_v6_6.transcode.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsecm_orderentry_nnftrimmed_v6_6.trader_id.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_orderentry_nnftrimmed_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_orderentry_nnftrimmed_v6_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_orderentry_nnftrimmed_v6_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_orderentry_nnftrimmed_v6_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nsecm_orderentry_nnftrimmed_v6_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nsecm_orderentry_nnftrimmed_v6_6.volume.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsecm_orderentry_nnftrimmed_v6_6.price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nsecm_orderentry_nnftrimmed_v6_6.good_till_date.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_orderentry_nnftrimmed_v6_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsecm_orderentry_nnftrimmed_v6_6.branch_id.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnftrimmed_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnftrimmed_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_orderentry_nnftrimmed_v6_6.suspended.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_orderentry_nnftrimmed_v6_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nsecm_orderentry_nnftrimmed_v6_6.pro_client.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_orderentry_nnftrimmed_v6_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_id.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_orderentry_nnftrimmed_v6_6.pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsecm_orderentry_nnftrimmed_v6_6.algo_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_2.dissect(buffer, index, packet, parent)

  -- Reserved 32: CHAR
  index, reserved_32 = nse_nsecm_orderentry_nnftrimmed_v6_6.reserved_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Entry Request Trimmed Message
nse_nsecm_orderentry_nnftrimmed_v6_6.order_entry_request_trimmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.order_entry_request_trimmed_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnftrimmed_v6_6.order_entry_request_trimmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnftrimmed_v6_6.order_entry_request_trimmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnftrimmed_v6_6.order_entry_request_trimmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Payload
nse_nsecm_orderentry_nnftrimmed_v6_6.message_payload = {}

-- Dissect: Message Payload
nse_nsecm_orderentry_nnftrimmed_v6_6.message_payload.dispatch = {
  [20000] = nse_nsecm_orderentry_nnftrimmed_v6_6.order_entry_request_trimmed_message.dissect,
  [20400] = nse_nsecm_orderentry_nnftrimmed_v6_6.order_entry_request_trimmed_message.dissect,
  [20040] = nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_request_trimmed_message.dissect,
  [20070] = nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_request_trimmed_message.dissect,
  [20402] = nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_request_trimmed_message.dissect,
  [20404] = nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_request_trimmed_message.dissect,
  [20012] = nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_response_trimmed_message.dissect,
  [20042] = nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_response_trimmed_message.dissect,
  [20072] = nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_response_trimmed_message.dissect,
  [20073] = nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_response_trimmed_message.dissect,
  [20074] = nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_response_trimmed_message.dissect,
  [20075] = nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_response_trimmed_message.dissect,
  [20231] = nse_nsecm_orderentry_nnftrimmed_v6_6.order_modify_cancel_response_trimmed_message.dissect,
  [20222] = nse_nsecm_orderentry_nnftrimmed_v6_6.trade_confirmation_trimmed_message.dissect,
  [20401] = nse_nsecm_orderentry_nnftrimmed_v6_6.quick_acknowledgement_message.dissect,
  [20403] = nse_nsecm_orderentry_nnftrimmed_v6_6.quick_acknowledgement_message.dissect,
  [20405] = nse_nsecm_orderentry_nnftrimmed_v6_6.quick_acknowledgement_message.dissect,
}

nse_nsecm_orderentry_nnftrimmed_v6_6.message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nsecm_orderentry_nnftrimmed_v6_6.message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
nse_nsecm_orderentry_nnftrimmed_v6_6.message = {}

-- Display: Message
nse_nsecm_orderentry_nnftrimmed_v6_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nse_nsecm_orderentry_nnftrimmed_v6_6.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.dissect(buffer, index, packet, parent)

  -- Message Payload: Runtime Type with 5 branches
  index = nse_nsecm_orderentry_nnftrimmed_v6_6.message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Message
nse_nsecm_orderentry_nnftrimmed_v6_6.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6.fields.message, buffer(offset, 0))
    local current = nse_nsecm_orderentry_nnftrimmed_v6_6.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = nse_nsecm_orderentry_nnftrimmed_v6_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsecm_orderentry_nnftrimmed_v6_6.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- The dispatch key sizes the message: wait for it before reading
  if remaining < 2 then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Each message's size is fixed per dispatch code
  local sizes = { [20000] = 136, [20400] = 136, [20040] = 180, [20070] = 180, [20402] = 180, [20404] = 180, [20012] = 216, [20042] = 216, [20072] = 216, [20073] = 216, [20074] = 216, [20075] = 216, [20231] = 216, [20222] = 192, [20401] = 24, [20403] = 24, [20405] = 24 }
  local current = sizes[buffer(index + 0, 2):int()]

  -- An unknown code cannot be framed: ask for more rather than mis-split the stream
  if not current then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
nse_nsecm_orderentry_nnftrimmed_v6_6.packet = {}

-- Verify required size of Tcp packet
nse_nsecm_orderentry_nnftrimmed_v6_6.packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsecm_orderentry_nnftrimmed_v6_6.transaction_code.size
end

-- Dissect Packet
nse_nsecm_orderentry_nnftrimmed_v6_6.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_message):tvb()
      index = nse_nsecm_orderentry_nnftrimmed_v6_6.message.dissect(frame, index, packet, parent, size_of_message)
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
function omi_nse_nsecm_orderentry_nnftrimmed_v6_6.init()
end

-- Dissector for Nse NseCm OrderEntry NnfTrimmed 6.6
function omi_nse_nsecm_orderentry_nnftrimmed_v6_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nsecm_orderentry_nnftrimmed_v6_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nsecm_orderentry_nnftrimmed_v6_6, buffer(), omi_nse_nsecm_orderentry_nnftrimmed_v6_6.description, "("..buffer:len().." Bytes)")
  return nse_nsecm_orderentry_nnftrimmed_v6_6.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
nse_nsecm_orderentry_nnftrimmed_v6_6.packet.fingerprint = function(buffer)
  if buffer:len() < 2 then
    return false
  end

  local transaction_code = buffer(0, 2):int()

  -- Order Entry Request Trimmed Message
  if transaction_code == 20000 then
    return true
  end

  -- Order Entry Request Trimmed Message
  if transaction_code == 20400 then
    return true
  end

  -- Order Modify Cancel Request Trimmed Message
  if transaction_code == 20040 then
    return true
  end

  -- Order Modify Cancel Request Trimmed Message
  if transaction_code == 20070 then
    return true
  end

  -- Order Modify Cancel Request Trimmed Message
  if transaction_code == 20402 then
    return true
  end

  -- Order Modify Cancel Request Trimmed Message
  if transaction_code == 20404 then
    return true
  end

  -- Order Modify Cancel Response Trimmed Message
  if transaction_code == 20012 then
    return true
  end

  -- Order Modify Cancel Response Trimmed Message
  if transaction_code == 20042 then
    return true
  end

  -- Order Modify Cancel Response Trimmed Message
  if transaction_code == 20072 then
    return true
  end

  -- Order Modify Cancel Response Trimmed Message
  if transaction_code == 20073 then
    return true
  end

  -- Order Modify Cancel Response Trimmed Message
  if transaction_code == 20074 then
    return true
  end

  -- Order Modify Cancel Response Trimmed Message
  if transaction_code == 20075 then
    return true
  end

  -- Order Modify Cancel Response Trimmed Message
  if transaction_code == 20231 then
    return true
  end

  -- Trade Confirmation Trimmed Message
  if transaction_code == 20222 then
    return true
  end

  -- Quick Acknowledgement Message
  if transaction_code == 20401 then
    return true
  end

  -- Quick Acknowledgement Message
  if transaction_code == 20403 then
    return true
  end

  -- Quick Acknowledgement Message
  if transaction_code == 20405 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseCm OrderEntry NnfTrimmed 6.6 (Tcp)
local function omi_nse_nsecm_orderentry_nnftrimmed_v6_6_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsecm_orderentry_nnftrimmed_v6_6.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not nse_nsecm_orderentry_nnftrimmed_v6_6.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsecm_orderentry_nnftrimmed_v6_6
  omi_nse_nsecm_orderentry_nnftrimmed_v6_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nse NseCm OrderEntry NnfTrimmed 6.6
omi_nse_nsecm_orderentry_nnftrimmed_v6_6:register_heuristic("tcp", omi_nse_nsecm_orderentry_nnftrimmed_v6_6_tcp_heuristic)

-- Register Nse NseCm OrderEntry NnfTrimmed 6.6 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nse_nsecm_orderentry_nnftrimmed_v6_6)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 6.6
--   Date: Monday, August 3, 2026
--   Specification: TP_CM_Trimmed_NNF_PROTOCOL_6.6_20260803151116.pdf
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
