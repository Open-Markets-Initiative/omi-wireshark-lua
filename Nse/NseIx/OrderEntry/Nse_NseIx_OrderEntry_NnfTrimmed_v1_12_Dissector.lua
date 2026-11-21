-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseIx OrderEntry NnfTrimmed 1.12 Protocol
local omi_nse_nseix_orderentry_nnftrimmed_v1_12 = Proto("Omi.Nse.NseIx.OrderEntry.NnfTrimmed.v1.12", "Nse NseIx OrderEntry NnfTrimmed 1.12")

-- Protocol table
local nse_nseix_orderentry_nnftrimmed_v1_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseIx OrderEntry NnfTrimmed 1.12 Fields
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.account_number = ProtoField.new("Account Number", "nse.nseix.orderentry.nnftrimmed.v1.12.accountnumber", ftypes.STRING, nil, nil, nil, "Account number the order is for")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.activity_time_utc = ProtoField.new("Activity Time", "nse.nseix.orderentry.nnftrimmed.v1.12.activitytime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the activity took place")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.activity_time = ProtoField.new("Activity Time", "nse.nseix.orderentry.nnftrimmed.v1.12.activitytime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the activity took place")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.activity_type = ProtoField.new("Activity Type", "nse.nseix.orderentry.nnftrimmed.v1.12.activitytype", ftypes.STRING)
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.additional_order_flags = ProtoField.new("Additional Order Flags", "nse.nseix.orderentry.nnftrimmed.v1.12.additionalorderflags", ftypes.STRING, nil, nil, nil, "Further terms attached to the order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.aon = ProtoField.new("Aon", "nse.nseix.orderentry.nnftrimmed.v1.12.aon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100, "All or none order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.ato = ProtoField.new("Ato", "nse.nseix.orderentry.nnftrimmed.v1.12.ato", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Market order in the pre open or pre close session")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.book_type = ProtoField.new("Book Type", "nse.nseix.orderentry.nnftrimmed.v1.12.booktype", ftypes.INT16, nil, nil, nil, "Book the order belongs to")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.branch_id = ProtoField.new("Branch Id", "nse.nseix.orderentry.nnftrimmed.v1.12.branchid", ftypes.INT16, nil, nil, nil, "Branch Id of the trading member")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.broker_id = ProtoField.new("Broker Id", "nse.nseix.orderentry.nnftrimmed.v1.12.brokerid", ftypes.STRING, nil, nil, nil, "Trading member Id")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nse.nseix.orderentry.nnftrimmed.v1.12.buysellindicator", ftypes.INT16, nil, nil, nil, "Whether the order is a buy or a sell")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.closeout_flag = ProtoField.new("Closeout Flag", "nse.nseix.orderentry.nnftrimmed.v1.12.closeoutflag", ftypes.STRING, nil, nil, nil, "Whether the order closes out a position of a broker in closeout")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.col = ProtoField.new("Col", "nse.nseix.orderentry.nnftrimmed.v1.12.col", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "Cancel on logoff")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.contract_desc_tr = ProtoField.new("Contract Desc Tr", "nse.nseix.orderentry.nnftrimmed.v1.12.contractdesctr", ftypes.STRING, nil, nil, nil, "CONTRACT_DESC_TR")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.day = ProtoField.new("Day", "nse.nseix.orderentry.nnftrimmed.v1.12.day", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800, "Day order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.disclosed_volume = ProtoField.new("Disclosed Volume", "nse.nseix.orderentry.nnftrimmed.v1.12.disclosedvolume", ftypes.INT32, nil, nil, nil, "Quantity disclosed to the market")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.disclosed_volume_remaining = ProtoField.new("Disclosed Volume Remaining", "nse.nseix.orderentry.nnftrimmed.v1.12.disclosedvolumeremaining", ftypes.INT32, nil, nil, nil, "Disclosed quantity still outstanding")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.echo_back = ProtoField.new("Echo Back", "nse.nseix.orderentry.nnftrimmed.v1.12.echoback", ftypes.STRING, nil, nil, nil, "Echo back field, carrying the algo Id in bytes 11 to 14")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.entry_date_time_utc = ProtoField.new("Entry Date Time", "nse.nseix.orderentry.nnftrimmed.v1.12.entrydatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the order entered the trading system")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.entry_date_time = ProtoField.new("Entry Date Time", "nse.nseix.orderentry.nnftrimmed.v1.12.entrydatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the order entered the trading system")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.error_code = ProtoField.new("Error Code", "nse.nseix.orderentry.nnftrimmed.v1.12.errorcode", ftypes.INT16, nil, nil, nil, "Zero when the request succeeded")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.expiry_date_utc = ProtoField.new("Expiry Date", "nse.nseix.orderentry.nnftrimmed.v1.12.expirydate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date the contract expires")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.expiry_date = ProtoField.new("Expiry Date", "nse.nseix.orderentry.nnftrimmed.v1.12.expirydate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date the contract expires")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.fill_number = ProtoField.new("Fill Number", "nse.nseix.orderentry.nnftrimmed.v1.12.fillnumber", ftypes.INT32, nil, nil, nil, "Trade number")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.fill_price = ProtoField.new("Fill Price", "nse.nseix.orderentry.nnftrimmed.v1.12.fillprice", ftypes.INT32, nil, nil, nil, "Price at which the order traded")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.fill_quantity = ProtoField.new("Fill Quantity", "nse.nseix.orderentry.nnftrimmed.v1.12.fillquantity", ftypes.INT32, nil, nil, nil, "Traded volume")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.filler_1 = ProtoField.new("Filler 1", "nse.nseix.orderentry.nnftrimmed.v1.12.filler1", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.filler_4 = ProtoField.new("Filler 4", "nse.nseix.orderentry.nnftrimmed.v1.12.filler4", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.frozen = ProtoField.new("Frozen", "nse.nseix.orderentry.nnftrimmed.v1.12.frozen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "Order has gone for a freeze")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.good_till_date_seconds_utc = ProtoField.new("GoodTillDate", "nse.nseix.orderentry.nnftrimmed.v1.12.goodtilldateseconds.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Good till date as an absolute date, in seconds since midnight January 1, 1980")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.good_till_date_seconds = ProtoField.new("GoodTillDate", "nse.nseix.orderentry.nnftrimmed.v1.12.goodtilldateseconds", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Good till date as an absolute date, in seconds since midnight January 1, 1980")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.good_till_days = ProtoField.new("GoodTillDate", "nse.nseix.orderentry.nnftrimmed.v1.12.goodtilldays", ftypes.INT32, nil, nil, nil, "Good till date as a number of days, from two to the maximum days for GTC orders; zero when the order is not good till date")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.gtc = ProtoField.new("Gtc", "nse.nseix.orderentry.nnftrimmed.v1.12.gtc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400, "Good till cancelled order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.instrument_name = ProtoField.new("Instrument Name", "nse.nseix.orderentry.nnftrimmed.v1.12.instrumentname", ftypes.STRING, nil, nil, nil, "Instrument the contract belongs to")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.ioc = ProtoField.new("Ioc", "nse.nseix.orderentry.nnftrimmed.v1.12.ioc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200, "Immediate or cancel order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.last_activity_reference = ProtoField.new("Last Activity Reference", "nse.nseix.orderentry.nnftrimmed.v1.12.lastactivityreference", ftypes.INT64, nil, nil, nil, "Unique value of the last activity on the order, zero on entry")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.last_modified_utc = ProtoField.new("Last Modified", "nse.nseix.orderentry.nnftrimmed.v1.12.lastmodified.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the order was last modified")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.last_modified = ProtoField.new("Last Modified", "nse.nseix.orderentry.nnftrimmed.v1.12.lastmodified", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the order was last modified")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.log_time_utc = ProtoField.new("Log Time", "nse.nseix.orderentry.nnftrimmed.v1.12.logtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the message was generated by the trading system")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.log_time = ProtoField.new("Log Time", "nse.nseix.orderentry.nnftrimmed.v1.12.logtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the message was generated by the trading system")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.market = ProtoField.new("Market", "nse.nseix.orderentry.nnftrimmed.v1.12.market", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Market order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.matched_ind = ProtoField.new("Matched Ind", "nse.nseix.orderentry.nnftrimmed.v1.12.matchedind", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040, "Negotiated order has found a matching order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.message = ProtoField.new("Message", "nse.nseix.orderentry.nnftrimmed.v1.12.message", ftypes.STRING, nil, nil, nil, "Nnf trimmed message")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.mf = ProtoField.new("Mf", "nse.nseix.orderentry.nnftrimmed.v1.12.mf", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080, "Minimum fill order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.mit = ProtoField.new("Mit", "nse.nseix.orderentry.nnftrimmed.v1.12.mit", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000, "Market if touched order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.modified = ProtoField.new("Modified", "nse.nseix.orderentry.nnftrimmed.v1.12.modified", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "Order has been modified")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.modified_cancelled_by = ProtoField.new("Modified Cancelled By", "nse.nseix.orderentry.nnftrimmed.v1.12.modifiedcancelledby", ftypes.STRING, nil, nil, nil, "Who modified or cancelled the order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.nlt_indc = ProtoField.new("Nlt Indc", "nse.nseix.orderentry.nnftrimmed.v1.12.nltindc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "Order is a negotiated large trade order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.nnf_field = ProtoField.new("Nnf Field", "nse.nseix.orderentry.nnftrimmed.v1.12.nnffield", ftypes.DOUBLE, nil, nil, nil, "Fifteen digit Non Neat front end identifier supplied by the member")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.open_close = ProtoField.new("Open Close", "nse.nseix.orderentry.nnftrimmed.v1.12.openclose", ftypes.STRING, nil, nil, nil, "Whether the order opens or closes a position")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.option_type = ProtoField.new("Option Type", "nse.nseix.orderentry.nnftrimmed.v1.12.optiontype", ftypes.STRING, nil, nil, nil, "Whether the option is a call or a put")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.order_number = ProtoField.new("Order Number", "nse.nseix.orderentry.nnftrimmed.v1.12.ordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number of the order to be modified or cancelled")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.original_volume = ProtoField.new("Original Volume", "nse.nseix.orderentry.nnftrimmed.v1.12.originalvolume", ftypes.INT32, nil, nil, nil, "Original quantity of the order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.participant = ProtoField.new("Participant", "nse.nseix.orderentry.nnftrimmed.v1.12.participant", ftypes.STRING, nil, nil, nil, "Participant the trade is for")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.preclose = ProtoField.new("Preclose", "nse.nseix.orderentry.nnftrimmed.v1.12.preclose", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "Order was entered in the pre close session")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.preopen = ProtoField.new("Preopen", "nse.nseix.orderentry.nnftrimmed.v1.12.preopen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "Order was entered in the pre open session")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.price = ProtoField.new("Price", "nse.nseix.orderentry.nnftrimmed.v1.12.price", ftypes.INT32, nil, nil, nil, "Price of the order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.pro_client_indicator = ProtoField.new("Pro Client Indicator", "nse.nseix.orderentry.nnftrimmed.v1.12.proclientindicator", ftypes.INT16, nil, nil, nil, "Whether the order is a client order or the broker's own")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reason_code = ProtoField.new("Reason Code", "nse.nseix.orderentry.nnftrimmed.v1.12.reasoncode", ftypes.INT16, nil, nil, nil, "Reason the request was rejected or the order frozen, zero on entry")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.remaining_volume = ProtoField.new("Remaining Volume", "nse.nseix.orderentry.nnftrimmed.v1.12.remainingvolume", ftypes.INT32, nil, nil, nil, "Volume remaining after the trades")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reserved_1 = ProtoField.new("Reserved 1", "nse.nseix.orderentry.nnftrimmed.v1.12.reserved1", ftypes.BYTES, nil, nil, nil, "Padding to the two byte alignment of the next field")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reserved_24 = ProtoField.new("Reserved 24", "nse.nseix.orderentry.nnftrimmed.v1.12.reserved24", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reserved_34 = ProtoField.new("Reserved 34", "nse.nseix.orderentry.nnftrimmed.v1.12.reserved34", ftypes.UINT8, nil, base.DEC, 0x0C, "Reserved")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reserved_52 = ProtoField.new("Reserved 52", "nse.nseix.orderentry.nnftrimmed.v1.12.reserved52", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reserved_78 = ProtoField.new("Reserved 78", "nse.nseix.orderentry.nnftrimmed.v1.12.reserved78", ftypes.UINT8, nil, base.DEC, 0xC0, "Reserved")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reserved_8 = ProtoField.new("Reserved 8", "nse.nseix.orderentry.nnftrimmed.v1.12.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reserved_bit_1 = ProtoField.new("Reserved Bit 1", "nse.nseix.orderentry.nnftrimmed.v1.12.reservedbit1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Reserved")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.response_order_number = ProtoField.new("Response Order Number", "nse.nseix.orderentry.nnftrimmed.v1.12.responseordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number of the trader's order taking part in the trade")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.second_filler_1 = ProtoField.new("Second Filler 1", "nse.nseix.orderentry.nnftrimmed.v1.12.secondfiller1", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "nse.nseix.orderentry.nnftrimmed.v1.12.secondreserved1", ftypes.BYTES, nil, nil, nil, "Padding to the two byte alignment of the next field")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.session_ind = ProtoField.new("Session Ind", "nse.nseix.orderentry.nnftrimmed.v1.12.sessionind", ftypes.UINT8, {[0]="Session 1", [1]="Session 2"}, base.DEC, 0x20, "Session the trade was done in, stamped only on trade messages")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.settlor = ProtoField.new("Settlor", "nse.nseix.orderentry.nnftrimmed.v1.12.settlor", ftypes.STRING, nil, nil, nil, "Participant responsible for settling the trades")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.sl = ProtoField.new("Sl", "nse.nseix.orderentry.nnftrimmed.v1.12.sl", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Stop loss order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.st_order_flags = ProtoField.new("St Order Flags", "nse.nseix.orderentry.nnftrimmed.v1.12.storderflags", ftypes.STRING, nil, nil, nil, "Terms attached to the order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.stpc = ProtoField.new("Stpc", "nse.nseix.orderentry.nnftrimmed.v1.12.stpc", ftypes.UINT8, {[0]="Cancel Order Resulting In Self Trade As Per Default", [1]="Cancel Active Order Resulting In Self Trade"}, base.DEC, 0x10, "Self trade prevention check")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.strike_price = ProtoField.new("Strike Price", "nse.nseix.orderentry.nnftrimmed.v1.12.strikeprice", ftypes.INT32, nil, nil, nil, "Strike price of an option, minus one for a future")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.symbol = ProtoField.new("Symbol", "nse.nseix.orderentry.nnftrimmed.v1.12.symbol", ftypes.STRING, nil, nil, nil, "Symbol of the underlying")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.time_stamp = ProtoField.new("Time Stamp", "nse.nseix.orderentry.nnftrimmed.v1.12.timestamp", ftypes.DOUBLE)
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.time_stamp_1 = ProtoField.new("Time Stamp 1", "nse.nseix.orderentry.nnftrimmed.v1.12.timestamp1", ftypes.DOUBLE, nil, nil, nil, "Time the message arrived at the trading system host")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.timestamp_2_char = ProtoField.new("Timestamp 2 Char", "nse.nseix.orderentry.nnftrimmed.v1.12.timestamp2char", ftypes.STRING, nil, nil, nil, "Number of the machine the message came from")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.timestamp_2_double = ProtoField.new("Timestamp 2 Double", "nse.nseix.orderentry.nnftrimmed.v1.12.timestamp2double", ftypes.DOUBLE, nil, nil, nil, "Number of the machine the message came from")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.token = ProtoField.new("Token", "nse.nseix.orderentry.nnftrimmed.v1.12.token", ftypes.INT32, nil, nil, nil, "Token number of the contract")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.token_no = ProtoField.new("Token No", "nse.nseix.orderentry.nnftrimmed.v1.12.tokenno", ftypes.INT32, nil, nil, nil, "Token number of the contract, or minus one to validate on the contract descriptor alone")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.total_volume_remaining = ProtoField.new("Total Volume Remaining", "nse.nseix.orderentry.nnftrimmed.v1.12.totalvolumeremaining", ftypes.INT32, nil, nil, nil, "Total quantity still outstanding")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.trade_book_type = ProtoField.new("Trade Book Type", "nse.nseix.orderentry.nnftrimmed.v1.12.tradebooktype", ftypes.STRING, nil, nil, nil, "Book type of the order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.traded = ProtoField.new("Traded", "nse.nseix.orderentry.nnftrimmed.v1.12.traded", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020, "Order has traded partly or fully")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.trader_id = ProtoField.new("Trader Id", "nse.nseix.orderentry.nnftrimmed.v1.12.traderid", ftypes.INT32, nil, nil, nil, "User Id of the user")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nseix.orderentry.nnftrimmed.v1.12.transactioncode", ftypes.INT16, nil, nil, nil, "Type of message, which also fixes its length")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.user_id = ProtoField.new("User Id", "nse.nseix.orderentry.nnftrimmed.v1.12.userid", ftypes.INT32, nil, nil, nil, "Id of the user entering the order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.volume = ProtoField.new("Volume", "nse.nseix.orderentry.nnftrimmed.v1.12.volume", ftypes.INT32, nil, nil, nil, "Quantity of the order")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.volume_filled_today = ProtoField.new("Volume Filled Today", "nse.nseix.orderentry.nnftrimmed.v1.12.volumefilledtoday", ftypes.INT32, nil, nil, nil, "Quantity traded today")

-- Nse NseIx OrderEntry NnfTrimmed 1.12 Framing
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.packet = ProtoField.new("Packet", "nse.nseix.orderentry.nnftrimmed.v1.12.packet", ftypes.STRING, nil, nil, nil, "NnfTrimmed Tcp block of one or more messages")

-- Nse NseIx OrderEntry 1.12 Application Messages
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.board_lot_in_trimmed_message = ProtoField.new("Board Lot In Trimmed Message", "nse.nseix.orderentry.nnftrimmed.v1.12.boardlotintrimmedmessage", ftypes.STRING, nil, nil, nil, "Trimmed order entry request")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.order_modify_cancel_trimmed_message = ProtoField.new("Order Modify Cancel Trimmed Message", "nse.nseix.orderentry.nnftrimmed.v1.12.ordermodifycanceltrimmedmessage", ftypes.STRING, nil, nil, nil, "Trimmed order modification, quick cancellation and cancellation requests")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.order_response_trimmed_message = ProtoField.new("Order Response Trimmed Message", "nse.nseix.orderentry.nnftrimmed.v1.12.orderresponsetrimmedmessage", ftypes.STRING, nil, nil, nil, "Trimmed price confirmation, order, modification and cancellation confirmations, modification and cancellation rejections and order error. Transaction Code names the response")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.trade_confirmation_trimmed_message = ProtoField.new("Trade Confirmation Trimmed Message", "nse.nseix.orderentry.nnftrimmed.v1.12.tradeconfirmationtrimmedmessage", ftypes.STRING, nil, nil, nil, "Trimmed trade confirmation")

-- Nse NseIx OrderEntry NnfTrimmed 1.12 Expert Info
nse_nseix_orderentry_nnftrimmed_v1_12.experts = {}
nse_nseix_orderentry_nnftrimmed_v1_12.experts.undecoded = ProtoExpert.new("nse.nseix.orderentry.nnftrimmed.v1.12.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
omi_nse_nseix_orderentry_nnftrimmed_v1_12.experts = { nse_nseix_orderentry_nnftrimmed_v1_12.experts.undecoded }

-----------------------------------------------------------------------
-- Nse NseIx OrderEntry NnfTrimmed 1.12 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "DateTime Local", 2 },
  { 2, "DateTime Utc", 3 },
  { 3, "DateTime Asia/Kolkata", 4 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_format = 3

-- Offset of the source's zone from utc in seconds, as the reader states it
nse_nseix_orderentry_nnftrimmed_v1_12.zone_offset = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nse NseIx OrderEntry NnfTrimmed 1.12 Element Dissection Options
show.structs = true
show.application_messages = true
show.padding = false

-- Register Nse NseIx OrderEntry NnfTrimmed 1.12 Show Options
omi_nse_nseix_orderentry_nnftrimmed_v1_12.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nseix_orderentry_nnftrimmed_v1_12.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")

omi_nse_nseix_orderentry_nnftrimmed_v1_12.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)
omi_nse_nseix_orderentry_nnftrimmed_v1_12.prefs.zone_offset = Pref.string("Asia/Kolkata Utc Offset", "", "Offset of Asia/Kolkata from Utc, as +HH:MM. This protocol names that zone and not its offset: stated here, a time kept on its clock reads as an instant, and an instant reads on its clock")

-- Handle changed preferences
function omi_nse_nseix_orderentry_nnftrimmed_v1_12.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nseix_orderentry_nnftrimmed_v1_12.prefs.show_application_messages then
    show.application_messages = omi_nse_nseix_orderentry_nnftrimmed_v1_12.prefs.show_application_messages
  end
  if show.padding ~= omi_nse_nseix_orderentry_nnftrimmed_v1_12.prefs.show_padding then
    show.padding = omi_nse_nseix_orderentry_nnftrimmed_v1_12.prefs.show_padding
  end
  if show.structs ~= omi_nse_nseix_orderentry_nnftrimmed_v1_12.prefs.show_structs then
    show.structs = omi_nse_nseix_orderentry_nnftrimmed_v1_12.prefs.show_structs
  end
  if nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_format ~= omi_nse_nseix_orderentry_nnftrimmed_v1_12.prefs.timestamp_format then
    nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_format = omi_nse_nseix_orderentry_nnftrimmed_v1_12.prefs.timestamp_format
  end
  local sign, hours, minutes = string.match(omi_nse_nseix_orderentry_nnftrimmed_v1_12.prefs.zone_offset, "^%s*([+-]?)(%d%d?):?(%d?%d?)%s*$")

  nse_nseix_orderentry_nnftrimmed_v1_12.zone_offset = 0

  if hours then
    nse_nseix_orderentry_nnftrimmed_v1_12.zone_offset = tonumber(hours) * 3600 + (tonumber(minutes) or 0) * 60
  end

  if sign == "-" then
    nse_nseix_orderentry_nnftrimmed_v1_12.zone_offset = -nse_nseix_orderentry_nnftrimmed_v1_12.zone_offset
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


-- Mark a sized group whose fields read past its end; raise any other failure as it was
local function undecoded(failure, parent, expert, text)
  if not string.find(tostring(failure), "Range is out of bounds", 1, true) then
    error(failure, 0)
  end

  parent:add_proto_expert_info(expert, text)
end
-----------------------------------------------------------------------
-- Nse NseIx OrderEntry NnfTrimmed 1.12 Fields
-----------------------------------------------------------------------

-- Account Number
nse_nseix_orderentry_nnftrimmed_v1_12.account_number = {}

-- Size: Account Number
nse_nseix_orderentry_nnftrimmed_v1_12.account_number.size = 10

-- Display: Account Number
nse_nseix_orderentry_nnftrimmed_v1_12.account_number.display = function(value)
  return "Account Number: "..value
end

-- Dissect: Account Number
nse_nseix_orderentry_nnftrimmed_v1_12.account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.account_number, range, value, display)

  return offset + length, value
end

-- Activity Time
nse_nseix_orderentry_nnftrimmed_v1_12.activity_time = {}

-- Size: Activity Time
nse_nseix_orderentry_nnftrimmed_v1_12.activity_time.size = 4

-- Dissect: Activity Time
nse_nseix_orderentry_nnftrimmed_v1_12.activity_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.activity_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.activity_time
  if nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.activity_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Activity Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnftrimmed_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Activity Type
nse_nseix_orderentry_nnftrimmed_v1_12.activity_type = {}

-- Size: Activity Type
nse_nseix_orderentry_nnftrimmed_v1_12.activity_type.size = 2

-- Display: Activity Type
nse_nseix_orderentry_nnftrimmed_v1_12.activity_type.display = function(value)
  return "Activity Type: "..value
end

-- Dissect: Activity Type
nse_nseix_orderentry_nnftrimmed_v1_12.activity_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.activity_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.activity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.activity_type, range, value, display)

  return offset + length, value
end

-- Book Type
nse_nseix_orderentry_nnftrimmed_v1_12.book_type = {}

-- Size: Book Type
nse_nseix_orderentry_nnftrimmed_v1_12.book_type.size = 2

-- Display: Book Type
nse_nseix_orderentry_nnftrimmed_v1_12.book_type.labels = {
  [1] = "Book Type: Regular Lot Order (1)",
  [2] = "Book Type: Special Terms Order (2)",
  [3] = "Book Type: Stop Loss Or Mit Order (3)",
  [4] = "Book Type: Negotiated Order Or Nlt (4)",
  [5] = "Book Type: Odd Lot Order (5)",
  [6] = "Book Type: Spot Order (6)",
  [7] = "Book Type: Auction Order (7)",
}

nse_nseix_orderentry_nnftrimmed_v1_12.book_type.display = function(value)
  return nse_nseix_orderentry_nnftrimmed_v1_12.book_type.labels[value] or "Book Type: Unknown("..value..")"
end

-- Dissect: Book Type
nse_nseix_orderentry_nnftrimmed_v1_12.book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.book_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.book_type, range, value, display)

  return offset + length, value
end

-- Branch Id
nse_nseix_orderentry_nnftrimmed_v1_12.branch_id = {}

-- Size: Branch Id
nse_nseix_orderentry_nnftrimmed_v1_12.branch_id.size = 2

-- Display: Branch Id
nse_nseix_orderentry_nnftrimmed_v1_12.branch_id.display = function(value)
  return "Branch Id: "..value
end

-- Dissect: Branch Id
nse_nseix_orderentry_nnftrimmed_v1_12.branch_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.branch_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.branch_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.branch_id, range, value, display)

  return offset + length, value
end

-- Broker Id
nse_nseix_orderentry_nnftrimmed_v1_12.broker_id = {}

-- Size: Broker Id
nse_nseix_orderentry_nnftrimmed_v1_12.broker_id.size = 5

-- Display: Broker Id
nse_nseix_orderentry_nnftrimmed_v1_12.broker_id.display = function(value)
  return "Broker Id: "..value
end

-- Dissect: Broker Id
nse_nseix_orderentry_nnftrimmed_v1_12.broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.broker_id, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator.size = 2

-- Display: Buy Sell Indicator
nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator.labels = {
  [1] = "Buy Sell Indicator: Buy Order (1)",
  [2] = "Buy Sell Indicator: Sell Order (2)",
}

nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator.display = function(value)
  return nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator.labels[value] or "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Closeout Flag
nse_nseix_orderentry_nnftrimmed_v1_12.closeout_flag = {}

-- Size: Closeout Flag
nse_nseix_orderentry_nnftrimmed_v1_12.closeout_flag.size = 1

-- Display: Closeout Flag
nse_nseix_orderentry_nnftrimmed_v1_12.closeout_flag.display = function(value)
  return "Closeout Flag: "..value
end

-- Dissect: Closeout Flag
nse_nseix_orderentry_nnftrimmed_v1_12.closeout_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.closeout_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.closeout_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.closeout_flag, range, value, display)

  return offset + length, value
end

-- Disclosed Volume
nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume = {}

-- Size: Disclosed Volume
nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume.size = 4

-- Display: Disclosed Volume
nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume.display = function(value)
  return "Disclosed Volume: "..value
end

-- Dissect: Disclosed Volume
nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.disclosed_volume, range, value, display)

  return offset + length, value
end

-- Disclosed Volume Remaining
nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume_remaining = {}

-- Size: Disclosed Volume Remaining
nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume_remaining.size = 4

-- Display: Disclosed Volume Remaining
nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume_remaining.display = function(value)
  return "Disclosed Volume Remaining: "..value
end

-- Dissect: Disclosed Volume Remaining
nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.disclosed_volume_remaining, range, value, display)

  return offset + length, value
end

-- Echo Back
nse_nseix_orderentry_nnftrimmed_v1_12.echo_back = {}

-- Size: Echo Back
nse_nseix_orderentry_nnftrimmed_v1_12.echo_back.size = 16

-- Display: Echo Back
nse_nseix_orderentry_nnftrimmed_v1_12.echo_back.display = function(value)
  return "Echo Back: "..value
end

-- Dissect: Echo Back
nse_nseix_orderentry_nnftrimmed_v1_12.echo_back.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.echo_back.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.echo_back.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.echo_back, range, value, display)

  return offset + length, value
end

-- Entry Date Time
nse_nseix_orderentry_nnftrimmed_v1_12.entry_date_time = {}

-- Size: Entry Date Time
nse_nseix_orderentry_nnftrimmed_v1_12.entry_date_time.size = 4

-- Dissect: Entry Date Time
nse_nseix_orderentry_nnftrimmed_v1_12.entry_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.entry_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.entry_date_time
  if nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.entry_date_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Entry Date Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnftrimmed_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Error Code
nse_nseix_orderentry_nnftrimmed_v1_12.error_code = {}

-- Size: Error Code
nse_nseix_orderentry_nnftrimmed_v1_12.error_code.size = 2

-- Display: Error Code
nse_nseix_orderentry_nnftrimmed_v1_12.error_code.labels = {
  [293] = "Error Code: Invalid Instrument Type (293)",
  [509] = "Error Code: Order Number Invalid (509)",
  [8049] = "Error Code: Ord Cxl Initiator Auc Not Allowed (8049)",
  [8485] = "Error Code: Auction Number Invalid (8485)",
  [16000] = "Error Code: Market Closed (16000)",
  [16001] = "Error Code: E Invalid User (16001)",
  [16003] = "Error Code: Error Bad Trans Code (16003)",
  [16004] = "Error Code: E User Already Signed On (16004)",
  [16005] = "Error Code: E Invalid Signoff (16005)",
  [16006] = "Error Code: E Invalid Signon (16006)",
  [16007] = "Error Code: E Signon Not Possible (16007)",
  [16011] = "Error Code: E Duplicate Report Request (16011)",
  [16012] = "Error Code: Err Invalid Symbol (16012)",
  [16014] = "Error Code: E Not Your Order (16014)",
  [16015] = "Error Code: E Not Your Fill (16015)",
  [16016] = "Error Code: E Invalid Fill Number (16016)",
  [16019] = "Error Code: E Stock Not Found (16019)",
  [16035] = "Error Code: Security Not Available (16035)",
  [16041] = "Error Code: Broker Not Found (16041)",
  [16042] = "Error Code: User Not Found (16042)",
  [16043] = "Error Code: Duplicate Record (16043)",
  [16044] = "Error Code: E Order Modified (16044)",
  [16049] = "Error Code: Stock Suspended (16049)",
  [16052] = "Error Code: Err Function Not Available (16052)",
  [16053] = "Error Code: E Change Password (16053)",
  [16054] = "Error Code: Err Invalid Branch (16054)",
  [16056] = "Error Code: Oe Program Error (16056)",
  [16086] = "Error Code: E Dup Trd Cxl Request (16086)",
  [16098] = "Error Code: Err Invalid Buyer User Id (16098)",
  [16099] = "Error Code: Err Invalid Seller User Id (16099)",
  [16100] = "Error Code: E Invalid Version (16100)",
  [16104] = "Error Code: Oe System Error (16104)",
  [16134] = "Error Code: Err User Disabled (16134)",
  [16148] = "Error Code: Err Invalid User Id (16148)",
  [16154] = "Error Code: Err Invalid Trader Id (16154)",
  [16169] = "Error Code: Oe Ato In Open (16169)",
  [16196] = "Error Code: Ord Not Allowed In Preopen (16196)",
  [16197] = "Error Code: Ord Not Allowed In Preclose (16197)",
  [16198] = "Error Code: E Dup Request (16198)",
  [16227] = "Error Code: E Only Cp Allowed (16227)",
  [16228] = "Error Code: E Sl Mit Nt Not Allowed Pclose (16228)",
  [16229] = "Error Code: E Gtc Gtd Ord Not Allowed Pclose (16229)",
  [16230] = "Error Code: Oe Cont Mod Not Allowed (16230)",
  [16231] = "Error Code: Trd Cont Mod Not Allowed (16231)",
  [16233] = "Error Code: Str Pro Partivipant Invalid (16233)",
  [16247] = "Error Code: Error Invalid Price (16247)",
  [16251] = "Error Code: Oe Diff Trd Mod Vol (16251)",
  [16273] = "Error Code: Record Not Found (16273)",
  [16278] = "Error Code: Oe Markets Closed (16278)",
  [16279] = "Error Code: Oe Security Not Admitted (16279)",
  [16280] = "Error Code: Oe Security Matured (16280)",
  [16281] = "Error Code: Oe Security Expelled (16281)",
  [16282] = "Error Code: Oe Issued Cap Exceeds (16282)",
  [16283] = "Error Code: Oe Price Not Mult (16283)",
  [16284] = "Error Code: Oe Price Exceeds Day Min Max (16284)",
  [16285] = "Error Code: Oe Is Not Active (16285)",
  [16300] = "Error Code: E System Wrong State (16300)",
  [16303] = "Error Code: Oe Auction Pending (16303)",
  [16307] = "Error Code: Oe Qty Freeze Can (16307)",
  [16308] = "Error Code: Oe Price Freeze Can (16308)",
  [16311] = "Error Code: Oe Sol Period Over (16311)",
  [16312] = "Error Code: Oe Comp Period Over (16312)",
  [16313] = "Error Code: Oe Auc Period Greater (16313)",
  [16315] = "Error Code: Oe Limit Trigger (16315)",
  [16316] = "Error Code: Oe Trigger Price Not Mult (16316)",
  [16317] = "Error Code: Oe No Aon Attrib (16317)",
  [16318] = "Error Code: Oe No Mf Attrib (16318)",
  [16319] = "Error Code: Oe No Aon In Attrib 1 (16319)",
  [16320] = "Error Code: Oe No Mf Attrib 1 (16320)",
  [16321] = "Error Code: Oe Mf Greater Disc (16321)",
  [16322] = "Error Code: Oe Mf Not Mult (16322)",
  [16323] = "Error Code: Oe Mf Greater Original (16323)",
  [16324] = "Error Code: Oe Disc Greater Original (16324)",
  [16325] = "Error Code: Oe Disc Not Mult (16325)",
  [16326] = "Error Code: Oe Gtd Greater (16326)",
  [16327] = "Error Code: Oe Quantity Gerater Rl (16327)",
  [16328] = "Error Code: Oe Quantity Not Mult Rl (16328)",
  [16329] = "Error Code: Oe Broker Not Permitted (16329)",
  [16330] = "Error Code: Oe Is Suspended (16330)",
  [16333] = "Error Code: Oe Branch Limit Exceeded (16333)",
  [16343] = "Error Code: Oe Ord Can Changed (16343)",
  [16344] = "Error Code: Oe Ord Cannot Cancel (16344)",
  [16345] = "Error Code: Oe Init Ord Cancel (16345)",
  [16346] = "Error Code: Oe Ord Cannot Modify (16346)",
  [16348] = "Error Code: Err Trading Not Allowed (16348)",
  [16357] = "Error Code: Oe Nt Rejected (16357)",
  [16363] = "Error Code: Chg St Exists (16363)",
  [16369] = "Error Code: Oe Security In Preopen (16369)",
  [16372] = "Error Code: Oe Inq Not Allowed (16372)",
  [16387] = "Error Code: Oe Security Ineligible (16387)",
  [16388] = "Error Code: Err Fok Order Cancelled (16388)",
  [16392] = "Error Code: Turnover Limit Not Provided (16392)",
  [16400] = "Error Code: Oe Max Dq Allowed (16400)",
  [16404] = "Error Code: Oe Admin Susp Can (16404)",
  [16405] = "Error Code: E Invalid Buy Sell Type (16405)",
  [16414] = "Error Code: E Invalid Pro Client (16414)",
  [16415] = "Error Code: E Invalid Instructions (16415)",
  [16416] = "Error Code: E Invalid Order Parameters (16416)",
  [16418] = "Error Code: E Nnf Req Exceeded (16418)",
  [16419] = "Error Code: Invalid Order (16419)",
  [16438] = "Error Code: Ord Attribute Not Allowed In Preopen Preclose (16438)",
  [16440] = "Error Code: E Gtd Gt Maturity (16440)",
  [16441] = "Error Code: E Dq Ord Not Allowed Popen (16441)",
  [16442] = "Error Code: E St Ord Not Allowed Popen (16442)",
  [16443] = "Error Code: E Ord Lim Exceeds Ord Val Lim (16443)",
  [16445] = "Error Code: Sl Not Allowed (16445)",
  [16446] = "Error Code: Mit Not Allowed (16446)",
  [16447] = "Error Code: E Ord Not Allowed In Preopen (16447)",
  [16448] = "Error Code: Error Sl Lmt Rsnblty Check (16448)",
  [16500] = "Error Code: E Not Allowed (16500)",
  [16501] = "Error Code: E Invalid Ex Pl Char (16501)",
  [16513] = "Error Code: E Rejection Not Allowed (16513)",
  [16514] = "Error Code: E Not Modifiable (16514)",
  [16518] = "Error Code: E Tm Cm Does Not Exist (16518)",
  [16521] = "Error Code: E Not Clg Mem (16521)",
  [16523] = "Error Code: E User Not Corp Mgr (16523)",
  [16529] = "Error Code: E Not Valid Fo Contract (16529)",
  [16532] = "Error Code: E Pm Cm Invalid (16532)",
  [16533] = "Error Code: E Corp Mgr Vu Mod (16533)",
  [16541] = "Error Code: E Invalid Participant (16541)",
  [16550] = "Error Code: E Trade Approved By Cm (16550)",
  [16552] = "Error Code: E Cm Stock Suspended (16552)",
  [16554] = "Error Code: E Broker Not Permitted In Fut (16554)",
  [16555] = "Error Code: E Broker Not Permitted In Opt (16555)",
  [16556] = "Error Code: E Qty Less Than Min Lot (16556)",
  [16557] = "Error Code: E Disc Qty Less Than Min Lot (16557)",
  [16558] = "Error Code: E Mf Qty Less Than Min Lot (16558)",
  [16560] = "Error Code: E Already Rejected (16560)",
  [16561] = "Error Code: E Nt Orders Not Allowed (16561)",
  [16562] = "Error Code: E Nt Trade Not Allowed (16562)",
  [16566] = "Error Code: E Inconsistent Broker Branch (16566)",
  [16570] = "Error Code: M Post Close Start (16570)",
  [16571] = "Error Code: M Post Close Ended (16571)",
  [16572] = "Error Code: M Post Close Trades (16572)",
  [16573] = "Error Code: E Invalid Msg Length (16573)",
  [16574] = "Error Code: E Invalid Open Close Type (16574)",
  [16576] = "Error Code: E Nnf Inq Req Exceeded (16576)",
  [16577] = "Error Code: E Participant And Volume Changed (16577)",
  [16578] = "Error Code: E Invalid Cover Uncover Type (16578)",
  [16579] = "Error Code: E Illegal Cm Id (16579)",
  [16580] = "Error Code: E Illegal Participant (16580)",
  [16581] = "Error Code: E Invalid Fill Price (16581)",
  [16583] = "Error Code: E Pro No Participant (16583)",
  [16585] = "Error Code: E Invalid Account No (16585)",
  [16586] = "Error Code: E Allow No Participant Order (16586)",
  [16589] = "Error Code: M Delete All Orders (16589)",
  [16594] = "Error Code: Trade Qty Not Mod After Giveup (16594)",
  [16596] = "Error Code: E Tmid Cant Exercise For Ptcpnt (16596)",
  [16597] = "Error Code: E Cum Ur Ord Val Limit Exceeded (16597)",
  [16598] = "Error Code: E Branch Ord Val Limit Exceeded (16598)",
  [16601] = "Error Code: Order Rejected With System Error (16601)",
  [16602] = "Error Code: E Dealer Value Limit Exceeds (16602)",
  [16604] = "Error Code: E Participant Not Found (16604)",
  [16605] = "Error Code: E Either Leg Failed (16605)",
  [16606] = "Error Code: E Qty Greater Than Freeze Qty (16606)",
  [16607] = "Error Code: E Spread Not Allowed (16607)",
  [16608] = "Error Code: E Spread Allowed Only In Open (16608)",
  [16609] = "Error Code: E Spread Allowed If Stock Open (16609)",
  [16610] = "Error Code: E Qty Should Be Same (16610)",
  [16611] = "Error Code: E Ord Mod Qty Frz Not Allowed (16611)",
  [16612] = "Error Code: E Trade Rec Modified (16612)",
  [16615] = "Error Code: E Tm Order Cant Be Modified (16615)",
  [16616] = "Error Code: E Tm Order Cant Be Cancelled (16616)",
  [16617] = "Error Code: E Tm Trade Cant Be Manipulated (16617)",
  [16619] = "Error Code: E Pcm Cant Ex Pl For Himself (16619)",
  [16620] = "Error Code: E Clearing Member Cant Expl (16620)",
  [16621] = "Error Code: E Cant Manipulate Expl Of Tm (16621)",
  [16625] = "Error Code: E Cm Of Tm Suspended (16625)",
  [16626] = "Error Code: E Expdate Not In Ascending Ord (16626)",
  [16627] = "Error Code: E Invalid Contract Comb (16627)",
  [16628] = "Error Code: E Bm Cannot Cancel Cm Orders (16628)",
  [16629] = "Error Code: E Bm Cannot Cancel Bm Orders (16629)",
  [16630] = "Error Code: E Cm Cannot Cancel Cm Orders (16630)",
  [16631] = "Error Code: E Spread In Different Underlying (16631)",
  [16632] = "Error Code: E Invalid Cli Ac (16632)",
  [16636] = "Error Code: E Br Ord Limit Fut Buy Exceeded (16636)",
  [16637] = "Error Code: E Br Ord Limit Fut Sell Exceeded (16637)",
  [16638] = "Error Code: E Br Ord Limit Opt Buy Exceeded (16638)",
  [16639] = "Error Code: E Br Ord Limit Opt Sell Exceeded (16639)",
  [16640] = "Error Code: E Ur Ord Limit Fut Buy Exceeded (16640)",
  [16641] = "Error Code: E Ur Ord Limit Fut Sell Exceeded (16641)",
  [16642] = "Error Code: E Ur Ord Limit Opt Buy Exceeded (16642)",
  [16643] = "Error Code: E Ur Ord Limit Opt Sell Exceeded (16643)",
  [16645] = "Error Code: E Cant Appr Bhav Copy Generated (16645)",
  [16646] = "Error Code: E Collateral Lmt Chk (16646)",
  [16656] = "Error Code: E Address Not Found (16656)",
  [16662] = "Error Code: E Stk In Popen (16662)",
  [16666] = "Error Code: E Invalid Nnf Field (16666)",
  [16667] = "Error Code: E Gtcgtd Not Allowed (16667)",
  [16686] = "Error Code: Closeout Order Reject (16686)",
  [16687] = "Error Code: Closeout Frz Reject (16687)",
  [16688] = "Error Code: Closeout Not Allowed (16688)",
  [16690] = "Error Code: Closeout Trdmod Reject (16690)",
  [16706] = "Error Code: Partial Order Reject (16706)",
  [16708] = "Error Code: Partial Quick Order Cxl Rej (16708)",
  [16713] = "Error Code: E Price Diff Out Of Range (16713)",
  [16732] = "Error Code: Error Algo Mkt Not Allowed (16732)",
  [16733] = "Error Code: Error Invalid Nnfid Rejection (16733)",
  [16793] = "Error Code: E Vc Order Rejected (16793)",
  [16794] = "Error Code: E Ssd Order Rejected (16794)",
  [16795] = "Error Code: E Order Cancelled For Vc (16795)",
  [16796] = "Error Code: E Order Cancelled For Ssd (16796)",
  [16807] = "Error Code: E Account Debarred (16807)",
  [17036] = "Error Code: E Mba Inq Not Allowed (17036)",
  [17037] = "Error Code: E Mba Insuff Record (17037)",
  [17038] = "Error Code: E Outstanding Order Present (17038)",
  [17039] = "Error Code: E Pro Cli Mod Not Allowed (17039)",
  [17045] = "Error Code: E Ord Qty Exceeds Qty Val Lim (17045)",
  [17046] = "Error Code: E User Type Trd Mod Disabled (17046)",
  [17047] = "Error Code: E Tm Trade Mod Not Allowed (17047)",
  [17048] = "Error Code: E User Trd Mod Disabled (17048)",
  [17070] = "Error Code: E Trd Price Out Of Stock Tpp (17070)",
  [17071] = "Error Code: E Order Cancelled For Self Trade (17071)",
  [17101] = "Error Code: E Invalid Packet (17101)",
  [17102] = "Error Code: E Hearbeat Not Received (17102)",
  [17103] = "Error Code: E Single User Login Allowed (17103)",
  [17104] = "Error Code: E Invalid Box Id (17104)",
  [17105] = "Error Code: E Seq No Mismatch (17105)",
  [17106] = "Error Code: E Box Rate Exceeded (17106)",
  [16403] = "Error Code: E Invalid Box Ip Combination (16403)",
  [17179] = "Error Code: Err Invalid Algo Id (17179)",
  [17184] = "Error Code: Err User Having Null Rights (17184)",
  [19028] = "Error Code: Err Checksum Failed Gr (19028)",
  [19029] = "Error Code: Err Multiple Gr Query Rcv (19029)",
  [19030] = "Error Code: Err Encryption Flag Mismatch (19030)",
  [19031] = "Error Code: Err Md 5 Checksum Failure (19031)",
}

nse_nseix_orderentry_nnftrimmed_v1_12.error_code.display = function(value)
  return nse_nseix_orderentry_nnftrimmed_v1_12.error_code.labels[value] or "Error Code: Unknown("..value..")"
end

-- Dissect: Error Code
nse_nseix_orderentry_nnftrimmed_v1_12.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.error_code, range, value, display)

  return offset + length, value
end

-- Expiry Date
nse_nseix_orderentry_nnftrimmed_v1_12.expiry_date = {}

-- Size: Expiry Date
nse_nseix_orderentry_nnftrimmed_v1_12.expiry_date.size = 4

-- Dissect: Expiry Date
nse_nseix_orderentry_nnftrimmed_v1_12.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.expiry_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.expiry_date
  if nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.expiry_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Expiry Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnftrimmed_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Fill Number
nse_nseix_orderentry_nnftrimmed_v1_12.fill_number = {}

-- Size: Fill Number
nse_nseix_orderentry_nnftrimmed_v1_12.fill_number.size = 4

-- Display: Fill Number
nse_nseix_orderentry_nnftrimmed_v1_12.fill_number.display = function(value)
  return "Fill Number: "..value
end

-- Dissect: Fill Number
nse_nseix_orderentry_nnftrimmed_v1_12.fill_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.fill_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.fill_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.fill_number, range, value, display)

  return offset + length, value
end

-- Fill Price
nse_nseix_orderentry_nnftrimmed_v1_12.fill_price = {}

-- Size: Fill Price
nse_nseix_orderentry_nnftrimmed_v1_12.fill_price.size = 4

-- Display: Fill Price
nse_nseix_orderentry_nnftrimmed_v1_12.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Dissect: Fill Price
nse_nseix_orderentry_nnftrimmed_v1_12.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.fill_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Quantity
nse_nseix_orderentry_nnftrimmed_v1_12.fill_quantity = {}

-- Size: Fill Quantity
nse_nseix_orderentry_nnftrimmed_v1_12.fill_quantity.size = 4

-- Display: Fill Quantity
nse_nseix_orderentry_nnftrimmed_v1_12.fill_quantity.display = function(value)
  return "Fill Quantity: "..value
end

-- Dissect: Fill Quantity
nse_nseix_orderentry_nnftrimmed_v1_12.fill_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.fill_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.fill_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.fill_quantity, range, value, display)

  return offset + length, value
end

-- Filler 1
nse_nseix_orderentry_nnftrimmed_v1_12.filler_1 = {}

-- Size: Filler 1
nse_nseix_orderentry_nnftrimmed_v1_12.filler_1.size = 1

-- Display: Filler 1
nse_nseix_orderentry_nnftrimmed_v1_12.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
nse_nseix_orderentry_nnftrimmed_v1_12.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.filler_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.filler_1, range, range:raw(), display)

  return offset + length, value
end

-- Filler 4
nse_nseix_orderentry_nnftrimmed_v1_12.filler_4 = {}

-- Size: Filler 4
nse_nseix_orderentry_nnftrimmed_v1_12.filler_4.size = 4

-- Display: Filler 4
nse_nseix_orderentry_nnftrimmed_v1_12.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
nse_nseix_orderentry_nnftrimmed_v1_12.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.filler_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.filler_4, range, range:raw(), display)

  return offset + length, value
end

-- Good Till Date Seconds
nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date_seconds = {}

-- Size: Good Till Date Seconds
nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date_seconds.size = 4

-- Dissect: Good Till Date Seconds
nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date_seconds.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date_seconds.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.good_till_date_seconds
  if nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.good_till_date_seconds_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("GoodTillDate: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnftrimmed_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Good Till Days
nse_nseix_orderentry_nnftrimmed_v1_12.good_till_days = {}

-- Size: Good Till Days
nse_nseix_orderentry_nnftrimmed_v1_12.good_till_days.size = 4

-- Display: Good Till Days
nse_nseix_orderentry_nnftrimmed_v1_12.good_till_days.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "GoodTillDate: Not Good Till Date"
  end

  return "GoodTillDate: "..value
end

-- Dissect: Good Till Days
nse_nseix_orderentry_nnftrimmed_v1_12.good_till_days.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.good_till_days.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.good_till_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.good_till_days, range, value, display)

  return offset + length, value
end

-- Instrument Name
nse_nseix_orderentry_nnftrimmed_v1_12.instrument_name = {}

-- Size: Instrument Name
nse_nseix_orderentry_nnftrimmed_v1_12.instrument_name.size = 6

-- Display: Instrument Name
nse_nseix_orderentry_nnftrimmed_v1_12.instrument_name.display = function(value)
  return "Instrument Name: "..value
end

-- Dissect: Instrument Name
nse_nseix_orderentry_nnftrimmed_v1_12.instrument_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.instrument_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.instrument_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.instrument_name, range, value, display)

  return offset + length, value
end

-- Last Activity Reference
nse_nseix_orderentry_nnftrimmed_v1_12.last_activity_reference = {}

-- Size: Last Activity Reference
nse_nseix_orderentry_nnftrimmed_v1_12.last_activity_reference.size = 8

-- Display: Last Activity Reference
nse_nseix_orderentry_nnftrimmed_v1_12.last_activity_reference.display = function(value)
  return "Last Activity Reference: "..value
end

-- Dissect: Last Activity Reference
nse_nseix_orderentry_nnftrimmed_v1_12.last_activity_reference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.last_activity_reference.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.last_activity_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.last_activity_reference, range, value, display)

  return offset + length, value
end

-- Last Modified
nse_nseix_orderentry_nnftrimmed_v1_12.last_modified = {}

-- Size: Last Modified
nse_nseix_orderentry_nnftrimmed_v1_12.last_modified.size = 4

-- Dissect: Last Modified
nse_nseix_orderentry_nnftrimmed_v1_12.last_modified.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.last_modified.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.last_modified
  if nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.last_modified_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Modified: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnftrimmed_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Log Time
nse_nseix_orderentry_nnftrimmed_v1_12.log_time = {}

-- Size: Log Time
nse_nseix_orderentry_nnftrimmed_v1_12.log_time.size = 4

-- Dissect: Log Time
nse_nseix_orderentry_nnftrimmed_v1_12.log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.log_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.log_time
  if nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.log_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Log Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnftrimmed_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Modified Cancelled By
nse_nseix_orderentry_nnftrimmed_v1_12.modified_cancelled_by = {}

-- Size: Modified Cancelled By
nse_nseix_orderentry_nnftrimmed_v1_12.modified_cancelled_by.size = 1

-- Display: Modified Cancelled By
nse_nseix_orderentry_nnftrimmed_v1_12.modified_cancelled_by.labels = {
  ["T"] = "Modified Cancelled By: Trader (T)",
  ["B"] = "Modified Cancelled By: Branch Manager (B)",
  ["M"] = "Modified Cancelled By: Corporate Manager (M)",
  ["C"] = "Modified Cancelled By: Exchange (C)",
}

nse_nseix_orderentry_nnftrimmed_v1_12.modified_cancelled_by.display = function(value)
  return nse_nseix_orderentry_nnftrimmed_v1_12.modified_cancelled_by.labels[value] or "Modified Cancelled By: Unknown("..value..")"
end

-- Dissect: Modified Cancelled By
nse_nseix_orderentry_nnftrimmed_v1_12.modified_cancelled_by.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.modified_cancelled_by.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.modified_cancelled_by.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.modified_cancelled_by, range, value, display)

  return offset + length, value
end

-- Nnf Field
nse_nseix_orderentry_nnftrimmed_v1_12.nnf_field = {}

-- Size: Nnf Field
nse_nseix_orderentry_nnftrimmed_v1_12.nnf_field.size = 8

-- Display: Nnf Field
nse_nseix_orderentry_nnftrimmed_v1_12.nnf_field.display = function(value)
  return "Nnf Field: "..string.format("%.0f", value)
end

-- Dissect: Nnf Field
nse_nseix_orderentry_nnftrimmed_v1_12.nnf_field.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.nnf_field.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.nnf_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.nnf_field, range, value, display)

  return offset + length, value
end

-- Open Close
nse_nseix_orderentry_nnftrimmed_v1_12.open_close = {}

-- Size: Open Close
nse_nseix_orderentry_nnftrimmed_v1_12.open_close.size = 1

-- Display: Open Close
nse_nseix_orderentry_nnftrimmed_v1_12.open_close.labels = {
  ["O"] = "Open Close: Open (O)",
  ["C"] = "Open Close: Close (C)",
}

nse_nseix_orderentry_nnftrimmed_v1_12.open_close.display = function(value)
  return nse_nseix_orderentry_nnftrimmed_v1_12.open_close.labels[value] or "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
nse_nseix_orderentry_nnftrimmed_v1_12.open_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.open_close, range, value, display)

  return offset + length, value
end

-- Option Type
nse_nseix_orderentry_nnftrimmed_v1_12.option_type = {}

-- Size: Option Type
nse_nseix_orderentry_nnftrimmed_v1_12.option_type.size = 2

-- Display: Option Type
nse_nseix_orderentry_nnftrimmed_v1_12.option_type.display = function(value)
  return "Option Type: "..value
end

-- Dissect: Option Type
nse_nseix_orderentry_nnftrimmed_v1_12.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.option_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Number
nse_nseix_orderentry_nnftrimmed_v1_12.order_number = {}

-- Size: Order Number
nse_nseix_orderentry_nnftrimmed_v1_12.order_number.size = 8

-- Display: Order Number
nse_nseix_orderentry_nnftrimmed_v1_12.order_number.display = function(value)
  return "Order Number: "..string.format("%.0f", value)
end

-- Dissect: Order Number
nse_nseix_orderentry_nnftrimmed_v1_12.order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.order_number, range, value, display)

  return offset + length, value
end

-- Original Volume
nse_nseix_orderentry_nnftrimmed_v1_12.original_volume = {}

-- Size: Original Volume
nse_nseix_orderentry_nnftrimmed_v1_12.original_volume.size = 4

-- Display: Original Volume
nse_nseix_orderentry_nnftrimmed_v1_12.original_volume.display = function(value)
  return "Original Volume: "..value
end

-- Dissect: Original Volume
nse_nseix_orderentry_nnftrimmed_v1_12.original_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.original_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.original_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.original_volume, range, value, display)

  return offset + length, value
end

-- Participant
nse_nseix_orderentry_nnftrimmed_v1_12.participant = {}

-- Size: Participant
nse_nseix_orderentry_nnftrimmed_v1_12.participant.size = 12

-- Display: Participant
nse_nseix_orderentry_nnftrimmed_v1_12.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
nse_nseix_orderentry_nnftrimmed_v1_12.participant.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.participant, range, value, display)

  return offset + length, value
end

-- Price
nse_nseix_orderentry_nnftrimmed_v1_12.price = {}

-- Size: Price
nse_nseix_orderentry_nnftrimmed_v1_12.price.size = 4

-- Display: Price
nse_nseix_orderentry_nnftrimmed_v1_12.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nse_nseix_orderentry_nnftrimmed_v1_12.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.price, range, value, display)

  return offset + length, value
end

-- Pro Client Indicator
nse_nseix_orderentry_nnftrimmed_v1_12.pro_client_indicator = {}

-- Size: Pro Client Indicator
nse_nseix_orderentry_nnftrimmed_v1_12.pro_client_indicator.size = 2

-- Display: Pro Client Indicator
nse_nseix_orderentry_nnftrimmed_v1_12.pro_client_indicator.labels = {
  [1] = "Pro Client Indicator: Client Order (1)",
  [2] = "Pro Client Indicator: Broker Order (2)",
}

nse_nseix_orderentry_nnftrimmed_v1_12.pro_client_indicator.display = function(value)
  return nse_nseix_orderentry_nnftrimmed_v1_12.pro_client_indicator.labels[value] or "Pro Client Indicator: Unknown("..value..")"
end

-- Dissect: Pro Client Indicator
nse_nseix_orderentry_nnftrimmed_v1_12.pro_client_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.pro_client_indicator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.pro_client_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.pro_client_indicator, range, value, display)

  return offset + length, value
end

-- Reason Code
nse_nseix_orderentry_nnftrimmed_v1_12.reason_code = {}

-- Size: Reason Code
nse_nseix_orderentry_nnftrimmed_v1_12.reason_code.size = 2

-- Display: Reason Code
nse_nseix_orderentry_nnftrimmed_v1_12.reason_code.labels = {
  [2] = "Reason Code: Exercise (2)",
  [3] = "Reason Code: Position Liquidation (3)",
  [5] = "Reason Code: Security (5)",
  [6] = "Reason Code: Broker (6)",
  [7] = "Reason Code: Branch (7)",
  [8] = "Reason Code: User (8)",
  [9] = "Reason Code: Participant (9)",
  [10] = "Reason Code: Counter Party (10)",
  [11] = "Reason Code: Order Number (11)",
  [15] = "Reason Code: Auction Number (15)",
  [17] = "Reason Code: Price Freeze (17)",
  [18] = "Reason Code: Quantity Freeze (18)",
  [29] = "Reason Code: Invalid Expl (29)",
  [30] = "Reason Code: Exercise Mode Mismatch (30)",
  [31] = "Reason Code: Ex Pl Number (31)",
}

nse_nseix_orderentry_nnftrimmed_v1_12.reason_code.display = function(value)
  return nse_nseix_orderentry_nnftrimmed_v1_12.reason_code.labels[value] or "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
nse_nseix_orderentry_nnftrimmed_v1_12.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.reason_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Remaining Volume
nse_nseix_orderentry_nnftrimmed_v1_12.remaining_volume = {}

-- Size: Remaining Volume
nse_nseix_orderentry_nnftrimmed_v1_12.remaining_volume.size = 4

-- Display: Remaining Volume
nse_nseix_orderentry_nnftrimmed_v1_12.remaining_volume.display = function(value)
  return "Remaining Volume: "..value
end

-- Dissect: Remaining Volume
nse_nseix_orderentry_nnftrimmed_v1_12.remaining_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.remaining_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.remaining_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.remaining_volume, range, value, display)

  return offset + length, value
end

-- Reserved 1
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_1 = {}

-- Size: Reserved 1
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_1.size = 1

-- Display: Reserved 1
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 24
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_24 = {}

-- Size: Reserved 24
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_24.size = 24

-- Display: Reserved 24
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_24.display = function(value)
  return "Reserved 24: "..value
end

-- Dissect: Reserved 24
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_24.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_24.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_24.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reserved_24, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 52
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_52 = {}

-- Size: Reserved 52
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_52.size = 52

-- Display: Reserved 52
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_52.display = function(value)
  return "Reserved 52: "..value
end

-- Dissect: Reserved 52
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_52.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_52.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_52.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reserved_52, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 8
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_8 = {}

-- Size: Reserved 8
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_8.size = 8

-- Display: Reserved 8
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
nse_nseix_orderentry_nnftrimmed_v1_12.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Response Order Number
nse_nseix_orderentry_nnftrimmed_v1_12.response_order_number = {}

-- Size: Response Order Number
nse_nseix_orderentry_nnftrimmed_v1_12.response_order_number.size = 8

-- Display: Response Order Number
nse_nseix_orderentry_nnftrimmed_v1_12.response_order_number.display = function(value)
  return "Response Order Number: "..string.format("%.0f", value)
end

-- Dissect: Response Order Number
nse_nseix_orderentry_nnftrimmed_v1_12.response_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.response_order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.response_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.response_order_number, range, value, display)

  return offset + length, value
end

-- Second Filler 1
nse_nseix_orderentry_nnftrimmed_v1_12.second_filler_1 = {}

-- Size: Second Filler 1
nse_nseix_orderentry_nnftrimmed_v1_12.second_filler_1.size = 1

-- Display: Second Filler 1
nse_nseix_orderentry_nnftrimmed_v1_12.second_filler_1.display = function(value)
  return "Second Filler 1: "..value
end

-- Dissect: Second Filler 1
nse_nseix_orderentry_nnftrimmed_v1_12.second_filler_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.second_filler_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.second_filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.second_filler_1, range, range:raw(), display)

  return offset + length, value
end

-- Second Reserved 1
nse_nseix_orderentry_nnftrimmed_v1_12.second_reserved_1 = {}

-- Size: Second Reserved 1
nse_nseix_orderentry_nnftrimmed_v1_12.second_reserved_1.size = 1

-- Display: Second Reserved 1
nse_nseix_orderentry_nnftrimmed_v1_12.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
nse_nseix_orderentry_nnftrimmed_v1_12.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.second_reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Settlor
nse_nseix_orderentry_nnftrimmed_v1_12.settlor = {}

-- Size: Settlor
nse_nseix_orderentry_nnftrimmed_v1_12.settlor.size = 12

-- Display: Settlor
nse_nseix_orderentry_nnftrimmed_v1_12.settlor.display = function(value)
  return "Settlor: "..value
end

-- Dissect: Settlor
nse_nseix_orderentry_nnftrimmed_v1_12.settlor.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.settlor.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.settlor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.settlor, range, value, display)

  return offset + length, value
end

-- Strike Price
nse_nseix_orderentry_nnftrimmed_v1_12.strike_price = {}

-- Size: Strike Price
nse_nseix_orderentry_nnftrimmed_v1_12.strike_price.size = 4

-- Display: Strike Price
nse_nseix_orderentry_nnftrimmed_v1_12.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
nse_nseix_orderentry_nnftrimmed_v1_12.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.strike_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
nse_nseix_orderentry_nnftrimmed_v1_12.symbol = {}

-- Size: Symbol
nse_nseix_orderentry_nnftrimmed_v1_12.symbol.size = 10

-- Display: Symbol
nse_nseix_orderentry_nnftrimmed_v1_12.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nse_nseix_orderentry_nnftrimmed_v1_12.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.symbol, range, value, display)

  return offset + length, value
end

-- Time Stamp
nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp = {}

-- Size: Time Stamp
nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp.size = 8

-- Display: Time Stamp
nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp.display = function(value)
  return "Time Stamp: "..string.format("%.0f", value)
end

-- Dissect: Time Stamp
nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.time_stamp, range, value, display)

  return offset + length, value
end

-- Time Stamp 1
nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp_1 = {}

-- Size: Time Stamp 1
nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp_1.size = 8

-- Display: Time Stamp 1
nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp_1.display = function(value)
  return "Time Stamp 1: "..string.format("%.0f", value)
end

-- Dissect: Time Stamp 1
nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp_1.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.time_stamp_1, range, value, display)

  return offset + length, value
end

-- Timestamp 2 Char
nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_char = {}

-- Size: Timestamp 2 Char
nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_char.size = 1

-- Display: Timestamp 2 Char
nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_char.display = function(value)
  return "Timestamp 2 Char: "..value
end

-- Dissect: Timestamp 2 Char
nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_char.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.timestamp_2_char, range, value, display)

  return offset + length, value
end

-- Timestamp 2 Double
nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_double = {}

-- Size: Timestamp 2 Double
nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_double.size = 8

-- Display: Timestamp 2 Double
nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_double.display = function(value)
  return "Timestamp 2 Double: "..string.format("%.0f", value)
end

-- Dissect: Timestamp 2 Double
nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_double.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_double.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_double.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.timestamp_2_double, range, value, display)

  return offset + length, value
end

-- Token
nse_nseix_orderentry_nnftrimmed_v1_12.token = {}

-- Size: Token
nse_nseix_orderentry_nnftrimmed_v1_12.token.size = 4

-- Display: Token
nse_nseix_orderentry_nnftrimmed_v1_12.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nseix_orderentry_nnftrimmed_v1_12.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.token.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.token, range, value, display)

  return offset + length, value
end

-- Token No
nse_nseix_orderentry_nnftrimmed_v1_12.token_no = {}

-- Size: Token No
nse_nseix_orderentry_nnftrimmed_v1_12.token_no.size = 4

-- Display: Token No
nse_nseix_orderentry_nnftrimmed_v1_12.token_no.display = function(value)
  return "Token No: "..value
end

-- Dissect: Token No
nse_nseix_orderentry_nnftrimmed_v1_12.token_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.token_no.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.token_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.token_no, range, value, display)

  return offset + length, value
end

-- Total Volume Remaining
nse_nseix_orderentry_nnftrimmed_v1_12.total_volume_remaining = {}

-- Size: Total Volume Remaining
nse_nseix_orderentry_nnftrimmed_v1_12.total_volume_remaining.size = 4

-- Display: Total Volume Remaining
nse_nseix_orderentry_nnftrimmed_v1_12.total_volume_remaining.display = function(value)
  return "Total Volume Remaining: "..value
end

-- Dissect: Total Volume Remaining
nse_nseix_orderentry_nnftrimmed_v1_12.total_volume_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.total_volume_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.total_volume_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.total_volume_remaining, range, value, display)

  return offset + length, value
end

-- Trade Book Type
nse_nseix_orderentry_nnftrimmed_v1_12.trade_book_type = {}

-- Size: Trade Book Type
nse_nseix_orderentry_nnftrimmed_v1_12.trade_book_type.size = 1

-- Display: Trade Book Type
nse_nseix_orderentry_nnftrimmed_v1_12.trade_book_type.display = function(value)
  return "Trade Book Type: "..value
end

-- Dissect: Trade Book Type
nse_nseix_orderentry_nnftrimmed_v1_12.trade_book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.trade_book_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.trade_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.trade_book_type, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nseix_orderentry_nnftrimmed_v1_12.trader_id = {}

-- Size: Trader Id
nse_nseix_orderentry_nnftrimmed_v1_12.trader_id.size = 4

-- Display: Trader Id
nse_nseix_orderentry_nnftrimmed_v1_12.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nseix_orderentry_nnftrimmed_v1_12.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nseix_orderentry_nnftrimmed_v1_12.transaction_code = {}

-- Size: Transaction Code
nse_nseix_orderentry_nnftrimmed_v1_12.transaction_code.size = 2

-- Display: Transaction Code
nse_nseix_orderentry_nnftrimmed_v1_12.transaction_code.labels = {
  [20000] = "Transaction Code: Board Lot In Trimmed Message (20000)",
  [20040] = "Transaction Code: Order Modify Cancel Trimmed Message (20040)",
  [20060] = "Transaction Code: Order Modify Cancel Trimmed Message (20060)",
  [20070] = "Transaction Code: Order Modify Cancel Trimmed Message (20070)",
  [20012] = "Transaction Code: Order Response Trimmed Message (20012)",
  [20042] = "Transaction Code: Order Response Trimmed Message (20042)",
  [20072] = "Transaction Code: Order Response Trimmed Message (20072)",
  [20073] = "Transaction Code: Order Response Trimmed Message (20073)",
  [20074] = "Transaction Code: Order Response Trimmed Message (20074)",
  [20075] = "Transaction Code: Order Response Trimmed Message (20075)",
  [20231] = "Transaction Code: Order Response Trimmed Message (20231)",
  [20222] = "Transaction Code: Trade Confirmation Trimmed Message (20222)",
}

nse_nseix_orderentry_nnftrimmed_v1_12.transaction_code.display = function(value)
  return nse_nseix_orderentry_nnftrimmed_v1_12.transaction_code.labels[value] or "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nseix_orderentry_nnftrimmed_v1_12.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.transaction_code, range, value, display)

  return offset + length, value
end

-- User Id
nse_nseix_orderentry_nnftrimmed_v1_12.user_id = {}

-- Size: User Id
nse_nseix_orderentry_nnftrimmed_v1_12.user_id.size = 4

-- Display: User Id
nse_nseix_orderentry_nnftrimmed_v1_12.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
nse_nseix_orderentry_nnftrimmed_v1_12.user_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.user_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.user_id, range, value, display)

  return offset + length, value
end

-- Volume
nse_nseix_orderentry_nnftrimmed_v1_12.volume = {}

-- Size: Volume
nse_nseix_orderentry_nnftrimmed_v1_12.volume.size = 4

-- Display: Volume
nse_nseix_orderentry_nnftrimmed_v1_12.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nse_nseix_orderentry_nnftrimmed_v1_12.volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.volume, range, value, display)

  return offset + length, value
end

-- Volume Filled Today
nse_nseix_orderentry_nnftrimmed_v1_12.volume_filled_today = {}

-- Size: Volume Filled Today
nse_nseix_orderentry_nnftrimmed_v1_12.volume_filled_today.size = 4

-- Display: Volume Filled Today
nse_nseix_orderentry_nnftrimmed_v1_12.volume_filled_today.display = function(value)
  return "Volume Filled Today: "..value
end

-- Dissect: Volume Filled Today
nse_nseix_orderentry_nnftrimmed_v1_12.volume_filled_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnftrimmed_v1_12.volume_filled_today.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.volume_filled_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.volume_filled_today, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseIx OrderEntry NnfTrimmed 1.12
-----------------------------------------------------------------------

-- Additional Order Flags
nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags = {}

-- Size: Additional Order Flags
nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags.size = 1

-- Display: Additional Order Flags
nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Col flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Col"
  end
  -- Is Stpc flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Stpc"
  end
  -- Is Session Ind flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Session Ind"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Additional Order Flags
nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags.bits = function(range, value, packet, parent)

  -- Reserved Bit 1: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reserved_bit_1, range, value)

  -- Col: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.col, range, value)

  -- Reserved 34: 2 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reserved_34, range, value)

  -- Stpc: 1 Bit Enum with 2 values
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.stpc, range, value)

  -- Session Ind: 1 Bit Enum with 2 values
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.session_ind, range, value)

  -- Reserved 78: 2 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.reserved_78, range, value)
end

-- Dissect: Additional Order Flags
nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.additional_order_flags, range, display)

  if show.structs then
    nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Contract Desc Tr
nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr = {}

-- Size: Contract Desc Tr
nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr.size =
  nse_nseix_orderentry_nnftrimmed_v1_12.instrument_name.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.symbol.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.expiry_date.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.strike_price.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.option_type.size

-- Display: Contract Desc Tr
nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Desc Tr
nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Name: CHAR
  index, instrument_name = nse_nseix_orderentry_nnftrimmed_v1_12.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nseix_orderentry_nnftrimmed_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nseix_orderentry_nnftrimmed_v1_12.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nseix_orderentry_nnftrimmed_v1_12.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nseix_orderentry_nnftrimmed_v1_12.option_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Desc Tr
nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.contract_desc_tr, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr.fields(buffer, offset, packet, parent)
  end
end

-- Good Till Date
nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date = {}

-- Size: Good Till Date
nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date.size = 4

-- Dissect: Good Till Date
nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date.dissect = function(buffer, offset, packet, parent)
  local good_till_date_seconds = buffer(offset, 4):int()
  -- Dissect Good Till Date Seconds
  if good_till_date_seconds > 32767 then
    return nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date_seconds.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Good Till Days
  return nse_nseix_orderentry_nnftrimmed_v1_12.good_till_days.dissect(buffer, offset, packet, parent)
end

-- St Order Flags
nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags = {}

-- Size: St Order Flags
nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags.size = 2

-- Display: St Order Flags
nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Nlt Indc flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Nlt Indc"
  end
  -- Is Preclose flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Preclose"
  end
  -- Is Preopen flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Preopen"
  end
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
nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags.bits = function(range, value, packet, parent)

  -- Nlt Indc: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.nlt_indc, range, value)

  -- Preclose: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.preclose, range, value)

  -- Preopen: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.preopen, range, value)

  -- Frozen: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.frozen, range, value)

  -- Modified: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.modified, range, value)

  -- Traded: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.traded, range, value)

  -- Matched Ind: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.matched_ind, range, value)

  -- Mf: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.mf, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.aon, range, value)

  -- Ioc: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.ioc, range, value)

  -- Gtc: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.gtc, range, value)

  -- Day: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.day, range, value)

  -- Mit: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.mit, range, value)

  -- Sl: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.sl, range, value)

  -- Market: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.market, range, value)

  -- Ato: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.ato, range, value)
end

-- Dissect: St Order Flags
nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.st_order_flags, range, display)

  if show.structs then
    nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Confirmation Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.trade_confirmation_trimmed_message = {}

-- Size: Trade Confirmation Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.trade_confirmation_trimmed_message.size =
  nse_nseix_orderentry_nnftrimmed_v1_12.log_time.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.trader_id.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp_1.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_double.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.response_order_number.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.reserved_1.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.account_number.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.original_volume.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.remaining_volume.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume_remaining.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.price.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.fill_number.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.fill_quantity.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.fill_price.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.volume_filled_today.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.activity_type.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.activity_time.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.token.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.open_close.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.trade_book_type.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.participant.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.second_reserved_1.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.echo_back.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.last_activity_reference.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.reserved_52.size

-- Display: Trade Confirmation Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.trade_confirmation_trimmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Confirmation Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.trade_confirmation_trimmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Log Time: LONG
  index, log_time = nse_nseix_orderentry_nnftrimmed_v1_12.log_time.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_orderentry_nnftrimmed_v1_12.trader_id.dissect(buffer, index, packet, parent)

  -- Time Stamp: DOUBLE
  index, time_stamp = nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp.dissect(buffer, index, packet, parent)

  -- Time Stamp 1: DOUBLE
  index, time_stamp_1 = nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp_1.dissect(buffer, index, packet, parent)

  -- Timestamp 2 Double: DOUBLE
  index, timestamp_2_double = nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_double.dissect(buffer, index, packet, parent)

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseix_orderentry_nnftrimmed_v1_12.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnftrimmed_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnftrimmed_v1_12.reserved_1.size
  end

  -- Account Number: CHAR
  index, account_number = nse_nseix_orderentry_nnftrimmed_v1_12.account_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Original Volume: LONG
  index, original_volume = nse_nseix_orderentry_nnftrimmed_v1_12.original_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume: LONG
  index, remaining_volume = nse_nseix_orderentry_nnftrimmed_v1_12.remaining_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_orderentry_nnftrimmed_v1_12.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags.dissect(buffer, index, packet, parent)

  -- Good Till Date: Runtime Type with 2 branches
  index = nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_orderentry_nnftrimmed_v1_12.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Quantity: LONG
  index, fill_quantity = nse_nseix_orderentry_nnftrimmed_v1_12.fill_quantity.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_orderentry_nnftrimmed_v1_12.fill_price.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_orderentry_nnftrimmed_v1_12.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseix_orderentry_nnftrimmed_v1_12.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseix_orderentry_nnftrimmed_v1_12.activity_time.dissect(buffer, index, packet, parent)

  -- Token: LONG
  index, token = nse_nseix_orderentry_nnftrimmed_v1_12.token.dissect(buffer, index, packet, parent)

  -- Contract Desc Tr: Struct of 5 fields
  index, contract_desc_tr = nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_orderentry_nnftrimmed_v1_12.open_close.dissect(buffer, index, packet, parent)

  -- Trade Book Type: CHAR
  index, trade_book_type = nse_nseix_orderentry_nnftrimmed_v1_12.trade_book_type.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nseix_orderentry_nnftrimmed_v1_12.participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 6 fields
  index, additional_order_flags = nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_orderentry_nnftrimmed_v1_12.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnftrimmed_v1_12.second_reserved_1.size
  end

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_orderentry_nnftrimmed_v1_12.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_orderentry_nnftrimmed_v1_12.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnftrimmed_v1_12.reserved_52.size
  end

  return index
end

-- Dissect: Trade Confirmation Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.trade_confirmation_trimmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.trade_confirmation_trimmed_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnftrimmed_v1_12.trade_confirmation_trimmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnftrimmed_v1_12.trade_confirmation_trimmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnftrimmed_v1_12.trade_confirmation_trimmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Response Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.order_response_trimmed_message = {}

-- Size: Order Response Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.order_response_trimmed_message.size =
  nse_nseix_orderentry_nnftrimmed_v1_12.log_time.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.user_id.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.error_code.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp_1.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_char.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.modified_cancelled_by.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.reason_code.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.token_no.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.closeout_flag.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.reserved_1.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.order_number.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.account_number.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.book_type.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume_remaining.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.total_volume_remaining.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.volume.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.volume_filled_today.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.price.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.entry_date_time.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.last_modified.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.branch_id.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.trader_id.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.open_close.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.settlor.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.pro_client_indicator.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.second_reserved_1.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.filler_4.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.nnf_field.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.reserved_8.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.echo_back.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.last_activity_reference.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.reserved_52.size

-- Display: Order Response Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.order_response_trimmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Response Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.order_response_trimmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Log Time: LONG
  index, log_time = nse_nseix_orderentry_nnftrimmed_v1_12.log_time.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnftrimmed_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nseix_orderentry_nnftrimmed_v1_12.error_code.dissect(buffer, index, packet, parent)

  -- Time Stamp 1: DOUBLE
  index, time_stamp_1 = nse_nseix_orderentry_nnftrimmed_v1_12.time_stamp_1.dissect(buffer, index, packet, parent)

  -- Timestamp 2 Char: CHAR
  index, timestamp_2_char = nse_nseix_orderentry_nnftrimmed_v1_12.timestamp_2_char.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_orderentry_nnftrimmed_v1_12.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_orderentry_nnftrimmed_v1_12.reason_code.dissect(buffer, index, packet, parent)

  -- Token No: LONG
  index, token_no = nse_nseix_orderentry_nnftrimmed_v1_12.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc Tr: Struct of 5 fields
  index, contract_desc_tr = nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr.dissect(buffer, index, packet, parent)

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_orderentry_nnftrimmed_v1_12.closeout_flag.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnftrimmed_v1_12.reserved_1.size
  end

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_orderentry_nnftrimmed_v1_12.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_orderentry_nnftrimmed_v1_12.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_orderentry_nnftrimmed_v1_12.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_orderentry_nnftrimmed_v1_12.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_orderentry_nnftrimmed_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_orderentry_nnftrimmed_v1_12.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_orderentry_nnftrimmed_v1_12.price.dissect(buffer, index, packet, parent)

  -- Good Till Date: Runtime Type with 2 branches
  index = nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_orderentry_nnftrimmed_v1_12.entry_date_time.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_orderentry_nnftrimmed_v1_12.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_orderentry_nnftrimmed_v1_12.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_orderentry_nnftrimmed_v1_12.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnftrimmed_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_orderentry_nnftrimmed_v1_12.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_orderentry_nnftrimmed_v1_12.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_orderentry_nnftrimmed_v1_12.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 6 fields
  index, additional_order_flags = nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_orderentry_nnftrimmed_v1_12.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnftrimmed_v1_12.second_reserved_1.size
  end

  -- Filler 4: LONG
  if show.padding then
    index, filler_4 = nse_nseix_orderentry_nnftrimmed_v1_12.filler_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnftrimmed_v1_12.filler_4.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_orderentry_nnftrimmed_v1_12.nnf_field.dissect(buffer, index, packet, parent)

  -- Reserved 8: CHAR
  if show.padding then
    index, reserved_8 = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnftrimmed_v1_12.reserved_8.size
  end

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_orderentry_nnftrimmed_v1_12.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_orderentry_nnftrimmed_v1_12.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnftrimmed_v1_12.reserved_52.size
  end

  return index
end

-- Dissect: Order Response Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.order_response_trimmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.order_response_trimmed_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnftrimmed_v1_12.order_response_trimmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnftrimmed_v1_12.order_response_trimmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnftrimmed_v1_12.order_response_trimmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Cancel Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.order_modify_cancel_trimmed_message = {}

-- Size: Order Modify Cancel Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.order_modify_cancel_trimmed_message.size =
  nse_nseix_orderentry_nnftrimmed_v1_12.user_id.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.modified_cancelled_by.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.filler_1.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.token_no.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.order_number.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.account_number.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.book_type.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume_remaining.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.total_volume_remaining.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.volume.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.volume_filled_today.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.price.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.entry_date_time.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.last_modified.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.branch_id.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.trader_id.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.open_close.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.settlor.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.pro_client_indicator.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.second_filler_1.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.filler_4.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.nnf_field.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.echo_back.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.last_activity_reference.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.reserved_24.size

-- Display: Order Modify Cancel Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.order_modify_cancel_trimmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Cancel Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.order_modify_cancel_trimmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnftrimmed_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_orderentry_nnftrimmed_v1_12.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_orderentry_nnftrimmed_v1_12.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnftrimmed_v1_12.filler_1.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_orderentry_nnftrimmed_v1_12.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc Tr: Struct of 5 fields
  index, contract_desc_tr = nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_orderentry_nnftrimmed_v1_12.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_orderentry_nnftrimmed_v1_12.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_orderentry_nnftrimmed_v1_12.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_orderentry_nnftrimmed_v1_12.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_orderentry_nnftrimmed_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_orderentry_nnftrimmed_v1_12.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_orderentry_nnftrimmed_v1_12.price.dissect(buffer, index, packet, parent)

  -- Good Till Date: Runtime Type with 2 branches
  index = nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_orderentry_nnftrimmed_v1_12.entry_date_time.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_orderentry_nnftrimmed_v1_12.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_orderentry_nnftrimmed_v1_12.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_orderentry_nnftrimmed_v1_12.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnftrimmed_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_orderentry_nnftrimmed_v1_12.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_orderentry_nnftrimmed_v1_12.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_orderentry_nnftrimmed_v1_12.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 6 fields
  index, additional_order_flags = nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Second Filler 1: CHAR
  if show.padding then
    index, second_filler_1 = nse_nseix_orderentry_nnftrimmed_v1_12.second_filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnftrimmed_v1_12.second_filler_1.size
  end

  -- Filler 4: LONG
  if show.padding then
    index, filler_4 = nse_nseix_orderentry_nnftrimmed_v1_12.filler_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnftrimmed_v1_12.filler_4.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_orderentry_nnftrimmed_v1_12.nnf_field.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_orderentry_nnftrimmed_v1_12.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_orderentry_nnftrimmed_v1_12.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 24: CHAR
  if show.padding then
    index, reserved_24 = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_24.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnftrimmed_v1_12.reserved_24.size
  end

  return index
end

-- Dissect: Order Modify Cancel Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.order_modify_cancel_trimmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.order_modify_cancel_trimmed_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnftrimmed_v1_12.order_modify_cancel_trimmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnftrimmed_v1_12.order_modify_cancel_trimmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnftrimmed_v1_12.order_modify_cancel_trimmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Board Lot In Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.board_lot_in_trimmed_message = {}

-- Size: Board Lot In Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.board_lot_in_trimmed_message.size =
  nse_nseix_orderentry_nnftrimmed_v1_12.user_id.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.reason_code.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.token_no.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.account_number.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.book_type.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.volume.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.price.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.branch_id.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.trader_id.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.open_close.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.settlor.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.pro_client_indicator.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.reserved_1.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.filler_4.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.nnf_field.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.echo_back.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.last_activity_reference.size + 
  nse_nseix_orderentry_nnftrimmed_v1_12.reserved_24.size

-- Display: Board Lot In Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.board_lot_in_trimmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Board Lot In Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.board_lot_in_trimmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnftrimmed_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_orderentry_nnftrimmed_v1_12.reason_code.dissect(buffer, index, packet, parent)

  -- Token No: LONG
  index, token_no = nse_nseix_orderentry_nnftrimmed_v1_12.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc Tr: Struct of 5 fields
  index, contract_desc_tr = nse_nseix_orderentry_nnftrimmed_v1_12.contract_desc_tr.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_orderentry_nnftrimmed_v1_12.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_orderentry_nnftrimmed_v1_12.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_orderentry_nnftrimmed_v1_12.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_orderentry_nnftrimmed_v1_12.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_orderentry_nnftrimmed_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_orderentry_nnftrimmed_v1_12.price.dissect(buffer, index, packet, parent)

  -- Good Till Date: Runtime Type with 2 branches
  index = nse_nseix_orderentry_nnftrimmed_v1_12.good_till_date.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_orderentry_nnftrimmed_v1_12.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_orderentry_nnftrimmed_v1_12.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_orderentry_nnftrimmed_v1_12.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnftrimmed_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_orderentry_nnftrimmed_v1_12.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_orderentry_nnftrimmed_v1_12.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_orderentry_nnftrimmed_v1_12.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 6 fields
  index, additional_order_flags = nse_nseix_orderentry_nnftrimmed_v1_12.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnftrimmed_v1_12.reserved_1.size
  end

  -- Filler 4: LONG
  if show.padding then
    index, filler_4 = nse_nseix_orderentry_nnftrimmed_v1_12.filler_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnftrimmed_v1_12.filler_4.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_orderentry_nnftrimmed_v1_12.nnf_field.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_orderentry_nnftrimmed_v1_12.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_orderentry_nnftrimmed_v1_12.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 24: CHAR
  if show.padding then
    index, reserved_24 = nse_nseix_orderentry_nnftrimmed_v1_12.reserved_24.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnftrimmed_v1_12.reserved_24.size
  end

  return index
end

-- Dissect: Board Lot In Trimmed Message
nse_nseix_orderentry_nnftrimmed_v1_12.board_lot_in_trimmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.board_lot_in_trimmed_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnftrimmed_v1_12.board_lot_in_trimmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnftrimmed_v1_12.board_lot_in_trimmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnftrimmed_v1_12.board_lot_in_trimmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Payload
nse_nseix_orderentry_nnftrimmed_v1_12.message_payload = {}

-- Dispatch: Message Payload
nse_nseix_orderentry_nnftrimmed_v1_12.message_payload.dispatch = {
  [20000] = nse_nseix_orderentry_nnftrimmed_v1_12.board_lot_in_trimmed_message.dissect,
  [20040] = nse_nseix_orderentry_nnftrimmed_v1_12.order_modify_cancel_trimmed_message.dissect,
  [20060] = nse_nseix_orderentry_nnftrimmed_v1_12.order_modify_cancel_trimmed_message.dissect,
  [20070] = nse_nseix_orderentry_nnftrimmed_v1_12.order_modify_cancel_trimmed_message.dissect,
  [20012] = nse_nseix_orderentry_nnftrimmed_v1_12.order_response_trimmed_message.dissect,
  [20042] = nse_nseix_orderentry_nnftrimmed_v1_12.order_response_trimmed_message.dissect,
  [20072] = nse_nseix_orderentry_nnftrimmed_v1_12.order_response_trimmed_message.dissect,
  [20073] = nse_nseix_orderentry_nnftrimmed_v1_12.order_response_trimmed_message.dissect,
  [20074] = nse_nseix_orderentry_nnftrimmed_v1_12.order_response_trimmed_message.dissect,
  [20075] = nse_nseix_orderentry_nnftrimmed_v1_12.order_response_trimmed_message.dissect,
  [20231] = nse_nseix_orderentry_nnftrimmed_v1_12.order_response_trimmed_message.dissect,
  [20222] = nse_nseix_orderentry_nnftrimmed_v1_12.trade_confirmation_trimmed_message.dissect,
}

-- Dissect: Message Payload
nse_nseix_orderentry_nnftrimmed_v1_12.message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nseix_orderentry_nnftrimmed_v1_12.message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
nse_nseix_orderentry_nnftrimmed_v1_12.message = {}

-- Display: Message
nse_nseix_orderentry_nnftrimmed_v1_12.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nse_nseix_orderentry_nnftrimmed_v1_12.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nseix_orderentry_nnftrimmed_v1_12.transaction_code.dissect(buffer, index, packet, parent)

  -- Message Payload: Runtime Type with 4 branches
  index = nse_nseix_orderentry_nnftrimmed_v1_12.message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Message
nse_nseix_orderentry_nnftrimmed_v1_12.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12.fields.message, buffer(offset, 0))
    local decoded, failure = pcall(nse_nseix_orderentry_nnftrimmed_v1_12.message.fields, bounded, offset, packet, parent, size_of_message)
    if not decoded then
      undecoded(failure, parent, nse_nseix_orderentry_nnftrimmed_v1_12.experts.undecoded, "Message does not decode within its "..size_of_message.." bytes")
    end
    parent:set_len(size_of_message)
    local display = nse_nseix_orderentry_nnftrimmed_v1_12.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(nse_nseix_orderentry_nnftrimmed_v1_12.message.fields, bounded, offset, packet, parent, size_of_message)
    if not decoded then
      undecoded(failure, parent, nse_nseix_orderentry_nnftrimmed_v1_12.experts.undecoded, "Message does not decode within its "..size_of_message.." bytes")
    end

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
  local sizes = { [20000] = 151, [20040] = 179, [20060] = 179, [20070] = 179, [20012] = 233, [20042] = 233, [20072] = 233, [20073] = 233, [20074] = 233, [20075] = 233, [20231] = 233, [20222] = 223 }
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
nse_nseix_orderentry_nnftrimmed_v1_12.packet = {}

-- Verify required size of Tcp packet
nse_nseix_orderentry_nnftrimmed_v1_12.packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nseix_orderentry_nnftrimmed_v1_12.transaction_code.size
end

-- Dissect Packet
nse_nseix_orderentry_nnftrimmed_v1_12.packet.dissect = function(buffer, packet, parent)
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
      index = nse_nseix_orderentry_nnftrimmed_v1_12.message.dissect(frame, index, packet, parent, size_of_message)
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
function omi_nse_nseix_orderentry_nnftrimmed_v1_12.init()
end

-- Dissector for Nse NseIx OrderEntry NnfTrimmed 1.12
function omi_nse_nseix_orderentry_nnftrimmed_v1_12.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nseix_orderentry_nnftrimmed_v1_12.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nseix_orderentry_nnftrimmed_v1_12, buffer(), omi_nse_nseix_orderentry_nnftrimmed_v1_12.description, "("..buffer:len().." Bytes)")
  return nse_nseix_orderentry_nnftrimmed_v1_12.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
nse_nseix_orderentry_nnftrimmed_v1_12.packet.fingerprint = function(buffer)
  if buffer:len() < 2 then
    return false
  end

  local transaction_code = buffer(0, 2):int()

  -- Board Lot In Trimmed Message
  if transaction_code == 20000 then
    return true
  end

  -- Order Modify Cancel Trimmed Message
  if transaction_code == 20040 then
    return true
  end

  -- Order Modify Cancel Trimmed Message
  if transaction_code == 20060 then
    return true
  end

  -- Order Modify Cancel Trimmed Message
  if transaction_code == 20070 then
    return true
  end

  -- Order Response Trimmed Message
  if transaction_code == 20012 then
    return true
  end

  -- Order Response Trimmed Message
  if transaction_code == 20042 then
    return true
  end

  -- Order Response Trimmed Message
  if transaction_code == 20072 then
    return true
  end

  -- Order Response Trimmed Message
  if transaction_code == 20073 then
    return true
  end

  -- Order Response Trimmed Message
  if transaction_code == 20074 then
    return true
  end

  -- Order Response Trimmed Message
  if transaction_code == 20075 then
    return true
  end

  -- Order Response Trimmed Message
  if transaction_code == 20231 then
    return true
  end

  -- Trade Confirmation Trimmed Message
  if transaction_code == 20222 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseIx OrderEntry NnfTrimmed 1.12 (Tcp)
local function omi_nse_nseix_orderentry_nnftrimmed_v1_12_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nseix_orderentry_nnftrimmed_v1_12.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not nse_nseix_orderentry_nnftrimmed_v1_12.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nseix_orderentry_nnftrimmed_v1_12
  omi_nse_nseix_orderentry_nnftrimmed_v1_12.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nse NseIx OrderEntry NnfTrimmed 1.12
omi_nse_nseix_orderentry_nnftrimmed_v1_12:register_heuristic("tcp", omi_nse_nseix_orderentry_nnftrimmed_v1_12_tcp_heuristic)

-- Register Nse NseIx OrderEntry NnfTrimmed 1.12 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nse_nseix_orderentry_nnftrimmed_v1_12)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 1.12
--   Date: Wednesday, October 1, 2025
--   Specification: NSEIFSC_Trimmed_NNF_PROTOCOL_20260925143827.pdf
--
-- Script:
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
--   https://patents.google.com/patent/US12101388B2/en
--   https://patents.google.com/patent/US20240419416A1/en
--   https://patents.google.com/patent/US20260368281A1/en
--
-----------------------------------------------------------------------
