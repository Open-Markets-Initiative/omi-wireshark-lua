-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseIx OrderEntry Nnf 1.12 Protocol
local omi_nse_nseix_orderentry_nnf_v1_12 = Proto("Omi.Nse.NseIx.OrderEntry.Nnf.v1.12", "Nse NseIx OrderEntry Nnf 1.12")

-- Protocol table
local nse_nseix_orderentry_nnf_v1_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseIx OrderEntry Nnf 1.12 Fields
omi_nse_nseix_orderentry_nnf_v1_12.fields.account_number = ProtoField.new("Account Number", "nse.nseix.orderentry.nnf.v1.12.accountnumber", ftypes.STRING, nil, nil, nil, "Account number or client code")
omi_nse_nseix_orderentry_nnf_v1_12.fields.account_number_1 = ProtoField.new("Account Number 1", "nse.nseix.orderentry.nnf.v1.12.accountnumber1", ftypes.STRING, nil, nil, nil, "Account number the order is for")
omi_nse_nseix_orderentry_nnf_v1_12.fields.action_code = ProtoField.new("Action Code", "nse.nseix.orderentry.nnf.v1.12.actioncode", ftypes.STRING, nil, nil, nil, "Action code indicating the action taken")
omi_nse_nseix_orderentry_nnf_v1_12.fields.activity_time = ProtoField.new("Activity Time", "nse.nseix.orderentry.nnf.v1.12.activitytime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the activity took place")
omi_nse_nseix_orderentry_nnf_v1_12.fields.activity_time_utc = ProtoField.new("Activity Time", "nse.nseix.orderentry.nnf.v1.12.activitytime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the activity took place")
omi_nse_nseix_orderentry_nnf_v1_12.fields.activity_type = ProtoField.new("Activity Type", "nse.nseix.orderentry.nnf.v1.12.activitytype", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.additional_order_flags = ProtoField.new("Additional Order Flags", "nse.nseix.orderentry.nnf.v1.12.additionalorderflags", ftypes.STRING, nil, nil, nil, "Further terms attached to the order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.alpha_char = ProtoField.new("Alpha Char", "nse.nseix.orderentry.nnf.v1.12.alphachar", ftypes.STRING, nil, nil, nil, "First two characters of Symbol when the message carries one")
omi_nse_nseix_orderentry_nnf_v1_12.fields.aon = ProtoField.new("Aon", "nse.nseix.orderentry.nnf.v1.12.aon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100, "Eligible for all or none orders")
omi_nse_nseix_orderentry_nnf_v1_12.fields.ato = ProtoField.new("Ato", "nse.nseix.orderentry.nnf.v1.12.ato", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Market order in the pre open or pre close session")
omi_nse_nseix_orderentry_nnf_v1_12.fields.auction = ProtoField.new("Auction", "nse.nseix.orderentry.nnf.v1.12.auction", ftypes.INT16, nil, nil, nil, "Status of the auction market")
omi_nse_nseix_orderentry_nnf_v1_12.fields.auction_market = ProtoField.new("Auction Market", "nse.nseix.orderentry.nnf.v1.12.auctionmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000, "Eligible for the auction market")
omi_nse_nseix_orderentry_nnf_v1_12.fields.batch_2_start_time = ProtoField.new("Batch 2 Start Time", "nse.nseix.orderentry.nnf.v1.12.batch2starttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Start time of the second batch, zero on the request")
omi_nse_nseix_orderentry_nnf_v1_12.fields.batch_2_start_time_utc = ProtoField.new("Batch 2 Start Time", "nse.nseix.orderentry.nnf.v1.12.batch2starttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Start time of the second batch, zero on the request")
omi_nse_nseix_orderentry_nnf_v1_12.fields.board_lot_quantity = ProtoField.new("Board Lot Quantity", "nse.nseix.orderentry.nnf.v1.12.boardlotquantity", ftypes.INT32, nil, nil, nil, "Regular lot quantity")
omi_nse_nseix_orderentry_nnf_v1_12.fields.book = ProtoField.new("Book", "nse.nseix.orderentry.nnf.v1.12.book", ftypes.INT16, nil, nil, nil, "Book inquired on, currently only the regular lot book")
omi_nse_nseix_orderentry_nnf_v1_12.fields.book_type = ProtoField.new("Book Type", "nse.nseix.orderentry.nnf.v1.12.booktype", ftypes.INT16, nil, nil, nil, "Book type of the counter order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.book_type_1 = ProtoField.new("Book Type 1", "nse.nseix.orderentry.nnf.v1.12.booktype1", ftypes.INT16, nil, nil, nil, "Book the order belongs to")
omi_nse_nseix_orderentry_nnf_v1_12.fields.books_merged = ProtoField.new("Books Merged", "nse.nseix.orderentry.nnf.v1.12.booksmerged", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Whether the books are merged")
omi_nse_nseix_orderentry_nnf_v1_12.fields.box_id = ProtoField.new("Box Id", "nse.nseix.orderentry.nnf.v1.12.boxid", ftypes.INT16, nil, nil, nil, "Exchange provided box Id to be used for this connection")
omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_buy_value_limit = ProtoField.new("Branch Buy Value Limit", "nse.nseix.orderentry.nnf.v1.12.branchbuyvaluelimit", ftypes.DOUBLE, nil, nil, nil, "Total buy order limit of the user's branch")
omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_id = ProtoField.new("Branch Id", "nse.nseix.orderentry.nnf.v1.12.branchid", ftypes.INT16, nil, nil, nil, "Branch Id of the trading member")
omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_id_1 = ProtoField.new("Branch Id 1", "nse.nseix.orderentry.nnf.v1.12.branchid1", ftypes.INT16, nil, nil, nil, "Branch Id of the trading member")
omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_limits = ProtoField.new("Branch Limits", "nse.nseix.orderentry.nnf.v1.12.branchlimits", ftypes.STRING, nil, nil, nil, "BRANCH_LIMITS")
omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_order_value_limit_body = ProtoField.new("Branch Order Value Limit Body", "nse.nseix.orderentry.nnf.v1.12.branchordervaluelimitbody", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_sell_value_limit = ProtoField.new("Branch Sell Value Limit", "nse.nseix.orderentry.nnf.v1.12.branchsellvaluelimit", ftypes.DOUBLE, nil, nil, nil, "Total sell order limit of the user's branch")
omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_used_buy_value_limit = ProtoField.new("Branch Used Buy Value Limit", "nse.nseix.orderentry.nnf.v1.12.branchusedbuyvaluelimit", ftypes.DOUBLE, nil, nil, nil, "Buy order limit used by the user's branch")
omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_used_sell_value_limit = ProtoField.new("Branch Used Sell Value Limit", "nse.nseix.orderentry.nnf.v1.12.branchusedsellvaluelimit", ftypes.DOUBLE, nil, nil, nil, "Sell order limit used by the user's branch")
omi_nse_nseix_orderentry_nnf_v1_12.fields.broad_cast_message = ProtoField.new("Broad Cast Message", "nse.nseix.orderentry.nnf.v1.12.broadcastmessage", ftypes.STRING, nil, nil, nil, "Text of the message")
omi_nse_nseix_orderentry_nnf_v1_12.fields.broad_cast_message_length = ProtoField.new("Broad Cast Message Length", "nse.nseix.orderentry.nnf.v1.12.broadcastmessagelength", ftypes.INT16, nil, nil, nil, "Length of the message text")
omi_nse_nseix_orderentry_nnf_v1_12.fields.broker_id = ProtoField.new("Broker Id", "nse.nseix.orderentry.nnf.v1.12.brokerid", ftypes.STRING, nil, nil, nil, "Trading member Id")
omi_nse_nseix_orderentry_nnf_v1_12.fields.broker_id_1 = ProtoField.new("Broker Id 1", "nse.nseix.orderentry.nnf.v1.12.brokerid1", ftypes.STRING, nil, nil, nil, "Trading member Id")
omi_nse_nseix_orderentry_nnf_v1_12.fields.broker_name = ProtoField.new("Broker Name", "nse.nseix.orderentry.nnf.v1.12.brokername", ftypes.STRING, nil, nil, nil, "Name of the trading member")
omi_nse_nseix_orderentry_nnf_v1_12.fields.broker_number = ProtoField.new("Broker Number", "nse.nseix.orderentry.nnf.v1.12.brokernumber", ftypes.STRING, nil, nil, nil, "Trading member Id, blank")
omi_nse_nseix_orderentry_nnf_v1_12.fields.broker_status = ProtoField.new("Broker Status", "nse.nseix.orderentry.nnf.v1.12.brokerstatus", ftypes.STRING, nil, nil, nil, "Status of the trading member, blank on the request")
omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_account_number = ProtoField.new("Buy Account Number", "nse.nseix.orderentry.nnf.v1.12.buyaccountnumber", ftypes.STRING, nil, nil, nil, "Account number of the buy side")
omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_broker_id = ProtoField.new("Buy Broker Id", "nse.nseix.orderentry.nnf.v1.12.buybrokerid", ftypes.STRING, nil, nil, nil, "Trading member Id of the buy side")
omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_giveup_flag = ProtoField.new("Buy Giveup Flag", "nse.nseix.orderentry.nnf.v1.12.buygiveupflag", ftypes.STRING, nil, nil, nil, "Give up flag of the buy side")
omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_open_close = ProtoField.new("Buy Open Close", "nse.nseix.orderentry.nnf.v1.12.buyopenclose", ftypes.STRING, nil, nil, nil, "Open or close indicator of the buy trade")
omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_participant = ProtoField.new("Buy Participant", "nse.nseix.orderentry.nnf.v1.12.buyparticipant", ftypes.STRING, nil, nil, nil, "Participant Id of the buy side")
omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_sell = ProtoField.new("Buy Sell", "nse.nseix.orderentry.nnf.v1.12.buysell", ftypes.INT16, nil, nil, nil, "Whether the order is a buy or a sell")
omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_sell_1 = ProtoField.new("Buy Sell 1", "nse.nseix.orderentry.nnf.v1.12.buysell1", ftypes.INT16, nil, nil, nil, "Whether the first leg is a buy or a sell")
omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_sell_2 = ProtoField.new("Buy Sell 2", "nse.nseix.orderentry.nnf.v1.12.buysell2", ftypes.INT16, nil, nil, nil, "Whether the leg is a buy or a sell")
omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nse.nseix.orderentry.nnf.v1.12.buysellindicator", ftypes.INT16, nil, nil, nil, "Whether the order is a buy or a sell")
omi_nse_nseix_orderentry_nnf_v1_12.fields.c_filler = ProtoField.new("C Filler", "nse.nseix.orderentry.nnf.v1.12.cfiller", ftypes.STRING, nil, nil, nil, "Filler")
omi_nse_nseix_orderentry_nnf_v1_12.fields.c_ord_filler = ProtoField.new("C Ord Filler", "nse.nseix.orderentry.nnf.v1.12.cordfiller", ftypes.STRING, nil, nil, nil, "Filler")
omi_nse_nseix_orderentry_nnf_v1_12.fields.ca_level = ProtoField.new("Ca Level", "nse.nseix.orderentry.nnf.v1.12.calevel", ftypes.INT16, nil, nil, nil, "Corporate action level")
omi_nse_nseix_orderentry_nnf_v1_12.fields.ca_level_1 = ProtoField.new("Ca Level 1", "nse.nseix.orderentry.nnf.v1.12.calevel1", ftypes.INT16, nil, nil, nil, "Corporate action level of the first leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.ca_level_2 = ProtoField.new("Ca Level 2", "nse.nseix.orderentry.nnf.v1.12.calevel2", ftypes.INT16, nil, nil, nil, "Corporate action level of the second leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.chg_open_interest = ProtoField.new("Chg Open Interest", "nse.nseix.orderentry.nnf.v1.12.chgopeninterest", ftypes.INT32, nil, nil, nil, "Change in open interest")
omi_nse_nseix_orderentry_nnf_v1_12.fields.clearing_status = ProtoField.new("Clearing Status", "nse.nseix.orderentry.nnf.v1.12.clearingstatus", ftypes.STRING, nil, nil, nil, "Clearing status of the trading member")
omi_nse_nseix_orderentry_nnf_v1_12.fields.closeout_flag = ProtoField.new("Closeout Flag", "nse.nseix.orderentry.nnf.v1.12.closeoutflag", ftypes.STRING, nil, nil, nil, "Whether the order closes out a position of a broker in closeout")
omi_nse_nseix_orderentry_nnf_v1_12.fields.closing_price = ProtoField.new("Closing Price", "nse.nseix.orderentry.nnf.v1.12.closingprice", ftypes.INT32)
omi_nse_nseix_orderentry_nnf_v1_12.fields.col = ProtoField.new("Col", "nse.nseix.orderentry.nnf.v1.12.col", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "Cancel on logoff")
omi_nse_nseix_orderentry_nnf_v1_12.fields.col_user_bit = ProtoField.new("Col User Bit", "nse.nseix.orderentry.nnf.v1.12.coluserbit", ftypes.STRING, nil, nil, nil, "Cancel on logout status to be set")
omi_nse_nseix_orderentry_nnf_v1_12.fields.colour = ProtoField.new("Colour", "nse.nseix.orderentry.nnf.v1.12.colour", ftypes.STRING, nil, nil, nil, "Colour, blank on the request")
omi_nse_nseix_orderentry_nnf_v1_12.fields.competitor_period = ProtoField.new("Competitor Period", "nse.nseix.orderentry.nnf.v1.12.competitorperiod", ftypes.INT16, nil, nil, nil, "Default competitor period for an auction")
omi_nse_nseix_orderentry_nnf_v1_12.fields.competitor_period_1 = ProtoField.new("Competitor Period 1", "nse.nseix.orderentry.nnf.v1.12.competitorperiod1", ftypes.INT16, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.contract_desc = ProtoField.new("Contract Desc", "nse.nseix.orderentry.nnf.v1.12.contractdesc", ftypes.STRING, nil, nil, nil, "CONTRACT_DESC")
omi_nse_nseix_orderentry_nnf_v1_12.fields.counter_broker_id = ProtoField.new("Counter Broker Id", "nse.nseix.orderentry.nnf.v1.12.counterbrokerid", ftypes.STRING, nil, nil, nil, "Trading member Id of the counter party")
omi_nse_nseix_orderentry_nnf_v1_12.fields.counter_order_mkt_type = ProtoField.new("Counter Order Mkt Type", "nse.nseix.orderentry.nnf.v1.12.counterordermkttype", ftypes.INT16, nil, nil, nil, "Market of the counter order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.counter_party_broker_id = ProtoField.new("Counter Party Broker Id", "nse.nseix.orderentry.nnf.v1.12.counterpartybrokerid", ftypes.STRING, nil, nil, nil, "Counter party trading member Id of a negotiated order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.counter_trader_order_number = ProtoField.new("Counter Trader Order Number", "nse.nseix.orderentry.nnf.v1.12.countertraderordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number of the counter order taking part in the trade")
omi_nse_nseix_orderentry_nnf_v1_12.fields.cryptographic_iv = ProtoField.new("Cryptographic Iv", "nse.nseix.orderentry.nnf.v1.12.cryptographiciv", ftypes.STRING, nil, nil, nil, "Initialization vector for encrypting and decrypting every message to the allocated gateway server")
omi_nse_nseix_orderentry_nnf_v1_12.fields.cryptographic_key = ProtoField.new("Cryptographic Key", "nse.nseix.orderentry.nnf.v1.12.cryptographickey", ftypes.STRING, nil, nil, nil, "Key encrypting and decrypting every message to the allocated gateway server")
omi_nse_nseix_orderentry_nnf_v1_12.fields.cumulative_quantity = ProtoField.new("Cumulative Quantity", "nse.nseix.orderentry.nnf.v1.12.cumulativequantity", ftypes.INT32, nil, nil, nil, "Cumulative quantity inquired on")
omi_nse_nseix_orderentry_nnf_v1_12.fields.data_payload = ProtoField.new("Data Payload", "nse.nseix.orderentry.nnf.v1.12.datapayload", ftypes.BYTES, nil, nil, nil, "Record body, opaque until the master change structures are transcribed")
omi_nse_nseix_orderentry_nnf_v1_12.fields.day = ProtoField.new("Day", "nse.nseix.orderentry.nnf.v1.12.day", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800, "Day order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.default_settlement_period_auction = ProtoField.new("Default Settlement Period Auction", "nse.nseix.orderentry.nnf.v1.12.defaultsettlementperiodauction", ftypes.INT16, nil, nil, nil, "Default settlement period for the auction market")
omi_nse_nseix_orderentry_nnf_v1_12.fields.default_settlement_period_normal = ProtoField.new("Default Settlement Period Normal", "nse.nseix.orderentry.nnf.v1.12.defaultsettlementperiodnormal", ftypes.INT16, nil, nil, nil, "Default settlement period for the normal market")
omi_nse_nseix_orderentry_nnf_v1_12.fields.default_settlement_period_spot = ProtoField.new("Default Settlement Period Spot", "nse.nseix.orderentry.nnf.v1.12.defaultsettlementperiodspot", ftypes.INT16, nil, nil, nil, "Default settlement period for the spot market")
omi_nse_nseix_orderentry_nnf_v1_12.fields.deleted = ProtoField.new("Deleted", "nse.nseix.orderentry.nnf.v1.12.deleted", ftypes.STRING, nil, nil, nil, "Whether the record is deleted")
omi_nse_nseix_orderentry_nnf_v1_12.fields.disclosed_quantity_percent_allowed = ProtoField.new("Disclosed Quantity Percent Allowed", "nse.nseix.orderentry.nnf.v1.12.disclosedquantitypercentallowed", ftypes.INT16, nil, nil, nil, "Minimum disclosed quantity percentage allowed")
omi_nse_nseix_orderentry_nnf_v1_12.fields.disclosed_vol_1 = ProtoField.new("Disclosed Vol 1", "nse.nseix.orderentry.nnf.v1.12.disclosedvol1", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.disclosed_vol_2 = ProtoField.new("Disclosed Vol 2", "nse.nseix.orderentry.nnf.v1.12.disclosedvol2", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.disclosed_vol_remaining_1 = ProtoField.new("Disclosed Vol Remaining 1", "nse.nseix.orderentry.nnf.v1.12.disclosedvolremaining1", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.disclosed_vol_remaining_2 = ProtoField.new("Disclosed Vol Remaining 2", "nse.nseix.orderentry.nnf.v1.12.disclosedvolremaining2", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.disclosed_volume = ProtoField.new("Disclosed Volume", "nse.nseix.orderentry.nnf.v1.12.disclosedvolume", ftypes.INT32, nil, nil, nil, "Quantity disclosed to the market")
omi_nse_nseix_orderentry_nnf_v1_12.fields.disclosed_volume_remaining = ProtoField.new("Disclosed Volume Remaining", "nse.nseix.orderentry.nnf.v1.12.disclosedvolumeremaining", ftypes.INT32, nil, nil, nil, "Disclosed volume remaining after the trades")
omi_nse_nseix_orderentry_nnf_v1_12.fields.download_payload = ProtoField.new("Download Payload", "nse.nseix.orderentry.nnf.v1.12.downloadpayload", ftypes.BYTES, nil, nil, nil, "Downloaded message body, any transaction code, opaque")
omi_nse_nseix_orderentry_nnf_v1_12.fields.echo_back = ProtoField.new("Echo Back", "nse.nseix.orderentry.nnf.v1.12.echoback", ftypes.STRING, nil, nil, nil, "Echo back field, carrying the algo Id in bytes 11 to 14")
omi_nse_nseix_orderentry_nnf_v1_12.fields.end_alpha_1 = ProtoField.new("End Alpha 1", "nse.nseix.orderentry.nnf.v1.12.endalpha1", ftypes.STRING, nil, nil, nil, "End of the alpha range")
omi_nse_nseix_orderentry_nnf_v1_12.fields.end_time = ProtoField.new("End Time", "nse.nseix.orderentry.nnf.v1.12.endtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the markets last closed")
omi_nse_nseix_orderentry_nnf_v1_12.fields.end_time_utc = ProtoField.new("End Time", "nse.nseix.orderentry.nnf.v1.12.endtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the markets last closed")
omi_nse_nseix_orderentry_nnf_v1_12.fields.entry_date_time = ProtoField.new("Entry Date Time", "nse.nseix.orderentry.nnf.v1.12.entrydatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the order entered the system")
omi_nse_nseix_orderentry_nnf_v1_12.fields.entry_date_time_utc = ProtoField.new("Entry Date Time", "nse.nseix.orderentry.nnf.v1.12.entrydatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the order entered the system")
omi_nse_nseix_orderentry_nnf_v1_12.fields.entry_date_time_1 = ProtoField.new("Entry Date Time 1", "nse.nseix.orderentry.nnf.v1.12.entrydatetime1", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the order entered the system")
omi_nse_nseix_orderentry_nnf_v1_12.fields.entry_date_time_1_utc = ProtoField.new("Entry Date Time 1", "nse.nseix.orderentry.nnf.v1.12.entrydatetime1.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the order entered the system")
omi_nse_nseix_orderentry_nnf_v1_12.fields.error_code = ProtoField.new("Error Code", "nse.nseix.orderentry.nnf.v1.12.errorcode", ftypes.INT16, nil, nil, nil, "Zero when the request succeeded, otherwise an Error Response follows")
omi_nse_nseix_orderentry_nnf_v1_12.fields.error_message = ProtoField.new("Error Message", "nse.nseix.orderentry.nnf.v1.12.errormessage", ftypes.STRING, nil, nil, nil, "Error message; see the List of Error Codes in the Appendix")
omi_nse_nseix_orderentry_nnf_v1_12.fields.error_response_body = ProtoField.new("Error Response Body", "nse.nseix.orderentry.nnf.v1.12.errorresponsebody", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.expiry_date = ProtoField.new("Expiry Date", "nse.nseix.orderentry.nnf.v1.12.expirydate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date the contract expires")
omi_nse_nseix_orderentry_nnf_v1_12.fields.expiry_date_utc = ProtoField.new("Expiry Date", "nse.nseix.orderentry.nnf.v1.12.expirydate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date the contract expires")
omi_nse_nseix_orderentry_nnf_v1_12.fields.expiry_date_1 = ProtoField.new("Expiry Date 1", "nse.nseix.orderentry.nnf.v1.12.expirydate1", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Expiry date of the first leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.expiry_date_1_utc = ProtoField.new("Expiry Date 1", "nse.nseix.orderentry.nnf.v1.12.expirydate1.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Expiry date of the first leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.expiry_date_2 = ProtoField.new("Expiry Date 2", "nse.nseix.orderentry.nnf.v1.12.expirydate2", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Expiry date of the second leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.expiry_date_2_utc = ProtoField.new("Expiry Date 2", "nse.nseix.orderentry.nnf.v1.12.expirydate2.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Expiry date of the second leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.fifth_reserved_1 = ProtoField.new("Fifth Reserved 1", "nse.nseix.orderentry.nnf.v1.12.fifthreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.fill_number = ProtoField.new("Fill Number", "nse.nseix.orderentry.nnf.v1.12.fillnumber", ftypes.INT32, nil, nil, nil, "Trade number")
omi_nse_nseix_orderentry_nnf_v1_12.fields.fill_price = ProtoField.new("Fill Price", "nse.nseix.orderentry.nnf.v1.12.fillprice", ftypes.INT32, nil, nil, nil, "Price at which the order traded")
omi_nse_nseix_orderentry_nnf_v1_12.fields.fill_quantity = ProtoField.new("Fill Quantity", "nse.nseix.orderentry.nnf.v1.12.fillquantity", ftypes.INT32, nil, nil, nil, "Traded volume")
omi_nse_nseix_orderentry_nnf_v1_12.fields.fill_volume = ProtoField.new("Fill Volume", "nse.nseix.orderentry.nnf.v1.12.fillvolume", ftypes.INT32, nil, nil, nil, "Quantity traded")
omi_nse_nseix_orderentry_nnf_v1_12.fields.filler = ProtoField.new("Filler", "nse.nseix.orderentry.nnf.v1.12.filler", ftypes.BYTES)
omi_nse_nseix_orderentry_nnf_v1_12.fields.filler_1 = ProtoField.new("Filler 1", "nse.nseix.orderentry.nnf.v1.12.filler1", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_orderentry_nnf_v1_12.fields.filler_116 = ProtoField.new("Filler 116", "nse.nseix.orderentry.nnf.v1.12.filler116", ftypes.BYTES, nil, nil, nil, "Sixteen filler bits carrying no meaning")
omi_nse_nseix_orderentry_nnf_v1_12.fields.filler_17 = ProtoField.new("Filler 17", "nse.nseix.orderentry.nnf.v1.12.filler17", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_orderentry_nnf_v1_12.fields.filler_18 = ProtoField.new("Filler 18", "nse.nseix.orderentry.nnf.v1.12.filler18", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_orderentry_nnf_v1_12.fields.filler_9 = ProtoField.new("Filler 9", "nse.nseix.orderentry.nnf.v1.12.filler9", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_orderentry_nnf_v1_12.fields.filler_options_1 = ProtoField.new("Filler Options 1", "nse.nseix.orderentry.nnf.v1.12.filleroptions1", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_orderentry_nnf_v1_12.fields.filler_y = ProtoField.new("Filler Y", "nse.nseix.orderentry.nnf.v1.12.fillery", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_orderentry_nnf_v1_12.fields.fillerx_1 = ProtoField.new("Fillerx 1", "nse.nseix.orderentry.nnf.v1.12.fillerx1", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_orderentry_nnf_v1_12.fields.fillerx_2 = ProtoField.new("Fillerx 2", "nse.nseix.orderentry.nnf.v1.12.fillerx2", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_orderentry_nnf_v1_12.fields.fillery_1 = ProtoField.new("Fillery 1", "nse.nseix.orderentry.nnf.v1.12.fillery1", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_orderentry_nnf_v1_12.fields.firm_name = ProtoField.new("Firm Name", "nse.nseix.orderentry.nnf.v1.12.firmname", ftypes.STRING, nil, nil, nil, "Name of the firm, blank")
omi_nse_nseix_orderentry_nnf_v1_12.fields.fourth_reserved_1 = ProtoField.new("Fourth Reserved 1", "nse.nseix.orderentry.nnf.v1.12.fourthreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.frozen = ProtoField.new("Frozen", "nse.nseix.orderentry.nnf.v1.12.frozen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "Order has gone for a freeze")
omi_nse_nseix_orderentry_nnf_v1_12.fields.give_up_trade = ProtoField.new("Give Up Trade", "nse.nseix.orderentry.nnf.v1.12.giveuptrade", ftypes.STRING, nil, nil, nil, "Give up flag of the trade")
omi_nse_nseix_orderentry_nnf_v1_12.fields.giveup = ProtoField.new("Giveup", "nse.nseix.orderentry.nnf.v1.12.giveup", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.giveup_flag = ProtoField.new("Giveup Flag", "nse.nseix.orderentry.nnf.v1.12.giveupflag", ftypes.STRING, nil, nil, nil, "Give up flag")
omi_nse_nseix_orderentry_nnf_v1_12.fields.giveup_flag_1 = ProtoField.new("Giveup Flag 1", "nse.nseix.orderentry.nnf.v1.12.giveupflag1", ftypes.STRING, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.giveup_flag_2 = ProtoField.new("Giveup Flag 2", "nse.nseix.orderentry.nnf.v1.12.giveupflag2", ftypes.STRING, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.good_till_date_1 = ProtoField.new("Good Till Date 1", "nse.nseix.orderentry.nnf.v1.12.goodtilldate1", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.good_till_date_seconds = ProtoField.new("GoodTillDate", "nse.nseix.orderentry.nnf.v1.12.goodtilldateseconds", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Good till date as an absolute date, in seconds since midnight January 1, 1980")
omi_nse_nseix_orderentry_nnf_v1_12.fields.good_till_date_seconds_utc = ProtoField.new("GoodTillDate", "nse.nseix.orderentry.nnf.v1.12.goodtilldateseconds.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Good till date as an absolute date, in seconds since midnight January 1, 1980")
omi_nse_nseix_orderentry_nnf_v1_12.fields.good_till_days = ProtoField.new("GoodTillDate", "nse.nseix.orderentry.nnf.v1.12.goodtilldays", ftypes.INT32, nil, nil, nil, "Good till date as a number of days, from two to the maximum days for GTC orders; zero when the order is not good till date")
omi_nse_nseix_orderentry_nnf_v1_12.fields.gtc = ProtoField.new("Gtc", "nse.nseix.orderentry.nnf.v1.12.gtc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400, "Good till cancelled order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.header_timestamp = ProtoField.new("Header Timestamp", "nse.nseix.orderentry.nnf.v1.12.headertimestamp", ftypes.STRING, nil, nil, nil, "Used at the host end; zero when sent to the host")
omi_nse_nseix_orderentry_nnf_v1_12.fields.high_price = ProtoField.new("High Price", "nse.nseix.orderentry.nnf.v1.12.highprice", ftypes.INT32, nil, nil, nil, "Highest trade price")
omi_nse_nseix_orderentry_nnf_v1_12.fields.high_price_diff = ProtoField.new("High Price Diff", "nse.nseix.orderentry.nnf.v1.12.highpricediff", ftypes.INT32, nil, nil, nil, "High price of the combination")
omi_nse_nseix_orderentry_nnf_v1_12.fields.host_switch_context = ProtoField.new("Host Switch Context", "nse.nseix.orderentry.nnf.v1.12.hostswitchcontext", ftypes.STRING, nil, nil, nil, "Host switch context, blank on the request")
omi_nse_nseix_orderentry_nnf_v1_12.fields.impact_cost = ProtoField.new("Impact Cost", "nse.nseix.orderentry.nnf.v1.12.impactcost", ftypes.INT32, nil, nil, nil, "Percentage markup over the ideal price of buying or selling the quantity")
omi_nse_nseix_orderentry_nnf_v1_12.fields.indicator = ProtoField.new("Indicator", "nse.nseix.orderentry.nnf.v1.12.indicator", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.initiated_by_control = ProtoField.new("Initiated By Control", "nse.nseix.orderentry.nnf.v1.12.initiatedbycontrol", ftypes.STRING, nil, nil, nil, "Whether Control initiated the approval")
omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_alpha_char = ProtoField.new("Inner Alpha Char", "nse.nseix.orderentry.nnf.v1.12.inneralphachar", ftypes.STRING, nil, nil, nil, "First two characters of Symbol when the record carries one")
omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_error_code = ProtoField.new("Inner Error Code", "nse.nseix.orderentry.nnf.v1.12.innererrorcode", ftypes.INT16, nil, nil, nil, "Zero when the record is valid")
omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_header = ProtoField.new("Inner Header", "nse.nseix.orderentry.nnf.v1.12.innerheader", ftypes.STRING, nil, nil, nil, "INNER_MESSAGE_HEADER")
omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_log_time = ProtoField.new("Inner Log Time", "nse.nseix.orderentry.nnf.v1.12.innerlogtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the message was generated by the trading system")
omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_log_time_utc = ProtoField.new("Inner Log Time", "nse.nseix.orderentry.nnf.v1.12.innerlogtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the message was generated by the trading system")
omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_message_length = ProtoField.new("Inner Message Length", "nse.nseix.orderentry.nnf.v1.12.innermessagelength", ftypes.INT16, nil, nil, nil, "Length of the record including the inner header")
omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_time_stamp_1 = ProtoField.new("Inner Time Stamp 1", "nse.nseix.orderentry.nnf.v1.12.innertimestamp1", ftypes.STRING, nil, nil, nil, "Time the record arrived at the trading system host")
omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_time_stamp_2 = ProtoField.new("Inner Time Stamp 2", "nse.nseix.orderentry.nnf.v1.12.innertimestamp2", ftypes.STRING, nil, nil, nil, "Number of the machine the record came from")
omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_timestamp = ProtoField.new("Inner Timestamp", "nse.nseix.orderentry.nnf.v1.12.innertimestamp", ftypes.STRING, nil, nil, nil, "Used at the host end")
omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_trader_id = ProtoField.new("Inner Trader Id", "nse.nseix.orderentry.nnf.v1.12.innertraderid", ftypes.INT32, nil, nil, nil, "User Id of the trader")
omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_transaction_code = ProtoField.new("Inner Transaction Code", "nse.nseix.orderentry.nnf.v1.12.innertransactioncode", ftypes.INT16, nil, nil, nil, "Type of record carried in the data region")
omi_nse_nseix_orderentry_nnf_v1_12.fields.instrument_name = ProtoField.new("Instrument Name", "nse.nseix.orderentry.nnf.v1.12.instrumentname", ftypes.STRING, nil, nil, nil, "Instrument the contract belongs to")
omi_nse_nseix_orderentry_nnf_v1_12.fields.instrument_name_1 = ProtoField.new("Instrument Name 1", "nse.nseix.orderentry.nnf.v1.12.instrumentname1", ftypes.STRING, nil, nil, nil, "Instrument name of the first leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.instrument_name_2 = ProtoField.new("Instrument Name 2", "nse.nseix.orderentry.nnf.v1.12.instrumentname2", ftypes.STRING, nil, nil, nil, "Instrument name of the second leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.instrument_user = ProtoField.new("Instrument User", "nse.nseix.orderentry.nnf.v1.12.instrumentuser", ftypes.STRING, nil, nil, nil, "INSTRUMENT_USER")
omi_nse_nseix_orderentry_nnf_v1_12.fields.ioc = ProtoField.new("Ioc", "nse.nseix.orderentry.nnf.v1.12.ioc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200, "Immediate or cancel order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.ip_address = ProtoField.new("Ip Address", "nse.nseix.orderentry.nnf.v1.12.ipaddress", ftypes.STRING, nil, nil, nil, "Ip address assigned by the exchange")
omi_nse_nseix_orderentry_nnf_v1_12.fields.key = ProtoField.new("Key", "nse.nseix.orderentry.nnf.v1.12.key", ftypes.STRING, nil, nil, nil, "Token number of the contract")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_activity_reference = ProtoField.new("Last Activity Reference", "nse.nseix.orderentry.nnf.v1.12.lastactivityreference", ftypes.INT64, nil, nil, nil, "Last activity reference received for the order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_modified = ProtoField.new("Last Modified", "nse.nseix.orderentry.nnf.v1.12.lastmodified", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Last modified time received on the last response for the order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_modified_utc = ProtoField.new("Last Modified", "nse.nseix.orderentry.nnf.v1.12.lastmodified.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last modified time received on the last response for the order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_modified_1 = ProtoField.new("Last Modified 1", "nse.nseix.orderentry.nnf.v1.12.lastmodified1", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the order was last modified")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_modified_1_utc = ProtoField.new("Last Modified 1", "nse.nseix.orderentry.nnf.v1.12.lastmodified1.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the order was last modified")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_modified_date_time = ProtoField.new("Last Modified Date Time", "nse.nseix.orderentry.nnf.v1.12.lastmodifieddatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time of the last activity on the order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_modified_date_time_utc = ProtoField.new("Last Modified Date Time", "nse.nseix.orderentry.nnf.v1.12.lastmodifieddatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time of the last activity on the order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_password_change_date = ProtoField.new("Last Password Change Date", "nse.nseix.orderentry.nnf.v1.12.lastpasswordchangedate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date the password was last changed")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_password_change_date_utc = ProtoField.new("Last Password Change Date", "nse.nseix.orderentry.nnf.v1.12.lastpasswordchangedate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date the password was last changed")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_trade_price_diff = ProtoField.new("Last Trade Price Diff", "nse.nseix.orderentry.nnf.v1.12.lasttradepricediff", ftypes.INT32, nil, nil, nil, "Last traded price of the combination")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_index_time = ProtoField.new("Last Update Index Time", "nse.nseix.orderentry.nnf.v1.12.lastupdateindextime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the index information was last updated")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_index_time_utc = ProtoField.new("Last Update Index Time", "nse.nseix.orderentry.nnf.v1.12.lastupdateindextime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the index information was last updated")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_instrument_time = ProtoField.new("Last Update Instrument Time", "nse.nseix.orderentry.nnf.v1.12.lastupdateinstrumenttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the instruments were last updated")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_instrument_time_utc = ProtoField.new("Last Update Instrument Time", "nse.nseix.orderentry.nnf.v1.12.lastupdateinstrumenttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the instruments were last updated")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_participant_time = ProtoField.new("Last Update Participant Time", "nse.nseix.orderentry.nnf.v1.12.lastupdateparticipanttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the participant information was last updated")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_participant_time_utc = ProtoField.new("Last Update Participant Time", "nse.nseix.orderentry.nnf.v1.12.lastupdateparticipanttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the participant information was last updated")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_portfolio_time = ProtoField.new("Last Update Portfolio Time", "nse.nseix.orderentry.nnf.v1.12.lastupdateportfoliotime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the portfolio was last updated")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_portfolio_time_utc = ProtoField.new("Last Update Portfolio Time", "nse.nseix.orderentry.nnf.v1.12.lastupdateportfoliotime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the portfolio was last updated")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_security_time = ProtoField.new("Last Update Security Time", "nse.nseix.orderentry.nnf.v1.12.lastupdatesecuritytime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the security information was last updated")
omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_security_time_utc = ProtoField.new("Last Update Security Time", "nse.nseix.orderentry.nnf.v1.12.lastupdatesecuritytime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the security information was last updated")
omi_nse_nseix_orderentry_nnf_v1_12.fields.local_database_data = ProtoField.new("Local Database Data", "nse.nseix.orderentry.nnf.v1.12.localdatabasedata", ftypes.STRING, nil, nil, nil, "Record body selected by Inner Transaction Code")
omi_nse_nseix_orderentry_nnf_v1_12.fields.log_time = ProtoField.new("Log Time", "nse.nseix.orderentry.nnf.v1.12.logtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the message was generated by the trading system")
omi_nse_nseix_orderentry_nnf_v1_12.fields.log_time_utc = ProtoField.new("Log Time", "nse.nseix.orderentry.nnf.v1.12.logtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the message was generated by the trading system")
omi_nse_nseix_orderentry_nnf_v1_12.fields.low_price = ProtoField.new("Low Price", "nse.nseix.orderentry.nnf.v1.12.lowprice", ftypes.INT32, nil, nil, nil, "Lowest trade price")
omi_nse_nseix_orderentry_nnf_v1_12.fields.low_price_diff = ProtoField.new("Low Price Diff", "nse.nseix.orderentry.nnf.v1.12.lowpricediff", ftypes.INT32, nil, nil, nil, "Low price of the combination")
omi_nse_nseix_orderentry_nnf_v1_12.fields.market = ProtoField.new("Market", "nse.nseix.orderentry.nnf.v1.12.market", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Market order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.market_index = ProtoField.new("Market Index", "nse.nseix.orderentry.nnf.v1.12.marketindex", ftypes.INT32, nil, nil, nil, "Set to a thousand and of no use")
omi_nse_nseix_orderentry_nnf_v1_12.fields.market_type = ProtoField.new("Market Type", "nse.nseix.orderentry.nnf.v1.12.markettype", ftypes.INT16, nil, nil, nil, "Market the contract trades in")
omi_nse_nseix_orderentry_nnf_v1_12.fields.matched_ind = ProtoField.new("Matched Ind", "nse.nseix.orderentry.nnf.v1.12.matchedind", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040, "Negotiated order has found a matching order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.maximum_gtc_days = ProtoField.new("Maximum Gtc Days", "nse.nseix.orderentry.nnf.v1.12.maximumgtcdays", ftypes.INT16, nil, nil, nil, "Maximum number of days a Gtc order may live")
omi_nse_nseix_orderentry_nnf_v1_12.fields.mba_inquiry_definition = ProtoField.new("Mba Inquiry Definition", "nse.nseix.orderentry.nnf.v1.12.mbainquirydefinition", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.mba_inquiry_result = ProtoField.new("Mba Inquiry Result", "nse.nseix.orderentry.nnf.v1.12.mbainquiryresult", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.member_type = ProtoField.new("Member Type", "nse.nseix.orderentry.nnf.v1.12.membertype", ftypes.INT16, nil, nil, nil, "Type of the trading member")
omi_nse_nseix_orderentry_nnf_v1_12.fields.message_buffer = ProtoField.new("Message Buffer", "nse.nseix.orderentry.nnf.v1.12.messagebuffer", ftypes.STRING, nil, nil, nil, "Text including the price, volume and counter member Id of the counter order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.message_download_data = ProtoField.new("Message Download Data", "nse.nseix.orderentry.nnf.v1.12.messagedownloaddata", ftypes.STRING, nil, nil, nil, "Downloaded message body selected by Inner Transaction Code")
omi_nse_nseix_orderentry_nnf_v1_12.fields.message_length = ProtoField.new("Message Length", "nse.nseix.orderentry.nnf.v1.12.messagelength", ftypes.INT16, nil, nil, nil, "Length of the entire message including the message header")
omi_nse_nseix_orderentry_nnf_v1_12.fields.message_type = ProtoField.new("Message Type", "nse.nseix.orderentry.nnf.v1.12.messagetype", ftypes.STRING, nil, nil, nil, "Selects the record carried")
omi_nse_nseix_orderentry_nnf_v1_12.fields.mf = ProtoField.new("Mf", "nse.nseix.orderentry.nnf.v1.12.mf", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080, "Minimum fill order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.min_fill_aon_1 = ProtoField.new("Min Fill Aon 1", "nse.nseix.orderentry.nnf.v1.12.minfillaon1", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.min_fill_aon_2 = ProtoField.new("Min Fill Aon 2", "nse.nseix.orderentry.nnf.v1.12.minfillaon2", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.minimum_fill = ProtoField.new("Minimum Fill", "nse.nseix.orderentry.nnf.v1.12.minimumfill", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Eligible for minimum fill orders")
omi_nse_nseix_orderentry_nnf_v1_12.fields.minimum_fill_aon_volume = ProtoField.new("Minimum Fill Aon Volume", "nse.nseix.orderentry.nnf.v1.12.minimumfillaonvolume", ftypes.INT32, nil, nil, nil, "Minimum quantity that must be filled")
omi_nse_nseix_orderentry_nnf_v1_12.fields.mit = ProtoField.new("Mit", "nse.nseix.orderentry.nnf.v1.12.mit", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000, "Market if touched order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.mkt = ProtoField.new("Mkt", "nse.nseix.orderentry.nnf.v1.12.mkt", ftypes.INT16, nil, nil, nil, "Market type, one for the normal market")
omi_nse_nseix_orderentry_nnf_v1_12.fields.mkt_replay = ProtoField.new("Mkt Replay", "nse.nseix.orderentry.nnf.v1.12.mktreplay", ftypes.DOUBLE, nil, nil, nil, "Market replay, zero when sending to the host")
omi_nse_nseix_orderentry_nnf_v1_12.fields.mkt_stats_data = ProtoField.new("Mkt Stats Data", "nse.nseix.orderentry.nnf.v1.12.mktstatsdata", ftypes.STRING, nil, nil, nil, "MKT_STATS_DATA")
omi_nse_nseix_orderentry_nnf_v1_12.fields.mkt_type = ProtoField.new("Mkt Type", "nse.nseix.orderentry.nnf.v1.12.mkttype", ftypes.STRING, nil, nil, nil, "Market the trade took place in")
omi_nse_nseix_orderentry_nnf_v1_12.fields.mod_cxl_by_1 = ProtoField.new("Mod Cxl By 1", "nse.nseix.orderentry.nnf.v1.12.modcxlby1", ftypes.STRING, nil, nil, nil, "Who modified or cancelled the order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.modified = ProtoField.new("Modified", "nse.nseix.orderentry.nnf.v1.12.modified", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "Order has been modified")
omi_nse_nseix_orderentry_nnf_v1_12.fields.modified_cancelled_by = ProtoField.new("Modified Cancelled By", "nse.nseix.orderentry.nnf.v1.12.modifiedcancelledby", ftypes.STRING, nil, nil, nil, "Who modified or cancelled the order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.ms_spd_leg_info = ProtoField.new("Ms Spd Leg Info", "nse.nseix.orderentry.nnf.v1.12.msspdleginfo", ftypes.STRING, nil, nil, nil, "MS_SPD_LEG_INFO")
omi_nse_nseix_orderentry_nnf_v1_12.fields.new_password = ProtoField.new("New Password", "nse.nseix.orderentry.nnf.v1.12.newpassword", ftypes.STRING, nil, nil, nil, "New password when the user is changing it")
omi_nse_nseix_orderentry_nnf_v1_12.fields.new_volume = ProtoField.new("New Volume", "nse.nseix.orderentry.nnf.v1.12.newvolume", ftypes.INT32, nil, nil, nil, "Zero on a trade confirmation, the modified trade quantity on a trade modification approval")
omi_nse_nseix_orderentry_nnf_v1_12.fields.nlt = ProtoField.new("Nlt", "nse.nseix.orderentry.nnf.v1.12.nlt", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200, "Eligible for negotiated large trades")
omi_nse_nseix_orderentry_nnf_v1_12.fields.nlt_indc = ProtoField.new("Nlt Indc", "nse.nseix.orderentry.nnf.v1.12.nltindc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "Order is a negotiated large trade order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.nnf_field = ProtoField.new("Nnf Field", "nse.nseix.orderentry.nnf.v1.12.nnffield", ftypes.DOUBLE, nil, nil, nil, "Fifteen digit Non Neat front end identifier supplied by the member")
omi_nse_nseix_orderentry_nnf_v1_12.fields.no_of_records = ProtoField.new("No Of Records", "nse.nseix.orderentry.nnf.v1.12.noofrecords", ftypes.INT16, nil, nil, nil, "Number of statistics records, at most three")
omi_nse_nseix_orderentry_nnf_v1_12.fields.normal = ProtoField.new("Normal", "nse.nseix.orderentry.nnf.v1.12.normal", ftypes.INT16, nil, nil, nil, "Status of the normal market")
omi_nse_nseix_orderentry_nnf_v1_12.fields.normal_market = ProtoField.new("Normal Market", "nse.nseix.orderentry.nnf.v1.12.normalmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Eligible for the normal market")
omi_nse_nseix_orderentry_nnf_v1_12.fields.num_of_contracts_trd = ProtoField.new("Num Of Contracts Trd", "nse.nseix.orderentry.nnf.v1.12.numofcontractstrd", ftypes.INT32, nil, nil, nil, "Total number of contracts traded")
omi_nse_nseix_orderentry_nnf_v1_12.fields.number_of_packets = ProtoField.new("Number Of Packets", "nse.nseix.orderentry.nnf.v1.12.numberofpackets", ftypes.INT32, nil, nil, nil, "Number of data packets sent in the bhavcopy")
omi_nse_nseix_orderentry_nnf_v1_12.fields.number_of_records = ProtoField.new("Number Of Records", "nse.nseix.orderentry.nnf.v1.12.numberofrecords", ftypes.INT16, nil, nil, nil, "Number of statistics records, at most six")
omi_nse_nseix_orderentry_nnf_v1_12.fields.oddlot = ProtoField.new("Oddlot", "nse.nseix.orderentry.nnf.v1.12.oddlot", ftypes.INT16, nil, nil, nil, "Status of the odd lot market")
omi_nse_nseix_orderentry_nnf_v1_12.fields.oddlot_market = ProtoField.new("Oddlot Market", "nse.nseix.orderentry.nnf.v1.12.oddlotmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Eligible for the odd lot market")
omi_nse_nseix_orderentry_nnf_v1_12.fields.old_account_number = ProtoField.new("Old Account Number", "nse.nseix.orderentry.nnf.v1.12.oldaccountnumber", ftypes.STRING, nil, nil, nil, "Previous account number")
omi_nse_nseix_orderentry_nnf_v1_12.fields.old_open_close = ProtoField.new("Old Open Close", "nse.nseix.orderentry.nnf.v1.12.oldopenclose", ftypes.STRING, nil, nil, nil, "Previous open or close indicator")
omi_nse_nseix_orderentry_nnf_v1_12.fields.old_participant = ProtoField.new("Old Participant", "nse.nseix.orderentry.nnf.v1.12.oldparticipant", ftypes.STRING, nil, nil, nil, "Previous participant")
omi_nse_nseix_orderentry_nnf_v1_12.fields.op_broker_id_1 = ProtoField.new("Op Broker Id 1", "nse.nseix.orderentry.nnf.v1.12.opbrokerid1", ftypes.STRING, nil, nil, nil, "Counter party trading member Id, not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.op_broker_id_2 = ProtoField.new("Op Broker Id 2", "nse.nseix.orderentry.nnf.v1.12.opbrokerid2", ftypes.STRING, nil, nil, nil, "Counter party trading member Id, not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.open_close = ProtoField.new("Open Close", "nse.nseix.orderentry.nnf.v1.12.openclose", ftypes.STRING, nil, nil, nil, "Whether the trade opens or closes a position")
omi_nse_nseix_orderentry_nnf_v1_12.fields.open_close_1 = ProtoField.new("Open Close 1", "nse.nseix.orderentry.nnf.v1.12.openclose1", ftypes.STRING, nil, nil, nil, "Whether the first leg opens or closes a position")
omi_nse_nseix_orderentry_nnf_v1_12.fields.open_close_2 = ProtoField.new("Open Close 2", "nse.nseix.orderentry.nnf.v1.12.openclose2", ftypes.STRING, nil, nil, nil, "Whether the leg opens or closes a position")
omi_nse_nseix_orderentry_nnf_v1_12.fields.open_interest = ProtoField.new("Open Interest", "nse.nseix.orderentry.nnf.v1.12.openinterest", ftypes.INT32)
omi_nse_nseix_orderentry_nnf_v1_12.fields.open_price = ProtoField.new("Open Price", "nse.nseix.orderentry.nnf.v1.12.openprice", ftypes.INT32)
omi_nse_nseix_orderentry_nnf_v1_12.fields.open_price_diff = ProtoField.new("Open Price Diff", "nse.nseix.orderentry.nnf.v1.12.openpricediff", ftypes.INT32, nil, nil, nil, "Opening price of the combination")
omi_nse_nseix_orderentry_nnf_v1_12.fields.option_type = ProtoField.new("Option Type", "nse.nseix.orderentry.nnf.v1.12.optiontype", ftypes.STRING, nil, nil, nil, "Whether the option is a call or a put")
omi_nse_nseix_orderentry_nnf_v1_12.fields.option_type_1 = ProtoField.new("Option Type 1", "nse.nseix.orderentry.nnf.v1.12.optiontype1", ftypes.STRING, nil, nil, nil, "Option type of the first leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.option_type_2 = ProtoField.new("Option Type 2", "nse.nseix.orderentry.nnf.v1.12.optiontype2", ftypes.STRING, nil, nil, nil, "Option type of the second leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.ord_qty_buff = ProtoField.new("Ord Qty Buff", "nse.nseix.orderentry.nnf.v1.12.ordqtybuff", ftypes.DOUBLE, nil, nil, nil, "Maximum order quantity the user may enter")
omi_nse_nseix_orderentry_nnf_v1_12.fields.ord_val_buff = ProtoField.new("Ord Val Buff", "nse.nseix.orderentry.nnf.v1.12.ordvalbuff", ftypes.DOUBLE, nil, nil, nil, "Maximum order value the user may enter")
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_entry_body = ProtoField.new("Order Entry Body", "nse.nseix.orderentry.nnf.v1.12.orderentrybody", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_number = ProtoField.new("Order Number", "nse.nseix.orderentry.nnf.v1.12.ordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number of the order to be modified")
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_number_1 = ProtoField.new("Order Number 1", "nse.nseix.orderentry.nnf.v1.12.ordernumber1", ftypes.DOUBLE, nil, nil, nil, "Order number of the first leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_price = ProtoField.new("Order Price", "nse.nseix.orderentry.nnf.v1.12.orderprice", ftypes.INT32, nil, nil, nil, "Price at which an order should be placed for the quantity, value or price")
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_qty_limit = ProtoField.new("Order Qty Limit", "nse.nseix.orderentry.nnf.v1.12.orderqtylimit", ftypes.DOUBLE, nil, nil, nil, "Order quantity limit")
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_type = ProtoField.new("Order Type", "nse.nseix.orderentry.nnf.v1.12.ordertype", ftypes.INT16, nil, nil, nil, "Type of the order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_type_1 = ProtoField.new("Order Type 1", "nse.nseix.orderentry.nnf.v1.12.ordertype1", ftypes.INT16, nil, nil, nil, "Type of the first leg order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_type_2 = ProtoField.new("Order Type 2", "nse.nseix.orderentry.nnf.v1.12.ordertype2", ftypes.INT16, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_val_limit = ProtoField.new("Order Val Limit", "nse.nseix.orderentry.nnf.v1.12.ordervallimit", ftypes.DOUBLE, nil, nil, nil, "Order value limit, in lakhs multiplied by 100000 times 10000000")
omi_nse_nseix_orderentry_nnf_v1_12.fields.org_scope = ProtoField.new("Org Scope", "nse.nseix.orderentry.nnf.v1.12.orgscope", ftypes.STRING, nil, nil, nil, "Reserved for future use")
omi_nse_nseix_orderentry_nnf_v1_12.fields.original_volume = ProtoField.new("Original Volume", "nse.nseix.orderentry.nnf.v1.12.originalvolume", ftypes.INT32, nil, nil, nil, "Original traded volume")
omi_nse_nseix_orderentry_nnf_v1_12.fields.participant = ProtoField.new("Participant", "nse.nseix.orderentry.nnf.v1.12.participant", ftypes.STRING, nil, nil, nil, "Participant the trade is for")
omi_nse_nseix_orderentry_nnf_v1_12.fields.participant_type = ProtoField.new("Participant Type", "nse.nseix.orderentry.nnf.v1.12.participanttype", ftypes.STRING, nil, nil, nil, "Type of participant, not applicable for regular lot orders")
omi_nse_nseix_orderentry_nnf_v1_12.fields.participant_type_1 = ProtoField.new("Participant Type 1", "nse.nseix.orderentry.nnf.v1.12.participanttype1", ftypes.STRING, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.password = ProtoField.new("Password", "nse.nseix.orderentry.nnf.v1.12.password", ftypes.STRING, nil, nil, nil, "Password of the user")
omi_nse_nseix_orderentry_nnf_v1_12.fields.port = ProtoField.new("Port", "nse.nseix.orderentry.nnf.v1.12.port", ftypes.INT32, nil, nil, nil, "Port number given by the exchange")
omi_nse_nseix_orderentry_nnf_v1_12.fields.pre_close = ProtoField.new("Pre Close", "nse.nseix.orderentry.nnf.v1.12.preclose", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400, "Eligible for the pre close session")
omi_nse_nseix_orderentry_nnf_v1_12.fields.preopen = ProtoField.new("Preopen", "nse.nseix.orderentry.nnf.v1.12.preopen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800, "Eligible for the pre open session")
omi_nse_nseix_orderentry_nnf_v1_12.fields.previous_close_price = ProtoField.new("Previous Close Price", "nse.nseix.orderentry.nnf.v1.12.previouscloseprice", ftypes.INT32, nil, nil, nil, "Previous day's closing price")
omi_nse_nseix_orderentry_nnf_v1_12.fields.price = ProtoField.new("Price", "nse.nseix.orderentry.nnf.v1.12.price", ftypes.INT32, nil, nil, nil, "New price of the order, zero to make it a market order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.price_1 = ProtoField.new("Price 1", "nse.nseix.orderentry.nnf.v1.12.price1", ftypes.INT32, nil, nil, nil, "Price of the first leg, not used for a spread order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.price_2 = ProtoField.new("Price 2", "nse.nseix.orderentry.nnf.v1.12.price2", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.price_diff = ProtoField.new("Price Diff", "nse.nseix.orderentry.nnf.v1.12.pricediff", ftypes.INT32, nil, nil, nil, "Price difference between the second and first legs, for a spread order only")
omi_nse_nseix_orderentry_nnf_v1_12.fields.pro_client_1 = ProtoField.new("Pro Client 1", "nse.nseix.orderentry.nnf.v1.12.proclient1", ftypes.INT16, nil, nil, nil, "Whether the order is a client order or the broker's own")
omi_nse_nseix_orderentry_nnf_v1_12.fields.pro_client_indicator = ProtoField.new("Pro Client Indicator", "nse.nseix.orderentry.nnf.v1.12.proclientindicator", ftypes.INT16, nil, nil, nil, "Whether the order is a client order or the broker's own")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reason_code = ProtoField.new("Reason Code", "nse.nseix.orderentry.nnf.v1.12.reasoncode", ftypes.INT16, nil, nil, nil, "Reason the give up was rejected")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reason_code_1 = ProtoField.new("Reason Code 1", "nse.nseix.orderentry.nnf.v1.12.reasoncode1", ftypes.INT16, nil, nil, nil, "Reason the request was rejected")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reference = ProtoField.new("Reference", "nse.nseix.orderentry.nnf.v1.12.reference", ftypes.STRING, nil, nil, nil, "Free for the front end to use")
omi_nse_nseix_orderentry_nnf_v1_12.fields.remaining_volume = ProtoField.new("Remaining Volume", "nse.nseix.orderentry.nnf.v1.12.remainingvolume", ftypes.INT32, nil, nil, nil, "Volume remaining after the trades")
omi_nse_nseix_orderentry_nnf_v1_12.fields.report_data = ProtoField.new("Report Data", "nse.nseix.orderentry.nnf.v1.12.reportdata", ftypes.STRING, nil, nil, nil, "REPORT_DATA")
omi_nse_nseix_orderentry_nnf_v1_12.fields.report_date = ProtoField.new("Report Date", "nse.nseix.orderentry.nnf.v1.12.reportdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of the report")
omi_nse_nseix_orderentry_nnf_v1_12.fields.report_date_utc = ProtoField.new("Report Date", "nse.nseix.orderentry.nnf.v1.12.reportdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of the report")
omi_nse_nseix_orderentry_nnf_v1_12.fields.report_header_body = ProtoField.new("Report Header Body", "nse.nseix.orderentry.nnf.v1.12.reportheaderbody", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.report_statistics_body = ProtoField.new("Report Statistics Body", "nse.nseix.orderentry.nnf.v1.12.reportstatisticsbody", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.report_trailer_body = ProtoField.new("Report Trailer Body", "nse.nseix.orderentry.nnf.v1.12.reporttrailerbody", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.request_for_open_orders = ProtoField.new("Request For Open Orders", "nse.nseix.orderentry.nnf.v1.12.requestforopenorders", ftypes.STRING, nil, nil, nil, "Whether good till cancelled and good till date orders are to be downloaded")
omi_nse_nseix_orderentry_nnf_v1_12.fields.requested_by = ProtoField.new("Requested By", "nse.nseix.orderentry.nnf.v1.12.requestedby", ftypes.STRING, nil, nil, nil, "Side requesting the trade modification")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_1 = ProtoField.new("Reserved 1", "nse.nseix.orderentry.nnf.v1.12.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_10 = ProtoField.new("Reserved 10", "nse.nseix.orderentry.nnf.v1.12.reserved10", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_113 = ProtoField.new("Reserved 113", "nse.nseix.orderentry.nnf.v1.12.reserved113", ftypes.UINT16, nil, base.DEC, 0x1FFF, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_14 = ProtoField.new("Reserved 14", "nse.nseix.orderentry.nnf.v1.12.reserved14", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_145 = ProtoField.new("Reserved 145", "nse.nseix.orderentry.nnf.v1.12.reserved145", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_16 = ProtoField.new("Reserved 16", "nse.nseix.orderentry.nnf.v1.12.reserved16", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_19 = ProtoField.new("Reserved 19", "nse.nseix.orderentry.nnf.v1.12.reserved19", ftypes.UINT16, nil, base.DEC, 0x01FF, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_2 = ProtoField.new("Reserved 2", "nse.nseix.orderentry.nnf.v1.12.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_200 = ProtoField.new("Reserved 200", "nse.nseix.orderentry.nnf.v1.12.reserved200", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_24 = ProtoField.new("Reserved 24", "nse.nseix.orderentry.nnf.v1.12.reserved24", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_25 = ProtoField.new("Reserved 25", "nse.nseix.orderentry.nnf.v1.12.reserved25", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_26 = ProtoField.new("Reserved 26", "nse.nseix.orderentry.nnf.v1.12.reserved26", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_32 = ProtoField.new("Reserved 32", "nse.nseix.orderentry.nnf.v1.12.reserved32", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_34 = ProtoField.new("Reserved 34", "nse.nseix.orderentry.nnf.v1.12.reserved34", ftypes.UINT8, nil, base.DEC, 0x0C, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_36 = ProtoField.new("Reserved 36", "nse.nseix.orderentry.nnf.v1.12.reserved36", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_4 = ProtoField.new("Reserved 4", "nse.nseix.orderentry.nnf.v1.12.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_5 = ProtoField.new("Reserved 5", "nse.nseix.orderentry.nnf.v1.12.reserved5", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_52 = ProtoField.new("Reserved 52", "nse.nseix.orderentry.nnf.v1.12.reserved52", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_7 = ProtoField.new("Reserved 7", "nse.nseix.orderentry.nnf.v1.12.reserved7", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_70 = ProtoField.new("Reserved 70", "nse.nseix.orderentry.nnf.v1.12.reserved70", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_78 = ProtoField.new("Reserved 78", "nse.nseix.orderentry.nnf.v1.12.reserved78", ftypes.UINT8, nil, base.DEC, 0xC0, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_8 = ProtoField.new("Reserved 8", "nse.nseix.orderentry.nnf.v1.12.reserved8", ftypes.BYTES, nil, nil, nil, "Padding, the specification lists no field at these offsets")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_80 = ProtoField.new("Reserved 80", "nse.nseix.orderentry.nnf.v1.12.reserved80", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_bit_1 = ProtoField.new("Reserved Bit 1", "nse.nseix.orderentry.nnf.v1.12.reservedbit1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.response_order_number = ProtoField.new("Response Order Number", "nse.nseix.orderentry.nnf.v1.12.responseordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number of the trader's order taking part in the trade")
omi_nse_nseix_orderentry_nnf_v1_12.fields.risk_free_interest_rate = ProtoField.new("Risk Free Interest Rate", "nse.nseix.orderentry.nnf.v1.12.riskfreeinterestrate", ftypes.INT32)
omi_nse_nseix_orderentry_nnf_v1_12.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "nse.nseix.orderentry.nnf.v1.12.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.sell_account_number = ProtoField.new("Sell Account Number", "nse.nseix.orderentry.nnf.v1.12.sellaccountnumber", ftypes.STRING, nil, nil, nil, "Account number of the sell side")
omi_nse_nseix_orderentry_nnf_v1_12.fields.sell_broker_id = ProtoField.new("Sell Broker Id", "nse.nseix.orderentry.nnf.v1.12.sellbrokerid", ftypes.STRING, nil, nil, nil, "Trading member Id of the sell side")
omi_nse_nseix_orderentry_nnf_v1_12.fields.sell_giveup_flag = ProtoField.new("Sell Giveup Flag", "nse.nseix.orderentry.nnf.v1.12.sellgiveupflag", ftypes.STRING, nil, nil, nil, "Give up flag of the sell side")
omi_nse_nseix_orderentry_nnf_v1_12.fields.sell_open_close = ProtoField.new("Sell Open Close", "nse.nseix.orderentry.nnf.v1.12.sellopenclose", ftypes.STRING, nil, nil, nil, "Open or close indicator of the sell trade")
omi_nse_nseix_orderentry_nnf_v1_12.fields.sell_participant = ProtoField.new("Sell Participant", "nse.nseix.orderentry.nnf.v1.12.sellparticipant", ftypes.STRING, nil, nil, nil, "Participant Id of the sell side")
omi_nse_nseix_orderentry_nnf_v1_12.fields.sequence_number = ProtoField.new("Sequence Number", "nse.nseix.orderentry.nnf.v1.12.sequencenumber", ftypes.DOUBLE, nil, nil, nil, "Sequence number, zero on the request")
omi_nse_nseix_orderentry_nnf_v1_12.fields.session_ind = ProtoField.new("Session Ind", "nse.nseix.orderentry.nnf.v1.12.sessionind", ftypes.UINT8, {[0]="Session 1", [1]="Session 2"}, base.DEC, 0x20, "Session the trade was done in, stamped only on trade messages")
omi_nse_nseix_orderentry_nnf_v1_12.fields.session_key = ProtoField.new("Session Key", "nse.nseix.orderentry.nnf.v1.12.sessionkey", ftypes.STRING, nil, nil, nil, "Session key to be used for authentication")
omi_nse_nseix_orderentry_nnf_v1_12.fields.settlement_period = ProtoField.new("Settlement Period", "nse.nseix.orderentry.nnf.v1.12.settlementperiod", ftypes.INT16, nil, nil, nil, "Number of days in a settlement cycle")
omi_nse_nseix_orderentry_nnf_v1_12.fields.settlement_period_1 = ProtoField.new("Settlement Period 1", "nse.nseix.orderentry.nnf.v1.12.settlementperiod1", ftypes.INT16, nil, nil, nil, "Number of days in a settlement cycle")
omi_nse_nseix_orderentry_nnf_v1_12.fields.settlor = ProtoField.new("Settlor", "nse.nseix.orderentry.nnf.v1.12.settlor", ftypes.STRING, nil, nil, nil, "Participant responsible for settling the trades")
omi_nse_nseix_orderentry_nnf_v1_12.fields.settlor_1 = ProtoField.new("Settlor 1", "nse.nseix.orderentry.nnf.v1.12.settlor1", ftypes.STRING, nil, nil, nil, "Participant responsible for settling the trades")
omi_nse_nseix_orderentry_nnf_v1_12.fields.sign_on_out_body = ProtoField.new("Sign On Out Body", "nse.nseix.orderentry.nnf.v1.12.signonoutbody", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.sl = ProtoField.new("Sl", "nse.nseix.orderentry.nnf.v1.12.sl", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Stop loss order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.snap_quote_time = ProtoField.new("Snap Quote Time", "nse.nseix.orderentry.nnf.v1.12.snapquotetime", ftypes.INT16, nil, nil, nil, "Snap quote time in seconds")
omi_nse_nseix_orderentry_nnf_v1_12.fields.solicitor_period = ProtoField.new("Solicitor Period", "nse.nseix.orderentry.nnf.v1.12.solicitorperiod", ftypes.INT16, nil, nil, nil, "Default solicitor period for an auction")
omi_nse_nseix_orderentry_nnf_v1_12.fields.solicitor_period_1 = ProtoField.new("Solicitor Period 1", "nse.nseix.orderentry.nnf.v1.12.solicitorperiod1", ftypes.INT16, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.spd_ord_qty_buff = ProtoField.new("Spd Ord Qty Buff", "nse.nseix.orderentry.nnf.v1.12.spdordqtybuff", ftypes.DOUBLE, nil, nil, nil, "Maximum order quantity the user may enter in a spread order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.spd_ord_val_buff = ProtoField.new("Spd Ord Val Buff", "nse.nseix.orderentry.nnf.v1.12.spdordvalbuff", ftypes.DOUBLE, nil, nil, nil, "Maximum order value the user may enter in a spread order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.spot = ProtoField.new("Spot", "nse.nseix.orderentry.nnf.v1.12.spot", ftypes.INT16, nil, nil, nil, "Status of the spot market")
omi_nse_nseix_orderentry_nnf_v1_12.fields.spot_market = ProtoField.new("Spot Market", "nse.nseix.orderentry.nnf.v1.12.spotmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Eligible for the spot market")
omi_nse_nseix_orderentry_nnf_v1_12.fields.spread_order_body = ProtoField.new("Spread Order Body", "nse.nseix.orderentry.nnf.v1.12.spreadorderbody", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.spread_report_header_body = ProtoField.new("Spread Report Header Body", "nse.nseix.orderentry.nnf.v1.12.spreadreportheaderbody", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.spread_report_statistics_body = ProtoField.new("Spread Report Statistics Body", "nse.nseix.orderentry.nnf.v1.12.spreadreportstatisticsbody", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.st_broker_eligibility_per_mkt = ProtoField.new("St Broker Eligibility Per Mkt", "nse.nseix.orderentry.nnf.v1.12.stbrokereligibilitypermkt", ftypes.STRING, nil, nil, nil, "Markets the trading member may place orders in")
omi_nse_nseix_orderentry_nnf_v1_12.fields.st_ex_market_status = ProtoField.new("St Ex Market Status", "nse.nseix.orderentry.nnf.v1.12.stexmarketstatus", ftypes.STRING, nil, nil, nil, "ST_EX_MARKET_STATUS")
omi_nse_nseix_orderentry_nnf_v1_12.fields.st_market_status = ProtoField.new("St Market Status", "nse.nseix.orderentry.nnf.v1.12.stmarketstatus", ftypes.STRING, nil, nil, nil, "ST_MARKET_STATUS")
omi_nse_nseix_orderentry_nnf_v1_12.fields.st_order_flags = ProtoField.new("St Order Flags", "nse.nseix.orderentry.nnf.v1.12.storderflags", ftypes.STRING, nil, nil, nil, "Terms attached to the order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.st_pl_market_status = ProtoField.new("St Pl Market Status", "nse.nseix.orderentry.nnf.v1.12.stplmarketstatus", ftypes.STRING, nil, nil, nil, "ST_PL_MARKET_STATUS")
omi_nse_nseix_orderentry_nnf_v1_12.fields.st_stock_eligible_indicators = ProtoField.new("St Stock Eligible Indicators", "nse.nseix.orderentry.nnf.v1.12.ststockeligibleindicators", ftypes.STRING, nil, nil, nil, "Order attributes the security is eligible for")
omi_nse_nseix_orderentry_nnf_v1_12.fields.start_alpha_1 = ProtoField.new("Start Alpha 1", "nse.nseix.orderentry.nnf.v1.12.startalpha1", ftypes.STRING, nil, nil, nil, "Start of the alpha range")
omi_nse_nseix_orderentry_nnf_v1_12.fields.status = ProtoField.new("Status", "nse.nseix.orderentry.nnf.v1.12.status", ftypes.INT16, nil, nil, nil, "Whether the outage is starting or ending")
omi_nse_nseix_orderentry_nnf_v1_12.fields.stpc = ProtoField.new("Stpc", "nse.nseix.orderentry.nnf.v1.12.stpc", ftypes.UINT8, {[0]="Cancel Order Resulting In Self Trade As Per Default", [1]="Cancel Active Order Resulting In Self Trade"}, base.DEC, 0x10, "Self trade prevention check")
omi_nse_nseix_orderentry_nnf_v1_12.fields.stream_number = ProtoField.new("Stream Number", "nse.nseix.orderentry.nnf.v1.12.streamnumber", ftypes.INT16, nil, nil, nil, "Impacted stream number, or zero when all streams are impacted")
omi_nse_nseix_orderentry_nnf_v1_12.fields.strike_price = ProtoField.new("Strike Price", "nse.nseix.orderentry.nnf.v1.12.strikeprice", ftypes.INT32, nil, nil, nil, "Strike price of an option, minus one for a future")
omi_nse_nseix_orderentry_nnf_v1_12.fields.strike_price_1 = ProtoField.new("Strike Price 1", "nse.nseix.orderentry.nnf.v1.12.strikeprice1", ftypes.INT32, nil, nil, nil, "Strike price of the first leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.strike_price_2 = ProtoField.new("Strike Price 2", "nse.nseix.orderentry.nnf.v1.12.strikeprice2", ftypes.INT32, nil, nil, nil, "Strike price of the second leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.symbol = ProtoField.new("Symbol", "nse.nseix.orderentry.nnf.v1.12.symbol", ftypes.STRING, nil, nil, nil, "Symbol of the underlying")
omi_nse_nseix_orderentry_nnf_v1_12.fields.symbol_1 = ProtoField.new("Symbol 1", "nse.nseix.orderentry.nnf.v1.12.symbol1", ftypes.STRING, nil, nil, nil, "Symbol of the first leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.symbol_2 = ProtoField.new("Symbol 2", "nse.nseix.orderentry.nnf.v1.12.symbol2", ftypes.STRING, nil, nil, nil, "Symbol of the second leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.third_reserved_1 = ProtoField.new("Third Reserved 1", "nse.nseix.orderentry.nnf.v1.12.thirdreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_orderentry_nnf_v1_12.fields.tick_size = ProtoField.new("Tick Size", "nse.nseix.orderentry.nnf.v1.12.ticksize", ftypes.INT32)
omi_nse_nseix_orderentry_nnf_v1_12.fields.time_stamp_1 = ProtoField.new("Time Stamp 1", "nse.nseix.orderentry.nnf.v1.12.timestamp1", ftypes.STRING, nil, nil, nil, "Time the message arrived at the trading system host, in jiffies; zero when sent to the host")
omi_nse_nseix_orderentry_nnf_v1_12.fields.time_stamp_2 = ProtoField.new("Time Stamp 2", "nse.nseix.orderentry.nnf.v1.12.timestamp2", ftypes.STRING, nil, nil, nil, "Number of the machine the packet comes from; zero when sent to the host")
omi_nse_nseix_orderentry_nnf_v1_12.fields.token = ProtoField.new("Token", "nse.nseix.orderentry.nnf.v1.12.token", ftypes.INT32, nil, nil, nil, "Token number of the contract")
omi_nse_nseix_orderentry_nnf_v1_12.fields.token_1 = ProtoField.new("Token 1", "nse.nseix.orderentry.nnf.v1.12.token1", ftypes.INT32, nil, nil, nil, "Token number of the first leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.token_2 = ProtoField.new("Token 2", "nse.nseix.orderentry.nnf.v1.12.token2", ftypes.INT32, nil, nil, nil, "Token number of the leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.token_no = ProtoField.new("Token No", "nse.nseix.orderentry.nnf.v1.12.tokenno", ftypes.INT32, nil, nil, nil, "Token number of the contract the order was placed on")
omi_nse_nseix_orderentry_nnf_v1_12.fields.total_quantity_traded = ProtoField.new("Total Quantity Traded", "nse.nseix.orderentry.nnf.v1.12.totalquantitytraded", ftypes.INT32, nil, nil, nil, "Total quantity traded today")
omi_nse_nseix_orderentry_nnf_v1_12.fields.total_value = ProtoField.new("Total Value", "nse.nseix.orderentry.nnf.v1.12.totalvalue", ftypes.DOUBLE, nil, nil, nil, "Total value inquired on, in cents")
omi_nse_nseix_orderentry_nnf_v1_12.fields.total_value_traded = ProtoField.new("Total Value Traded", "nse.nseix.orderentry.nnf.v1.12.totalvaluetraded", ftypes.DOUBLE, nil, nil, nil, "Total value traded, divided by 10000 for the value in US dollars")
omi_nse_nseix_orderentry_nnf_v1_12.fields.total_vol_remaining_1 = ProtoField.new("Total Vol Remaining 1", "nse.nseix.orderentry.nnf.v1.12.totalvolremaining1", ftypes.INT32, nil, nil, nil, "Total quantity still outstanding")
omi_nse_nseix_orderentry_nnf_v1_12.fields.total_vol_remaining_2 = ProtoField.new("Total Vol Remaining 2", "nse.nseix.orderentry.nnf.v1.12.totalvolremaining2", ftypes.INT32, nil, nil, nil, "Total quantity still outstanding")
omi_nse_nseix_orderentry_nnf_v1_12.fields.total_volume_remaining = ProtoField.new("Total Volume Remaining", "nse.nseix.orderentry.nnf.v1.12.totalvolumeremaining", ftypes.INT32, nil, nil, nil, "Total quantity still outstanding")
omi_nse_nseix_orderentry_nnf_v1_12.fields.trade_book_type = ProtoField.new("Trade Book Type", "nse.nseix.orderentry.nnf.v1.12.tradebooktype", ftypes.STRING, nil, nil, nil, "Book type of the order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.trade_inquiry_body = ProtoField.new("Trade Inquiry Body", "nse.nseix.orderentry.nnf.v1.12.tradeinquirybody", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.traded = ProtoField.new("Traded", "nse.nseix.orderentry.nnf.v1.12.traded", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020, "Order has traded partly or fully")
omi_nse_nseix_orderentry_nnf_v1_12.fields.trader_id = ProtoField.new("Trader Id", "nse.nseix.orderentry.nnf.v1.12.traderid", ftypes.INT32, nil, nil, nil, "Connected user's trader Id, which the order must belong to")
omi_nse_nseix_orderentry_nnf_v1_12.fields.trader_id_1 = ProtoField.new("Trader Id 1", "nse.nseix.orderentry.nnf.v1.12.traderid1", ftypes.INT32, nil, nil, nil, "User Id that entered the order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.trader_name = ProtoField.new("Trader Name", "nse.nseix.orderentry.nnf.v1.12.tradername", ftypes.STRING, nil, nil, nil, "Name of the trader, blank on the request")
omi_nse_nseix_orderentry_nnf_v1_12.fields.trader_number = ProtoField.new("Trader Number", "nse.nseix.orderentry.nnf.v1.12.tradernumber", ftypes.INT32, nil, nil, nil, "Trader or user Id")
omi_nse_nseix_orderentry_nnf_v1_12.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nseix.orderentry.nnf.v1.12.transactioncode", ftypes.INT16, nil, nil, nil, "Type of message sent or received")
omi_nse_nseix_orderentry_nnf_v1_12.fields.trd_mod_cxl_bit = ProtoField.new("Trd Mod Cxl Bit", "nse.nseix.orderentry.nnf.v1.12.trdmodcxlbit", ftypes.STRING, nil, nil, nil, "Trade modification or cancellation status to be set")
omi_nse_nseix_orderentry_nnf_v1_12.fields.trigger_price = ProtoField.new("Trigger Price", "nse.nseix.orderentry.nnf.v1.12.triggerprice", ftypes.INT32, nil, nil, nil, "Price at which a stop loss order triggers")
omi_nse_nseix_orderentry_nnf_v1_12.fields.trigger_price_1 = ProtoField.new("Trigger Price 1", "nse.nseix.orderentry.nnf.v1.12.triggerprice1", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.trigger_price_2 = ProtoField.new("Trigger Price 2", "nse.nseix.orderentry.nnf.v1.12.triggerprice2", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.update_portfolio = ProtoField.new("Update Portfolio", "nse.nseix.orderentry.nnf.v1.12.updateportfolio", ftypes.STRING, nil, nil, nil, "Not used")
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_id = ProtoField.new("User Id", "nse.nseix.orderentry.nnf.v1.12.userid", ftypes.INT32, nil, nil, nil, "Id of the user signing on, or of the user to reset")
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_limits = ProtoField.new("User Limits", "nse.nseix.orderentry.nnf.v1.12.userlimits", ftypes.STRING, nil, nil, nil, "USER_LIMITS")
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_name = ProtoField.new("User Name", "nse.nseix.orderentry.nnf.v1.12.username", ftypes.STRING, nil, nil, nil, "Name of the user")
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_buy_value_limit = ProtoField.new("User Order Buy Value Limit", "nse.nseix.orderentry.nnf.v1.12.userorderbuyvaluelimit", ftypes.DOUBLE, nil, nil, nil, "Total buy order limit of the user")
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_limit_body = ProtoField.new("User Order Limit Body", "nse.nseix.orderentry.nnf.v1.12.userorderlimitbody", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_sell_value_limit = ProtoField.new("User Order Sell Value Limit", "nse.nseix.orderentry.nnf.v1.12.userordersellvaluelimit", ftypes.DOUBLE, nil, nil, nil, "Total sell order limit of the user")
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_used_buy_value_limit = ProtoField.new("User Order Used Buy Value Limit", "nse.nseix.orderentry.nnf.v1.12.userorderusedbuyvaluelimit", ftypes.DOUBLE, nil, nil, nil, "Buy order limit used by the user")
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_used_sell_value_limit = ProtoField.new("User Order Used Sell Value Limit", "nse.nseix.orderentry.nnf.v1.12.userorderusedsellvaluelimit", ftypes.DOUBLE, nil, nil, nil, "Sell order limit used by the user")
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_value_limit_body = ProtoField.new("User Order Value Limit Body", "nse.nseix.orderentry.nnf.v1.12.userordervaluelimitbody", ftypes.STRING)
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_type = ProtoField.new("User Type", "nse.nseix.orderentry.nnf.v1.12.usertype", ftypes.INT16, nil, nil, nil, "Type of the user")
omi_nse_nseix_orderentry_nnf_v1_12.fields.version_number = ProtoField.new("Version Number", "nse.nseix.orderentry.nnf.v1.12.versionnumber", ftypes.INT32, nil, nil, nil, "Version number of the trading system")
omi_nse_nseix_orderentry_nnf_v1_12.fields.volume = ProtoField.new("Volume", "nse.nseix.orderentry.nnf.v1.12.volume", ftypes.INT32, nil, nil, nil, "Latest image of the order's volume")
omi_nse_nseix_orderentry_nnf_v1_12.fields.volume_1 = ProtoField.new("Volume 1", "nse.nseix.orderentry.nnf.v1.12.volume1", ftypes.INT32, nil, nil, nil, "Quantity of the first leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.volume_2 = ProtoField.new("Volume 2", "nse.nseix.orderentry.nnf.v1.12.volume2", ftypes.INT32, nil, nil, nil, "Quantity of the leg")
omi_nse_nseix_orderentry_nnf_v1_12.fields.volume_filled_today = ProtoField.new("Volume Filled Today", "nse.nseix.orderentry.nnf.v1.12.volumefilledtoday", ftypes.INT32, nil, nil, nil, "Quantity traded today")
omi_nse_nseix_orderentry_nnf_v1_12.fields.volume_filled_today_1 = ProtoField.new("Volume Filled Today 1", "nse.nseix.orderentry.nnf.v1.12.volumefilledtoday1", ftypes.INT32, nil, nil, nil, "Quantity traded today")
omi_nse_nseix_orderentry_nnf_v1_12.fields.volume_filled_today_2 = ProtoField.new("Volume Filled Today 2", "nse.nseix.orderentry.nnf.v1.12.volumefilledtoday2", ftypes.INT32, nil, nil, nil, "Quantity traded today")
omi_nse_nseix_orderentry_nnf_v1_12.fields.volume_freeze_percent = ProtoField.new("Volume Freeze Percent", "nse.nseix.orderentry.nnf.v1.12.volumefreezepercent", ftypes.INT16, nil, nil, nil, "Volume freeze percentage")
omi_nse_nseix_orderentry_nnf_v1_12.fields.wap = ProtoField.new("Wap", "nse.nseix.orderentry.nnf.v1.12.wap", ftypes.INT32, nil, nil, nil, "Weighted average price inquired on")
omi_nse_nseix_orderentry_nnf_v1_12.fields.warning_percent = ProtoField.new("Warning Percent", "nse.nseix.orderentry.nnf.v1.12.warningpercent", ftypes.INT16, nil, nil, nil, "Warning percentage")
omi_nse_nseix_orderentry_nnf_v1_12.fields.ws_class_name = ProtoField.new("Ws Class Name", "nse.nseix.orderentry.nnf.v1.12.wsclassname", ftypes.STRING, nil, nil, nil, "Network Id of the workstation")

-- Nse NseIx OrderEntry Nnf 1.12 Framing
omi_nse_nseix_orderentry_nnf_v1_12.fields.client_message = ProtoField.new("Client Message", "nse.nseix.orderentry.nnf.v1.12.clientmessage", ftypes.STRING, nil, nil, nil, "Nnf interactive message sent by the firm")
omi_nse_nseix_orderentry_nnf_v1_12.fields.client_packet = ProtoField.new("Client Packet", "nse.nseix.orderentry.nnf.v1.12.clientpacket", ftypes.STRING, nil, nil, nil, "Nnf Tcp block of one or more messages sent by the firm")
omi_nse_nseix_orderentry_nnf_v1_12.fields.message_header = ProtoField.new("Message Header", "nse.nseix.orderentry.nnf.v1.12.messageheader", ftypes.STRING, nil, nil, nil, "MESSAGE_HEADER")
omi_nse_nseix_orderentry_nnf_v1_12.fields.server_message = ProtoField.new("Server Message", "nse.nseix.orderentry.nnf.v1.12.servermessage", ftypes.STRING, nil, nil, nil, "Nnf interactive message sent by the exchange")
omi_nse_nseix_orderentry_nnf_v1_12.fields.server_packet = ProtoField.new("Server Packet", "nse.nseix.orderentry.nnf.v1.12.serverpacket", ftypes.STRING, nil, nil, nil, "Nnf Tcp block of one or more messages sent by the exchange")

-- Nse NseIx OrderEntry 1.12 Application Messages
omi_nse_nseix_orderentry_nnf_v1_12.fields.box_sign_off_message = ProtoField.new("Box Sign Off Message", "nse.nseix.orderentry.nnf.v1.12.boxsignoffmessage", ftypes.STRING, nil, nil, nil, "Signs the box off the gateway server when the exchange terminates the connection")
omi_nse_nseix_orderentry_nnf_v1_12.fields.box_sign_on_request_in_message = ProtoField.new("Box Sign On Request In Message", "nse.nseix.orderentry.nnf.v1.12.boxsignonrequestinmessage", ftypes.STRING, nil, nil, nil, "Signs the box on to the allocated gateway server")
omi_nse_nseix_orderentry_nnf_v1_12.fields.box_sign_on_request_out_message = ProtoField.new("Box Sign On Request Out Message", "nse.nseix.orderentry.nnf.v1.12.boxsignonrequestoutmessage", ftypes.STRING, nil, nil, nil, "Confirms the box sign on")
omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_order_value_limit_update_request_message = ProtoField.new("Branch Order Value Limit Update Request Message", "nse.nseix.orderentry.nnf.v1.12.branchordervaluelimitupdaterequestmessage", ftypes.STRING, nil, nil, nil, "Sets the buy and sell value limits for a branch")
omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_order_value_limit_update_response_message = ProtoField.new("Branch Order Value Limit Update Response Message", "nse.nseix.orderentry.nnf.v1.12.branchordervaluelimitupdateresponsemessage", ftypes.STRING, nil, nil, nil, "Confirms the branch order value limit update")
omi_nse_nseix_orderentry_nnf_v1_12.fields.collateral_user_status_change_request_message = ProtoField.new("Collateral User Status Change Request Message", "nse.nseix.orderentry.nnf.v1.12.collateraluserstatuschangerequestmessage", ftypes.STRING, nil, nil, nil, "Enables or disables cancel on logout for a user")
omi_nse_nseix_orderentry_nnf_v1_12.fields.collateral_user_status_change_response_message = ProtoField.new("Collateral User Status Change Response Message", "nse.nseix.orderentry.nnf.v1.12.collateraluserstatuschangeresponsemessage", ftypes.STRING, nil, nil, nil, "Answers the cancel on logout status change")
omi_nse_nseix_orderentry_nnf_v1_12.fields.contingency_broadcast_message = ProtoField.new("Contingency Broadcast Message", "nse.nseix.orderentry.nnf.v1.12.contingencybroadcastmessage", ftypes.STRING, nil, nil, nil, "Signals the start or end of an outage on one or all matching engine streams")
omi_nse_nseix_orderentry_nnf_v1_12.fields.control_message_to_trader_message = ProtoField.new("Control Message To Trader Message", "nse.nseix.orderentry.nnf.v1.12.controlmessagetotradermessage", ftypes.STRING, nil, nil, nil, "Interactive message sent to the trader from Nse Ix Control")
omi_nse_nseix_orderentry_nnf_v1_12.fields.dealer_limit_update_message = ProtoField.new("Dealer Limit Update Message", "nse.nseix.orderentry.nnf.v1.12.dealerlimitupdatemessage", ftypes.STRING, nil, nil, nil, "Carries the dealer order quantity and value limits")
omi_nse_nseix_orderentry_nnf_v1_12.fields.download_request_message = ProtoField.new("Download Request Message", "nse.nseix.orderentry.nnf.v1.12.downloadrequestmessage", ftypes.STRING, nil, nil, nil, "Requests the message download for one stream")
omi_nse_nseix_orderentry_nnf_v1_12.fields.gateway_router_request_message = ProtoField.new("Gateway Router Request Message", "nse.nseix.orderentry.nnf.v1.12.gatewayrouterrequestmessage", ftypes.STRING, nil, nil, nil, "Asks the gateway router which gateway server to connect to")
omi_nse_nseix_orderentry_nnf_v1_12.fields.gateway_router_response_message = ProtoField.new("Gateway Router Response Message", "nse.nseix.orderentry.nnf.v1.12.gatewayrouterresponsemessage", ftypes.STRING, nil, nil, nil, "Returns the allocated gateway server and the keys used to encrypt the session")
omi_nse_nseix_orderentry_nnf_v1_12.fields.giveup_confirmation_message = ProtoField.new("Giveup Confirmation Message", "nse.nseix.orderentry.nnf.v1.12.giveupconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms the approval or rejection of a give up to the trading member who placed the participant order. Transaction Code in the header names which")
omi_nse_nseix_orderentry_nnf_v1_12.fields.kill_switch_request_message = ProtoField.new("Kill Switch Request Message", "nse.nseix.orderentry.nnf.v1.12.killswitchrequestmessage", ftypes.STRING, nil, nil, nil, "Cancels all of a trader's orders, or with a Trader Id of zero all of the trading member's, carried in the shared order entry structure")
omi_nse_nseix_orderentry_nnf_v1_12.fields.market_statistics_report_message = ProtoField.new("Market Statistics Report Message", "nse.nseix.orderentry.nnf.v1.12.marketstatisticsreportmessage", ftypes.STRING, nil, nil, nil, "Bhavcopy header, market statistics records or trailer. Message Type selects which")
omi_nse_nseix_orderentry_nnf_v1_12.fields.mba_inquiry_request_message = ProtoField.new("Mba Inquiry Request Message", "nse.nseix.orderentry.nnf.v1.12.mbainquiryrequestmessage", ftypes.STRING, nil, nil, nil, "Requests the market by aggregate details for a user defined quantity, total value or weighted average price")
omi_nse_nseix_orderentry_nnf_v1_12.fields.mba_inquiry_response_message = ProtoField.new("Mba Inquiry Response Message", "nse.nseix.orderentry.nnf.v1.12.mbainquiryresponsemessage", ftypes.STRING, nil, nil, nil, "Market by aggregate details for a user defined quantity, total value or weighted average price")
omi_nse_nseix_orderentry_nnf_v1_12.fields.message_record_message = ProtoField.new("Message Record Message", "nse.nseix.orderentry.nnf.v1.12.messagerecordmessage", ftypes.STRING, nil, nil, nil, "Carries one downloaded message wrapped in an inner header")
omi_nse_nseix_orderentry_nnf_v1_12.fields.nlt_order_inquiry_request_message = ProtoField.new("Nlt Order Inquiry Request Message", "nse.nseix.orderentry.nnf.v1.12.nltorderinquiryrequestmessage", ftypes.STRING, nil, nil, nil, "One time inquiry by a corporate manager for the negotiated large trade counter orders placed against the member")
omi_nse_nseix_orderentry_nnf_v1_12.fields.nlt_order_inquiry_response_message = ProtoField.new("Nlt Order Inquiry Response Message", "nse.nseix.orderentry.nnf.v1.12.nltorderinquiryresponsemessage", ftypes.STRING, nil, nil, nil, "One negotiated large trade counter order, in answer to the inquiry")
omi_nse_nseix_orderentry_nnf_v1_12.fields.nlt_order_message_to_trader_message = ProtoField.new("Nlt Order Message To Trader Message", "nse.nseix.orderentry.nnf.v1.12.nltordermessagetotradermessage", ftypes.STRING, nil, nil, nil, "Tells the counter member's corporate manager of a negotiated large trade order placed against it")
omi_nse_nseix_orderentry_nnf_v1_12.fields.normal_order_limit_update_message = ProtoField.new("Normal Order Limit Update Message", "nse.nseix.orderentry.nnf.v1.12.normalorderlimitupdatemessage", ftypes.STRING, nil, nil, nil, "Sets the order quantity and value limits for a user, or with 5771 the spread order limits")
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_cancellation_confirmation_message = ProtoField.new("Order Cancellation Confirmation Message", "nse.nseix.orderentry.nnf.v1.12.ordercancellationconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an order cancellation. Message Length selects the ordinary or the two and three leg layout")
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_cancellation_request_message = ProtoField.new("Order Cancellation Request Message", "nse.nseix.orderentry.nnf.v1.12.ordercancellationrequestmessage", ftypes.STRING, nil, nil, nil, "Order cancellation request, and the negotiated large trade cancellation, carried in the shared order entry structure")
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_confirmation_message = ProtoField.new("Order Confirmation Message", "nse.nseix.orderentry.nnf.v1.12.orderconfirmationmessage", ftypes.STRING, nil, nil, nil, "Order entry confirmation, and the negotiated large trade confirmation, carried in the shared order entry structure")
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_entry_request_message = ProtoField.new("Order Entry Request Message", "nse.nseix.orderentry.nnf.v1.12.orderentryrequestmessage", ftypes.STRING, nil, nil, nil, "Order entry request, and the negotiated large trade order entry, carried in the shared order entry structure")
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_modification_confirmation_message = ProtoField.new("Order Modification Confirmation Message", "nse.nseix.orderentry.nnf.v1.12.ordermodificationconfirmationmessage", ftypes.STRING, nil, nil, nil, "Order modification confirmation, and the negotiated large trade modification confirmation, carried in the shared order entry structure")
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_modification_request_message = ProtoField.new("Order Modification Request Message", "nse.nseix.orderentry.nnf.v1.12.ordermodificationrequestmessage", ftypes.STRING, nil, nil, nil, "Order modification request, and the negotiated large trade modification, carried in the shared order entry structure")
omi_nse_nseix_orderentry_nnf_v1_12.fields.order_response_message = ProtoField.new("Order Response Message", "nse.nseix.orderentry.nnf.v1.12.orderresponsemessage", ftypes.STRING, nil, nil, nil, "Order requested, price confirmation, modification and cancellation responses and rejections, negotiated large trade cancellation confirmation and rejections, freeze, order error and batch cancellation, all carried in the shared order entry structure. Transaction Code in the header names the response")
omi_nse_nseix_orderentry_nnf_v1_12.fields.price_modification_message = ProtoField.new("Price Modification Message", "nse.nseix.orderentry.nnf.v1.12.pricemodificationmessage", ftypes.STRING, nil, nil, nil, "Modifies the price of a live regular lot order")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reset_user_password_message = ProtoField.new("Reset User Password Message", "nse.nseix.orderentry.nnf.v1.12.resetuserpasswordmessage", ftypes.STRING, nil, nil, nil, "Requests a reset of a user's password to the default")
omi_nse_nseix_orderentry_nnf_v1_12.fields.reset_user_password_response_message = ProtoField.new("Reset User Password Response Message", "nse.nseix.orderentry.nnf.v1.12.resetuserpasswordresponsemessage", ftypes.STRING, nil, nil, nil, "Answers the password reset request, Error Code in the header saying whether it succeeded")
omi_nse_nseix_orderentry_nnf_v1_12.fields.secure_box_registration_request_in_message = ProtoField.new("Secure Box Registration Request In Message", "nse.nseix.orderentry.nnf.v1.12.secureboxregistrationrequestinmessage", ftypes.STRING, nil, nil, nil, "Registers the box with the allocated gateway server")
omi_nse_nseix_orderentry_nnf_v1_12.fields.sign_off_request_out_message = ProtoField.new("Sign Off Request Out Message", "nse.nseix.orderentry.nnf.v1.12.signoffrequestoutmessage", ftypes.STRING, nil, nil, nil, "Details of the user's last log off, sent when the user logs on again")
omi_nse_nseix_orderentry_nnf_v1_12.fields.sign_on_request_in_message = ProtoField.new("Sign On Request In Message", "nse.nseix.orderentry.nnf.v1.12.signonrequestinmessage", ftypes.STRING, nil, nil, nil, "Logs a trader on to the trading system, and the same structure sent by a corporate or branch manager to reset a user's session")
omi_nse_nseix_orderentry_nnf_v1_12.fields.sign_on_request_out_message = ProtoField.new("Sign On Request Out Message", "nse.nseix.orderentry.nnf.v1.12.signonrequestoutmessage", ftypes.STRING, nil, nil, nil, "Confirms that the trader has been signed on, or that a user's session has been reset")
omi_nse_nseix_orderentry_nnf_v1_12.fields.spread_bhavcopy_message = ProtoField.new("Spread Bhavcopy Message", "nse.nseix.orderentry.nnf.v1.12.spreadbhavcopymessage", ftypes.STRING, nil, nil, nil, "Spread bhavcopy header, spread statistics records or trailer. Message Type selects which")
omi_nse_nseix_orderentry_nnf_v1_12.fields.spread_order_entry_request_message = ProtoField.new("Spread Order Entry Request Message", "nse.nseix.orderentry.nnf.v1.12.spreadorderentryrequestmessage", ftypes.STRING, nil, nil, nil, "Spread, two leg and three leg order entry, and spread modification and cancellation, carried in the shared spread structure. Transaction Code in the header names the request")
omi_nse_nseix_orderentry_nnf_v1_12.fields.spread_order_limit_update_message = ProtoField.new("Spread Order Limit Update Message", "nse.nseix.orderentry.nnf.v1.12.spreadorderlimitupdatemessage", ftypes.STRING, nil, nil, nil, "Carries the spread order quantity and value limits")
omi_nse_nseix_orderentry_nnf_v1_12.fields.spread_order_response_message = ProtoField.new("Spread Order Response Message", "nse.nseix.orderentry.nnf.v1.12.spreadorderresponsemessage", ftypes.STRING, nil, nil, nil, "Spread, two leg and three leg order responses, confirmations, rejections, errors and batch cancellation, carried in the shared spread structure. Transaction Code in the header names the response")
omi_nse_nseix_orderentry_nnf_v1_12.fields.system_information_in_message = ProtoField.new("System Information In Message", "nse.nseix.orderentry.nnf.v1.12.systeminformationinmessage", ftypes.STRING, nil, nil, nil, "Requests the system information of the trading system")
omi_nse_nseix_orderentry_nnf_v1_12.fields.system_information_out_message = ProtoField.new("System Information Out Message", "nse.nseix.orderentry.nnf.v1.12.systeminformationoutmessage", ftypes.STRING, nil, nil, nil, "Carries the system information of the trading system, in full or as the partial response to a local database request")
omi_nse_nseix_orderentry_nnf_v1_12.fields.trade_confirmation_message = ProtoField.new("Trade Confirmation Message", "nse.nseix.orderentry.nnf.v1.12.tradeconfirmationmessage", ftypes.STRING, nil, nil, nil, "Trade confirmation, stop loss trigger notification, trade cancellation confirmation and rejection, and trade modification confirmations, including the negotiated large trade forms. Transaction Code in the header names the operation")
omi_nse_nseix_orderentry_nnf_v1_12.fields.trade_inquiry_message = ProtoField.new("Trade Inquiry Message", "nse.nseix.orderentry.nnf.v1.12.tradeinquirymessage", ftypes.STRING, nil, nil, nil, "Trade modification and cancellation requests, including the negotiated large trade forms, carried in the shared trade structure")
omi_nse_nseix_orderentry_nnf_v1_12.fields.trade_inquiry_response_message = ProtoField.new("Trade Inquiry Response Message", "nse.nseix.orderentry.nnf.v1.12.tradeinquiryresponsemessage", ftypes.STRING, nil, nil, nil, "Trade cancellation response, trade error, trade modification rejection and the negotiated large trade rejections and cancellation confirmation, carried in the shared trade structure. Transaction Code in the header names the response")
omi_nse_nseix_orderentry_nnf_v1_12.fields.update_local_database_data_message = ProtoField.new("Update Local Database Data Message", "nse.nseix.orderentry.nnf.v1.12.updatelocaldatabasedatamessage", ftypes.STRING, nil, nil, nil, "Carries one local database record wrapped in an inner header")
omi_nse_nseix_orderentry_nnf_v1_12.fields.update_local_database_header_message = ProtoField.new("Update Local Database Header Message", "nse.nseix.orderentry.nnf.v1.12.updatelocaldatabaseheadermessage", ftypes.STRING, nil, nil, nil, "Opens the local database download")
omi_nse_nseix_orderentry_nnf_v1_12.fields.update_local_database_in_message = ProtoField.new("Update Local Database In Message", "nse.nseix.orderentry.nnf.v1.12.updatelocaldatabaseinmessage", ftypes.STRING, nil, nil, nil, "Requests the local database download of securities, participants and open orders")
omi_nse_nseix_orderentry_nnf_v1_12.fields.update_local_database_trailer_message = ProtoField.new("Update Local Database Trailer Message", "nse.nseix.orderentry.nnf.v1.12.updatelocaldatabasetrailermessage", ftypes.STRING, nil, nil, nil, "Closes the local database download")
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_address_unlock_approve_message = ProtoField.new("User Address Unlock Approve Message", "nse.nseix.orderentry.nnf.v1.12.useraddressunlockapprovemessage", ftypes.STRING, nil, nil, nil, "Approves or rejects the unlock of a user. Transaction Code in the header names which")
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_address_unlock_confirm_message = ProtoField.new("User Address Unlock Confirm Message", "nse.nseix.orderentry.nnf.v1.12.useraddressunlockconfirmmessage", ftypes.STRING, nil, nil, nil, "Acknowledges that the unlock request reached the trading system")
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_address_unlock_request_message = ProtoField.new("User Address Unlock Request Message", "nse.nseix.orderentry.nnf.v1.12.useraddressunlockrequestmessage", ftypes.STRING, nil, nil, nil, "Requests that a locked user be unlocked")
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_limit_update_message = ProtoField.new("User Order Limit Update Message", "nse.nseix.orderentry.nnf.v1.12.userorderlimitupdatemessage", ftypes.STRING, nil, nil, nil, "Carries the branch and user order value limits")
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_value_limit_update_message = ProtoField.new("User Order Value Limit Update Message", "nse.nseix.orderentry.nnf.v1.12.userordervaluelimitupdatemessage", ftypes.STRING, nil, nil, nil, "Sets the buy and sell order value limits for a user")
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_trade_modify_cancel_status_change_request_message = ProtoField.new("User Trade Modify Cancel Status Change Request Message", "nse.nseix.orderentry.nnf.v1.12.usertrademodifycancelstatuschangerequestmessage", ftypes.STRING, nil, nil, nil, "Enables or disables trade modification or, with Alpha Char TX, trade cancellation for a user")
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_trade_modify_cancel_status_change_response_message = ProtoField.new("User Trade Modify Cancel Status Change Response Message", "nse.nseix.orderentry.nnf.v1.12.usertrademodifycancelstatuschangeresponsemessage", ftypes.STRING, nil, nil, nil, "Answers the trade modification or cancellation status change")

-- Nse NseIx OrderEntry 1.12 Session Messages
omi_nse_nseix_orderentry_nnf_v1_12.fields.header_record_message = ProtoField.new("Header Record Message", "nse.nseix.orderentry.nnf.v1.12.headerrecordmessage", ftypes.BYTES, nil, nil, nil, "Opens the message download for a stream")
omi_nse_nseix_orderentry_nnf_v1_12.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "nse.nseix.orderentry.nnf.v1.12.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "The member keeps the connection alive")
omi_nse_nseix_orderentry_nnf_v1_12.fields.nlt_trailer_record_message = ProtoField.new("Nlt Trailer Record Message", "nse.nseix.orderentry.nnf.v1.12.nlttrailerrecordmessage", ftypes.BYTES, nil, nil, nil, "Ends the negotiated large trade inquiry responses")
omi_nse_nseix_orderentry_nnf_v1_12.fields.secure_box_registration_response_out_message = ProtoField.new("Secure Box Registration Response Out Message", "nse.nseix.orderentry.nnf.v1.12.secureboxregistrationresponseoutmessage", ftypes.BYTES, nil, nil, nil, "Confirms the box registration, carrying only the message header")
omi_nse_nseix_orderentry_nnf_v1_12.fields.sign_off_request_in_message = ProtoField.new("Sign Off Request In Message", "nse.nseix.orderentry.nnf.v1.12.signoffrequestinmessage", ftypes.BYTES, nil, nil, nil, "A trader signs off")
omi_nse_nseix_orderentry_nnf_v1_12.fields.trailer_record_message = ProtoField.new("Trailer Record Message", "nse.nseix.orderentry.nnf.v1.12.trailerrecordmessage", ftypes.BYTES, nil, nil, nil, "Signals the message download is complete for a stream")

-- Nse NseIx OrderEntry Nnf 1.12 Generated Fields
omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_limits_index = ProtoField.new("Branch Limits Index", "nse.nseix.orderentry.nnf.v1.12.branchlimitsindex", ftypes.UINT16)
omi_nse_nseix_orderentry_nnf_v1_12.fields.instrument_user_index = ProtoField.new("Instrument User Index", "nse.nseix.orderentry.nnf.v1.12.instrumentuserindex", ftypes.UINT16)
omi_nse_nseix_orderentry_nnf_v1_12.fields.mkt_stats_data_index = ProtoField.new("Mkt Stats Data Index", "nse.nseix.orderentry.nnf.v1.12.mktstatsdataindex", ftypes.UINT16)
omi_nse_nseix_orderentry_nnf_v1_12.fields.ms_spd_leg_info_index = ProtoField.new("Ms Spd Leg Info Index", "nse.nseix.orderentry.nnf.v1.12.msspdleginfoindex", ftypes.UINT16)
omi_nse_nseix_orderentry_nnf_v1_12.fields.report_data_index = ProtoField.new("Report Data Index", "nse.nseix.orderentry.nnf.v1.12.reportdataindex", ftypes.UINT16)
omi_nse_nseix_orderentry_nnf_v1_12.fields.user_limits_index = ProtoField.new("User Limits Index", "nse.nseix.orderentry.nnf.v1.12.userlimitsindex", ftypes.UINT16)

-- Nse NseIx OrderEntry Nnf 1.12 Expert Info
nse_nseix_orderentry_nnf_v1_12.experts = {}
nse_nseix_orderentry_nnf_v1_12.experts.undecoded = ProtoExpert.new("nse.nseix.orderentry.nnf.v1.12.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
omi_nse_nseix_orderentry_nnf_v1_12.experts = { nse_nseix_orderentry_nnf_v1_12.experts.undecoded }

-----------------------------------------------------------------------
-- Nse NseIx OrderEntry Nnf 1.12 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "DateTime Local", 2 },
  { 2, "DateTime Utc", 3 },
  { 3, "DateTime Asia/Kolkata", 4 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
nse_nseix_orderentry_nnf_v1_12.timestamp_format = 2

-- Offset of the source's zone from utc in seconds, as the reader states it
nse_nseix_orderentry_nnf_v1_12.zone_offset = 0

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

-- Nse NseIx OrderEntry Nnf 1.12 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.padding = false
show.indexes = true

-- Register Nse NseIx OrderEntry Nnf 1.12 Show Options
omi_nse_nseix_orderentry_nnf_v1_12.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nse_nseix_orderentry_nnf_v1_12.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nse_nseix_orderentry_nnf_v1_12.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nse_nseix_orderentry_nnf_v1_12.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nseix_orderentry_nnf_v1_12.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nseix_orderentry_nnf_v1_12.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nse_nseix_orderentry_nnf_v1_12.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")
omi_nse_nseix_orderentry_nnf_v1_12.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nse_nseix_orderentry_nnf_v1_12.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)
omi_nse_nseix_orderentry_nnf_v1_12.prefs.zone_offset = Pref.string("Asia/Kolkata Utc Offset", "", "Offset of Asia/Kolkata from Utc, as +HH:MM. This protocol names that zone and not its offset: stated here, a time kept on its clock reads as an instant, and an instant reads on its clock")

-- Handle changed preferences
function omi_nse_nseix_orderentry_nnf_v1_12.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nseix_orderentry_nnf_v1_12.prefs.show_application_messages then
    show.application_messages = omi_nse_nseix_orderentry_nnf_v1_12.prefs.show_application_messages
  end
  if show.headers ~= omi_nse_nseix_orderentry_nnf_v1_12.prefs.show_headers then
    show.headers = omi_nse_nseix_orderentry_nnf_v1_12.prefs.show_headers
  end
  if show.padding ~= omi_nse_nseix_orderentry_nnf_v1_12.prefs.show_padding then
    show.padding = omi_nse_nseix_orderentry_nnf_v1_12.prefs.show_padding
  end
  if show.structs ~= omi_nse_nseix_orderentry_nnf_v1_12.prefs.show_structs then
    show.structs = omi_nse_nseix_orderentry_nnf_v1_12.prefs.show_structs
  end
  if show.indexes ~= omi_nse_nseix_orderentry_nnf_v1_12.prefs.show_indexes then
    show.indexes = omi_nse_nseix_orderentry_nnf_v1_12.prefs.show_indexes
  end
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format ~= omi_nse_nseix_orderentry_nnf_v1_12.prefs.timestamp_format then
    nse_nseix_orderentry_nnf_v1_12.timestamp_format = omi_nse_nseix_orderentry_nnf_v1_12.prefs.timestamp_format
  end
  local sign, hours, minutes = string.match(omi_nse_nseix_orderentry_nnf_v1_12.prefs.zone_offset, "^%s*([+-]?)(%d%d?):?(%d?%d?)%s*$")

  nse_nseix_orderentry_nnf_v1_12.zone_offset = 0

  if hours then
    nse_nseix_orderentry_nnf_v1_12.zone_offset = tonumber(hours) * 3600 + (tonumber(minutes) or 0) * 60
  end

  if sign == "-" then
    nse_nseix_orderentry_nnf_v1_12.zone_offset = -nse_nseix_orderentry_nnf_v1_12.zone_offset
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
-- Nse NseIx OrderEntry Nnf 1.12 Fields
-----------------------------------------------------------------------

-- Account Number
nse_nseix_orderentry_nnf_v1_12.account_number = {}

-- Size: Account Number
nse_nseix_orderentry_nnf_v1_12.account_number.size = 10

-- Display: Account Number
nse_nseix_orderentry_nnf_v1_12.account_number.display = function(value)
  return "Account Number: "..value
end

-- Dissect: Account Number
nse_nseix_orderentry_nnf_v1_12.account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.account_number, range, value, display)

  return offset + length, value
end

-- Account Number 1
nse_nseix_orderentry_nnf_v1_12.account_number_1 = {}

-- Size: Account Number 1
nse_nseix_orderentry_nnf_v1_12.account_number_1.size = 10

-- Display: Account Number 1
nse_nseix_orderentry_nnf_v1_12.account_number_1.display = function(value)
  return "Account Number 1: "..value
end

-- Dissect: Account Number 1
nse_nseix_orderentry_nnf_v1_12.account_number_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.account_number_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.account_number_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.account_number_1, range, value, display)

  return offset + length, value
end

-- Action Code
nse_nseix_orderentry_nnf_v1_12.action_code = {}

-- Size: Action Code
nse_nseix_orderentry_nnf_v1_12.action_code.size = 3

-- Display: Action Code
nse_nseix_orderentry_nnf_v1_12.action_code.display = function(value)
  return "Action Code: "..value
end

-- Dissect: Action Code
nse_nseix_orderentry_nnf_v1_12.action_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.action_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.action_code, range, value, display)

  return offset + length, value
end

-- Activity Time
nse_nseix_orderentry_nnf_v1_12.activity_time = {}

-- Size: Activity Time
nse_nseix_orderentry_nnf_v1_12.activity_time.size = 4

-- Dissect: Activity Time
nse_nseix_orderentry_nnf_v1_12.activity_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.activity_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.activity_time
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.activity_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Activity Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Activity Type
nse_nseix_orderentry_nnf_v1_12.activity_type = {}

-- Size: Activity Type
nse_nseix_orderentry_nnf_v1_12.activity_type.size = 2

-- Display: Activity Type
nse_nseix_orderentry_nnf_v1_12.activity_type.labels = {
  ["B"] = "Activity Type: Buy (B)",
  ["S"] = "Activity Type: Sell (S)",
}

nse_nseix_orderentry_nnf_v1_12.activity_type.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.activity_type.labels[value] or "Activity Type: Unknown("..value..")"
end

-- Dissect: Activity Type
nse_nseix_orderentry_nnf_v1_12.activity_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.activity_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.activity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.activity_type, range, value, display)

  return offset + length, value
end

-- Alpha Char
nse_nseix_orderentry_nnf_v1_12.alpha_char = {}

-- Size: Alpha Char
nse_nseix_orderentry_nnf_v1_12.alpha_char.size = 2

-- Display: Alpha Char
nse_nseix_orderentry_nnf_v1_12.alpha_char.display = function(value)
  return "Alpha Char: "..value
end

-- Dissect: Alpha Char
nse_nseix_orderentry_nnf_v1_12.alpha_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.alpha_char.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.alpha_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.alpha_char, range, value, display)

  return offset + length, value
end

-- Auction
nse_nseix_orderentry_nnf_v1_12.auction = {}

-- Size: Auction
nse_nseix_orderentry_nnf_v1_12.auction.size = 2

-- Display: Auction
nse_nseix_orderentry_nnf_v1_12.auction.labels = {
  [0] = "Auction: Preopen (0)",
  [1] = "Auction: Open (1)",
  [2] = "Auction: Closed (2)",
  [3] = "Auction: Preopen End (3)",
  [4] = "Auction: Pre Close (4)",
  [5] = "Auction: Pre Close End (5)",
}

nse_nseix_orderentry_nnf_v1_12.auction.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.auction.labels[value] or "Auction: Unknown("..value..")"
end

-- Dissect: Auction
nse_nseix_orderentry_nnf_v1_12.auction.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.auction.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.auction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.auction, range, value, display)

  return offset + length, value
end

-- Batch 2 Start Time
nse_nseix_orderentry_nnf_v1_12.batch_2_start_time = {}

-- Size: Batch 2 Start Time
nse_nseix_orderentry_nnf_v1_12.batch_2_start_time.size = 4

-- Dissect: Batch 2 Start Time
nse_nseix_orderentry_nnf_v1_12.batch_2_start_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.batch_2_start_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.batch_2_start_time
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.batch_2_start_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Batch 2 Start Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Board Lot Quantity
nse_nseix_orderentry_nnf_v1_12.board_lot_quantity = {}

-- Size: Board Lot Quantity
nse_nseix_orderentry_nnf_v1_12.board_lot_quantity.size = 4

-- Display: Board Lot Quantity
nse_nseix_orderentry_nnf_v1_12.board_lot_quantity.display = function(value)
  return "Board Lot Quantity: "..value
end

-- Dissect: Board Lot Quantity
nse_nseix_orderentry_nnf_v1_12.board_lot_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.board_lot_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.board_lot_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.board_lot_quantity, range, value, display)

  return offset + length, value
end

-- Book
nse_nseix_orderentry_nnf_v1_12.book = {}

-- Size: Book
nse_nseix_orderentry_nnf_v1_12.book.size = 2

-- Display: Book
nse_nseix_orderentry_nnf_v1_12.book.display = function(value)
  return "Book: "..value
end

-- Dissect: Book
nse_nseix_orderentry_nnf_v1_12.book.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.book.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.book.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.book, range, value, display)

  return offset + length, value
end

-- Book Type
nse_nseix_orderentry_nnf_v1_12.book_type = {}

-- Size: Book Type
nse_nseix_orderentry_nnf_v1_12.book_type.size = 2

-- Display: Book Type
nse_nseix_orderentry_nnf_v1_12.book_type.labels = {
  [1] = "Book Type: Regular Lot Order (1)",
  [2] = "Book Type: Special Terms Order (2)",
  [3] = "Book Type: Stop Loss Or Mit Order (3)",
  [4] = "Book Type: Negotiated Order Or Nlt (4)",
  [5] = "Book Type: Odd Lot Order (5)",
  [6] = "Book Type: Spot Order (6)",
  [7] = "Book Type: Auction Order (7)",
}

nse_nseix_orderentry_nnf_v1_12.book_type.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.book_type.labels[value] or "Book Type: Unknown("..value..")"
end

-- Dissect: Book Type
nse_nseix_orderentry_nnf_v1_12.book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.book_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.book_type, range, value, display)

  return offset + length, value
end

-- Book Type 1
nse_nseix_orderentry_nnf_v1_12.book_type_1 = {}

-- Size: Book Type 1
nse_nseix_orderentry_nnf_v1_12.book_type_1.size = 2

-- Display: Book Type 1
nse_nseix_orderentry_nnf_v1_12.book_type_1.labels = {
  [1] = "Book Type 1: Regular Lot Order (1)",
  [2] = "Book Type 1: Special Terms Order (2)",
}

nse_nseix_orderentry_nnf_v1_12.book_type_1.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.book_type_1.labels[value] or "Book Type 1: Unknown("..value..")"
end

-- Dissect: Book Type 1
nse_nseix_orderentry_nnf_v1_12.book_type_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.book_type_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.book_type_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.book_type_1, range, value, display)

  return offset + length, value
end

-- Box Id
nse_nseix_orderentry_nnf_v1_12.box_id = {}

-- Size: Box Id
nse_nseix_orderentry_nnf_v1_12.box_id.size = 2

-- Display: Box Id
nse_nseix_orderentry_nnf_v1_12.box_id.display = function(value)
  return "Box Id: "..value
end

-- Dissect: Box Id
nse_nseix_orderentry_nnf_v1_12.box_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.box_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.box_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.box_id, range, value, display)

  return offset + length, value
end

-- Branch Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_buy_value_limit = {}

-- Size: Branch Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_buy_value_limit.size = 8

-- Display: Branch Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_buy_value_limit.display = function(value)
  return "Branch Buy Value Limit: "..string.format("%.0f", value)
end

-- Dissect: Branch Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_buy_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.branch_buy_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.branch_buy_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_buy_value_limit, range, value, display)

  return offset + length, value
end

-- Branch Id
nse_nseix_orderentry_nnf_v1_12.branch_id = {}

-- Size: Branch Id
nse_nseix_orderentry_nnf_v1_12.branch_id.size = 2

-- Display: Branch Id
nse_nseix_orderentry_nnf_v1_12.branch_id.display = function(value)
  return "Branch Id: "..value
end

-- Dissect: Branch Id
nse_nseix_orderentry_nnf_v1_12.branch_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.branch_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.branch_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_id, range, value, display)

  return offset + length, value
end

-- Branch Id 1
nse_nseix_orderentry_nnf_v1_12.branch_id_1 = {}

-- Size: Branch Id 1
nse_nseix_orderentry_nnf_v1_12.branch_id_1.size = 2

-- Display: Branch Id 1
nse_nseix_orderentry_nnf_v1_12.branch_id_1.display = function(value)
  return "Branch Id 1: "..value
end

-- Dissect: Branch Id 1
nse_nseix_orderentry_nnf_v1_12.branch_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.branch_id_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.branch_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_id_1, range, value, display)

  return offset + length, value
end

-- Branch Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_sell_value_limit = {}

-- Size: Branch Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_sell_value_limit.size = 8

-- Display: Branch Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_sell_value_limit.display = function(value)
  return "Branch Sell Value Limit: "..string.format("%.0f", value)
end

-- Dissect: Branch Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_sell_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.branch_sell_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.branch_sell_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_sell_value_limit, range, value, display)

  return offset + length, value
end

-- Branch Used Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_used_buy_value_limit = {}

-- Size: Branch Used Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_used_buy_value_limit.size = 8

-- Display: Branch Used Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_used_buy_value_limit.display = function(value)
  return "Branch Used Buy Value Limit: "..string.format("%.0f", value)
end

-- Dissect: Branch Used Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_used_buy_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.branch_used_buy_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.branch_used_buy_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_used_buy_value_limit, range, value, display)

  return offset + length, value
end

-- Branch Used Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_used_sell_value_limit = {}

-- Size: Branch Used Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_used_sell_value_limit.size = 8

-- Display: Branch Used Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_used_sell_value_limit.display = function(value)
  return "Branch Used Sell Value Limit: "..string.format("%.0f", value)
end

-- Dissect: Branch Used Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.branch_used_sell_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.branch_used_sell_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.branch_used_sell_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_used_sell_value_limit, range, value, display)

  return offset + length, value
end

-- Broad Cast Message
nse_nseix_orderentry_nnf_v1_12.broad_cast_message = {}

-- Size: Broad Cast Message
nse_nseix_orderentry_nnf_v1_12.broad_cast_message.size = 239

-- Display: Broad Cast Message
nse_nseix_orderentry_nnf_v1_12.broad_cast_message.display = function(value)
  return "Broad Cast Message: "..value
end

-- Dissect: Broad Cast Message
nse_nseix_orderentry_nnf_v1_12.broad_cast_message.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.broad_cast_message.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.broad_cast_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.broad_cast_message, range, value, display)

  return offset + length, value
end

-- Broad Cast Message Length
nse_nseix_orderentry_nnf_v1_12.broad_cast_message_length = {}

-- Size: Broad Cast Message Length
nse_nseix_orderentry_nnf_v1_12.broad_cast_message_length.size = 2

-- Display: Broad Cast Message Length
nse_nseix_orderentry_nnf_v1_12.broad_cast_message_length.display = function(value)
  return "Broad Cast Message Length: "..value
end

-- Dissect: Broad Cast Message Length
nse_nseix_orderentry_nnf_v1_12.broad_cast_message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.broad_cast_message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.broad_cast_message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.broad_cast_message_length, range, value, display)

  return offset + length, value
end

-- Broker Id
nse_nseix_orderentry_nnf_v1_12.broker_id = {}

-- Size: Broker Id
nse_nseix_orderentry_nnf_v1_12.broker_id.size = 5

-- Display: Broker Id
nse_nseix_orderentry_nnf_v1_12.broker_id.display = function(value)
  return "Broker Id: "..value
end

-- Dissect: Broker Id
nse_nseix_orderentry_nnf_v1_12.broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.broker_id, range, value, display)

  return offset + length, value
end

-- Broker Id 1
nse_nseix_orderentry_nnf_v1_12.broker_id_1 = {}

-- Size: Broker Id 1
nse_nseix_orderentry_nnf_v1_12.broker_id_1.size = 5

-- Display: Broker Id 1
nse_nseix_orderentry_nnf_v1_12.broker_id_1.display = function(value)
  return "Broker Id 1: "..value
end

-- Dissect: Broker Id 1
nse_nseix_orderentry_nnf_v1_12.broker_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.broker_id_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.broker_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.broker_id_1, range, value, display)

  return offset + length, value
end

-- Broker Name
nse_nseix_orderentry_nnf_v1_12.broker_name = {}

-- Size: Broker Name
nse_nseix_orderentry_nnf_v1_12.broker_name.size = 25

-- Display: Broker Name
nse_nseix_orderentry_nnf_v1_12.broker_name.display = function(value)
  return "Broker Name: "..value
end

-- Dissect: Broker Name
nse_nseix_orderentry_nnf_v1_12.broker_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.broker_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.broker_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.broker_name, range, value, display)

  return offset + length, value
end

-- Broker Number
nse_nseix_orderentry_nnf_v1_12.broker_number = {}

-- Size: Broker Number
nse_nseix_orderentry_nnf_v1_12.broker_number.size = 5

-- Display: Broker Number
nse_nseix_orderentry_nnf_v1_12.broker_number.display = function(value)
  return "Broker Number: "..value
end

-- Dissect: Broker Number
nse_nseix_orderentry_nnf_v1_12.broker_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.broker_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.broker_number, range, value, display)

  return offset + length, value
end

-- Broker Status
nse_nseix_orderentry_nnf_v1_12.broker_status = {}

-- Size: Broker Status
nse_nseix_orderentry_nnf_v1_12.broker_status.size = 1

-- Display: Broker Status
nse_nseix_orderentry_nnf_v1_12.broker_status.labels = {
  ["S"] = "Broker Status: Suspended (S)",
  ["A"] = "Broker Status: Active (A)",
  ["D"] = "Broker Status: Deactivated (D)",
  ["C"] = "Broker Status: Closeout (C)",
  ["V"] = "Broker Status: Voluntary Close Out (V)",
}

nse_nseix_orderentry_nnf_v1_12.broker_status.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.broker_status.labels[value] or "Broker Status: Unknown("..value..")"
end

-- Dissect: Broker Status
nse_nseix_orderentry_nnf_v1_12.broker_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.broker_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.broker_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.broker_status, range, value, display)

  return offset + length, value
end

-- Buy Account Number
nse_nseix_orderentry_nnf_v1_12.buy_account_number = {}

-- Size: Buy Account Number
nse_nseix_orderentry_nnf_v1_12.buy_account_number.size = 10

-- Display: Buy Account Number
nse_nseix_orderentry_nnf_v1_12.buy_account_number.display = function(value)
  return "Buy Account Number: "..value
end

-- Dissect: Buy Account Number
nse_nseix_orderentry_nnf_v1_12.buy_account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.buy_account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.buy_account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_account_number, range, value, display)

  return offset + length, value
end

-- Buy Broker Id
nse_nseix_orderentry_nnf_v1_12.buy_broker_id = {}

-- Size: Buy Broker Id
nse_nseix_orderentry_nnf_v1_12.buy_broker_id.size = 5

-- Display: Buy Broker Id
nse_nseix_orderentry_nnf_v1_12.buy_broker_id.display = function(value)
  return "Buy Broker Id: "..value
end

-- Dissect: Buy Broker Id
nse_nseix_orderentry_nnf_v1_12.buy_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.buy_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.buy_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_broker_id, range, value, display)

  return offset + length, value
end

-- Buy Giveup Flag
nse_nseix_orderentry_nnf_v1_12.buy_giveup_flag = {}

-- Size: Buy Giveup Flag
nse_nseix_orderentry_nnf_v1_12.buy_giveup_flag.size = 1

-- Display: Buy Giveup Flag
nse_nseix_orderentry_nnf_v1_12.buy_giveup_flag.display = function(value)
  return "Buy Giveup Flag: "..value
end

-- Dissect: Buy Giveup Flag
nse_nseix_orderentry_nnf_v1_12.buy_giveup_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.buy_giveup_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.buy_giveup_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_giveup_flag, range, value, display)

  return offset + length, value
end

-- Buy Open Close
nse_nseix_orderentry_nnf_v1_12.buy_open_close = {}

-- Size: Buy Open Close
nse_nseix_orderentry_nnf_v1_12.buy_open_close.size = 1

-- Display: Buy Open Close
nse_nseix_orderentry_nnf_v1_12.buy_open_close.labels = {
  ["O"] = "Buy Open Close: Open (O)",
  ["C"] = "Buy Open Close: Close (C)",
}

nse_nseix_orderentry_nnf_v1_12.buy_open_close.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.buy_open_close.labels[value] or "Buy Open Close: Unknown("..value..")"
end

-- Dissect: Buy Open Close
nse_nseix_orderentry_nnf_v1_12.buy_open_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.buy_open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.buy_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_open_close, range, value, display)

  return offset + length, value
end

-- Buy Participant
nse_nseix_orderentry_nnf_v1_12.buy_participant = {}

-- Size: Buy Participant
nse_nseix_orderentry_nnf_v1_12.buy_participant.size = 12

-- Display: Buy Participant
nse_nseix_orderentry_nnf_v1_12.buy_participant.display = function(value)
  return "Buy Participant: "..value
end

-- Dissect: Buy Participant
nse_nseix_orderentry_nnf_v1_12.buy_participant.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.buy_participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.buy_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_participant, range, value, display)

  return offset + length, value
end

-- Buy Sell
nse_nseix_orderentry_nnf_v1_12.buy_sell = {}

-- Size: Buy Sell
nse_nseix_orderentry_nnf_v1_12.buy_sell.size = 2

-- Display: Buy Sell
nse_nseix_orderentry_nnf_v1_12.buy_sell.labels = {
  [1] = "Buy Sell: Buy Order (1)",
  [2] = "Buy Sell: Sell Order (2)",
}

nse_nseix_orderentry_nnf_v1_12.buy_sell.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.buy_sell.labels[value] or "Buy Sell: Unknown("..value..")"
end

-- Dissect: Buy Sell
nse_nseix_orderentry_nnf_v1_12.buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.buy_sell.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_sell, range, value, display)

  return offset + length, value
end

-- Buy Sell 1
nse_nseix_orderentry_nnf_v1_12.buy_sell_1 = {}

-- Size: Buy Sell 1
nse_nseix_orderentry_nnf_v1_12.buy_sell_1.size = 2

-- Display: Buy Sell 1
nse_nseix_orderentry_nnf_v1_12.buy_sell_1.display = function(value)
  return "Buy Sell 1: "..value
end

-- Dissect: Buy Sell 1
nse_nseix_orderentry_nnf_v1_12.buy_sell_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.buy_sell_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.buy_sell_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_sell_1, range, value, display)

  return offset + length, value
end

-- Buy Sell 2
nse_nseix_orderentry_nnf_v1_12.buy_sell_2 = {}

-- Size: Buy Sell 2
nse_nseix_orderentry_nnf_v1_12.buy_sell_2.size = 2

-- Display: Buy Sell 2
nse_nseix_orderentry_nnf_v1_12.buy_sell_2.display = function(value)
  return "Buy Sell 2: "..value
end

-- Dissect: Buy Sell 2
nse_nseix_orderentry_nnf_v1_12.buy_sell_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.buy_sell_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.buy_sell_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_sell_2, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nse_nseix_orderentry_nnf_v1_12.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nse_nseix_orderentry_nnf_v1_12.buy_sell_indicator.size = 2

-- Display: Buy Sell Indicator
nse_nseix_orderentry_nnf_v1_12.buy_sell_indicator.labels = {
  [1] = "Buy Sell Indicator: Buy Order (1)",
  [2] = "Buy Sell Indicator: Sell Order (2)",
}

nse_nseix_orderentry_nnf_v1_12.buy_sell_indicator.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.buy_sell_indicator.labels[value] or "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nse_nseix_orderentry_nnf_v1_12.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- C Filler
nse_nseix_orderentry_nnf_v1_12.c_filler = {}

-- Size: C Filler
nse_nseix_orderentry_nnf_v1_12.c_filler.size = 1

-- Display: C Filler
nse_nseix_orderentry_nnf_v1_12.c_filler.display = function(value)
  return "C Filler: "..value
end

-- Dissect: C Filler
nse_nseix_orderentry_nnf_v1_12.c_filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.c_filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.c_filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.c_filler, range, value, display)

  return offset + length, value
end

-- C Ord Filler
nse_nseix_orderentry_nnf_v1_12.c_ord_filler = {}

-- Size: C Ord Filler
nse_nseix_orderentry_nnf_v1_12.c_ord_filler.size = 24

-- Display: C Ord Filler
nse_nseix_orderentry_nnf_v1_12.c_ord_filler.display = function(value)
  return "C Ord Filler: "..value
end

-- Dissect: C Ord Filler
nse_nseix_orderentry_nnf_v1_12.c_ord_filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.c_ord_filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.c_ord_filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.c_ord_filler, range, value, display)

  return offset + length, value
end

-- Ca Level
nse_nseix_orderentry_nnf_v1_12.ca_level = {}

-- Size: Ca Level
nse_nseix_orderentry_nnf_v1_12.ca_level.size = 2

-- Display: Ca Level
nse_nseix_orderentry_nnf_v1_12.ca_level.display = function(value)
  return "Ca Level: "..value
end

-- Dissect: Ca Level
nse_nseix_orderentry_nnf_v1_12.ca_level.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.ca_level.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.ca_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.ca_level, range, value, display)

  return offset + length, value
end

-- Ca Level 1
nse_nseix_orderentry_nnf_v1_12.ca_level_1 = {}

-- Size: Ca Level 1
nse_nseix_orderentry_nnf_v1_12.ca_level_1.size = 2

-- Display: Ca Level 1
nse_nseix_orderentry_nnf_v1_12.ca_level_1.display = function(value)
  return "Ca Level 1: "..value
end

-- Dissect: Ca Level 1
nse_nseix_orderentry_nnf_v1_12.ca_level_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.ca_level_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.ca_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.ca_level_1, range, value, display)

  return offset + length, value
end

-- Ca Level 2
nse_nseix_orderentry_nnf_v1_12.ca_level_2 = {}

-- Size: Ca Level 2
nse_nseix_orderentry_nnf_v1_12.ca_level_2.size = 2

-- Display: Ca Level 2
nse_nseix_orderentry_nnf_v1_12.ca_level_2.display = function(value)
  return "Ca Level 2: "..value
end

-- Dissect: Ca Level 2
nse_nseix_orderentry_nnf_v1_12.ca_level_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.ca_level_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.ca_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.ca_level_2, range, value, display)

  return offset + length, value
end

-- Chg Open Interest
nse_nseix_orderentry_nnf_v1_12.chg_open_interest = {}

-- Size: Chg Open Interest
nse_nseix_orderentry_nnf_v1_12.chg_open_interest.size = 4

-- Display: Chg Open Interest
nse_nseix_orderentry_nnf_v1_12.chg_open_interest.display = function(value)
  return "Chg Open Interest: "..value
end

-- Dissect: Chg Open Interest
nse_nseix_orderentry_nnf_v1_12.chg_open_interest.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.chg_open_interest.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.chg_open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.chg_open_interest, range, value, display)

  return offset + length, value
end

-- Clearing Status
nse_nseix_orderentry_nnf_v1_12.clearing_status = {}

-- Size: Clearing Status
nse_nseix_orderentry_nnf_v1_12.clearing_status.size = 1

-- Display: Clearing Status
nse_nseix_orderentry_nnf_v1_12.clearing_status.labels = {
  ["A"] = "Clearing Status: Active (A)",
  ["S"] = "Clearing Status: Suspended (S)",
  ["D"] = "Clearing Status: Deactivated (D)",
  ["V"] = "Clearing Status: Voluntary Close Out (V)",
}

nse_nseix_orderentry_nnf_v1_12.clearing_status.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.clearing_status.labels[value] or "Clearing Status: Unknown("..value..")"
end

-- Dissect: Clearing Status
nse_nseix_orderentry_nnf_v1_12.clearing_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.clearing_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.clearing_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.clearing_status, range, value, display)

  return offset + length, value
end

-- Closeout Flag
nse_nseix_orderentry_nnf_v1_12.closeout_flag = {}

-- Size: Closeout Flag
nse_nseix_orderentry_nnf_v1_12.closeout_flag.size = 1

-- Display: Closeout Flag
nse_nseix_orderentry_nnf_v1_12.closeout_flag.display = function(value)
  return "Closeout Flag: "..value
end

-- Dissect: Closeout Flag
nse_nseix_orderentry_nnf_v1_12.closeout_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.closeout_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.closeout_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.closeout_flag, range, value, display)

  return offset + length, value
end

-- Closing Price
nse_nseix_orderentry_nnf_v1_12.closing_price = {}

-- Size: Closing Price
nse_nseix_orderentry_nnf_v1_12.closing_price.size = 4

-- Display: Closing Price
nse_nseix_orderentry_nnf_v1_12.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
nse_nseix_orderentry_nnf_v1_12.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.closing_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Col User Bit
nse_nseix_orderentry_nnf_v1_12.col_user_bit = {}

-- Size: Col User Bit
nse_nseix_orderentry_nnf_v1_12.col_user_bit.size = 1

-- Display: Col User Bit
nse_nseix_orderentry_nnf_v1_12.col_user_bit.labels = {
  ["0"] = "Col User Bit: Disable Col Status (0)",
  ["1"] = "Col User Bit: Enable Col Status (1)",
}

nse_nseix_orderentry_nnf_v1_12.col_user_bit.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.col_user_bit.labels[value] or "Col User Bit: Unknown("..value..")"
end

-- Dissect: Col User Bit
nse_nseix_orderentry_nnf_v1_12.col_user_bit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.col_user_bit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.col_user_bit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.col_user_bit, range, value, display)

  return offset + length, value
end

-- Colour
nse_nseix_orderentry_nnf_v1_12.colour = {}

-- Size: Colour
nse_nseix_orderentry_nnf_v1_12.colour.size = 50

-- Display: Colour
nse_nseix_orderentry_nnf_v1_12.colour.display = function(value)
  return "Colour: "..value
end

-- Dissect: Colour
nse_nseix_orderentry_nnf_v1_12.colour.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.colour.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.colour.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.colour, range, value, display)

  return offset + length, value
end

-- Competitor Period
nse_nseix_orderentry_nnf_v1_12.competitor_period = {}

-- Size: Competitor Period
nse_nseix_orderentry_nnf_v1_12.competitor_period.size = 2

-- Display: Competitor Period
nse_nseix_orderentry_nnf_v1_12.competitor_period.display = function(value)
  return "Competitor Period: "..value
end

-- Dissect: Competitor Period
nse_nseix_orderentry_nnf_v1_12.competitor_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.competitor_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.competitor_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.competitor_period, range, value, display)

  return offset + length, value
end

-- Competitor Period 1
nse_nseix_orderentry_nnf_v1_12.competitor_period_1 = {}

-- Size: Competitor Period 1
nse_nseix_orderentry_nnf_v1_12.competitor_period_1.size = 2

-- Display: Competitor Period 1
nse_nseix_orderentry_nnf_v1_12.competitor_period_1.display = function(value)
  return "Competitor Period 1: "..value
end

-- Dissect: Competitor Period 1
nse_nseix_orderentry_nnf_v1_12.competitor_period_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.competitor_period_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.competitor_period_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.competitor_period_1, range, value, display)

  return offset + length, value
end

-- Counter Broker Id
nse_nseix_orderentry_nnf_v1_12.counter_broker_id = {}

-- Size: Counter Broker Id
nse_nseix_orderentry_nnf_v1_12.counter_broker_id.size = 5

-- Display: Counter Broker Id
nse_nseix_orderentry_nnf_v1_12.counter_broker_id.display = function(value)
  return "Counter Broker Id: "..value
end

-- Dissect: Counter Broker Id
nse_nseix_orderentry_nnf_v1_12.counter_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.counter_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.counter_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.counter_broker_id, range, value, display)

  return offset + length, value
end

-- Counter Order Mkt Type
nse_nseix_orderentry_nnf_v1_12.counter_order_mkt_type = {}

-- Size: Counter Order Mkt Type
nse_nseix_orderentry_nnf_v1_12.counter_order_mkt_type.size = 2

-- Display: Counter Order Mkt Type
nse_nseix_orderentry_nnf_v1_12.counter_order_mkt_type.labels = {
  [1] = "Counter Order Mkt Type: Normal Market (1)",
  [2] = "Counter Order Mkt Type: Odd Lot Market (2)",
  [3] = "Counter Order Mkt Type: Spot Market (3)",
  [4] = "Counter Order Mkt Type: Auction Market (4)",
}

nse_nseix_orderentry_nnf_v1_12.counter_order_mkt_type.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.counter_order_mkt_type.labels[value] or "Counter Order Mkt Type: Unknown("..value..")"
end

-- Dissect: Counter Order Mkt Type
nse_nseix_orderentry_nnf_v1_12.counter_order_mkt_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.counter_order_mkt_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.counter_order_mkt_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.counter_order_mkt_type, range, value, display)

  return offset + length, value
end

-- Counter Party Broker Id
nse_nseix_orderentry_nnf_v1_12.counter_party_broker_id = {}

-- Size: Counter Party Broker Id
nse_nseix_orderentry_nnf_v1_12.counter_party_broker_id.size = 5

-- Display: Counter Party Broker Id
nse_nseix_orderentry_nnf_v1_12.counter_party_broker_id.display = function(value)
  return "Counter Party Broker Id: "..value
end

-- Dissect: Counter Party Broker Id
nse_nseix_orderentry_nnf_v1_12.counter_party_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.counter_party_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.counter_party_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.counter_party_broker_id, range, value, display)

  return offset + length, value
end

-- Counter Trader Order Number
nse_nseix_orderentry_nnf_v1_12.counter_trader_order_number = {}

-- Size: Counter Trader Order Number
nse_nseix_orderentry_nnf_v1_12.counter_trader_order_number.size = 8

-- Display: Counter Trader Order Number
nse_nseix_orderentry_nnf_v1_12.counter_trader_order_number.display = function(value)
  return "Counter Trader Order Number: "..string.format("%.0f", value)
end

-- Dissect: Counter Trader Order Number
nse_nseix_orderentry_nnf_v1_12.counter_trader_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.counter_trader_order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.counter_trader_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.counter_trader_order_number, range, value, display)

  return offset + length, value
end

-- Cryptographic Iv
nse_nseix_orderentry_nnf_v1_12.cryptographic_iv = {}

-- Size: Cryptographic Iv
nse_nseix_orderentry_nnf_v1_12.cryptographic_iv.size = 16

-- Display: Cryptographic Iv
nse_nseix_orderentry_nnf_v1_12.cryptographic_iv.display = function(value)
  return "Cryptographic Iv: "..value
end

-- Dissect: Cryptographic Iv
nse_nseix_orderentry_nnf_v1_12.cryptographic_iv.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.cryptographic_iv.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.cryptographic_iv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.cryptographic_iv, range, value, display)

  return offset + length, value
end

-- Cryptographic Key
nse_nseix_orderentry_nnf_v1_12.cryptographic_key = {}

-- Size: Cryptographic Key
nse_nseix_orderentry_nnf_v1_12.cryptographic_key.size = 32

-- Display: Cryptographic Key
nse_nseix_orderentry_nnf_v1_12.cryptographic_key.display = function(value)
  return "Cryptographic Key: "..value
end

-- Dissect: Cryptographic Key
nse_nseix_orderentry_nnf_v1_12.cryptographic_key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.cryptographic_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.cryptographic_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.cryptographic_key, range, value, display)

  return offset + length, value
end

-- Cumulative Quantity
nse_nseix_orderentry_nnf_v1_12.cumulative_quantity = {}

-- Size: Cumulative Quantity
nse_nseix_orderentry_nnf_v1_12.cumulative_quantity.size = 4

-- Display: Cumulative Quantity
nse_nseix_orderentry_nnf_v1_12.cumulative_quantity.display = function(value)
  return "Cumulative Quantity: "..value
end

-- Dissect: Cumulative Quantity
nse_nseix_orderentry_nnf_v1_12.cumulative_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.cumulative_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.cumulative_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.cumulative_quantity, range, value, display)

  return offset + length, value
end

-- Data Payload
nse_nseix_orderentry_nnf_v1_12.data_payload = {}

-- Display: Data Payload
nse_nseix_orderentry_nnf_v1_12.data_payload.display = function(value)
  return "Data Payload: "..value
end

-- Dissect runtime sized field: Data Payload
nse_nseix_orderentry_nnf_v1_12.data_payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.data_payload.display(value, packet, parent, size)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.data_payload, range, range:raw(), display)

  return offset + size, value
end

-- Default Settlement Period Auction
nse_nseix_orderentry_nnf_v1_12.default_settlement_period_auction = {}

-- Size: Default Settlement Period Auction
nse_nseix_orderentry_nnf_v1_12.default_settlement_period_auction.size = 2

-- Display: Default Settlement Period Auction
nse_nseix_orderentry_nnf_v1_12.default_settlement_period_auction.display = function(value)
  return "Default Settlement Period Auction: "..value
end

-- Dissect: Default Settlement Period Auction
nse_nseix_orderentry_nnf_v1_12.default_settlement_period_auction.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.default_settlement_period_auction.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.default_settlement_period_auction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.default_settlement_period_auction, range, value, display)

  return offset + length, value
end

-- Default Settlement Period Normal
nse_nseix_orderentry_nnf_v1_12.default_settlement_period_normal = {}

-- Size: Default Settlement Period Normal
nse_nseix_orderentry_nnf_v1_12.default_settlement_period_normal.size = 2

-- Display: Default Settlement Period Normal
nse_nseix_orderentry_nnf_v1_12.default_settlement_period_normal.display = function(value)
  return "Default Settlement Period Normal: "..value
end

-- Dissect: Default Settlement Period Normal
nse_nseix_orderentry_nnf_v1_12.default_settlement_period_normal.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.default_settlement_period_normal.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.default_settlement_period_normal.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.default_settlement_period_normal, range, value, display)

  return offset + length, value
end

-- Default Settlement Period Spot
nse_nseix_orderentry_nnf_v1_12.default_settlement_period_spot = {}

-- Size: Default Settlement Period Spot
nse_nseix_orderentry_nnf_v1_12.default_settlement_period_spot.size = 2

-- Display: Default Settlement Period Spot
nse_nseix_orderentry_nnf_v1_12.default_settlement_period_spot.display = function(value)
  return "Default Settlement Period Spot: "..value
end

-- Dissect: Default Settlement Period Spot
nse_nseix_orderentry_nnf_v1_12.default_settlement_period_spot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.default_settlement_period_spot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.default_settlement_period_spot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.default_settlement_period_spot, range, value, display)

  return offset + length, value
end

-- Deleted
nse_nseix_orderentry_nnf_v1_12.deleted = {}

-- Size: Deleted
nse_nseix_orderentry_nnf_v1_12.deleted.size = 1

-- Display: Deleted
nse_nseix_orderentry_nnf_v1_12.deleted.display = function(value)
  return "Deleted: "..value
end

-- Dissect: Deleted
nse_nseix_orderentry_nnf_v1_12.deleted.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.deleted.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.deleted.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.deleted, range, value, display)

  return offset + length, value
end

-- Disclosed Quantity Percent Allowed
nse_nseix_orderentry_nnf_v1_12.disclosed_quantity_percent_allowed = {}

-- Size: Disclosed Quantity Percent Allowed
nse_nseix_orderentry_nnf_v1_12.disclosed_quantity_percent_allowed.size = 2

-- Display: Disclosed Quantity Percent Allowed
nse_nseix_orderentry_nnf_v1_12.disclosed_quantity_percent_allowed.display = function(value)
  return "Disclosed Quantity Percent Allowed: "..value
end

-- Dissect: Disclosed Quantity Percent Allowed
nse_nseix_orderentry_nnf_v1_12.disclosed_quantity_percent_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.disclosed_quantity_percent_allowed.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.disclosed_quantity_percent_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.disclosed_quantity_percent_allowed, range, value, display)

  return offset + length, value
end

-- Disclosed Vol 1
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_1 = {}

-- Size: Disclosed Vol 1
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_1.size = 4

-- Display: Disclosed Vol 1
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_1.display = function(value)
  return "Disclosed Vol 1: "..value
end

-- Dissect: Disclosed Vol 1
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.disclosed_vol_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.disclosed_vol_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.disclosed_vol_1, range, value, display)

  return offset + length, value
end

-- Disclosed Vol 2
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_2 = {}

-- Size: Disclosed Vol 2
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_2.size = 4

-- Display: Disclosed Vol 2
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_2.display = function(value)
  return "Disclosed Vol 2: "..value
end

-- Dissect: Disclosed Vol 2
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.disclosed_vol_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.disclosed_vol_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.disclosed_vol_2, range, value, display)

  return offset + length, value
end

-- Disclosed Vol Remaining 1
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_1 = {}

-- Size: Disclosed Vol Remaining 1
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_1.size = 4

-- Display: Disclosed Vol Remaining 1
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_1.display = function(value)
  return "Disclosed Vol Remaining 1: "..value
end

-- Dissect: Disclosed Vol Remaining 1
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.disclosed_vol_remaining_1, range, value, display)

  return offset + length, value
end

-- Disclosed Vol Remaining 2
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_2 = {}

-- Size: Disclosed Vol Remaining 2
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_2.size = 4

-- Display: Disclosed Vol Remaining 2
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_2.display = function(value)
  return "Disclosed Vol Remaining 2: "..value
end

-- Dissect: Disclosed Vol Remaining 2
nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.disclosed_vol_remaining_2, range, value, display)

  return offset + length, value
end

-- Disclosed Volume
nse_nseix_orderentry_nnf_v1_12.disclosed_volume = {}

-- Size: Disclosed Volume
nse_nseix_orderentry_nnf_v1_12.disclosed_volume.size = 4

-- Display: Disclosed Volume
nse_nseix_orderentry_nnf_v1_12.disclosed_volume.display = function(value)
  return "Disclosed Volume: "..value
end

-- Dissect: Disclosed Volume
nse_nseix_orderentry_nnf_v1_12.disclosed_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.disclosed_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.disclosed_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.disclosed_volume, range, value, display)

  return offset + length, value
end

-- Disclosed Volume Remaining
nse_nseix_orderentry_nnf_v1_12.disclosed_volume_remaining = {}

-- Size: Disclosed Volume Remaining
nse_nseix_orderentry_nnf_v1_12.disclosed_volume_remaining.size = 4

-- Display: Disclosed Volume Remaining
nse_nseix_orderentry_nnf_v1_12.disclosed_volume_remaining.display = function(value)
  return "Disclosed Volume Remaining: "..value
end

-- Dissect: Disclosed Volume Remaining
nse_nseix_orderentry_nnf_v1_12.disclosed_volume_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.disclosed_volume_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.disclosed_volume_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.disclosed_volume_remaining, range, value, display)

  return offset + length, value
end

-- Download Payload
nse_nseix_orderentry_nnf_v1_12.download_payload = {}

-- Display: Download Payload
nse_nseix_orderentry_nnf_v1_12.download_payload.display = function(value)
  return "Download Payload: "..value
end

-- Dissect runtime sized field: Download Payload
nse_nseix_orderentry_nnf_v1_12.download_payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.download_payload.display(value, packet, parent, size)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.download_payload, range, range:raw(), display)

  return offset + size, value
end

-- Echo Back
nse_nseix_orderentry_nnf_v1_12.echo_back = {}

-- Size: Echo Back
nse_nseix_orderentry_nnf_v1_12.echo_back.size = 16

-- Display: Echo Back
nse_nseix_orderentry_nnf_v1_12.echo_back.display = function(value)
  return "Echo Back: "..value
end

-- Dissect: Echo Back
nse_nseix_orderentry_nnf_v1_12.echo_back.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.echo_back.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.echo_back.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.echo_back, range, value, display)

  return offset + length, value
end

-- End Alpha 1
nse_nseix_orderentry_nnf_v1_12.end_alpha_1 = {}

-- Size: End Alpha 1
nse_nseix_orderentry_nnf_v1_12.end_alpha_1.size = 2

-- Display: End Alpha 1
nse_nseix_orderentry_nnf_v1_12.end_alpha_1.display = function(value)
  return "End Alpha 1: "..value
end

-- Dissect: End Alpha 1
nse_nseix_orderentry_nnf_v1_12.end_alpha_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.end_alpha_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.end_alpha_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.end_alpha_1, range, value, display)

  return offset + length, value
end

-- End Time
nse_nseix_orderentry_nnf_v1_12.end_time = {}

-- Size: End Time
nse_nseix_orderentry_nnf_v1_12.end_time.size = 4

-- Dissect: End Time
nse_nseix_orderentry_nnf_v1_12.end_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.end_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.end_time
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.end_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("End Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Entry Date Time
nse_nseix_orderentry_nnf_v1_12.entry_date_time = {}

-- Size: Entry Date Time
nse_nseix_orderentry_nnf_v1_12.entry_date_time.size = 4

-- Dissect: Entry Date Time
nse_nseix_orderentry_nnf_v1_12.entry_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.entry_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.entry_date_time
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.entry_date_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Entry Date Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Entry Date Time 1
nse_nseix_orderentry_nnf_v1_12.entry_date_time_1 = {}

-- Size: Entry Date Time 1
nse_nseix_orderentry_nnf_v1_12.entry_date_time_1.size = 4

-- Dissect: Entry Date Time 1
nse_nseix_orderentry_nnf_v1_12.entry_date_time_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.entry_date_time_1.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.entry_date_time_1
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.entry_date_time_1_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Entry Date Time 1: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Error Code
nse_nseix_orderentry_nnf_v1_12.error_code = {}

-- Size: Error Code
nse_nseix_orderentry_nnf_v1_12.error_code.size = 2

-- Display: Error Code
nse_nseix_orderentry_nnf_v1_12.error_code.display = function(value)
  if value == 293 then
    return "Error Code: Invalid Instrument Type (293)"
  end
  if value == 509 then
    return "Error Code: Order Number Invalid (509)"
  end
  if value == 8049 then
    return "Error Code: Ord Cxl Initiator Auc Not Allowed (8049)"
  end
  if value == 8485 then
    return "Error Code: Auction Number Invalid (8485)"
  end
  if value == 16000 then
    return "Error Code: Market Closed (16000)"
  end
  if value == 16001 then
    return "Error Code: E Invalid User (16001)"
  end
  if value == 16003 then
    return "Error Code: Error Bad Trans Code (16003)"
  end
  if value == 16004 then
    return "Error Code: E User Already Signed On (16004)"
  end
  if value == 16005 then
    return "Error Code: E Invalid Signoff (16005)"
  end
  if value == 16006 then
    return "Error Code: E Invalid Signon (16006)"
  end
  if value == 16007 then
    return "Error Code: E Signon Not Possible (16007)"
  end
  if value == 16011 then
    return "Error Code: E Duplicate Report Request (16011)"
  end
  if value == 16012 then
    return "Error Code: Err Invalid Symbol (16012)"
  end
  if value == 16014 then
    return "Error Code: E Not Your Order (16014)"
  end
  if value == 16015 then
    return "Error Code: E Not Your Fill (16015)"
  end
  if value == 16016 then
    return "Error Code: E Invalid Fill Number (16016)"
  end
  if value == 16019 then
    return "Error Code: E Stock Not Found (16019)"
  end
  if value == 16035 then
    return "Error Code: Security Not Available (16035)"
  end
  if value == 16041 then
    return "Error Code: Broker Not Found (16041)"
  end
  if value == 16042 then
    return "Error Code: User Not Found (16042)"
  end
  if value == 16043 then
    return "Error Code: Duplicate Record (16043)"
  end
  if value == 16044 then
    return "Error Code: E Order Modified (16044)"
  end
  if value == 16049 then
    return "Error Code: Stock Suspended (16049)"
  end
  if value == 16052 then
    return "Error Code: Err Function Not Available (16052)"
  end
  if value == 16053 then
    return "Error Code: E Change Password (16053)"
  end
  if value == 16054 then
    return "Error Code: Err Invalid Branch (16054)"
  end
  if value == 16056 then
    return "Error Code: Oe Program Error (16056)"
  end
  if value == 16086 then
    return "Error Code: E Dup Trd Cxl Request (16086)"
  end
  if value == 16098 then
    return "Error Code: Err Invalid Buyer User Id (16098)"
  end
  if value == 16099 then
    return "Error Code: Err Invalid Seller User Id (16099)"
  end
  if value == 16100 then
    return "Error Code: E Invalid Version (16100)"
  end
  if value == 16104 then
    return "Error Code: Oe System Error (16104)"
  end
  if value == 16134 then
    return "Error Code: Err User Disabled (16134)"
  end
  if value == 16148 then
    return "Error Code: Err Invalid User Id (16148)"
  end
  if value == 16154 then
    return "Error Code: Err Invalid Trader Id (16154)"
  end
  if value == 16169 then
    return "Error Code: Oe Ato In Open (16169)"
  end
  if value == 16196 then
    return "Error Code: Ord Not Allowed In Preopen (16196)"
  end
  if value == 16197 then
    return "Error Code: Ord Not Allowed In Preclose (16197)"
  end
  if value == 16198 then
    return "Error Code: E Dup Request (16198)"
  end
  if value == 16227 then
    return "Error Code: E Only Cp Allowed (16227)"
  end
  if value == 16228 then
    return "Error Code: E Sl Mit Nt Not Allowed Pclose (16228)"
  end
  if value == 16229 then
    return "Error Code: E Gtc Gtd Ord Not Allowed Pclose (16229)"
  end
  if value == 16230 then
    return "Error Code: Oe Cont Mod Not Allowed (16230)"
  end
  if value == 16231 then
    return "Error Code: Trd Cont Mod Not Allowed (16231)"
  end
  if value == 16233 then
    return "Error Code: Str Pro Partivipant Invalid (16233)"
  end
  if value == 16247 then
    return "Error Code: Error Invalid Price (16247)"
  end
  if value == 16251 then
    return "Error Code: Oe Diff Trd Mod Vol (16251)"
  end
  if value == 16273 then
    return "Error Code: Record Not Found (16273)"
  end
  if value == 16278 then
    return "Error Code: Oe Markets Closed (16278)"
  end
  if value == 16279 then
    return "Error Code: Oe Security Not Admitted (16279)"
  end
  if value == 16280 then
    return "Error Code: Oe Security Matured (16280)"
  end
  if value == 16281 then
    return "Error Code: Oe Security Expelled (16281)"
  end
  if value == 16282 then
    return "Error Code: Oe Issued Cap Exceeds (16282)"
  end
  if value == 16283 then
    return "Error Code: Oe Price Not Mult (16283)"
  end
  if value == 16284 then
    return "Error Code: Oe Price Exceeds Day Min Max (16284)"
  end
  if value == 16285 then
    return "Error Code: Oe Is Not Active (16285)"
  end
  if value == 16300 then
    return "Error Code: E System Wrong State (16300)"
  end
  if value == 16303 then
    return "Error Code: Oe Auction Pending (16303)"
  end
  if value == 16307 then
    return "Error Code: Oe Qty Freeze Can (16307)"
  end
  if value == 16308 then
    return "Error Code: Oe Price Freeze Can (16308)"
  end
  if value == 16311 then
    return "Error Code: Oe Sol Period Over (16311)"
  end
  if value == 16312 then
    return "Error Code: Oe Comp Period Over (16312)"
  end
  if value == 16313 then
    return "Error Code: Oe Auc Period Greater (16313)"
  end
  if value == 16315 then
    return "Error Code: Oe Limit Trigger (16315)"
  end
  if value == 16316 then
    return "Error Code: Oe Trigger Price Not Mult (16316)"
  end
  if value == 16317 then
    return "Error Code: Oe No Aon Attrib (16317)"
  end
  if value == 16318 then
    return "Error Code: Oe No Mf Attrib (16318)"
  end
  if value == 16319 then
    return "Error Code: Oe No Aon In Attrib 1 (16319)"
  end
  if value == 16320 then
    return "Error Code: Oe No Mf Attrib 1 (16320)"
  end
  if value == 16321 then
    return "Error Code: Oe Mf Greater Disc (16321)"
  end
  if value == 16322 then
    return "Error Code: Oe Mf Not Mult (16322)"
  end
  if value == 16323 then
    return "Error Code: Oe Mf Greater Original (16323)"
  end
  if value == 16324 then
    return "Error Code: Oe Disc Greater Original (16324)"
  end
  if value == 16325 then
    return "Error Code: Oe Disc Not Mult (16325)"
  end
  if value == 16326 then
    return "Error Code: Oe Gtd Greater (16326)"
  end
  if value == 16327 then
    return "Error Code: Oe Quantity Gerater Rl (16327)"
  end
  if value == 16328 then
    return "Error Code: Oe Quantity Not Mult Rl (16328)"
  end
  if value == 16329 then
    return "Error Code: Oe Broker Not Permitted (16329)"
  end
  if value == 16330 then
    return "Error Code: Oe Is Suspended (16330)"
  end
  if value == 16333 then
    return "Error Code: Oe Branch Limit Exceeded (16333)"
  end
  if value == 16343 then
    return "Error Code: Oe Ord Can Changed (16343)"
  end
  if value == 16344 then
    return "Error Code: Oe Ord Cannot Cancel (16344)"
  end
  if value == 16345 then
    return "Error Code: Oe Init Ord Cancel (16345)"
  end
  if value == 16346 then
    return "Error Code: Oe Ord Cannot Modify (16346)"
  end
  if value == 16348 then
    return "Error Code: Err Trading Not Allowed (16348)"
  end
  if value == 16357 then
    return "Error Code: Oe Nt Rejected (16357)"
  end
  if value == 16363 then
    return "Error Code: Chg St Exists (16363)"
  end
  if value == 16369 then
    return "Error Code: Oe Security In Preopen (16369)"
  end
  if value == 16372 then
    return "Error Code: Oe Inq Not Allowed (16372)"
  end
  if value == 16387 then
    return "Error Code: Oe Security Ineligible (16387)"
  end
  if value == 16388 then
    return "Error Code: Err Fok Order Cancelled (16388)"
  end
  if value == 16392 then
    return "Error Code: Turnover Limit Not Provided (16392)"
  end
  if value == 16400 then
    return "Error Code: Oe Max Dq Allowed (16400)"
  end
  if value == 16404 then
    return "Error Code: Oe Admin Susp Can (16404)"
  end
  if value == 16405 then
    return "Error Code: E Invalid Buy Sell Type (16405)"
  end
  if value == 16414 then
    return "Error Code: E Invalid Pro Client (16414)"
  end
  if value == 16415 then
    return "Error Code: E Invalid Instructions (16415)"
  end
  if value == 16416 then
    return "Error Code: E Invalid Order Parameters (16416)"
  end
  if value == 16418 then
    return "Error Code: E Nnf Req Exceeded (16418)"
  end
  if value == 16419 then
    return "Error Code: Invalid Order (16419)"
  end
  if value == 16438 then
    return "Error Code: Ord Attribute Not Allowed In Preopen Preclose (16438)"
  end
  if value == 16440 then
    return "Error Code: E Gtd Gt Maturity (16440)"
  end
  if value == 16441 then
    return "Error Code: E Dq Ord Not Allowed Popen (16441)"
  end
  if value == 16442 then
    return "Error Code: E St Ord Not Allowed Popen (16442)"
  end
  if value == 16443 then
    return "Error Code: E Ord Lim Exceeds Ord Val Lim (16443)"
  end
  if value == 16445 then
    return "Error Code: Sl Not Allowed (16445)"
  end
  if value == 16446 then
    return "Error Code: Mit Not Allowed (16446)"
  end
  if value == 16447 then
    return "Error Code: E Ord Not Allowed In Preopen (16447)"
  end
  if value == 16448 then
    return "Error Code: Error Sl Lmt Rsnblty Check (16448)"
  end
  if value == 16500 then
    return "Error Code: E Not Allowed (16500)"
  end
  if value == 16501 then
    return "Error Code: E Invalid Ex Pl Char (16501)"
  end
  if value == 16513 then
    return "Error Code: E Rejection Not Allowed (16513)"
  end
  if value == 16514 then
    return "Error Code: E Not Modifiable (16514)"
  end
  if value == 16518 then
    return "Error Code: E Tm Cm Does Not Exist (16518)"
  end
  if value == 16521 then
    return "Error Code: E Not Clg Mem (16521)"
  end
  if value == 16523 then
    return "Error Code: E User Not Corp Mgr (16523)"
  end
  if value == 16529 then
    return "Error Code: E Not Valid Fo Contract (16529)"
  end
  if value == 16532 then
    return "Error Code: E Pm Cm Invalid (16532)"
  end
  if value == 16533 then
    return "Error Code: E Corp Mgr Vu Mod (16533)"
  end
  if value == 16541 then
    return "Error Code: E Invalid Participant (16541)"
  end
  if value == 16550 then
    return "Error Code: E Trade Approved By Cm (16550)"
  end
  if value == 16552 then
    return "Error Code: E Cm Stock Suspended (16552)"
  end
  if value == 16554 then
    return "Error Code: E Broker Not Permitted In Fut (16554)"
  end
  if value == 16555 then
    return "Error Code: E Broker Not Permitted In Opt (16555)"
  end
  if value == 16556 then
    return "Error Code: E Qty Less Than Min Lot (16556)"
  end
  if value == 16557 then
    return "Error Code: E Disc Qty Less Than Min Lot (16557)"
  end
  if value == 16558 then
    return "Error Code: E Mf Qty Less Than Min Lot (16558)"
  end
  if value == 16560 then
    return "Error Code: E Already Rejected (16560)"
  end
  if value == 16561 then
    return "Error Code: E Nt Orders Not Allowed (16561)"
  end
  if value == 16562 then
    return "Error Code: E Nt Trade Not Allowed (16562)"
  end
  if value == 16566 then
    return "Error Code: E Inconsistent Broker Branch (16566)"
  end
  if value == 16570 then
    return "Error Code: M Post Close Start (16570)"
  end
  if value == 16571 then
    return "Error Code: M Post Close Ended (16571)"
  end
  if value == 16572 then
    return "Error Code: M Post Close Trades (16572)"
  end
  if value == 16573 then
    return "Error Code: E Invalid Msg Length (16573)"
  end
  if value == 16574 then
    return "Error Code: E Invalid Open Close Type (16574)"
  end
  if value == 16576 then
    return "Error Code: E Nnf Inq Req Exceeded (16576)"
  end
  if value == 16577 then
    return "Error Code: E Participant And Volume Changed (16577)"
  end
  if value == 16578 then
    return "Error Code: E Invalid Cover Uncover Type (16578)"
  end
  if value == 16579 then
    return "Error Code: E Illegal Cm Id (16579)"
  end
  if value == 16580 then
    return "Error Code: E Illegal Participant (16580)"
  end
  if value == 16581 then
    return "Error Code: E Invalid Fill Price (16581)"
  end
  if value == 16583 then
    return "Error Code: E Pro No Participant (16583)"
  end
  if value == 16585 then
    return "Error Code: E Invalid Account No (16585)"
  end
  if value == 16586 then
    return "Error Code: E Allow No Participant Order (16586)"
  end
  if value == 16589 then
    return "Error Code: M Delete All Orders (16589)"
  end
  if value == 16594 then
    return "Error Code: Trade Qty Not Mod After Giveup (16594)"
  end
  if value == 16596 then
    return "Error Code: E Tmid Cant Exercise For Ptcpnt (16596)"
  end
  if value == 16597 then
    return "Error Code: E Cum Ur Ord Val Limit Exceeded (16597)"
  end
  if value == 16598 then
    return "Error Code: E Branch Ord Val Limit Exceeded (16598)"
  end
  if value == 16601 then
    return "Error Code: Order Rejected With System Error (16601)"
  end
  if value == 16602 then
    return "Error Code: E Dealer Value Limit Exceeds (16602)"
  end
  if value == 16604 then
    return "Error Code: E Participant Not Found (16604)"
  end
  if value == 16605 then
    return "Error Code: E Either Leg Failed (16605)"
  end
  if value == 16606 then
    return "Error Code: E Qty Greater Than Freeze Qty (16606)"
  end
  if value == 16607 then
    return "Error Code: E Spread Not Allowed (16607)"
  end
  if value == 16608 then
    return "Error Code: E Spread Allowed Only In Open (16608)"
  end
  if value == 16609 then
    return "Error Code: E Spread Allowed If Stock Open (16609)"
  end
  if value == 16610 then
    return "Error Code: E Qty Should Be Same (16610)"
  end
  if value == 16611 then
    return "Error Code: E Ord Mod Qty Frz Not Allowed (16611)"
  end
  if value == 16612 then
    return "Error Code: E Trade Rec Modified (16612)"
  end
  if value == 16615 then
    return "Error Code: E Tm Order Cant Be Modified (16615)"
  end
  if value == 16616 then
    return "Error Code: E Tm Order Cant Be Cancelled (16616)"
  end
  if value == 16617 then
    return "Error Code: E Tm Trade Cant Be Manipulated (16617)"
  end
  if value == 16619 then
    return "Error Code: E Pcm Cant Ex Pl For Himself (16619)"
  end
  if value == 16620 then
    return "Error Code: E Clearing Member Cant Expl (16620)"
  end
  if value == 16621 then
    return "Error Code: E Cant Manipulate Expl Of Tm (16621)"
  end
  if value == 16625 then
    return "Error Code: E Cm Of Tm Suspended (16625)"
  end
  if value == 16626 then
    return "Error Code: E Expdate Not In Ascending Ord (16626)"
  end
  if value == 16627 then
    return "Error Code: E Invalid Contract Comb (16627)"
  end
  if value == 16628 then
    return "Error Code: E Bm Cannot Cancel Cm Orders (16628)"
  end
  if value == 16629 then
    return "Error Code: E Bm Cannot Cancel Bm Orders (16629)"
  end
  if value == 16630 then
    return "Error Code: E Cm Cannot Cancel Cm Orders (16630)"
  end
  if value == 16631 then
    return "Error Code: E Spread In Different Underlying (16631)"
  end
  if value == 16632 then
    return "Error Code: E Invalid Cli Ac (16632)"
  end
  if value == 16636 then
    return "Error Code: E Br Ord Limit Fut Buy Exceeded (16636)"
  end
  if value == 16637 then
    return "Error Code: E Br Ord Limit Fut Sell Exceeded (16637)"
  end
  if value == 16638 then
    return "Error Code: E Br Ord Limit Opt Buy Exceeded (16638)"
  end
  if value == 16639 then
    return "Error Code: E Br Ord Limit Opt Sell Exceeded (16639)"
  end
  if value == 16640 then
    return "Error Code: E Ur Ord Limit Fut Buy Exceeded (16640)"
  end
  if value == 16641 then
    return "Error Code: E Ur Ord Limit Fut Sell Exceeded (16641)"
  end
  if value == 16642 then
    return "Error Code: E Ur Ord Limit Opt Buy Exceeded (16642)"
  end
  if value == 16643 then
    return "Error Code: E Ur Ord Limit Opt Sell Exceeded (16643)"
  end
  if value == 16645 then
    return "Error Code: E Cant Appr Bhav Copy Generated (16645)"
  end
  if value == 16646 then
    return "Error Code: E Collateral Lmt Chk (16646)"
  end
  if value == 16656 then
    return "Error Code: E Address Not Found (16656)"
  end
  if value == 16662 then
    return "Error Code: E Stk In Popen (16662)"
  end
  if value == 16666 then
    return "Error Code: E Invalid Nnf Field (16666)"
  end
  if value == 16667 then
    return "Error Code: E Gtcgtd Not Allowed (16667)"
  end
  if value == 16686 then
    return "Error Code: Closeout Order Reject (16686)"
  end
  if value == 16687 then
    return "Error Code: Closeout Frz Reject (16687)"
  end
  if value == 16688 then
    return "Error Code: Closeout Not Allowed (16688)"
  end
  if value == 16690 then
    return "Error Code: Closeout Trdmod Reject (16690)"
  end
  if value == 16706 then
    return "Error Code: Partial Order Reject (16706)"
  end
  if value == 16708 then
    return "Error Code: Partial Quick Order Cxl Rej (16708)"
  end
  if value == 16713 then
    return "Error Code: E Price Diff Out Of Range (16713)"
  end
  if value == 16732 then
    return "Error Code: Error Algo Mkt Not Allowed (16732)"
  end
  if value == 16733 then
    return "Error Code: Error Invalid Nnfid Rejection (16733)"
  end
  if value == 16793 then
    return "Error Code: E Vc Order Rejected (16793)"
  end
  if value == 16794 then
    return "Error Code: E Ssd Order Rejected (16794)"
  end
  if value == 16795 then
    return "Error Code: E Order Cancelled For Vc (16795)"
  end
  if value == 16796 then
    return "Error Code: E Order Cancelled For Ssd (16796)"
  end
  if value == 16807 then
    return "Error Code: E Account Debarred (16807)"
  end
  if value == 17036 then
    return "Error Code: E Mba Inq Not Allowed (17036)"
  end
  if value == 17037 then
    return "Error Code: E Mba Insuff Record (17037)"
  end
  if value == 17038 then
    return "Error Code: E Outstanding Order Present (17038)"
  end
  if value == 17039 then
    return "Error Code: E Pro Cli Mod Not Allowed (17039)"
  end
  if value == 17045 then
    return "Error Code: E Ord Qty Exceeds Qty Val Lim (17045)"
  end
  if value == 17046 then
    return "Error Code: E User Type Trd Mod Disabled (17046)"
  end
  if value == 17047 then
    return "Error Code: E Tm Trade Mod Not Allowed (17047)"
  end
  if value == 17048 then
    return "Error Code: E User Trd Mod Disabled (17048)"
  end
  if value == 17070 then
    return "Error Code: E Trd Price Out Of Stock Tpp (17070)"
  end
  if value == 17071 then
    return "Error Code: E Order Cancelled For Self Trade (17071)"
  end
  if value == 17101 then
    return "Error Code: E Invalid Packet (17101)"
  end
  if value == 17102 then
    return "Error Code: E Hearbeat Not Received (17102)"
  end
  if value == 17103 then
    return "Error Code: E Single User Login Allowed (17103)"
  end
  if value == 17104 then
    return "Error Code: E Invalid Box Id (17104)"
  end
  if value == 17105 then
    return "Error Code: E Seq No Mismatch (17105)"
  end
  if value == 17106 then
    return "Error Code: E Box Rate Exceeded (17106)"
  end
  if value == 16403 then
    return "Error Code: E Invalid Box Ip Combination (16403)"
  end
  if value == 17179 then
    return "Error Code: Err Invalid Algo Id (17179)"
  end
  if value == 17184 then
    return "Error Code: Err User Having Null Rights (17184)"
  end
  if value == 19028 then
    return "Error Code: Err Checksum Failed Gr (19028)"
  end
  if value == 19029 then
    return "Error Code: Err Multiple Gr Query Rcv (19029)"
  end
  if value == 19030 then
    return "Error Code: Err Encryption Flag Mismatch (19030)"
  end
  if value == 19031 then
    return "Error Code: Err Md 5 Checksum Failure (19031)"
  end
  if value == 0 then
    return "Error Code: No Error"
  end

  return "Error Code: Unknown("..value..")"
end

-- Dissect: Error Code
nse_nseix_orderentry_nnf_v1_12.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.error_code, range, value, display)

  return offset + length, value
end

-- Error Message
nse_nseix_orderentry_nnf_v1_12.error_message = {}

-- Size: Error Message
nse_nseix_orderentry_nnf_v1_12.error_message.size = 128

-- Display: Error Message
nse_nseix_orderentry_nnf_v1_12.error_message.display = function(value)
  return "Error Message: "..value
end

-- Dissect: Error Message
nse_nseix_orderentry_nnf_v1_12.error_message.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.error_message.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.error_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.error_message, range, value, display)

  return offset + length, value
end

-- Expiry Date
nse_nseix_orderentry_nnf_v1_12.expiry_date = {}

-- Size: Expiry Date
nse_nseix_orderentry_nnf_v1_12.expiry_date.size = 4

-- Dissect: Expiry Date
nse_nseix_orderentry_nnf_v1_12.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.expiry_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.expiry_date
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.expiry_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Expiry Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Expiry Date 1
nse_nseix_orderentry_nnf_v1_12.expiry_date_1 = {}

-- Size: Expiry Date 1
nse_nseix_orderentry_nnf_v1_12.expiry_date_1.size = 4

-- Dissect: Expiry Date 1
nse_nseix_orderentry_nnf_v1_12.expiry_date_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.expiry_date_1.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.expiry_date_1
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.expiry_date_1_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Expiry Date 1: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Expiry Date 2
nse_nseix_orderentry_nnf_v1_12.expiry_date_2 = {}

-- Size: Expiry Date 2
nse_nseix_orderentry_nnf_v1_12.expiry_date_2.size = 4

-- Dissect: Expiry Date 2
nse_nseix_orderentry_nnf_v1_12.expiry_date_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.expiry_date_2.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.expiry_date_2
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.expiry_date_2_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Expiry Date 2: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Fifth Reserved 1
nse_nseix_orderentry_nnf_v1_12.fifth_reserved_1 = {}

-- Size: Fifth Reserved 1
nse_nseix_orderentry_nnf_v1_12.fifth_reserved_1.size = 1

-- Display: Fifth Reserved 1
nse_nseix_orderentry_nnf_v1_12.fifth_reserved_1.display = function(value)
  return "Fifth Reserved 1: "..value
end

-- Dissect: Fifth Reserved 1
nse_nseix_orderentry_nnf_v1_12.fifth_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.fifth_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.fifth_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.fifth_reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Fill Number
nse_nseix_orderentry_nnf_v1_12.fill_number = {}

-- Size: Fill Number
nse_nseix_orderentry_nnf_v1_12.fill_number.size = 4

-- Display: Fill Number
nse_nseix_orderentry_nnf_v1_12.fill_number.display = function(value)
  return "Fill Number: "..value
end

-- Dissect: Fill Number
nse_nseix_orderentry_nnf_v1_12.fill_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.fill_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.fill_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.fill_number, range, value, display)

  return offset + length, value
end

-- Fill Price
nse_nseix_orderentry_nnf_v1_12.fill_price = {}

-- Size: Fill Price
nse_nseix_orderentry_nnf_v1_12.fill_price.size = 4

-- Display: Fill Price
nse_nseix_orderentry_nnf_v1_12.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Dissect: Fill Price
nse_nseix_orderentry_nnf_v1_12.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.fill_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Quantity
nse_nseix_orderentry_nnf_v1_12.fill_quantity = {}

-- Size: Fill Quantity
nse_nseix_orderentry_nnf_v1_12.fill_quantity.size = 4

-- Display: Fill Quantity
nse_nseix_orderentry_nnf_v1_12.fill_quantity.display = function(value)
  return "Fill Quantity: "..value
end

-- Dissect: Fill Quantity
nse_nseix_orderentry_nnf_v1_12.fill_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.fill_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.fill_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.fill_quantity, range, value, display)

  return offset + length, value
end

-- Fill Volume
nse_nseix_orderentry_nnf_v1_12.fill_volume = {}

-- Size: Fill Volume
nse_nseix_orderentry_nnf_v1_12.fill_volume.size = 4

-- Display: Fill Volume
nse_nseix_orderentry_nnf_v1_12.fill_volume.display = function(value)
  return "Fill Volume: "..value
end

-- Dissect: Fill Volume
nse_nseix_orderentry_nnf_v1_12.fill_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.fill_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.fill_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.fill_volume, range, value, display)

  return offset + length, value
end

-- Filler
nse_nseix_orderentry_nnf_v1_12.filler = {}

-- Size: Filler
nse_nseix_orderentry_nnf_v1_12.filler.size = 1

-- Display: Filler
nse_nseix_orderentry_nnf_v1_12.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
nse_nseix_orderentry_nnf_v1_12.filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.filler.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.filler, range, range:raw(), display)

  return offset + length, value
end

-- Filler 1
nse_nseix_orderentry_nnf_v1_12.filler_1 = {}

-- Size: Filler 1
nse_nseix_orderentry_nnf_v1_12.filler_1.size = 1

-- Display: Filler 1
nse_nseix_orderentry_nnf_v1_12.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
nse_nseix_orderentry_nnf_v1_12.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.filler_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.filler_1, range, range:raw(), display)

  return offset + length, value
end

-- Filler 116
nse_nseix_orderentry_nnf_v1_12.filler_116 = {}

-- Size: Filler 116
nse_nseix_orderentry_nnf_v1_12.filler_116.size = 2

-- Display: Filler 116
nse_nseix_orderentry_nnf_v1_12.filler_116.display = function(value)
  return "Filler 116: "..value
end

-- Dissect: Filler 116
nse_nseix_orderentry_nnf_v1_12.filler_116.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.filler_116.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.filler_116.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.filler_116, range, range:raw(), display)

  return offset + length, value
end

-- Filler 17
nse_nseix_orderentry_nnf_v1_12.filler_17 = {}

-- Size: Filler 17
nse_nseix_orderentry_nnf_v1_12.filler_17.size = 1

-- Display: Filler 17
nse_nseix_orderentry_nnf_v1_12.filler_17.display = function(value)
  return "Filler 17: "..value
end

-- Dissect: Filler 17
nse_nseix_orderentry_nnf_v1_12.filler_17.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.filler_17.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.filler_17.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.filler_17, range, range:raw(), display)

  return offset + length, value
end

-- Filler 18
nse_nseix_orderentry_nnf_v1_12.filler_18 = {}

-- Size: Filler 18
nse_nseix_orderentry_nnf_v1_12.filler_18.size = 1

-- Display: Filler 18
nse_nseix_orderentry_nnf_v1_12.filler_18.display = function(value)
  return "Filler 18: "..value
end

-- Dissect: Filler 18
nse_nseix_orderentry_nnf_v1_12.filler_18.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.filler_18.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.filler_18.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.filler_18, range, range:raw(), display)

  return offset + length, value
end

-- Filler 9
nse_nseix_orderentry_nnf_v1_12.filler_9 = {}

-- Size: Filler 9
nse_nseix_orderentry_nnf_v1_12.filler_9.size = 1

-- Display: Filler 9
nse_nseix_orderentry_nnf_v1_12.filler_9.display = function(value)
  return "Filler 9: "..value
end

-- Dissect: Filler 9
nse_nseix_orderentry_nnf_v1_12.filler_9.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.filler_9.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.filler_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.filler_9, range, range:raw(), display)

  return offset + length, value
end

-- Filler Options 1
nse_nseix_orderentry_nnf_v1_12.filler_options_1 = {}

-- Size: Filler Options 1
nse_nseix_orderentry_nnf_v1_12.filler_options_1.size = 3

-- Display: Filler Options 1
nse_nseix_orderentry_nnf_v1_12.filler_options_1.display = function(value)
  return "Filler Options 1: "..value
end

-- Dissect: Filler Options 1
nse_nseix_orderentry_nnf_v1_12.filler_options_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.filler_options_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.filler_options_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.filler_options_1, range, range:raw(), display)

  return offset + length, value
end

-- Filler Y
nse_nseix_orderentry_nnf_v1_12.filler_y = {}

-- Size: Filler Y
nse_nseix_orderentry_nnf_v1_12.filler_y.size = 1

-- Display: Filler Y
nse_nseix_orderentry_nnf_v1_12.filler_y.display = function(value)
  return "Filler Y: "..value
end

-- Dissect: Filler Y
nse_nseix_orderentry_nnf_v1_12.filler_y.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.filler_y.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.filler_y.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.filler_y, range, range:raw(), display)

  return offset + length, value
end

-- Fillerx 1
nse_nseix_orderentry_nnf_v1_12.fillerx_1 = {}

-- Size: Fillerx 1
nse_nseix_orderentry_nnf_v1_12.fillerx_1.size = 1

-- Display: Fillerx 1
nse_nseix_orderentry_nnf_v1_12.fillerx_1.display = function(value)
  return "Fillerx 1: "..value
end

-- Dissect: Fillerx 1
nse_nseix_orderentry_nnf_v1_12.fillerx_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.fillerx_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.fillerx_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.fillerx_1, range, range:raw(), display)

  return offset + length, value
end

-- Fillerx 2
nse_nseix_orderentry_nnf_v1_12.fillerx_2 = {}

-- Size: Fillerx 2
nse_nseix_orderentry_nnf_v1_12.fillerx_2.size = 1

-- Display: Fillerx 2
nse_nseix_orderentry_nnf_v1_12.fillerx_2.display = function(value)
  return "Fillerx 2: "..value
end

-- Dissect: Fillerx 2
nse_nseix_orderentry_nnf_v1_12.fillerx_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.fillerx_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.fillerx_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.fillerx_2, range, range:raw(), display)

  return offset + length, value
end

-- Fillery 1
nse_nseix_orderentry_nnf_v1_12.fillery_1 = {}

-- Size: Fillery 1
nse_nseix_orderentry_nnf_v1_12.fillery_1.size = 1

-- Display: Fillery 1
nse_nseix_orderentry_nnf_v1_12.fillery_1.display = function(value)
  return "Fillery 1: "..value
end

-- Dissect: Fillery 1
nse_nseix_orderentry_nnf_v1_12.fillery_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.fillery_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.fillery_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.fillery_1, range, range:raw(), display)

  return offset + length, value
end

-- Firm Name
nse_nseix_orderentry_nnf_v1_12.firm_name = {}

-- Size: Firm Name
nse_nseix_orderentry_nnf_v1_12.firm_name.size = 25

-- Display: Firm Name
nse_nseix_orderentry_nnf_v1_12.firm_name.display = function(value)
  return "Firm Name: "..value
end

-- Dissect: Firm Name
nse_nseix_orderentry_nnf_v1_12.firm_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.firm_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.firm_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.firm_name, range, value, display)

  return offset + length, value
end

-- Fourth Reserved 1
nse_nseix_orderentry_nnf_v1_12.fourth_reserved_1 = {}

-- Size: Fourth Reserved 1
nse_nseix_orderentry_nnf_v1_12.fourth_reserved_1.size = 1

-- Display: Fourth Reserved 1
nse_nseix_orderentry_nnf_v1_12.fourth_reserved_1.display = function(value)
  return "Fourth Reserved 1: "..value
end

-- Dissect: Fourth Reserved 1
nse_nseix_orderentry_nnf_v1_12.fourth_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.fourth_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.fourth_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.fourth_reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Give Up Trade
nse_nseix_orderentry_nnf_v1_12.give_up_trade = {}

-- Size: Give Up Trade
nse_nseix_orderentry_nnf_v1_12.give_up_trade.size = 1

-- Display: Give Up Trade
nse_nseix_orderentry_nnf_v1_12.give_up_trade.labels = {
  ["P"] = "Give Up Trade: P (P)",
  ["A"] = "Give Up Trade: A (A)",
  ["R"] = "Give Up Trade: R (R)",
}

nse_nseix_orderentry_nnf_v1_12.give_up_trade.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.give_up_trade.labels[value] or "Give Up Trade: Unknown("..value..")"
end

-- Dissect: Give Up Trade
nse_nseix_orderentry_nnf_v1_12.give_up_trade.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.give_up_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.give_up_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.give_up_trade, range, value, display)

  return offset + length, value
end

-- Giveup Flag
nse_nseix_orderentry_nnf_v1_12.giveup_flag = {}

-- Size: Giveup Flag
nse_nseix_orderentry_nnf_v1_12.giveup_flag.size = 1

-- Display: Giveup Flag
nse_nseix_orderentry_nnf_v1_12.giveup_flag.display = function(value)
  return "Giveup Flag: "..value
end

-- Dissect: Giveup Flag
nse_nseix_orderentry_nnf_v1_12.giveup_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.giveup_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.giveup_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.giveup_flag, range, value, display)

  return offset + length, value
end

-- Giveup Flag 1
nse_nseix_orderentry_nnf_v1_12.giveup_flag_1 = {}

-- Size: Giveup Flag 1
nse_nseix_orderentry_nnf_v1_12.giveup_flag_1.size = 1

-- Display: Giveup Flag 1
nse_nseix_orderentry_nnf_v1_12.giveup_flag_1.display = function(value)
  return "Giveup Flag 1: "..value
end

-- Dissect: Giveup Flag 1
nse_nseix_orderentry_nnf_v1_12.giveup_flag_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.giveup_flag_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.giveup_flag_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.giveup_flag_1, range, value, display)

  return offset + length, value
end

-- Giveup Flag 2
nse_nseix_orderentry_nnf_v1_12.giveup_flag_2 = {}

-- Size: Giveup Flag 2
nse_nseix_orderentry_nnf_v1_12.giveup_flag_2.size = 1

-- Display: Giveup Flag 2
nse_nseix_orderentry_nnf_v1_12.giveup_flag_2.display = function(value)
  return "Giveup Flag 2: "..value
end

-- Dissect: Giveup Flag 2
nse_nseix_orderentry_nnf_v1_12.giveup_flag_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.giveup_flag_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.giveup_flag_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.giveup_flag_2, range, value, display)

  return offset + length, value
end

-- Good Till Date 1
nse_nseix_orderentry_nnf_v1_12.good_till_date_1 = {}

-- Size: Good Till Date 1
nse_nseix_orderentry_nnf_v1_12.good_till_date_1.size = 4

-- Display: Good Till Date 1
nse_nseix_orderentry_nnf_v1_12.good_till_date_1.display = function(value)
  return "Good Till Date 1: "..value
end

-- Dissect: Good Till Date 1
nse_nseix_orderentry_nnf_v1_12.good_till_date_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.good_till_date_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.good_till_date_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.good_till_date_1, range, value, display)

  return offset + length, value
end

-- Good Till Date Seconds
nse_nseix_orderentry_nnf_v1_12.good_till_date_seconds = {}

-- Size: Good Till Date Seconds
nse_nseix_orderentry_nnf_v1_12.good_till_date_seconds.size = 4

-- Dissect: Good Till Date Seconds
nse_nseix_orderentry_nnf_v1_12.good_till_date_seconds.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.good_till_date_seconds.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.good_till_date_seconds
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.good_till_date_seconds_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("GoodTillDate: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Good Till Days
nse_nseix_orderentry_nnf_v1_12.good_till_days = {}

-- Size: Good Till Days
nse_nseix_orderentry_nnf_v1_12.good_till_days.size = 4

-- Display: Good Till Days
nse_nseix_orderentry_nnf_v1_12.good_till_days.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "GoodTillDate: Not Good Till Date"
  end

  return "GoodTillDate: "..value
end

-- Dissect: Good Till Days
nse_nseix_orderentry_nnf_v1_12.good_till_days.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.good_till_days.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.good_till_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.good_till_days, range, value, display)

  return offset + length, value
end

-- Header Timestamp
nse_nseix_orderentry_nnf_v1_12.header_timestamp = {}

-- Size: Header Timestamp
nse_nseix_orderentry_nnf_v1_12.header_timestamp.size = 8

-- Display: Header Timestamp
nse_nseix_orderentry_nnf_v1_12.header_timestamp.display = function(value)
  return "Header Timestamp: "..value
end

-- Dissect: Header Timestamp
nse_nseix_orderentry_nnf_v1_12.header_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.header_timestamp.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.header_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.header_timestamp, range, value, display)

  return offset + length, value
end

-- High Price
nse_nseix_orderentry_nnf_v1_12.high_price = {}

-- Size: High Price
nse_nseix_orderentry_nnf_v1_12.high_price.size = 4

-- Display: High Price
nse_nseix_orderentry_nnf_v1_12.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nse_nseix_orderentry_nnf_v1_12.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.high_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.high_price, range, value, display)

  return offset + length, value
end

-- High Price Diff
nse_nseix_orderentry_nnf_v1_12.high_price_diff = {}

-- Size: High Price Diff
nse_nseix_orderentry_nnf_v1_12.high_price_diff.size = 4

-- Display: High Price Diff
nse_nseix_orderentry_nnf_v1_12.high_price_diff.display = function(value)
  return "High Price Diff: "..value
end

-- Dissect: High Price Diff
nse_nseix_orderentry_nnf_v1_12.high_price_diff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.high_price_diff.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.high_price_diff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.high_price_diff, range, value, display)

  return offset + length, value
end

-- Host Switch Context
nse_nseix_orderentry_nnf_v1_12.host_switch_context = {}

-- Size: Host Switch Context
nse_nseix_orderentry_nnf_v1_12.host_switch_context.size = 1

-- Display: Host Switch Context
nse_nseix_orderentry_nnf_v1_12.host_switch_context.display = function(value)
  return "Host Switch Context: "..value
end

-- Dissect: Host Switch Context
nse_nseix_orderentry_nnf_v1_12.host_switch_context.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.host_switch_context.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.host_switch_context.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.host_switch_context, range, value, display)

  return offset + length, value
end

-- Impact Cost
nse_nseix_orderentry_nnf_v1_12.impact_cost = {}

-- Size: Impact Cost
nse_nseix_orderentry_nnf_v1_12.impact_cost.size = 4

-- Display: Impact Cost
nse_nseix_orderentry_nnf_v1_12.impact_cost.display = function(value)
  return "Impact Cost: "..value
end

-- Dissect: Impact Cost
nse_nseix_orderentry_nnf_v1_12.impact_cost.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.impact_cost.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.impact_cost.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.impact_cost, range, value, display)

  return offset + length, value
end

-- Indicator
nse_nseix_orderentry_nnf_v1_12.indicator = {}

-- Size: Indicator
nse_nseix_orderentry_nnf_v1_12.indicator.size = 4

-- Display: Indicator
nse_nseix_orderentry_nnf_v1_12.indicator.display = function(value)
  return "Indicator: "..value
end

-- Dissect: Indicator
nse_nseix_orderentry_nnf_v1_12.indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.indicator, range, value, display)

  return offset + length, value
end

-- Initiated By Control
nse_nseix_orderentry_nnf_v1_12.initiated_by_control = {}

-- Size: Initiated By Control
nse_nseix_orderentry_nnf_v1_12.initiated_by_control.size = 1

-- Display: Initiated By Control
nse_nseix_orderentry_nnf_v1_12.initiated_by_control.labels = {
  ["Y"] = "Initiated By Control: Initiated By Control (Y)",
  ["N"] = "Initiated By Control: Not Initiated By Control (N)",
}

nse_nseix_orderentry_nnf_v1_12.initiated_by_control.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.initiated_by_control.labels[value] or "Initiated By Control: Unknown("..value..")"
end

-- Dissect: Initiated By Control
nse_nseix_orderentry_nnf_v1_12.initiated_by_control.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.initiated_by_control.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.initiated_by_control.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.initiated_by_control, range, value, display)

  return offset + length, value
end

-- Inner Alpha Char
nse_nseix_orderentry_nnf_v1_12.inner_alpha_char = {}

-- Size: Inner Alpha Char
nse_nseix_orderentry_nnf_v1_12.inner_alpha_char.size = 2

-- Display: Inner Alpha Char
nse_nseix_orderentry_nnf_v1_12.inner_alpha_char.display = function(value)
  return "Inner Alpha Char: "..value
end

-- Dissect: Inner Alpha Char
nse_nseix_orderentry_nnf_v1_12.inner_alpha_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.inner_alpha_char.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.inner_alpha_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_alpha_char, range, value, display)

  return offset + length, value
end

-- Inner Error Code
nse_nseix_orderentry_nnf_v1_12.inner_error_code = {}

-- Size: Inner Error Code
nse_nseix_orderentry_nnf_v1_12.inner_error_code.size = 2

-- Display: Inner Error Code
nse_nseix_orderentry_nnf_v1_12.inner_error_code.display = function(value)
  return "Inner Error Code: "..value
end

-- Dissect: Inner Error Code
nse_nseix_orderentry_nnf_v1_12.inner_error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.inner_error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.inner_error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_error_code, range, value, display)

  return offset + length, value
end

-- Inner Log Time
nse_nseix_orderentry_nnf_v1_12.inner_log_time = {}

-- Size: Inner Log Time
nse_nseix_orderentry_nnf_v1_12.inner_log_time.size = 4

-- Dissect: Inner Log Time
nse_nseix_orderentry_nnf_v1_12.inner_log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.inner_log_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_log_time
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_log_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Inner Log Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Inner Message Length
nse_nseix_orderentry_nnf_v1_12.inner_message_length = {}

-- Size: Inner Message Length
nse_nseix_orderentry_nnf_v1_12.inner_message_length.size = 2

-- Display: Inner Message Length
nse_nseix_orderentry_nnf_v1_12.inner_message_length.display = function(value)
  return "Inner Message Length: "..value
end

-- Dissect: Inner Message Length
nse_nseix_orderentry_nnf_v1_12.inner_message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.inner_message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.inner_message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_message_length, range, value, display)

  return offset + length, value
end

-- Inner Time Stamp 1
nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_1 = {}

-- Size: Inner Time Stamp 1
nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_1.size = 8

-- Display: Inner Time Stamp 1
nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_1.display = function(value)
  return "Inner Time Stamp 1: "..value
end

-- Dissect: Inner Time Stamp 1
nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_time_stamp_1, range, value, display)

  return offset + length, value
end

-- Inner Time Stamp 2
nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_2 = {}

-- Size: Inner Time Stamp 2
nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_2.size = 8

-- Display: Inner Time Stamp 2
nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_2.display = function(value)
  return "Inner Time Stamp 2: "..value
end

-- Dissect: Inner Time Stamp 2
nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_time_stamp_2, range, value, display)

  return offset + length, value
end

-- Inner Timestamp
nse_nseix_orderentry_nnf_v1_12.inner_timestamp = {}

-- Size: Inner Timestamp
nse_nseix_orderentry_nnf_v1_12.inner_timestamp.size = 8

-- Display: Inner Timestamp
nse_nseix_orderentry_nnf_v1_12.inner_timestamp.display = function(value)
  return "Inner Timestamp: "..value
end

-- Dissect: Inner Timestamp
nse_nseix_orderentry_nnf_v1_12.inner_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.inner_timestamp.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.inner_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_timestamp, range, value, display)

  return offset + length, value
end

-- Inner Trader Id
nse_nseix_orderentry_nnf_v1_12.inner_trader_id = {}

-- Size: Inner Trader Id
nse_nseix_orderentry_nnf_v1_12.inner_trader_id.size = 4

-- Display: Inner Trader Id
nse_nseix_orderentry_nnf_v1_12.inner_trader_id.display = function(value)
  return "Inner Trader Id: "..value
end

-- Dissect: Inner Trader Id
nse_nseix_orderentry_nnf_v1_12.inner_trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.inner_trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.inner_trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_trader_id, range, value, display)

  return offset + length, value
end

-- Inner Transaction Code
nse_nseix_orderentry_nnf_v1_12.inner_transaction_code = {}

-- Size: Inner Transaction Code
nse_nseix_orderentry_nnf_v1_12.inner_transaction_code.size = 2

-- Display: Inner Transaction Code
nse_nseix_orderentry_nnf_v1_12.inner_transaction_code.display = function(value)
  return "Inner Transaction Code: "..value
end

-- Dissect: Inner Transaction Code
nse_nseix_orderentry_nnf_v1_12.inner_transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.inner_transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.inner_transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_transaction_code, range, value, display)

  return offset + length, value
end

-- Instrument Name
nse_nseix_orderentry_nnf_v1_12.instrument_name = {}

-- Size: Instrument Name
nse_nseix_orderentry_nnf_v1_12.instrument_name.size = 6

-- Display: Instrument Name
nse_nseix_orderentry_nnf_v1_12.instrument_name.display = function(value)
  return "Instrument Name: "..value
end

-- Dissect: Instrument Name
nse_nseix_orderentry_nnf_v1_12.instrument_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.instrument_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.instrument_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.instrument_name, range, value, display)

  return offset + length, value
end

-- Instrument Name 1
nse_nseix_orderentry_nnf_v1_12.instrument_name_1 = {}

-- Size: Instrument Name 1
nse_nseix_orderentry_nnf_v1_12.instrument_name_1.size = 6

-- Display: Instrument Name 1
nse_nseix_orderentry_nnf_v1_12.instrument_name_1.display = function(value)
  return "Instrument Name 1: "..value
end

-- Dissect: Instrument Name 1
nse_nseix_orderentry_nnf_v1_12.instrument_name_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.instrument_name_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.instrument_name_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.instrument_name_1, range, value, display)

  return offset + length, value
end

-- Instrument Name 2
nse_nseix_orderentry_nnf_v1_12.instrument_name_2 = {}

-- Size: Instrument Name 2
nse_nseix_orderentry_nnf_v1_12.instrument_name_2.size = 6

-- Display: Instrument Name 2
nse_nseix_orderentry_nnf_v1_12.instrument_name_2.display = function(value)
  return "Instrument Name 2: "..value
end

-- Dissect: Instrument Name 2
nse_nseix_orderentry_nnf_v1_12.instrument_name_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.instrument_name_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.instrument_name_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.instrument_name_2, range, value, display)

  return offset + length, value
end

-- Ip Address
nse_nseix_orderentry_nnf_v1_12.ip_address = {}

-- Size: Ip Address
nse_nseix_orderentry_nnf_v1_12.ip_address.size = 16

-- Display: Ip Address
nse_nseix_orderentry_nnf_v1_12.ip_address.display = function(value)
  return "Ip Address: "..value
end

-- Dissect: Ip Address
nse_nseix_orderentry_nnf_v1_12.ip_address.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.ip_address.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.ip_address.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.ip_address, range, value, display)

  return offset + length, value
end

-- Key
nse_nseix_orderentry_nnf_v1_12.key = {}

-- Size: Key
nse_nseix_orderentry_nnf_v1_12.key.size = 14

-- Display: Key
nse_nseix_orderentry_nnf_v1_12.key.display = function(value)
  return "Key: "..value
end

-- Dissect: Key
nse_nseix_orderentry_nnf_v1_12.key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.key, range, value, display)

  return offset + length, value
end

-- Last Activity Reference
nse_nseix_orderentry_nnf_v1_12.last_activity_reference = {}

-- Size: Last Activity Reference
nse_nseix_orderentry_nnf_v1_12.last_activity_reference.size = 8

-- Display: Last Activity Reference
nse_nseix_orderentry_nnf_v1_12.last_activity_reference.display = function(value)
  return "Last Activity Reference: "..value
end

-- Dissect: Last Activity Reference
nse_nseix_orderentry_nnf_v1_12.last_activity_reference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.last_activity_reference.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nseix_orderentry_nnf_v1_12.last_activity_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.last_activity_reference, range, value, display)

  return offset + length, value
end

-- Last Modified
nse_nseix_orderentry_nnf_v1_12.last_modified = {}

-- Size: Last Modified
nse_nseix_orderentry_nnf_v1_12.last_modified.size = 4

-- Dissect: Last Modified
nse_nseix_orderentry_nnf_v1_12.last_modified.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.last_modified.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_modified
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_modified_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Modified: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Last Modified 1
nse_nseix_orderentry_nnf_v1_12.last_modified_1 = {}

-- Size: Last Modified 1
nse_nseix_orderentry_nnf_v1_12.last_modified_1.size = 4

-- Dissect: Last Modified 1
nse_nseix_orderentry_nnf_v1_12.last_modified_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.last_modified_1.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_modified_1
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_modified_1_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Modified 1: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Last Modified Date Time
nse_nseix_orderentry_nnf_v1_12.last_modified_date_time = {}

-- Size: Last Modified Date Time
nse_nseix_orderentry_nnf_v1_12.last_modified_date_time.size = 4

-- Dissect: Last Modified Date Time
nse_nseix_orderentry_nnf_v1_12.last_modified_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.last_modified_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_modified_date_time
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_modified_date_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Modified Date Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Last Password Change Date
nse_nseix_orderentry_nnf_v1_12.last_password_change_date = {}

-- Size: Last Password Change Date
nse_nseix_orderentry_nnf_v1_12.last_password_change_date.size = 4

-- Dissect: Last Password Change Date
nse_nseix_orderentry_nnf_v1_12.last_password_change_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.last_password_change_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_password_change_date
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_password_change_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Password Change Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Last Trade Price Diff
nse_nseix_orderentry_nnf_v1_12.last_trade_price_diff = {}

-- Size: Last Trade Price Diff
nse_nseix_orderentry_nnf_v1_12.last_trade_price_diff.size = 4

-- Display: Last Trade Price Diff
nse_nseix_orderentry_nnf_v1_12.last_trade_price_diff.display = function(value)
  return "Last Trade Price Diff: "..value
end

-- Dissect: Last Trade Price Diff
nse_nseix_orderentry_nnf_v1_12.last_trade_price_diff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.last_trade_price_diff.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.last_trade_price_diff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.last_trade_price_diff, range, value, display)

  return offset + length, value
end

-- Last Update Index Time
nse_nseix_orderentry_nnf_v1_12.last_update_index_time = {}

-- Size: Last Update Index Time
nse_nseix_orderentry_nnf_v1_12.last_update_index_time.size = 4

-- Dissect: Last Update Index Time
nse_nseix_orderentry_nnf_v1_12.last_update_index_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.last_update_index_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_index_time
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_index_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Update Index Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Last Update Instrument Time
nse_nseix_orderentry_nnf_v1_12.last_update_instrument_time = {}

-- Size: Last Update Instrument Time
nse_nseix_orderentry_nnf_v1_12.last_update_instrument_time.size = 4

-- Dissect: Last Update Instrument Time
nse_nseix_orderentry_nnf_v1_12.last_update_instrument_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.last_update_instrument_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_instrument_time
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_instrument_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Update Instrument Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Last Update Participant Time
nse_nseix_orderentry_nnf_v1_12.last_update_participant_time = {}

-- Size: Last Update Participant Time
nse_nseix_orderentry_nnf_v1_12.last_update_participant_time.size = 4

-- Dissect: Last Update Participant Time
nse_nseix_orderentry_nnf_v1_12.last_update_participant_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.last_update_participant_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_participant_time
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_participant_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Update Participant Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Last Update Portfolio Time
nse_nseix_orderentry_nnf_v1_12.last_update_portfolio_time = {}

-- Size: Last Update Portfolio Time
nse_nseix_orderentry_nnf_v1_12.last_update_portfolio_time.size = 4

-- Dissect: Last Update Portfolio Time
nse_nseix_orderentry_nnf_v1_12.last_update_portfolio_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.last_update_portfolio_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_portfolio_time
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_portfolio_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Update Portfolio Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Last Update Security Time
nse_nseix_orderentry_nnf_v1_12.last_update_security_time = {}

-- Size: Last Update Security Time
nse_nseix_orderentry_nnf_v1_12.last_update_security_time.size = 4

-- Dissect: Last Update Security Time
nse_nseix_orderentry_nnf_v1_12.last_update_security_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.last_update_security_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_security_time
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.last_update_security_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Update Security Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Log Time
nse_nseix_orderentry_nnf_v1_12.log_time = {}

-- Size: Log Time
nse_nseix_orderentry_nnf_v1_12.log_time.size = 4

-- Dissect: Log Time
nse_nseix_orderentry_nnf_v1_12.log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.log_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.log_time
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.log_time_utc end

  if value == 0 then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Log Time: No Value")
    return offset + length, value
  end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Log Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Low Price
nse_nseix_orderentry_nnf_v1_12.low_price = {}

-- Size: Low Price
nse_nseix_orderentry_nnf_v1_12.low_price.size = 4

-- Display: Low Price
nse_nseix_orderentry_nnf_v1_12.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nse_nseix_orderentry_nnf_v1_12.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.low_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.low_price, range, value, display)

  return offset + length, value
end

-- Low Price Diff
nse_nseix_orderentry_nnf_v1_12.low_price_diff = {}

-- Size: Low Price Diff
nse_nseix_orderentry_nnf_v1_12.low_price_diff.size = 4

-- Display: Low Price Diff
nse_nseix_orderentry_nnf_v1_12.low_price_diff.display = function(value)
  return "Low Price Diff: "..value
end

-- Dissect: Low Price Diff
nse_nseix_orderentry_nnf_v1_12.low_price_diff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.low_price_diff.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.low_price_diff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.low_price_diff, range, value, display)

  return offset + length, value
end

-- Market Index
nse_nseix_orderentry_nnf_v1_12.market_index = {}

-- Size: Market Index
nse_nseix_orderentry_nnf_v1_12.market_index.size = 4

-- Display: Market Index
nse_nseix_orderentry_nnf_v1_12.market_index.display = function(value)
  return "Market Index: "..value
end

-- Dissect: Market Index
nse_nseix_orderentry_nnf_v1_12.market_index.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.market_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.market_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.market_index, range, value, display)

  return offset + length, value
end

-- Market Type
nse_nseix_orderentry_nnf_v1_12.market_type = {}

-- Size: Market Type
nse_nseix_orderentry_nnf_v1_12.market_type.size = 2

-- Display: Market Type
nse_nseix_orderentry_nnf_v1_12.market_type.labels = {
  [1] = "Market Type: Normal Market (1)",
  [2] = "Market Type: Odd Lot Market (2)",
  [3] = "Market Type: Spot Market (3)",
  [4] = "Market Type: Auction Market (4)",
}

nse_nseix_orderentry_nnf_v1_12.market_type.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.market_type.labels[value] or "Market Type: Unknown("..value..")"
end

-- Dissect: Market Type
nse_nseix_orderentry_nnf_v1_12.market_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.market_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.market_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.market_type, range, value, display)

  return offset + length, value
end

-- Maximum Gtc Days
nse_nseix_orderentry_nnf_v1_12.maximum_gtc_days = {}

-- Size: Maximum Gtc Days
nse_nseix_orderentry_nnf_v1_12.maximum_gtc_days.size = 2

-- Display: Maximum Gtc Days
nse_nseix_orderentry_nnf_v1_12.maximum_gtc_days.display = function(value)
  return "Maximum Gtc Days: "..value
end

-- Dissect: Maximum Gtc Days
nse_nseix_orderentry_nnf_v1_12.maximum_gtc_days.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.maximum_gtc_days.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.maximum_gtc_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.maximum_gtc_days, range, value, display)

  return offset + length, value
end

-- Member Type
nse_nseix_orderentry_nnf_v1_12.member_type = {}

-- Size: Member Type
nse_nseix_orderentry_nnf_v1_12.member_type.size = 2

-- Display: Member Type
nse_nseix_orderentry_nnf_v1_12.member_type.labels = {
  [1] = "Member Type: Trading Member Only (1)",
  [2] = "Member Type: Trading And Clearing Member (2)",
  [3] = "Member Type: Clearing Member Only (3)",
  [4] = "Member Type: Professional Clearing Member And Trading Member (4)",
}

nse_nseix_orderentry_nnf_v1_12.member_type.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.member_type.labels[value] or "Member Type: Unknown("..value..")"
end

-- Dissect: Member Type
nse_nseix_orderentry_nnf_v1_12.member_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.member_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.member_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.member_type, range, value, display)

  return offset + length, value
end

-- Message Buffer
nse_nseix_orderentry_nnf_v1_12.message_buffer = {}

-- Size: Message Buffer
nse_nseix_orderentry_nnf_v1_12.message_buffer.size = 276

-- Display: Message Buffer
nse_nseix_orderentry_nnf_v1_12.message_buffer.display = function(value)
  return "Message Buffer: "..value
end

-- Dissect: Message Buffer
nse_nseix_orderentry_nnf_v1_12.message_buffer.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.message_buffer.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.message_buffer.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.message_buffer, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nseix_orderentry_nnf_v1_12.message_length = {}

-- Size: Message Length
nse_nseix_orderentry_nnf_v1_12.message_length.size = 2

-- Display: Message Length
nse_nseix_orderentry_nnf_v1_12.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nseix_orderentry_nnf_v1_12.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nse_nseix_orderentry_nnf_v1_12.message_type = {}

-- Size: Message Type
nse_nseix_orderentry_nnf_v1_12.message_type.size = 1

-- Display: Message Type
nse_nseix_orderentry_nnf_v1_12.message_type.labels = {
  ["H"] = "Message Type: Header (H)",
  ["R"] = "Message Type: Data (R)",
  ["T"] = "Message Type: Trailer (T)",
}

nse_nseix_orderentry_nnf_v1_12.message_type.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nse_nseix_orderentry_nnf_v1_12.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Fill Aon 1
nse_nseix_orderentry_nnf_v1_12.min_fill_aon_1 = {}

-- Size: Min Fill Aon 1
nse_nseix_orderentry_nnf_v1_12.min_fill_aon_1.size = 4

-- Display: Min Fill Aon 1
nse_nseix_orderentry_nnf_v1_12.min_fill_aon_1.display = function(value)
  return "Min Fill Aon 1: "..value
end

-- Dissect: Min Fill Aon 1
nse_nseix_orderentry_nnf_v1_12.min_fill_aon_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.min_fill_aon_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.min_fill_aon_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.min_fill_aon_1, range, value, display)

  return offset + length, value
end

-- Min Fill Aon 2
nse_nseix_orderentry_nnf_v1_12.min_fill_aon_2 = {}

-- Size: Min Fill Aon 2
nse_nseix_orderentry_nnf_v1_12.min_fill_aon_2.size = 4

-- Display: Min Fill Aon 2
nse_nseix_orderentry_nnf_v1_12.min_fill_aon_2.display = function(value)
  return "Min Fill Aon 2: "..value
end

-- Dissect: Min Fill Aon 2
nse_nseix_orderentry_nnf_v1_12.min_fill_aon_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.min_fill_aon_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.min_fill_aon_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.min_fill_aon_2, range, value, display)

  return offset + length, value
end

-- Minimum Fill Aon Volume
nse_nseix_orderentry_nnf_v1_12.minimum_fill_aon_volume = {}

-- Size: Minimum Fill Aon Volume
nse_nseix_orderentry_nnf_v1_12.minimum_fill_aon_volume.size = 4

-- Display: Minimum Fill Aon Volume
nse_nseix_orderentry_nnf_v1_12.minimum_fill_aon_volume.display = function(value)
  return "Minimum Fill Aon Volume: "..value
end

-- Dissect: Minimum Fill Aon Volume
nse_nseix_orderentry_nnf_v1_12.minimum_fill_aon_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.minimum_fill_aon_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.minimum_fill_aon_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.minimum_fill_aon_volume, range, value, display)

  return offset + length, value
end

-- Mkt
nse_nseix_orderentry_nnf_v1_12.mkt = {}

-- Size: Mkt
nse_nseix_orderentry_nnf_v1_12.mkt.size = 2

-- Display: Mkt
nse_nseix_orderentry_nnf_v1_12.mkt.display = function(value)
  return "Mkt: "..value
end

-- Dissect: Mkt
nse_nseix_orderentry_nnf_v1_12.mkt.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.mkt.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.mkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.mkt, range, value, display)

  return offset + length, value
end

-- Mkt Replay
nse_nseix_orderentry_nnf_v1_12.mkt_replay = {}

-- Size: Mkt Replay
nse_nseix_orderentry_nnf_v1_12.mkt_replay.size = 8

-- Display: Mkt Replay
nse_nseix_orderentry_nnf_v1_12.mkt_replay.display = function(value)
  return "Mkt Replay: "..string.format("%.0f", value)
end

-- Dissect: Mkt Replay
nse_nseix_orderentry_nnf_v1_12.mkt_replay.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.mkt_replay.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.mkt_replay.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.mkt_replay, range, value, display)

  return offset + length, value
end

-- Mkt Type
nse_nseix_orderentry_nnf_v1_12.mkt_type = {}

-- Size: Mkt Type
nse_nseix_orderentry_nnf_v1_12.mkt_type.size = 1

-- Display: Mkt Type
nse_nseix_orderentry_nnf_v1_12.mkt_type.labels = {
  ["1"] = "Mkt Type: Normal Market (1)",
  ["2"] = "Mkt Type: Odd Lot Market (2)",
  ["3"] = "Mkt Type: Spot Market (3)",
  ["4"] = "Mkt Type: Auction Market (4)",
}

nse_nseix_orderentry_nnf_v1_12.mkt_type.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.mkt_type.labels[value] or "Mkt Type: Unknown("..value..")"
end

-- Dissect: Mkt Type
nse_nseix_orderentry_nnf_v1_12.mkt_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.mkt_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.mkt_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.mkt_type, range, value, display)

  return offset + length, value
end

-- Mod Cxl By 1
nse_nseix_orderentry_nnf_v1_12.mod_cxl_by_1 = {}

-- Size: Mod Cxl By 1
nse_nseix_orderentry_nnf_v1_12.mod_cxl_by_1.size = 1

-- Display: Mod Cxl By 1
nse_nseix_orderentry_nnf_v1_12.mod_cxl_by_1.display = function(value)
  return "Mod Cxl By 1: "..value
end

-- Dissect: Mod Cxl By 1
nse_nseix_orderentry_nnf_v1_12.mod_cxl_by_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.mod_cxl_by_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.mod_cxl_by_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.mod_cxl_by_1, range, value, display)

  return offset + length, value
end

-- Modified Cancelled By
nse_nseix_orderentry_nnf_v1_12.modified_cancelled_by = {}

-- Size: Modified Cancelled By
nse_nseix_orderentry_nnf_v1_12.modified_cancelled_by.size = 1

-- Display: Modified Cancelled By
nse_nseix_orderentry_nnf_v1_12.modified_cancelled_by.labels = {
  ["T"] = "Modified Cancelled By: Trader (T)",
  ["B"] = "Modified Cancelled By: Branch Manager (B)",
  ["M"] = "Modified Cancelled By: Corporate Manager (M)",
  ["C"] = "Modified Cancelled By: Exchange (C)",
}

nse_nseix_orderentry_nnf_v1_12.modified_cancelled_by.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.modified_cancelled_by.labels[value] or "Modified Cancelled By: Unknown("..value..")"
end

-- Dissect: Modified Cancelled By
nse_nseix_orderentry_nnf_v1_12.modified_cancelled_by.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.modified_cancelled_by.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.modified_cancelled_by.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.modified_cancelled_by, range, value, display)

  return offset + length, value
end

-- New Password
nse_nseix_orderentry_nnf_v1_12.new_password = {}

-- Size: New Password
nse_nseix_orderentry_nnf_v1_12.new_password.size = 8

-- Display: New Password
nse_nseix_orderentry_nnf_v1_12.new_password.display = function(value)
  return "New Password: "..value
end

-- Dissect: New Password
nse_nseix_orderentry_nnf_v1_12.new_password.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.new_password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.new_password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.new_password, range, value, display)

  return offset + length, value
end

-- New Volume
nse_nseix_orderentry_nnf_v1_12.new_volume = {}

-- Size: New Volume
nse_nseix_orderentry_nnf_v1_12.new_volume.size = 4

-- Display: New Volume
nse_nseix_orderentry_nnf_v1_12.new_volume.display = function(value)
  return "New Volume: "..value
end

-- Dissect: New Volume
nse_nseix_orderentry_nnf_v1_12.new_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.new_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.new_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.new_volume, range, value, display)

  return offset + length, value
end

-- Nnf Field
nse_nseix_orderentry_nnf_v1_12.nnf_field = {}

-- Size: Nnf Field
nse_nseix_orderentry_nnf_v1_12.nnf_field.size = 8

-- Display: Nnf Field
nse_nseix_orderentry_nnf_v1_12.nnf_field.display = function(value)
  return "Nnf Field: "..string.format("%.0f", value)
end

-- Dissect: Nnf Field
nse_nseix_orderentry_nnf_v1_12.nnf_field.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.nnf_field.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.nnf_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.nnf_field, range, value, display)

  return offset + length, value
end

-- No Of Records
nse_nseix_orderentry_nnf_v1_12.no_of_records = {}

-- Size: No Of Records
nse_nseix_orderentry_nnf_v1_12.no_of_records.size = 2

-- Display: No Of Records
nse_nseix_orderentry_nnf_v1_12.no_of_records.display = function(value)
  return "No Of Records: "..value
end

-- Dissect: No Of Records
nse_nseix_orderentry_nnf_v1_12.no_of_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.no_of_records.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.no_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.no_of_records, range, value, display)

  return offset + length, value
end

-- Normal
nse_nseix_orderentry_nnf_v1_12.normal = {}

-- Size: Normal
nse_nseix_orderentry_nnf_v1_12.normal.size = 2

-- Display: Normal
nse_nseix_orderentry_nnf_v1_12.normal.labels = {
  [0] = "Normal: Preopen (0)",
  [1] = "Normal: Open (1)",
  [2] = "Normal: Closed (2)",
  [3] = "Normal: Preopen End (3)",
  [4] = "Normal: Pre Close (4)",
  [5] = "Normal: Pre Close End (5)",
}

nse_nseix_orderentry_nnf_v1_12.normal.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.normal.labels[value] or "Normal: Unknown("..value..")"
end

-- Dissect: Normal
nse_nseix_orderentry_nnf_v1_12.normal.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.normal.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.normal.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.normal, range, value, display)

  return offset + length, value
end

-- Num Of Contracts Trd
nse_nseix_orderentry_nnf_v1_12.num_of_contracts_trd = {}

-- Size: Num Of Contracts Trd
nse_nseix_orderentry_nnf_v1_12.num_of_contracts_trd.size = 4

-- Display: Num Of Contracts Trd
nse_nseix_orderentry_nnf_v1_12.num_of_contracts_trd.display = function(value)
  return "Num Of Contracts Trd: "..value
end

-- Dissect: Num Of Contracts Trd
nse_nseix_orderentry_nnf_v1_12.num_of_contracts_trd.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.num_of_contracts_trd.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.num_of_contracts_trd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.num_of_contracts_trd, range, value, display)

  return offset + length, value
end

-- Number Of Packets
nse_nseix_orderentry_nnf_v1_12.number_of_packets = {}

-- Size: Number Of Packets
nse_nseix_orderentry_nnf_v1_12.number_of_packets.size = 4

-- Display: Number Of Packets
nse_nseix_orderentry_nnf_v1_12.number_of_packets.display = function(value)
  return "Number Of Packets: "..value
end

-- Dissect: Number Of Packets
nse_nseix_orderentry_nnf_v1_12.number_of_packets.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.number_of_packets.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.number_of_packets.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.number_of_packets, range, value, display)

  return offset + length, value
end

-- Number Of Records
nse_nseix_orderentry_nnf_v1_12.number_of_records = {}

-- Size: Number Of Records
nse_nseix_orderentry_nnf_v1_12.number_of_records.size = 2

-- Display: Number Of Records
nse_nseix_orderentry_nnf_v1_12.number_of_records.display = function(value)
  return "Number Of Records: "..value
end

-- Dissect: Number Of Records
nse_nseix_orderentry_nnf_v1_12.number_of_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.number_of_records.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.number_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.number_of_records, range, value, display)

  return offset + length, value
end

-- Oddlot
nse_nseix_orderentry_nnf_v1_12.oddlot = {}

-- Size: Oddlot
nse_nseix_orderentry_nnf_v1_12.oddlot.size = 2

-- Display: Oddlot
nse_nseix_orderentry_nnf_v1_12.oddlot.labels = {
  [0] = "Oddlot: Preopen (0)",
  [1] = "Oddlot: Open (1)",
  [2] = "Oddlot: Closed (2)",
  [3] = "Oddlot: Preopen End (3)",
  [4] = "Oddlot: Pre Close (4)",
  [5] = "Oddlot: Pre Close End (5)",
}

nse_nseix_orderentry_nnf_v1_12.oddlot.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.oddlot.labels[value] or "Oddlot: Unknown("..value..")"
end

-- Dissect: Oddlot
nse_nseix_orderentry_nnf_v1_12.oddlot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.oddlot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.oddlot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.oddlot, range, value, display)

  return offset + length, value
end

-- Old Account Number
nse_nseix_orderentry_nnf_v1_12.old_account_number = {}

-- Size: Old Account Number
nse_nseix_orderentry_nnf_v1_12.old_account_number.size = 10

-- Display: Old Account Number
nse_nseix_orderentry_nnf_v1_12.old_account_number.display = function(value)
  return "Old Account Number: "..value
end

-- Dissect: Old Account Number
nse_nseix_orderentry_nnf_v1_12.old_account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.old_account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.old_account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.old_account_number, range, value, display)

  return offset + length, value
end

-- Old Open Close
nse_nseix_orderentry_nnf_v1_12.old_open_close = {}

-- Size: Old Open Close
nse_nseix_orderentry_nnf_v1_12.old_open_close.size = 1

-- Display: Old Open Close
nse_nseix_orderentry_nnf_v1_12.old_open_close.labels = {
  ["O"] = "Old Open Close: Open (O)",
  ["C"] = "Old Open Close: Close (C)",
}

nse_nseix_orderentry_nnf_v1_12.old_open_close.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.old_open_close.labels[value] or "Old Open Close: Unknown("..value..")"
end

-- Dissect: Old Open Close
nse_nseix_orderentry_nnf_v1_12.old_open_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.old_open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.old_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.old_open_close, range, value, display)

  return offset + length, value
end

-- Old Participant
nse_nseix_orderentry_nnf_v1_12.old_participant = {}

-- Size: Old Participant
nse_nseix_orderentry_nnf_v1_12.old_participant.size = 12

-- Display: Old Participant
nse_nseix_orderentry_nnf_v1_12.old_participant.display = function(value)
  return "Old Participant: "..value
end

-- Dissect: Old Participant
nse_nseix_orderentry_nnf_v1_12.old_participant.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.old_participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.old_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.old_participant, range, value, display)

  return offset + length, value
end

-- Op Broker Id 1
nse_nseix_orderentry_nnf_v1_12.op_broker_id_1 = {}

-- Size: Op Broker Id 1
nse_nseix_orderentry_nnf_v1_12.op_broker_id_1.size = 5

-- Display: Op Broker Id 1
nse_nseix_orderentry_nnf_v1_12.op_broker_id_1.display = function(value)
  return "Op Broker Id 1: "..value
end

-- Dissect: Op Broker Id 1
nse_nseix_orderentry_nnf_v1_12.op_broker_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.op_broker_id_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.op_broker_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.op_broker_id_1, range, value, display)

  return offset + length, value
end

-- Op Broker Id 2
nse_nseix_orderentry_nnf_v1_12.op_broker_id_2 = {}

-- Size: Op Broker Id 2
nse_nseix_orderentry_nnf_v1_12.op_broker_id_2.size = 5

-- Display: Op Broker Id 2
nse_nseix_orderentry_nnf_v1_12.op_broker_id_2.display = function(value)
  return "Op Broker Id 2: "..value
end

-- Dissect: Op Broker Id 2
nse_nseix_orderentry_nnf_v1_12.op_broker_id_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.op_broker_id_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.op_broker_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.op_broker_id_2, range, value, display)

  return offset + length, value
end

-- Open Close
nse_nseix_orderentry_nnf_v1_12.open_close = {}

-- Size: Open Close
nse_nseix_orderentry_nnf_v1_12.open_close.size = 1

-- Display: Open Close
nse_nseix_orderentry_nnf_v1_12.open_close.labels = {
  ["O"] = "Open Close: Open (O)",
  ["C"] = "Open Close: Close (C)",
}

nse_nseix_orderentry_nnf_v1_12.open_close.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.open_close.labels[value] or "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
nse_nseix_orderentry_nnf_v1_12.open_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.open_close, range, value, display)

  return offset + length, value
end

-- Open Close 1
nse_nseix_orderentry_nnf_v1_12.open_close_1 = {}

-- Size: Open Close 1
nse_nseix_orderentry_nnf_v1_12.open_close_1.size = 1

-- Display: Open Close 1
nse_nseix_orderentry_nnf_v1_12.open_close_1.display = function(value)
  return "Open Close 1: "..value
end

-- Dissect: Open Close 1
nse_nseix_orderentry_nnf_v1_12.open_close_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.open_close_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.open_close_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.open_close_1, range, value, display)

  return offset + length, value
end

-- Open Close 2
nse_nseix_orderentry_nnf_v1_12.open_close_2 = {}

-- Size: Open Close 2
nse_nseix_orderentry_nnf_v1_12.open_close_2.size = 1

-- Display: Open Close 2
nse_nseix_orderentry_nnf_v1_12.open_close_2.display = function(value)
  return "Open Close 2: "..value
end

-- Dissect: Open Close 2
nse_nseix_orderentry_nnf_v1_12.open_close_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.open_close_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.open_close_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.open_close_2, range, value, display)

  return offset + length, value
end

-- Open Interest
nse_nseix_orderentry_nnf_v1_12.open_interest = {}

-- Size: Open Interest
nse_nseix_orderentry_nnf_v1_12.open_interest.size = 4

-- Display: Open Interest
nse_nseix_orderentry_nnf_v1_12.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
nse_nseix_orderentry_nnf_v1_12.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.open_interest.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Open Price
nse_nseix_orderentry_nnf_v1_12.open_price = {}

-- Size: Open Price
nse_nseix_orderentry_nnf_v1_12.open_price.size = 4

-- Display: Open Price
nse_nseix_orderentry_nnf_v1_12.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
nse_nseix_orderentry_nnf_v1_12.open_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.open_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.open_price, range, value, display)

  return offset + length, value
end

-- Open Price Diff
nse_nseix_orderentry_nnf_v1_12.open_price_diff = {}

-- Size: Open Price Diff
nse_nseix_orderentry_nnf_v1_12.open_price_diff.size = 4

-- Display: Open Price Diff
nse_nseix_orderentry_nnf_v1_12.open_price_diff.display = function(value)
  return "Open Price Diff: "..value
end

-- Dissect: Open Price Diff
nse_nseix_orderentry_nnf_v1_12.open_price_diff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.open_price_diff.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.open_price_diff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.open_price_diff, range, value, display)

  return offset + length, value
end

-- Option Type
nse_nseix_orderentry_nnf_v1_12.option_type = {}

-- Size: Option Type
nse_nseix_orderentry_nnf_v1_12.option_type.size = 2

-- Display: Option Type
nse_nseix_orderentry_nnf_v1_12.option_type.labels = {
  ["CE"] = "Option Type: Call Option (CE)",
  ["PE"] = "Option Type: Put Option (PE)",
  ["XX"] = "Option Type: Futures Contract (XX)",
}

nse_nseix_orderentry_nnf_v1_12.option_type.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.option_type.labels[value] or "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nse_nseix_orderentry_nnf_v1_12.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.option_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.option_type, range, value, display)

  return offset + length, value
end

-- Option Type 1
nse_nseix_orderentry_nnf_v1_12.option_type_1 = {}

-- Size: Option Type 1
nse_nseix_orderentry_nnf_v1_12.option_type_1.size = 2

-- Display: Option Type 1
nse_nseix_orderentry_nnf_v1_12.option_type_1.display = function(value)
  return "Option Type 1: "..value
end

-- Dissect: Option Type 1
nse_nseix_orderentry_nnf_v1_12.option_type_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.option_type_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.option_type_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.option_type_1, range, value, display)

  return offset + length, value
end

-- Option Type 2
nse_nseix_orderentry_nnf_v1_12.option_type_2 = {}

-- Size: Option Type 2
nse_nseix_orderentry_nnf_v1_12.option_type_2.size = 2

-- Display: Option Type 2
nse_nseix_orderentry_nnf_v1_12.option_type_2.display = function(value)
  return "Option Type 2: "..value
end

-- Dissect: Option Type 2
nse_nseix_orderentry_nnf_v1_12.option_type_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.option_type_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.option_type_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.option_type_2, range, value, display)

  return offset + length, value
end

-- Ord Qty Buff
nse_nseix_orderentry_nnf_v1_12.ord_qty_buff = {}

-- Size: Ord Qty Buff
nse_nseix_orderentry_nnf_v1_12.ord_qty_buff.size = 8

-- Display: Ord Qty Buff
nse_nseix_orderentry_nnf_v1_12.ord_qty_buff.display = function(value)
  return "Ord Qty Buff: "..string.format("%.0f", value)
end

-- Dissect: Ord Qty Buff
nse_nseix_orderentry_nnf_v1_12.ord_qty_buff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.ord_qty_buff.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.ord_qty_buff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.ord_qty_buff, range, value, display)

  return offset + length, value
end

-- Ord Val Buff
nse_nseix_orderentry_nnf_v1_12.ord_val_buff = {}

-- Size: Ord Val Buff
nse_nseix_orderentry_nnf_v1_12.ord_val_buff.size = 8

-- Display: Ord Val Buff
nse_nseix_orderentry_nnf_v1_12.ord_val_buff.display = function(value)
  return "Ord Val Buff: "..string.format("%.0f", value)
end

-- Dissect: Ord Val Buff
nse_nseix_orderentry_nnf_v1_12.ord_val_buff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.ord_val_buff.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.ord_val_buff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.ord_val_buff, range, value, display)

  return offset + length, value
end

-- Order Number
nse_nseix_orderentry_nnf_v1_12.order_number = {}

-- Size: Order Number
nse_nseix_orderentry_nnf_v1_12.order_number.size = 8

-- Display: Order Number
nse_nseix_orderentry_nnf_v1_12.order_number.display = function(value)
  return "Order Number: "..string.format("%.0f", value)
end

-- Dissect: Order Number
nse_nseix_orderentry_nnf_v1_12.order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Number 1
nse_nseix_orderentry_nnf_v1_12.order_number_1 = {}

-- Size: Order Number 1
nse_nseix_orderentry_nnf_v1_12.order_number_1.size = 8

-- Display: Order Number 1
nse_nseix_orderentry_nnf_v1_12.order_number_1.display = function(value)
  return "Order Number 1: "..string.format("%.0f", value)
end

-- Dissect: Order Number 1
nse_nseix_orderentry_nnf_v1_12.order_number_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.order_number_1.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.order_number_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_number_1, range, value, display)

  return offset + length, value
end

-- Order Price
nse_nseix_orderentry_nnf_v1_12.order_price = {}

-- Size: Order Price
nse_nseix_orderentry_nnf_v1_12.order_price.size = 4

-- Display: Order Price
nse_nseix_orderentry_nnf_v1_12.order_price.display = function(value)
  return "Order Price: "..value
end

-- Dissect: Order Price
nse_nseix_orderentry_nnf_v1_12.order_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.order_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_price, range, value, display)

  return offset + length, value
end

-- Order Qty Limit
nse_nseix_orderentry_nnf_v1_12.order_qty_limit = {}

-- Size: Order Qty Limit
nse_nseix_orderentry_nnf_v1_12.order_qty_limit.size = 8

-- Display: Order Qty Limit
nse_nseix_orderentry_nnf_v1_12.order_qty_limit.display = function(value)
  return "Order Qty Limit: "..string.format("%.0f", value)
end

-- Dissect: Order Qty Limit
nse_nseix_orderentry_nnf_v1_12.order_qty_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.order_qty_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.order_qty_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_qty_limit, range, value, display)

  return offset + length, value
end

-- Order Type
nse_nseix_orderentry_nnf_v1_12.order_type = {}

-- Size: Order Type
nse_nseix_orderentry_nnf_v1_12.order_type.size = 2

-- Display: Order Type
nse_nseix_orderentry_nnf_v1_12.order_type.display = function(value)
  return "Order Type: "..value
end

-- Dissect: Order Type
nse_nseix_orderentry_nnf_v1_12.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.order_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_type, range, value, display)

  return offset + length, value
end

-- Order Type 1
nse_nseix_orderentry_nnf_v1_12.order_type_1 = {}

-- Size: Order Type 1
nse_nseix_orderentry_nnf_v1_12.order_type_1.size = 2

-- Display: Order Type 1
nse_nseix_orderentry_nnf_v1_12.order_type_1.display = function(value)
  return "Order Type 1: "..value
end

-- Dissect: Order Type 1
nse_nseix_orderentry_nnf_v1_12.order_type_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.order_type_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.order_type_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_type_1, range, value, display)

  return offset + length, value
end

-- Order Type 2
nse_nseix_orderentry_nnf_v1_12.order_type_2 = {}

-- Size: Order Type 2
nse_nseix_orderentry_nnf_v1_12.order_type_2.size = 2

-- Display: Order Type 2
nse_nseix_orderentry_nnf_v1_12.order_type_2.display = function(value)
  return "Order Type 2: "..value
end

-- Dissect: Order Type 2
nse_nseix_orderentry_nnf_v1_12.order_type_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.order_type_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.order_type_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_type_2, range, value, display)

  return offset + length, value
end

-- Order Val Limit
nse_nseix_orderentry_nnf_v1_12.order_val_limit = {}

-- Size: Order Val Limit
nse_nseix_orderentry_nnf_v1_12.order_val_limit.size = 8

-- Display: Order Val Limit
nse_nseix_orderentry_nnf_v1_12.order_val_limit.display = function(value)
  return "Order Val Limit: "..string.format("%.0f", value)
end

-- Dissect: Order Val Limit
nse_nseix_orderentry_nnf_v1_12.order_val_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.order_val_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.order_val_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_val_limit, range, value, display)

  return offset + length, value
end

-- Org Scope
nse_nseix_orderentry_nnf_v1_12.org_scope = {}

-- Size: Org Scope
nse_nseix_orderentry_nnf_v1_12.org_scope.size = 1

-- Display: Org Scope
nse_nseix_orderentry_nnf_v1_12.org_scope.display = function(value)
  return "Org Scope: "..value
end

-- Dissect: Org Scope
nse_nseix_orderentry_nnf_v1_12.org_scope.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.org_scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.org_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.org_scope, range, value, display)

  return offset + length, value
end

-- Original Volume
nse_nseix_orderentry_nnf_v1_12.original_volume = {}

-- Size: Original Volume
nse_nseix_orderentry_nnf_v1_12.original_volume.size = 4

-- Display: Original Volume
nse_nseix_orderentry_nnf_v1_12.original_volume.display = function(value)
  return "Original Volume: "..value
end

-- Dissect: Original Volume
nse_nseix_orderentry_nnf_v1_12.original_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.original_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.original_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.original_volume, range, value, display)

  return offset + length, value
end

-- Participant
nse_nseix_orderentry_nnf_v1_12.participant = {}

-- Size: Participant
nse_nseix_orderentry_nnf_v1_12.participant.size = 12

-- Display: Participant
nse_nseix_orderentry_nnf_v1_12.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
nse_nseix_orderentry_nnf_v1_12.participant.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.participant, range, value, display)

  return offset + length, value
end

-- Participant Type
nse_nseix_orderentry_nnf_v1_12.participant_type = {}

-- Size: Participant Type
nse_nseix_orderentry_nnf_v1_12.participant_type.size = 1

-- Display: Participant Type
nse_nseix_orderentry_nnf_v1_12.participant_type.display = function(value)
  return "Participant Type: "..value
end

-- Dissect: Participant Type
nse_nseix_orderentry_nnf_v1_12.participant_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.participant_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.participant_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.participant_type, range, value, display)

  return offset + length, value
end

-- Participant Type 1
nse_nseix_orderentry_nnf_v1_12.participant_type_1 = {}

-- Size: Participant Type 1
nse_nseix_orderentry_nnf_v1_12.participant_type_1.size = 1

-- Display: Participant Type 1
nse_nseix_orderentry_nnf_v1_12.participant_type_1.display = function(value)
  return "Participant Type 1: "..value
end

-- Dissect: Participant Type 1
nse_nseix_orderentry_nnf_v1_12.participant_type_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.participant_type_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.participant_type_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.participant_type_1, range, value, display)

  return offset + length, value
end

-- Password
nse_nseix_orderentry_nnf_v1_12.password = {}

-- Size: Password
nse_nseix_orderentry_nnf_v1_12.password.size = 8

-- Display: Password
nse_nseix_orderentry_nnf_v1_12.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nse_nseix_orderentry_nnf_v1_12.password.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.password, range, value, display)

  return offset + length, value
end

-- Port
nse_nseix_orderentry_nnf_v1_12.port = {}

-- Size: Port
nse_nseix_orderentry_nnf_v1_12.port.size = 4

-- Display: Port
nse_nseix_orderentry_nnf_v1_12.port.display = function(value)
  return "Port: "..value
end

-- Dissect: Port
nse_nseix_orderentry_nnf_v1_12.port.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.port.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.port.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.port, range, value, display)

  return offset + length, value
end

-- Previous Close Price
nse_nseix_orderentry_nnf_v1_12.previous_close_price = {}

-- Size: Previous Close Price
nse_nseix_orderentry_nnf_v1_12.previous_close_price.size = 4

-- Display: Previous Close Price
nse_nseix_orderentry_nnf_v1_12.previous_close_price.display = function(value)
  return "Previous Close Price: "..value
end

-- Dissect: Previous Close Price
nse_nseix_orderentry_nnf_v1_12.previous_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.previous_close_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.previous_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.previous_close_price, range, value, display)

  return offset + length, value
end

-- Price
nse_nseix_orderentry_nnf_v1_12.price = {}

-- Size: Price
nse_nseix_orderentry_nnf_v1_12.price.size = 4

-- Display: Price
nse_nseix_orderentry_nnf_v1_12.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nse_nseix_orderentry_nnf_v1_12.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.price, range, value, display)

  return offset + length, value
end

-- Price 1
nse_nseix_orderentry_nnf_v1_12.price_1 = {}

-- Size: Price 1
nse_nseix_orderentry_nnf_v1_12.price_1.size = 4

-- Display: Price 1
nse_nseix_orderentry_nnf_v1_12.price_1.display = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nse_nseix_orderentry_nnf_v1_12.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.price_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nse_nseix_orderentry_nnf_v1_12.price_2 = {}

-- Size: Price 2
nse_nseix_orderentry_nnf_v1_12.price_2.size = 4

-- Display: Price 2
nse_nseix_orderentry_nnf_v1_12.price_2.display = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nse_nseix_orderentry_nnf_v1_12.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.price_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Diff
nse_nseix_orderentry_nnf_v1_12.price_diff = {}

-- Size: Price Diff
nse_nseix_orderentry_nnf_v1_12.price_diff.size = 4

-- Display: Price Diff
nse_nseix_orderentry_nnf_v1_12.price_diff.display = function(value)
  return "Price Diff: "..value
end

-- Dissect: Price Diff
nse_nseix_orderentry_nnf_v1_12.price_diff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.price_diff.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.price_diff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.price_diff, range, value, display)

  return offset + length, value
end

-- Pro Client 1
nse_nseix_orderentry_nnf_v1_12.pro_client_1 = {}

-- Size: Pro Client 1
nse_nseix_orderentry_nnf_v1_12.pro_client_1.size = 2

-- Display: Pro Client 1
nse_nseix_orderentry_nnf_v1_12.pro_client_1.display = function(value)
  return "Pro Client 1: "..value
end

-- Dissect: Pro Client 1
nse_nseix_orderentry_nnf_v1_12.pro_client_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.pro_client_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.pro_client_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.pro_client_1, range, value, display)

  return offset + length, value
end

-- Pro Client Indicator
nse_nseix_orderentry_nnf_v1_12.pro_client_indicator = {}

-- Size: Pro Client Indicator
nse_nseix_orderentry_nnf_v1_12.pro_client_indicator.size = 2

-- Display: Pro Client Indicator
nse_nseix_orderentry_nnf_v1_12.pro_client_indicator.labels = {
  [1] = "Pro Client Indicator: Client Order (1)",
  [2] = "Pro Client Indicator: Broker Order (2)",
}

nse_nseix_orderentry_nnf_v1_12.pro_client_indicator.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.pro_client_indicator.labels[value] or "Pro Client Indicator: Unknown("..value..")"
end

-- Dissect: Pro Client Indicator
nse_nseix_orderentry_nnf_v1_12.pro_client_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.pro_client_indicator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.pro_client_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.pro_client_indicator, range, value, display)

  return offset + length, value
end

-- Reason Code
nse_nseix_orderentry_nnf_v1_12.reason_code = {}

-- Size: Reason Code
nse_nseix_orderentry_nnf_v1_12.reason_code.size = 2

-- Display: Reason Code
nse_nseix_orderentry_nnf_v1_12.reason_code.labels = {
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

nse_nseix_orderentry_nnf_v1_12.reason_code.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.reason_code.labels[value] or "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
nse_nseix_orderentry_nnf_v1_12.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reason_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Reason Code 1
nse_nseix_orderentry_nnf_v1_12.reason_code_1 = {}

-- Size: Reason Code 1
nse_nseix_orderentry_nnf_v1_12.reason_code_1.size = 2

-- Display: Reason Code 1
nse_nseix_orderentry_nnf_v1_12.reason_code_1.display = function(value)
  return "Reason Code 1: "..value
end

-- Dissect: Reason Code 1
nse_nseix_orderentry_nnf_v1_12.reason_code_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reason_code_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.reason_code_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reason_code_1, range, value, display)

  return offset + length, value
end

-- Reference
nse_nseix_orderentry_nnf_v1_12.reference = {}

-- Size: Reference
nse_nseix_orderentry_nnf_v1_12.reference.size = 4

-- Display: Reference
nse_nseix_orderentry_nnf_v1_12.reference.display = function(value)
  return "Reference: "..value
end

-- Dissect: Reference
nse_nseix_orderentry_nnf_v1_12.reference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reference.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reference, range, value, display)

  return offset + length, value
end

-- Remaining Volume
nse_nseix_orderentry_nnf_v1_12.remaining_volume = {}

-- Size: Remaining Volume
nse_nseix_orderentry_nnf_v1_12.remaining_volume.size = 4

-- Display: Remaining Volume
nse_nseix_orderentry_nnf_v1_12.remaining_volume.display = function(value)
  return "Remaining Volume: "..value
end

-- Dissect: Remaining Volume
nse_nseix_orderentry_nnf_v1_12.remaining_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.remaining_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.remaining_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.remaining_volume, range, value, display)

  return offset + length, value
end

-- Report Date
nse_nseix_orderentry_nnf_v1_12.report_date = {}

-- Size: Report Date
nse_nseix_orderentry_nnf_v1_12.report_date.size = 4

-- Dissect: Report Date
nse_nseix_orderentry_nnf_v1_12.report_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.report_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_orderentry_nnf_v1_12.fields.report_date
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 3 then field = omi_nse_nseix_orderentry_nnf_v1_12.fields.report_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_orderentry_nnf_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Report Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_orderentry_nnf_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Request For Open Orders
nse_nseix_orderentry_nnf_v1_12.request_for_open_orders = {}

-- Size: Request For Open Orders
nse_nseix_orderentry_nnf_v1_12.request_for_open_orders.size = 1

-- Display: Request For Open Orders
nse_nseix_orderentry_nnf_v1_12.request_for_open_orders.labels = {
  ["G"] = "Request For Open Orders: Download Gtc And Gtd Orders (G)",
  ["N"] = "Request For Open Orders: No Open Orders (N)",
}

nse_nseix_orderentry_nnf_v1_12.request_for_open_orders.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.request_for_open_orders.labels[value] or "Request For Open Orders: Unknown("..value..")"
end

-- Dissect: Request For Open Orders
nse_nseix_orderentry_nnf_v1_12.request_for_open_orders.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.request_for_open_orders.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.request_for_open_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.request_for_open_orders, range, value, display)

  return offset + length, value
end

-- Requested By
nse_nseix_orderentry_nnf_v1_12.requested_by = {}

-- Size: Requested By
nse_nseix_orderentry_nnf_v1_12.requested_by.size = 1

-- Display: Requested By
nse_nseix_orderentry_nnf_v1_12.requested_by.labels = {
  ["1"] = "Requested By: Buy (1)",
  ["2"] = "Requested By: Sell (2)",
  ["3"] = "Requested By: Both (3)",
}

nse_nseix_orderentry_nnf_v1_12.requested_by.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.requested_by.labels[value] or "Requested By: Unknown("..value..")"
end

-- Dissect: Requested By
nse_nseix_orderentry_nnf_v1_12.requested_by.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.requested_by.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.requested_by.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.requested_by, range, value, display)

  return offset + length, value
end

-- Reserved 1
nse_nseix_orderentry_nnf_v1_12.reserved_1 = {}

-- Size: Reserved 1
nse_nseix_orderentry_nnf_v1_12.reserved_1.size = 1

-- Display: Reserved 1
nse_nseix_orderentry_nnf_v1_12.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 10
nse_nseix_orderentry_nnf_v1_12.reserved_10 = {}

-- Size: Reserved 10
nse_nseix_orderentry_nnf_v1_12.reserved_10.size = 10

-- Display: Reserved 10
nse_nseix_orderentry_nnf_v1_12.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
nse_nseix_orderentry_nnf_v1_12.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_10.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_10, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 14
nse_nseix_orderentry_nnf_v1_12.reserved_14 = {}

-- Size: Reserved 14
nse_nseix_orderentry_nnf_v1_12.reserved_14.size = 14

-- Display: Reserved 14
nse_nseix_orderentry_nnf_v1_12.reserved_14.display = function(value)
  return "Reserved 14: "..value
end

-- Dissect: Reserved 14
nse_nseix_orderentry_nnf_v1_12.reserved_14.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_14.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_14, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 145
nse_nseix_orderentry_nnf_v1_12.reserved_145 = {}

-- Size: Reserved 145
nse_nseix_orderentry_nnf_v1_12.reserved_145.size = 145

-- Display: Reserved 145
nse_nseix_orderentry_nnf_v1_12.reserved_145.display = function(value)
  return "Reserved 145: "..value
end

-- Dissect: Reserved 145
nse_nseix_orderentry_nnf_v1_12.reserved_145.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_145.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_145.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_145, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 16
nse_nseix_orderentry_nnf_v1_12.reserved_16 = {}

-- Size: Reserved 16
nse_nseix_orderentry_nnf_v1_12.reserved_16.size = 16

-- Display: Reserved 16
nse_nseix_orderentry_nnf_v1_12.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nse_nseix_orderentry_nnf_v1_12.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_16, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 2
nse_nseix_orderentry_nnf_v1_12.reserved_2 = {}

-- Size: Reserved 2
nse_nseix_orderentry_nnf_v1_12.reserved_2.size = 2

-- Display: Reserved 2
nse_nseix_orderentry_nnf_v1_12.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nse_nseix_orderentry_nnf_v1_12.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_2, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 200
nse_nseix_orderentry_nnf_v1_12.reserved_200 = {}

-- Size: Reserved 200
nse_nseix_orderentry_nnf_v1_12.reserved_200.size = 200

-- Display: Reserved 200
nse_nseix_orderentry_nnf_v1_12.reserved_200.display = function(value)
  return "Reserved 200: "..value
end

-- Dissect: Reserved 200
nse_nseix_orderentry_nnf_v1_12.reserved_200.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_200.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_200.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_200, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 24
nse_nseix_orderentry_nnf_v1_12.reserved_24 = {}

-- Size: Reserved 24
nse_nseix_orderentry_nnf_v1_12.reserved_24.size = 24

-- Display: Reserved 24
nse_nseix_orderentry_nnf_v1_12.reserved_24.display = function(value)
  return "Reserved 24: "..value
end

-- Dissect: Reserved 24
nse_nseix_orderentry_nnf_v1_12.reserved_24.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_24.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_24.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_24, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 25
nse_nseix_orderentry_nnf_v1_12.reserved_25 = {}

-- Size: Reserved 25
nse_nseix_orderentry_nnf_v1_12.reserved_25.size = 25

-- Display: Reserved 25
nse_nseix_orderentry_nnf_v1_12.reserved_25.display = function(value)
  return "Reserved 25: "..value
end

-- Dissect: Reserved 25
nse_nseix_orderentry_nnf_v1_12.reserved_25.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_25.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_25.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_25, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 26
nse_nseix_orderentry_nnf_v1_12.reserved_26 = {}

-- Size: Reserved 26
nse_nseix_orderentry_nnf_v1_12.reserved_26.size = 26

-- Display: Reserved 26
nse_nseix_orderentry_nnf_v1_12.reserved_26.display = function(value)
  return "Reserved 26: "..value
end

-- Dissect: Reserved 26
nse_nseix_orderentry_nnf_v1_12.reserved_26.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_26.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_26.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_26, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 32
nse_nseix_orderentry_nnf_v1_12.reserved_32 = {}

-- Size: Reserved 32
nse_nseix_orderentry_nnf_v1_12.reserved_32.size = 32

-- Display: Reserved 32
nse_nseix_orderentry_nnf_v1_12.reserved_32.display = function(value)
  return "Reserved 32: "..value
end

-- Dissect: Reserved 32
nse_nseix_orderentry_nnf_v1_12.reserved_32.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_32.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_32, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 36
nse_nseix_orderentry_nnf_v1_12.reserved_36 = {}

-- Size: Reserved 36
nse_nseix_orderentry_nnf_v1_12.reserved_36.size = 36

-- Display: Reserved 36
nse_nseix_orderentry_nnf_v1_12.reserved_36.display = function(value)
  return "Reserved 36: "..value
end

-- Dissect: Reserved 36
nse_nseix_orderentry_nnf_v1_12.reserved_36.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_36.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_36.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_36, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 4
nse_nseix_orderentry_nnf_v1_12.reserved_4 = {}

-- Size: Reserved 4
nse_nseix_orderentry_nnf_v1_12.reserved_4.size = 4

-- Display: Reserved 4
nse_nseix_orderentry_nnf_v1_12.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nse_nseix_orderentry_nnf_v1_12.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_4, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 5
nse_nseix_orderentry_nnf_v1_12.reserved_5 = {}

-- Size: Reserved 5
nse_nseix_orderentry_nnf_v1_12.reserved_5.size = 5

-- Display: Reserved 5
nse_nseix_orderentry_nnf_v1_12.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
nse_nseix_orderentry_nnf_v1_12.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_5, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 52
nse_nseix_orderentry_nnf_v1_12.reserved_52 = {}

-- Size: Reserved 52
nse_nseix_orderentry_nnf_v1_12.reserved_52.size = 52

-- Display: Reserved 52
nse_nseix_orderentry_nnf_v1_12.reserved_52.display = function(value)
  return "Reserved 52: "..value
end

-- Dissect: Reserved 52
nse_nseix_orderentry_nnf_v1_12.reserved_52.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_52.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_52.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_52, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 7
nse_nseix_orderentry_nnf_v1_12.reserved_7 = {}

-- Size: Reserved 7
nse_nseix_orderentry_nnf_v1_12.reserved_7.size = 7

-- Display: Reserved 7
nse_nseix_orderentry_nnf_v1_12.reserved_7.display = function(value)
  return "Reserved 7: "..value
end

-- Dissect: Reserved 7
nse_nseix_orderentry_nnf_v1_12.reserved_7.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_7, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 70
nse_nseix_orderentry_nnf_v1_12.reserved_70 = {}

-- Size: Reserved 70
nse_nseix_orderentry_nnf_v1_12.reserved_70.size = 70

-- Display: Reserved 70
nse_nseix_orderentry_nnf_v1_12.reserved_70.display = function(value)
  return "Reserved 70: "..value
end

-- Dissect: Reserved 70
nse_nseix_orderentry_nnf_v1_12.reserved_70.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_70.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_70.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_70, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 8
nse_nseix_orderentry_nnf_v1_12.reserved_8 = {}

-- Size: Reserved 8
nse_nseix_orderentry_nnf_v1_12.reserved_8.size = 8

-- Display: Reserved 8
nse_nseix_orderentry_nnf_v1_12.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
nse_nseix_orderentry_nnf_v1_12.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 80
nse_nseix_orderentry_nnf_v1_12.reserved_80 = {}

-- Size: Reserved 80
nse_nseix_orderentry_nnf_v1_12.reserved_80.size = 80

-- Display: Reserved 80
nse_nseix_orderentry_nnf_v1_12.reserved_80.display = function(value)
  return "Reserved 80: "..value
end

-- Dissect: Reserved 80
nse_nseix_orderentry_nnf_v1_12.reserved_80.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.reserved_80.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.reserved_80.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_80, range, range:raw(), display)

  return offset + length, value
end

-- Response Order Number
nse_nseix_orderentry_nnf_v1_12.response_order_number = {}

-- Size: Response Order Number
nse_nseix_orderentry_nnf_v1_12.response_order_number.size = 8

-- Display: Response Order Number
nse_nseix_orderentry_nnf_v1_12.response_order_number.display = function(value)
  return "Response Order Number: "..string.format("%.0f", value)
end

-- Dissect: Response Order Number
nse_nseix_orderentry_nnf_v1_12.response_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.response_order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.response_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.response_order_number, range, value, display)

  return offset + length, value
end

-- Risk Free Interest Rate
nse_nseix_orderentry_nnf_v1_12.risk_free_interest_rate = {}

-- Size: Risk Free Interest Rate
nse_nseix_orderentry_nnf_v1_12.risk_free_interest_rate.size = 4

-- Display: Risk Free Interest Rate
nse_nseix_orderentry_nnf_v1_12.risk_free_interest_rate.display = function(value)
  return "Risk Free Interest Rate: "..value
end

-- Dissect: Risk Free Interest Rate
nse_nseix_orderentry_nnf_v1_12.risk_free_interest_rate.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.risk_free_interest_rate.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.risk_free_interest_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.risk_free_interest_rate, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
nse_nseix_orderentry_nnf_v1_12.second_reserved_1 = {}

-- Size: Second Reserved 1
nse_nseix_orderentry_nnf_v1_12.second_reserved_1.size = 1

-- Display: Second Reserved 1
nse_nseix_orderentry_nnf_v1_12.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
nse_nseix_orderentry_nnf_v1_12.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.second_reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Sell Account Number
nse_nseix_orderentry_nnf_v1_12.sell_account_number = {}

-- Size: Sell Account Number
nse_nseix_orderentry_nnf_v1_12.sell_account_number.size = 10

-- Display: Sell Account Number
nse_nseix_orderentry_nnf_v1_12.sell_account_number.display = function(value)
  return "Sell Account Number: "..value
end

-- Dissect: Sell Account Number
nse_nseix_orderentry_nnf_v1_12.sell_account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.sell_account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.sell_account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.sell_account_number, range, value, display)

  return offset + length, value
end

-- Sell Broker Id
nse_nseix_orderentry_nnf_v1_12.sell_broker_id = {}

-- Size: Sell Broker Id
nse_nseix_orderentry_nnf_v1_12.sell_broker_id.size = 5

-- Display: Sell Broker Id
nse_nseix_orderentry_nnf_v1_12.sell_broker_id.display = function(value)
  return "Sell Broker Id: "..value
end

-- Dissect: Sell Broker Id
nse_nseix_orderentry_nnf_v1_12.sell_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.sell_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.sell_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.sell_broker_id, range, value, display)

  return offset + length, value
end

-- Sell Giveup Flag
nse_nseix_orderentry_nnf_v1_12.sell_giveup_flag = {}

-- Size: Sell Giveup Flag
nse_nseix_orderentry_nnf_v1_12.sell_giveup_flag.size = 1

-- Display: Sell Giveup Flag
nse_nseix_orderentry_nnf_v1_12.sell_giveup_flag.display = function(value)
  return "Sell Giveup Flag: "..value
end

-- Dissect: Sell Giveup Flag
nse_nseix_orderentry_nnf_v1_12.sell_giveup_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.sell_giveup_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.sell_giveup_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.sell_giveup_flag, range, value, display)

  return offset + length, value
end

-- Sell Open Close
nse_nseix_orderentry_nnf_v1_12.sell_open_close = {}

-- Size: Sell Open Close
nse_nseix_orderentry_nnf_v1_12.sell_open_close.size = 1

-- Display: Sell Open Close
nse_nseix_orderentry_nnf_v1_12.sell_open_close.labels = {
  ["O"] = "Sell Open Close: Open (O)",
  ["C"] = "Sell Open Close: Close (C)",
}

nse_nseix_orderentry_nnf_v1_12.sell_open_close.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.sell_open_close.labels[value] or "Sell Open Close: Unknown("..value..")"
end

-- Dissect: Sell Open Close
nse_nseix_orderentry_nnf_v1_12.sell_open_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.sell_open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.sell_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.sell_open_close, range, value, display)

  return offset + length, value
end

-- Sell Participant
nse_nseix_orderentry_nnf_v1_12.sell_participant = {}

-- Size: Sell Participant
nse_nseix_orderentry_nnf_v1_12.sell_participant.size = 12

-- Display: Sell Participant
nse_nseix_orderentry_nnf_v1_12.sell_participant.display = function(value)
  return "Sell Participant: "..value
end

-- Dissect: Sell Participant
nse_nseix_orderentry_nnf_v1_12.sell_participant.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.sell_participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.sell_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.sell_participant, range, value, display)

  return offset + length, value
end

-- Sequence Number
nse_nseix_orderentry_nnf_v1_12.sequence_number = {}

-- Size: Sequence Number
nse_nseix_orderentry_nnf_v1_12.sequence_number.size = 8

-- Display: Sequence Number
nse_nseix_orderentry_nnf_v1_12.sequence_number.display = function(value)
  return "Sequence Number: "..string.format("%.0f", value)
end

-- Dissect: Sequence Number
nse_nseix_orderentry_nnf_v1_12.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.sequence_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Key
nse_nseix_orderentry_nnf_v1_12.session_key = {}

-- Size: Session Key
nse_nseix_orderentry_nnf_v1_12.session_key.size = 8

-- Display: Session Key
nse_nseix_orderentry_nnf_v1_12.session_key.display = function(value)
  return "Session Key: "..value
end

-- Dissect: Session Key
nse_nseix_orderentry_nnf_v1_12.session_key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.session_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.session_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.session_key, range, value, display)

  return offset + length, value
end

-- Settlement Period
nse_nseix_orderentry_nnf_v1_12.settlement_period = {}

-- Size: Settlement Period
nse_nseix_orderentry_nnf_v1_12.settlement_period.size = 2

-- Display: Settlement Period
nse_nseix_orderentry_nnf_v1_12.settlement_period.display = function(value)
  return "Settlement Period: "..value
end

-- Dissect: Settlement Period
nse_nseix_orderentry_nnf_v1_12.settlement_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.settlement_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.settlement_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.settlement_period, range, value, display)

  return offset + length, value
end

-- Settlement Period 1
nse_nseix_orderentry_nnf_v1_12.settlement_period_1 = {}

-- Size: Settlement Period 1
nse_nseix_orderentry_nnf_v1_12.settlement_period_1.size = 2

-- Display: Settlement Period 1
nse_nseix_orderentry_nnf_v1_12.settlement_period_1.display = function(value)
  return "Settlement Period 1: "..value
end

-- Dissect: Settlement Period 1
nse_nseix_orderentry_nnf_v1_12.settlement_period_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.settlement_period_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.settlement_period_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.settlement_period_1, range, value, display)

  return offset + length, value
end

-- Settlor
nse_nseix_orderentry_nnf_v1_12.settlor = {}

-- Size: Settlor
nse_nseix_orderentry_nnf_v1_12.settlor.size = 12

-- Display: Settlor
nse_nseix_orderentry_nnf_v1_12.settlor.display = function(value)
  return "Settlor: "..value
end

-- Dissect: Settlor
nse_nseix_orderentry_nnf_v1_12.settlor.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.settlor.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.settlor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.settlor, range, value, display)

  return offset + length, value
end

-- Settlor 1
nse_nseix_orderentry_nnf_v1_12.settlor_1 = {}

-- Size: Settlor 1
nse_nseix_orderentry_nnf_v1_12.settlor_1.size = 12

-- Display: Settlor 1
nse_nseix_orderentry_nnf_v1_12.settlor_1.display = function(value)
  return "Settlor 1: "..value
end

-- Dissect: Settlor 1
nse_nseix_orderentry_nnf_v1_12.settlor_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.settlor_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.settlor_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.settlor_1, range, value, display)

  return offset + length, value
end

-- Snap Quote Time
nse_nseix_orderentry_nnf_v1_12.snap_quote_time = {}

-- Size: Snap Quote Time
nse_nseix_orderentry_nnf_v1_12.snap_quote_time.size = 2

-- Display: Snap Quote Time
nse_nseix_orderentry_nnf_v1_12.snap_quote_time.display = function(value)
  return "Snap Quote Time: "..value
end

-- Dissect: Snap Quote Time
nse_nseix_orderentry_nnf_v1_12.snap_quote_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.snap_quote_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.snap_quote_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.snap_quote_time, range, value, display)

  return offset + length, value
end

-- Solicitor Period
nse_nseix_orderentry_nnf_v1_12.solicitor_period = {}

-- Size: Solicitor Period
nse_nseix_orderentry_nnf_v1_12.solicitor_period.size = 2

-- Display: Solicitor Period
nse_nseix_orderentry_nnf_v1_12.solicitor_period.display = function(value)
  return "Solicitor Period: "..value
end

-- Dissect: Solicitor Period
nse_nseix_orderentry_nnf_v1_12.solicitor_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.solicitor_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.solicitor_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.solicitor_period, range, value, display)

  return offset + length, value
end

-- Solicitor Period 1
nse_nseix_orderentry_nnf_v1_12.solicitor_period_1 = {}

-- Size: Solicitor Period 1
nse_nseix_orderentry_nnf_v1_12.solicitor_period_1.size = 2

-- Display: Solicitor Period 1
nse_nseix_orderentry_nnf_v1_12.solicitor_period_1.display = function(value)
  return "Solicitor Period 1: "..value
end

-- Dissect: Solicitor Period 1
nse_nseix_orderentry_nnf_v1_12.solicitor_period_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.solicitor_period_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.solicitor_period_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.solicitor_period_1, range, value, display)

  return offset + length, value
end

-- Spd Ord Qty Buff
nse_nseix_orderentry_nnf_v1_12.spd_ord_qty_buff = {}

-- Size: Spd Ord Qty Buff
nse_nseix_orderentry_nnf_v1_12.spd_ord_qty_buff.size = 8

-- Display: Spd Ord Qty Buff
nse_nseix_orderentry_nnf_v1_12.spd_ord_qty_buff.display = function(value)
  return "Spd Ord Qty Buff: "..string.format("%.0f", value)
end

-- Dissect: Spd Ord Qty Buff
nse_nseix_orderentry_nnf_v1_12.spd_ord_qty_buff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.spd_ord_qty_buff.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.spd_ord_qty_buff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.spd_ord_qty_buff, range, value, display)

  return offset + length, value
end

-- Spd Ord Val Buff
nse_nseix_orderentry_nnf_v1_12.spd_ord_val_buff = {}

-- Size: Spd Ord Val Buff
nse_nseix_orderentry_nnf_v1_12.spd_ord_val_buff.size = 8

-- Display: Spd Ord Val Buff
nse_nseix_orderentry_nnf_v1_12.spd_ord_val_buff.display = function(value)
  return "Spd Ord Val Buff: "..string.format("%.0f", value)
end

-- Dissect: Spd Ord Val Buff
nse_nseix_orderentry_nnf_v1_12.spd_ord_val_buff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.spd_ord_val_buff.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.spd_ord_val_buff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.spd_ord_val_buff, range, value, display)

  return offset + length, value
end

-- Spot
nse_nseix_orderentry_nnf_v1_12.spot = {}

-- Size: Spot
nse_nseix_orderentry_nnf_v1_12.spot.size = 2

-- Display: Spot
nse_nseix_orderentry_nnf_v1_12.spot.labels = {
  [0] = "Spot: Preopen (0)",
  [1] = "Spot: Open (1)",
  [2] = "Spot: Closed (2)",
  [3] = "Spot: Preopen End (3)",
  [4] = "Spot: Pre Close (4)",
  [5] = "Spot: Pre Close End (5)",
}

nse_nseix_orderentry_nnf_v1_12.spot.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.spot.labels[value] or "Spot: Unknown("..value..")"
end

-- Dissect: Spot
nse_nseix_orderentry_nnf_v1_12.spot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.spot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.spot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.spot, range, value, display)

  return offset + length, value
end

-- Start Alpha 1
nse_nseix_orderentry_nnf_v1_12.start_alpha_1 = {}

-- Size: Start Alpha 1
nse_nseix_orderentry_nnf_v1_12.start_alpha_1.size = 2

-- Display: Start Alpha 1
nse_nseix_orderentry_nnf_v1_12.start_alpha_1.display = function(value)
  return "Start Alpha 1: "..value
end

-- Dissect: Start Alpha 1
nse_nseix_orderentry_nnf_v1_12.start_alpha_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.start_alpha_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.start_alpha_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.start_alpha_1, range, value, display)

  return offset + length, value
end

-- Status
nse_nseix_orderentry_nnf_v1_12.status = {}

-- Size: Status
nse_nseix_orderentry_nnf_v1_12.status.size = 2

-- Display: Status
nse_nseix_orderentry_nnf_v1_12.status.labels = {
  [1] = "Status: Start Of Outage (1)",
  [0] = "Status: End Of Outage (0)",
}

nse_nseix_orderentry_nnf_v1_12.status.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.status.labels[value] or "Status: Unknown("..value..")"
end

-- Dissect: Status
nse_nseix_orderentry_nnf_v1_12.status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.status, range, value, display)

  return offset + length, value
end

-- Stream Number
nse_nseix_orderentry_nnf_v1_12.stream_number = {}

-- Size: Stream Number
nse_nseix_orderentry_nnf_v1_12.stream_number.size = 2

-- Display: Stream Number
nse_nseix_orderentry_nnf_v1_12.stream_number.display = function(value)
  return "Stream Number: "..value
end

-- Dissect: Stream Number
nse_nseix_orderentry_nnf_v1_12.stream_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.stream_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.stream_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.stream_number, range, value, display)

  return offset + length, value
end

-- Strike Price
nse_nseix_orderentry_nnf_v1_12.strike_price = {}

-- Size: Strike Price
nse_nseix_orderentry_nnf_v1_12.strike_price.size = 4

-- Display: Strike Price
nse_nseix_orderentry_nnf_v1_12.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
nse_nseix_orderentry_nnf_v1_12.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.strike_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Price 1
nse_nseix_orderentry_nnf_v1_12.strike_price_1 = {}

-- Size: Strike Price 1
nse_nseix_orderentry_nnf_v1_12.strike_price_1.size = 4

-- Display: Strike Price 1
nse_nseix_orderentry_nnf_v1_12.strike_price_1.display = function(value)
  return "Strike Price 1: "..value
end

-- Dissect: Strike Price 1
nse_nseix_orderentry_nnf_v1_12.strike_price_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.strike_price_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.strike_price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.strike_price_1, range, value, display)

  return offset + length, value
end

-- Strike Price 2
nse_nseix_orderentry_nnf_v1_12.strike_price_2 = {}

-- Size: Strike Price 2
nse_nseix_orderentry_nnf_v1_12.strike_price_2.size = 4

-- Display: Strike Price 2
nse_nseix_orderentry_nnf_v1_12.strike_price_2.display = function(value)
  return "Strike Price 2: "..value
end

-- Dissect: Strike Price 2
nse_nseix_orderentry_nnf_v1_12.strike_price_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.strike_price_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.strike_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.strike_price_2, range, value, display)

  return offset + length, value
end

-- Symbol
nse_nseix_orderentry_nnf_v1_12.symbol = {}

-- Size: Symbol
nse_nseix_orderentry_nnf_v1_12.symbol.size = 10

-- Display: Symbol
nse_nseix_orderentry_nnf_v1_12.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nse_nseix_orderentry_nnf_v1_12.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol 1
nse_nseix_orderentry_nnf_v1_12.symbol_1 = {}

-- Size: Symbol 1
nse_nseix_orderentry_nnf_v1_12.symbol_1.size = 10

-- Display: Symbol 1
nse_nseix_orderentry_nnf_v1_12.symbol_1.display = function(value)
  return "Symbol 1: "..value
end

-- Dissect: Symbol 1
nse_nseix_orderentry_nnf_v1_12.symbol_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.symbol_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.symbol_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.symbol_1, range, value, display)

  return offset + length, value
end

-- Symbol 2
nse_nseix_orderentry_nnf_v1_12.symbol_2 = {}

-- Size: Symbol 2
nse_nseix_orderentry_nnf_v1_12.symbol_2.size = 10

-- Display: Symbol 2
nse_nseix_orderentry_nnf_v1_12.symbol_2.display = function(value)
  return "Symbol 2: "..value
end

-- Dissect: Symbol 2
nse_nseix_orderentry_nnf_v1_12.symbol_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.symbol_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.symbol_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.symbol_2, range, value, display)

  return offset + length, value
end

-- Third Reserved 1
nse_nseix_orderentry_nnf_v1_12.third_reserved_1 = {}

-- Size: Third Reserved 1
nse_nseix_orderentry_nnf_v1_12.third_reserved_1.size = 1

-- Display: Third Reserved 1
nse_nseix_orderentry_nnf_v1_12.third_reserved_1.display = function(value)
  return "Third Reserved 1: "..value
end

-- Dissect: Third Reserved 1
nse_nseix_orderentry_nnf_v1_12.third_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.third_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_orderentry_nnf_v1_12.third_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.third_reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Tick Size
nse_nseix_orderentry_nnf_v1_12.tick_size = {}

-- Size: Tick Size
nse_nseix_orderentry_nnf_v1_12.tick_size.size = 4

-- Display: Tick Size
nse_nseix_orderentry_nnf_v1_12.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
nse_nseix_orderentry_nnf_v1_12.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.tick_size.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Time Stamp 1
nse_nseix_orderentry_nnf_v1_12.time_stamp_1 = {}

-- Size: Time Stamp 1
nse_nseix_orderentry_nnf_v1_12.time_stamp_1.size = 8

-- Display: Time Stamp 1
nse_nseix_orderentry_nnf_v1_12.time_stamp_1.display = function(value)
  -- Check if field has value
  if value == nil or value == '' or value == "00000000" then
    return "Time Stamp 1: No Value"
  end

  return "Time Stamp 1: "..value
end

-- Dissect: Time Stamp 1
nse_nseix_orderentry_nnf_v1_12.time_stamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.time_stamp_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.time_stamp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.time_stamp_1, range, value, display)

  return offset + length, value
end

-- Time Stamp 2
nse_nseix_orderentry_nnf_v1_12.time_stamp_2 = {}

-- Size: Time Stamp 2
nse_nseix_orderentry_nnf_v1_12.time_stamp_2.size = 8

-- Display: Time Stamp 2
nse_nseix_orderentry_nnf_v1_12.time_stamp_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' or value == "00000000" then
    return "Time Stamp 2: No Value"
  end

  return "Time Stamp 2: "..value
end

-- Dissect: Time Stamp 2
nse_nseix_orderentry_nnf_v1_12.time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.time_stamp_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.time_stamp_2, range, value, display)

  return offset + length, value
end

-- Token
nse_nseix_orderentry_nnf_v1_12.token = {}

-- Size: Token
nse_nseix_orderentry_nnf_v1_12.token.size = 4

-- Display: Token
nse_nseix_orderentry_nnf_v1_12.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nseix_orderentry_nnf_v1_12.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.token.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.token, range, value, display)

  return offset + length, value
end

-- Token 1
nse_nseix_orderentry_nnf_v1_12.token_1 = {}

-- Size: Token 1
nse_nseix_orderentry_nnf_v1_12.token_1.size = 4

-- Display: Token 1
nse_nseix_orderentry_nnf_v1_12.token_1.display = function(value)
  return "Token 1: "..value
end

-- Dissect: Token 1
nse_nseix_orderentry_nnf_v1_12.token_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.token_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.token_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.token_1, range, value, display)

  return offset + length, value
end

-- Token 2
nse_nseix_orderentry_nnf_v1_12.token_2 = {}

-- Size: Token 2
nse_nseix_orderentry_nnf_v1_12.token_2.size = 4

-- Display: Token 2
nse_nseix_orderentry_nnf_v1_12.token_2.display = function(value)
  return "Token 2: "..value
end

-- Dissect: Token 2
nse_nseix_orderentry_nnf_v1_12.token_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.token_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.token_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.token_2, range, value, display)

  return offset + length, value
end

-- Token No
nse_nseix_orderentry_nnf_v1_12.token_no = {}

-- Size: Token No
nse_nseix_orderentry_nnf_v1_12.token_no.size = 4

-- Display: Token No
nse_nseix_orderentry_nnf_v1_12.token_no.display = function(value)
  return "Token No: "..value
end

-- Dissect: Token No
nse_nseix_orderentry_nnf_v1_12.token_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.token_no.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.token_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.token_no, range, value, display)

  return offset + length, value
end

-- Total Quantity Traded
nse_nseix_orderentry_nnf_v1_12.total_quantity_traded = {}

-- Size: Total Quantity Traded
nse_nseix_orderentry_nnf_v1_12.total_quantity_traded.size = 4

-- Display: Total Quantity Traded
nse_nseix_orderentry_nnf_v1_12.total_quantity_traded.display = function(value)
  return "Total Quantity Traded: "..value
end

-- Dissect: Total Quantity Traded
nse_nseix_orderentry_nnf_v1_12.total_quantity_traded.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.total_quantity_traded.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.total_quantity_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.total_quantity_traded, range, value, display)

  return offset + length, value
end

-- Total Value
nse_nseix_orderentry_nnf_v1_12.total_value = {}

-- Size: Total Value
nse_nseix_orderentry_nnf_v1_12.total_value.size = 8

-- Display: Total Value
nse_nseix_orderentry_nnf_v1_12.total_value.display = function(value)
  return "Total Value: "..string.format("%.0f", value)
end

-- Dissect: Total Value
nse_nseix_orderentry_nnf_v1_12.total_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.total_value.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.total_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.total_value, range, value, display)

  return offset + length, value
end

-- Total Value Traded
nse_nseix_orderentry_nnf_v1_12.total_value_traded = {}

-- Size: Total Value Traded
nse_nseix_orderentry_nnf_v1_12.total_value_traded.size = 8

-- Display: Total Value Traded
nse_nseix_orderentry_nnf_v1_12.total_value_traded.display = function(value)
  return "Total Value Traded: "..string.format("%.0f", value)
end

-- Dissect: Total Value Traded
nse_nseix_orderentry_nnf_v1_12.total_value_traded.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.total_value_traded.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.total_value_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.total_value_traded, range, value, display)

  return offset + length, value
end

-- Total Vol Remaining 1
nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_1 = {}

-- Size: Total Vol Remaining 1
nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_1.size = 4

-- Display: Total Vol Remaining 1
nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_1.display = function(value)
  return "Total Vol Remaining 1: "..value
end

-- Dissect: Total Vol Remaining 1
nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.total_vol_remaining_1, range, value, display)

  return offset + length, value
end

-- Total Vol Remaining 2
nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_2 = {}

-- Size: Total Vol Remaining 2
nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_2.size = 4

-- Display: Total Vol Remaining 2
nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_2.display = function(value)
  return "Total Vol Remaining 2: "..value
end

-- Dissect: Total Vol Remaining 2
nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.total_vol_remaining_2, range, value, display)

  return offset + length, value
end

-- Total Volume Remaining
nse_nseix_orderentry_nnf_v1_12.total_volume_remaining = {}

-- Size: Total Volume Remaining
nse_nseix_orderentry_nnf_v1_12.total_volume_remaining.size = 4

-- Display: Total Volume Remaining
nse_nseix_orderentry_nnf_v1_12.total_volume_remaining.display = function(value)
  return "Total Volume Remaining: "..value
end

-- Dissect: Total Volume Remaining
nse_nseix_orderentry_nnf_v1_12.total_volume_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.total_volume_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.total_volume_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.total_volume_remaining, range, value, display)

  return offset + length, value
end

-- Trade Book Type
nse_nseix_orderentry_nnf_v1_12.trade_book_type = {}

-- Size: Trade Book Type
nse_nseix_orderentry_nnf_v1_12.trade_book_type.size = 1

-- Display: Trade Book Type
nse_nseix_orderentry_nnf_v1_12.trade_book_type.display = function(value)
  return "Trade Book Type: "..value
end

-- Dissect: Trade Book Type
nse_nseix_orderentry_nnf_v1_12.trade_book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.trade_book_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.trade_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.trade_book_type, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nseix_orderentry_nnf_v1_12.trader_id = {}

-- Size: Trader Id
nse_nseix_orderentry_nnf_v1_12.trader_id.size = 4

-- Display: Trader Id
nse_nseix_orderentry_nnf_v1_12.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nseix_orderentry_nnf_v1_12.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trader Id 1
nse_nseix_orderentry_nnf_v1_12.trader_id_1 = {}

-- Size: Trader Id 1
nse_nseix_orderentry_nnf_v1_12.trader_id_1.size = 4

-- Display: Trader Id 1
nse_nseix_orderentry_nnf_v1_12.trader_id_1.display = function(value)
  return "Trader Id 1: "..value
end

-- Dissect: Trader Id 1
nse_nseix_orderentry_nnf_v1_12.trader_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.trader_id_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.trader_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.trader_id_1, range, value, display)

  return offset + length, value
end

-- Trader Name
nse_nseix_orderentry_nnf_v1_12.trader_name = {}

-- Size: Trader Name
nse_nseix_orderentry_nnf_v1_12.trader_name.size = 26

-- Display: Trader Name
nse_nseix_orderentry_nnf_v1_12.trader_name.display = function(value)
  return "Trader Name: "..value
end

-- Dissect: Trader Name
nse_nseix_orderentry_nnf_v1_12.trader_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.trader_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.trader_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.trader_name, range, value, display)

  return offset + length, value
end

-- Trader Number
nse_nseix_orderentry_nnf_v1_12.trader_number = {}

-- Size: Trader Number
nse_nseix_orderentry_nnf_v1_12.trader_number.size = 4

-- Display: Trader Number
nse_nseix_orderentry_nnf_v1_12.trader_number.display = function(value)
  return "Trader Number: "..value
end

-- Dissect: Trader Number
nse_nseix_orderentry_nnf_v1_12.trader_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.trader_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.trader_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.trader_number, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nseix_orderentry_nnf_v1_12.transaction_code = {}

-- Size: Transaction Code
nse_nseix_orderentry_nnf_v1_12.transaction_code.size = 2

-- Display: Transaction Code
nse_nseix_orderentry_nnf_v1_12.transaction_code.labels = {
  [2300] = "Transaction Code: Sign On Request In Message (2300)",
  [5584] = "Transaction Code: Sign On Request In Message (5584)",
  [2301] = "Transaction Code: Sign On Request Out Message (2301)",
  [5585] = "Transaction Code: Sign On Request Out Message (5585)",
  [2321] = "Transaction Code: Sign Off Request Out Message (2321)",
  [2320] = "Transaction Code: Sign Off Request In Message (2320)",
  [1600] = "Transaction Code: System Information In Message (1600)",
  [1601] = "Transaction Code: System Information Out Message (1601)",
  [7321] = "Transaction Code: System Information Out Message (7321)",
  [7300] = "Transaction Code: Update Local Database In Message (7300)",
  [7307] = "Transaction Code: Update Local Database Header Message (7307)",
  [7308] = "Transaction Code: Update Local Database Trailer Message (7308)",
  [7304] = "Transaction Code: Update Local Database Data Message (7304)",
  [7000] = "Transaction Code: Download Request Message (7000)",
  [7011] = "Transaction Code: Header Record Message (7011)",
  [7021] = "Transaction Code: Message Record Message (7021)",
  [7031] = "Transaction Code: Trailer Record Message (7031)",
  [2000] = "Transaction Code: Order Entry Request Message (2000)",
  [2082] = "Transaction Code: Order Entry Request Message (2082)",
  [2040] = "Transaction Code: Order Modification Request Message (2040)",
  [2084] = "Transaction Code: Order Modification Request Message (2084)",
  [2070] = "Transaction Code: Order Cancellation Request Message (2070)",
  [2086] = "Transaction Code: Order Cancellation Request Message (2086)",
  [2062] = "Transaction Code: Kill Switch Request Message (2062)",
  [2073] = "Transaction Code: Order Confirmation Message (2073)",
  [2083] = "Transaction Code: Order Confirmation Message (2083)",
  [2074] = "Transaction Code: Order Modification Confirmation Message (2074)",
  [2085] = "Transaction Code: Order Modification Confirmation Message (2085)",
  [2001] = "Transaction Code: Order Response Message (2001)",
  [2012] = "Transaction Code: Order Response Message (2012)",
  [2041] = "Transaction Code: Order Response Message (2041)",
  [2042] = "Transaction Code: Order Response Message (2042)",
  [2071] = "Transaction Code: Order Response Message (2071)",
  [2072] = "Transaction Code: Order Response Message (2072)",
  [2087] = "Transaction Code: Order Response Message (2087)",
  [2088] = "Transaction Code: Order Response Message (2088)",
  [2089] = "Transaction Code: Order Response Message (2089)",
  [2170] = "Transaction Code: Order Response Message (2170)",
  [2231] = "Transaction Code: Order Response Message (2231)",
  [9002] = "Transaction Code: Order Response Message (9002)",
  [27100] = "Transaction Code: Order Response Message (27100)",
  [2075] = "Transaction Code: Order Cancellation Confirmation Message (2075)",
  [2013] = "Transaction Code: Price Modification Message (2013)",
  [5440] = "Transaction Code: Trade Inquiry Message (5440)",
  [5445] = "Transaction Code: Trade Inquiry Message (5445)",
  [5448] = "Transaction Code: Trade Inquiry Message (5448)",
  [5451] = "Transaction Code: Trade Inquiry Message (5451)",
  [2223] = "Transaction Code: Trade Inquiry Response Message (2223)",
  [2288] = "Transaction Code: Trade Inquiry Response Message (2288)",
  [5441] = "Transaction Code: Trade Inquiry Response Message (5441)",
  [5450] = "Transaction Code: Trade Inquiry Response Message (5450)",
  [5452] = "Transaction Code: Trade Inquiry Response Message (5452)",
  [5453] = "Transaction Code: Trade Inquiry Response Message (5453)",
  [2090] = "Transaction Code: Trade Confirmation Message (2090)",
  [2212] = "Transaction Code: Trade Confirmation Message (2212)",
  [2222] = "Transaction Code: Trade Confirmation Message (2222)",
  [2282] = "Transaction Code: Trade Confirmation Message (2282)",
  [2286] = "Transaction Code: Trade Confirmation Message (2286)",
  [2287] = "Transaction Code: Trade Confirmation Message (2287)",
  [5449] = "Transaction Code: Trade Confirmation Message (5449)",
  [2100] = "Transaction Code: Spread Order Entry Request Message (2100)",
  [2102] = "Transaction Code: Spread Order Entry Request Message (2102)",
  [2104] = "Transaction Code: Spread Order Entry Request Message (2104)",
  [2106] = "Transaction Code: Spread Order Entry Request Message (2106)",
  [2118] = "Transaction Code: Spread Order Entry Request Message (2118)",
  [2101] = "Transaction Code: Spread Order Response Message (2101)",
  [2103] = "Transaction Code: Spread Order Response Message (2103)",
  [2105] = "Transaction Code: Spread Order Response Message (2105)",
  [2107] = "Transaction Code: Spread Order Response Message (2107)",
  [2119] = "Transaction Code: Spread Order Response Message (2119)",
  [2124] = "Transaction Code: Spread Order Response Message (2124)",
  [2125] = "Transaction Code: Spread Order Response Message (2125)",
  [2126] = "Transaction Code: Spread Order Response Message (2126)",
  [2127] = "Transaction Code: Spread Order Response Message (2127)",
  [2130] = "Transaction Code: Spread Order Response Message (2130)",
  [2131] = "Transaction Code: Spread Order Response Message (2131)",
  [2132] = "Transaction Code: Spread Order Response Message (2132)",
  [2133] = "Transaction Code: Spread Order Response Message (2133)",
  [2136] = "Transaction Code: Spread Order Response Message (2136)",
  [2154] = "Transaction Code: Spread Order Response Message (2154)",
  [2155] = "Transaction Code: Spread Order Response Message (2155)",
  [2156] = "Transaction Code: Spread Order Response Message (2156)",
  [9004] = "Transaction Code: Spread Order Response Message (9004)",
  [27102] = "Transaction Code: Spread Order Response Message (27102)",
  [27103] = "Transaction Code: Spread Order Response Message (27103)",
  [27104] = "Transaction Code: Spread Order Response Message (27104)",
  [5731] = "Transaction Code: User Order Limit Update Message (5731)",
  [5733] = "Transaction Code: Dealer Limit Update Message (5733)",
  [5772] = "Transaction Code: Spread Order Limit Update Message (5772)",
  [5295] = "Transaction Code: Control Message To Trader Message (5295)",
  [1684] = "Transaction Code: Mba Inquiry Request Message (1684)",
  [1686] = "Transaction Code: Mba Inquiry Request Message (1686)",
  [1688] = "Transaction Code: Mba Inquiry Request Message (1688)",
  [1685] = "Transaction Code: Mba Inquiry Response Message (1685)",
  [1687] = "Transaction Code: Mba Inquiry Response Message (1687)",
  [1689] = "Transaction Code: Mba Inquiry Response Message (1689)",
  [1833] = "Transaction Code: Market Statistics Report Message (1833)",
  [6502] = "Transaction Code: Spread Bhavcopy Message (6502)",
  [4506] = "Transaction Code: Giveup Confirmation Message (4506)",
  [4507] = "Transaction Code: Giveup Confirmation Message (4507)",
  [2400] = "Transaction Code: Gateway Router Request Message (2400)",
  [2401] = "Transaction Code: Gateway Router Response Message (2401)",
  [23008] = "Transaction Code: Secure Box Registration Request In Message (23008)",
  [23009] = "Transaction Code: Secure Box Registration Response Out Message (23009)",
  [23000] = "Transaction Code: Box Sign On Request In Message (23000)",
  [23001] = "Transaction Code: Box Sign On Request Out Message (23001)",
  [23506] = "Transaction Code: Heartbeat Message (23506)",
  [20322] = "Transaction Code: Box Sign Off Message (20322)",
  [5294] = "Transaction Code: Contingency Broadcast Message (5294)",
  [5716] = "Transaction Code: Branch Order Value Limit Update Request Message (5716)",
  [5717] = "Transaction Code: Branch Order Value Limit Update Response Message (5717)",
  [5730] = "Transaction Code: User Order Value Limit Update Message (5730)",
  [5732] = "Transaction Code: Normal Order Limit Update Message (5732)",
  [5771] = "Transaction Code: Normal Order Limit Update Message (5771)",
  [5740] = "Transaction Code: Reset User Password Message (5740)",
  [5741] = "Transaction Code: Reset User Password Response Message (5741)",
  [5744] = "Transaction Code: Collateral User Status Change Request Message (5744)",
  [5745] = "Transaction Code: Collateral User Status Change Response Message (5745)",
  [5738] = "Transaction Code: User Trade Modify Cancel Status Change Request Message (5738)",
  [5739] = "Transaction Code: User Trade Modify Cancel Status Change Response Message (5739)",
  [5427] = "Transaction Code: User Address Unlock Request Message (5427)",
  [5428] = "Transaction Code: User Address Unlock Confirm Message (5428)",
  [5483] = "Transaction Code: User Address Unlock Approve Message (5483)",
  [5484] = "Transaction Code: User Address Unlock Approve Message (5484)",
  [2093] = "Transaction Code: Nlt Order Message To Trader Message (2093)",
  [1242] = "Transaction Code: Nlt Order Inquiry Request Message (1242)",
  [1243] = "Transaction Code: Nlt Order Inquiry Response Message (1243)",
  [7032] = "Transaction Code: Nlt Trailer Record Message (7032)",
}

nse_nseix_orderentry_nnf_v1_12.transaction_code.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.transaction_code.labels[value] or "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nseix_orderentry_nnf_v1_12.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.transaction_code, range, value, display)

  return offset + length, value
end

-- Trd Mod Cxl Bit
nse_nseix_orderentry_nnf_v1_12.trd_mod_cxl_bit = {}

-- Size: Trd Mod Cxl Bit
nse_nseix_orderentry_nnf_v1_12.trd_mod_cxl_bit.size = 1

-- Display: Trd Mod Cxl Bit
nse_nseix_orderentry_nnf_v1_12.trd_mod_cxl_bit.labels = {
  ["Y"] = "Trd Mod Cxl Bit: Enable (Y)",
  ["N"] = "Trd Mod Cxl Bit: Disable (N)",
}

nse_nseix_orderentry_nnf_v1_12.trd_mod_cxl_bit.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.trd_mod_cxl_bit.labels[value] or "Trd Mod Cxl Bit: Unknown("..value..")"
end

-- Dissect: Trd Mod Cxl Bit
nse_nseix_orderentry_nnf_v1_12.trd_mod_cxl_bit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.trd_mod_cxl_bit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.trd_mod_cxl_bit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.trd_mod_cxl_bit, range, value, display)

  return offset + length, value
end

-- Trigger Price
nse_nseix_orderentry_nnf_v1_12.trigger_price = {}

-- Size: Trigger Price
nse_nseix_orderentry_nnf_v1_12.trigger_price.size = 4

-- Display: Trigger Price
nse_nseix_orderentry_nnf_v1_12.trigger_price.display = function(value)
  return "Trigger Price: "..value
end

-- Dissect: Trigger Price
nse_nseix_orderentry_nnf_v1_12.trigger_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.trigger_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.trigger_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.trigger_price, range, value, display)

  return offset + length, value
end

-- Trigger Price 1
nse_nseix_orderentry_nnf_v1_12.trigger_price_1 = {}

-- Size: Trigger Price 1
nse_nseix_orderentry_nnf_v1_12.trigger_price_1.size = 4

-- Display: Trigger Price 1
nse_nseix_orderentry_nnf_v1_12.trigger_price_1.display = function(value)
  return "Trigger Price 1: "..value
end

-- Dissect: Trigger Price 1
nse_nseix_orderentry_nnf_v1_12.trigger_price_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.trigger_price_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.trigger_price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.trigger_price_1, range, value, display)

  return offset + length, value
end

-- Trigger Price 2
nse_nseix_orderentry_nnf_v1_12.trigger_price_2 = {}

-- Size: Trigger Price 2
nse_nseix_orderentry_nnf_v1_12.trigger_price_2.size = 4

-- Display: Trigger Price 2
nse_nseix_orderentry_nnf_v1_12.trigger_price_2.display = function(value)
  return "Trigger Price 2: "..value
end

-- Dissect: Trigger Price 2
nse_nseix_orderentry_nnf_v1_12.trigger_price_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.trigger_price_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.trigger_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.trigger_price_2, range, value, display)

  return offset + length, value
end

-- Update Portfolio
nse_nseix_orderentry_nnf_v1_12.update_portfolio = {}

-- Size: Update Portfolio
nse_nseix_orderentry_nnf_v1_12.update_portfolio.size = 1

-- Display: Update Portfolio
nse_nseix_orderentry_nnf_v1_12.update_portfolio.display = function(value)
  return "Update Portfolio: "..value
end

-- Dissect: Update Portfolio
nse_nseix_orderentry_nnf_v1_12.update_portfolio.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.update_portfolio.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_orderentry_nnf_v1_12.update_portfolio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.update_portfolio, range, value, display)

  return offset + length, value
end

-- User Id
nse_nseix_orderentry_nnf_v1_12.user_id = {}

-- Size: User Id
nse_nseix_orderentry_nnf_v1_12.user_id.size = 4

-- Display: User Id
nse_nseix_orderentry_nnf_v1_12.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
nse_nseix_orderentry_nnf_v1_12.user_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.user_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_id, range, value, display)

  return offset + length, value
end

-- User Name
nse_nseix_orderentry_nnf_v1_12.user_name = {}

-- Size: User Name
nse_nseix_orderentry_nnf_v1_12.user_name.size = 25

-- Display: User Name
nse_nseix_orderentry_nnf_v1_12.user_name.display = function(value)
  return "User Name: "..value
end

-- Dissect: User Name
nse_nseix_orderentry_nnf_v1_12.user_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.user_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.user_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_name, range, value, display)

  return offset + length, value
end

-- User Order Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_buy_value_limit = {}

-- Size: User Order Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_buy_value_limit.size = 8

-- Display: User Order Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_buy_value_limit.display = function(value)
  return "User Order Buy Value Limit: "..string.format("%.0f", value)
end

-- Dissect: User Order Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_buy_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.user_order_buy_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.user_order_buy_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_buy_value_limit, range, value, display)

  return offset + length, value
end

-- User Order Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_sell_value_limit = {}

-- Size: User Order Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_sell_value_limit.size = 8

-- Display: User Order Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_sell_value_limit.display = function(value)
  return "User Order Sell Value Limit: "..string.format("%.0f", value)
end

-- Dissect: User Order Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_sell_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.user_order_sell_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.user_order_sell_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_sell_value_limit, range, value, display)

  return offset + length, value
end

-- User Order Used Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_used_buy_value_limit = {}

-- Size: User Order Used Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_used_buy_value_limit.size = 8

-- Display: User Order Used Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_used_buy_value_limit.display = function(value)
  return "User Order Used Buy Value Limit: "..string.format("%.0f", value)
end

-- Dissect: User Order Used Buy Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_used_buy_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.user_order_used_buy_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.user_order_used_buy_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_used_buy_value_limit, range, value, display)

  return offset + length, value
end

-- User Order Used Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_used_sell_value_limit = {}

-- Size: User Order Used Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_used_sell_value_limit.size = 8

-- Display: User Order Used Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_used_sell_value_limit.display = function(value)
  return "User Order Used Sell Value Limit: "..string.format("%.0f", value)
end

-- Dissect: User Order Used Sell Value Limit
nse_nseix_orderentry_nnf_v1_12.user_order_used_sell_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.user_order_used_sell_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_orderentry_nnf_v1_12.user_order_used_sell_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_used_sell_value_limit, range, value, display)

  return offset + length, value
end

-- User Type
nse_nseix_orderentry_nnf_v1_12.user_type = {}

-- Size: User Type
nse_nseix_orderentry_nnf_v1_12.user_type.size = 2

-- Display: User Type
nse_nseix_orderentry_nnf_v1_12.user_type.labels = {
  [0] = "User Type: Dealer (0)",
  [4] = "User Type: Corporate Manager (4)",
  [5] = "User Type: Branch Manager (5)",
}

nse_nseix_orderentry_nnf_v1_12.user_type.display = function(value)
  return nse_nseix_orderentry_nnf_v1_12.user_type.labels[value] or "User Type: Unknown("..value..")"
end

-- Dissect: User Type
nse_nseix_orderentry_nnf_v1_12.user_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.user_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.user_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_type, range, value, display)

  return offset + length, value
end

-- Version Number
nse_nseix_orderentry_nnf_v1_12.version_number = {}

-- Size: Version Number
nse_nseix_orderentry_nnf_v1_12.version_number.size = 4

-- Display: Version Number
nse_nseix_orderentry_nnf_v1_12.version_number.display = function(value)
  return "Version Number: "..value
end

-- Dissect: Version Number
nse_nseix_orderentry_nnf_v1_12.version_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.version_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.version_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.version_number, range, value, display)

  return offset + length, value
end

-- Volume
nse_nseix_orderentry_nnf_v1_12.volume = {}

-- Size: Volume
nse_nseix_orderentry_nnf_v1_12.volume.size = 4

-- Display: Volume
nse_nseix_orderentry_nnf_v1_12.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nse_nseix_orderentry_nnf_v1_12.volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.volume, range, value, display)

  return offset + length, value
end

-- Volume 1
nse_nseix_orderentry_nnf_v1_12.volume_1 = {}

-- Size: Volume 1
nse_nseix_orderentry_nnf_v1_12.volume_1.size = 4

-- Display: Volume 1
nse_nseix_orderentry_nnf_v1_12.volume_1.display = function(value)
  return "Volume 1: "..value
end

-- Dissect: Volume 1
nse_nseix_orderentry_nnf_v1_12.volume_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.volume_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.volume_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.volume_1, range, value, display)

  return offset + length, value
end

-- Volume 2
nse_nseix_orderentry_nnf_v1_12.volume_2 = {}

-- Size: Volume 2
nse_nseix_orderentry_nnf_v1_12.volume_2.size = 4

-- Display: Volume 2
nse_nseix_orderentry_nnf_v1_12.volume_2.display = function(value)
  return "Volume 2: "..value
end

-- Dissect: Volume 2
nse_nseix_orderentry_nnf_v1_12.volume_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.volume_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.volume_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.volume_2, range, value, display)

  return offset + length, value
end

-- Volume Filled Today
nse_nseix_orderentry_nnf_v1_12.volume_filled_today = {}

-- Size: Volume Filled Today
nse_nseix_orderentry_nnf_v1_12.volume_filled_today.size = 4

-- Display: Volume Filled Today
nse_nseix_orderentry_nnf_v1_12.volume_filled_today.display = function(value)
  return "Volume Filled Today: "..value
end

-- Dissect: Volume Filled Today
nse_nseix_orderentry_nnf_v1_12.volume_filled_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.volume_filled_today.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.volume_filled_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.volume_filled_today, range, value, display)

  return offset + length, value
end

-- Volume Filled Today 1
nse_nseix_orderentry_nnf_v1_12.volume_filled_today_1 = {}

-- Size: Volume Filled Today 1
nse_nseix_orderentry_nnf_v1_12.volume_filled_today_1.size = 4

-- Display: Volume Filled Today 1
nse_nseix_orderentry_nnf_v1_12.volume_filled_today_1.display = function(value)
  return "Volume Filled Today 1: "..value
end

-- Dissect: Volume Filled Today 1
nse_nseix_orderentry_nnf_v1_12.volume_filled_today_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.volume_filled_today_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.volume_filled_today_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.volume_filled_today_1, range, value, display)

  return offset + length, value
end

-- Volume Filled Today 2
nse_nseix_orderentry_nnf_v1_12.volume_filled_today_2 = {}

-- Size: Volume Filled Today 2
nse_nseix_orderentry_nnf_v1_12.volume_filled_today_2.size = 4

-- Display: Volume Filled Today 2
nse_nseix_orderentry_nnf_v1_12.volume_filled_today_2.display = function(value)
  return "Volume Filled Today 2: "..value
end

-- Dissect: Volume Filled Today 2
nse_nseix_orderentry_nnf_v1_12.volume_filled_today_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.volume_filled_today_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.volume_filled_today_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.volume_filled_today_2, range, value, display)

  return offset + length, value
end

-- Volume Freeze Percent
nse_nseix_orderentry_nnf_v1_12.volume_freeze_percent = {}

-- Size: Volume Freeze Percent
nse_nseix_orderentry_nnf_v1_12.volume_freeze_percent.size = 2

-- Display: Volume Freeze Percent
nse_nseix_orderentry_nnf_v1_12.volume_freeze_percent.display = function(value)
  return "Volume Freeze Percent: "..value
end

-- Dissect: Volume Freeze Percent
nse_nseix_orderentry_nnf_v1_12.volume_freeze_percent.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.volume_freeze_percent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.volume_freeze_percent.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.volume_freeze_percent, range, value, display)

  return offset + length, value
end

-- Wap
nse_nseix_orderentry_nnf_v1_12.wap = {}

-- Size: Wap
nse_nseix_orderentry_nnf_v1_12.wap.size = 4

-- Display: Wap
nse_nseix_orderentry_nnf_v1_12.wap.display = function(value)
  return "Wap: "..value
end

-- Dissect: Wap
nse_nseix_orderentry_nnf_v1_12.wap.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.wap.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.wap.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.wap, range, value, display)

  return offset + length, value
end

-- Warning Percent
nse_nseix_orderentry_nnf_v1_12.warning_percent = {}

-- Size: Warning Percent
nse_nseix_orderentry_nnf_v1_12.warning_percent.size = 2

-- Display: Warning Percent
nse_nseix_orderentry_nnf_v1_12.warning_percent.display = function(value)
  return "Warning Percent: "..value
end

-- Dissect: Warning Percent
nse_nseix_orderentry_nnf_v1_12.warning_percent.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.warning_percent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_orderentry_nnf_v1_12.warning_percent.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.warning_percent, range, value, display)

  return offset + length, value
end

-- Ws Class Name
nse_nseix_orderentry_nnf_v1_12.ws_class_name = {}

-- Size: Ws Class Name
nse_nseix_orderentry_nnf_v1_12.ws_class_name.size = 14

-- Display: Ws Class Name
nse_nseix_orderentry_nnf_v1_12.ws_class_name.display = function(value)
  return "Ws Class Name: "..value
end

-- Dissect: Ws Class Name
nse_nseix_orderentry_nnf_v1_12.ws_class_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_orderentry_nnf_v1_12.ws_class_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_orderentry_nnf_v1_12.ws_class_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.ws_class_name, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseIx OrderEntry Nnf 1.12
-----------------------------------------------------------------------

-- Nlt Trailer Record Message
nse_nseix_orderentry_nnf_v1_12.nlt_trailer_record_message = {}

-- Display: Nlt Trailer Record Message
nse_nseix_orderentry_nnf_v1_12.nlt_trailer_record_message.display = function(packet, parent, length)
  return "Nlt Trailer Record Message"
end


-- Dissect: Nlt Trailer Record Message
nse_nseix_orderentry_nnf_v1_12.nlt_trailer_record_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseix_orderentry_nnf_v1_12.nlt_trailer_record_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Nlt Order Inquiry Response Message
nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_response_message = {}

-- Size: Nlt Order Inquiry Response Message
nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_response_message.size =
  nse_nseix_orderentry_nnf_v1_12.token_no.size + 
  nse_nseix_orderentry_nnf_v1_12.counter_order_mkt_type.size + 
  nse_nseix_orderentry_nnf_v1_12.price.size + 
  nse_nseix_orderentry_nnf_v1_12.volume.size + 
  nse_nseix_orderentry_nnf_v1_12.book_type.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_8.size + 
  nse_nseix_orderentry_nnf_v1_12.order_number.size + 
  nse_nseix_orderentry_nnf_v1_12.counter_broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size

-- Display: Nlt Order Inquiry Response Message
nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nlt Order Inquiry Response Message
nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token No: LONG
  index, token_no = nse_nseix_orderentry_nnf_v1_12.token_no.dissect(buffer, index, packet, parent)

  -- Counter Order Mkt Type: SHORT
  index, counter_order_mkt_type = nse_nseix_orderentry_nnf_v1_12.counter_order_mkt_type.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_orderentry_nnf_v1_12.price.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_orderentry_nnf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_orderentry_nnf_v1_12.book_type.dissect(buffer, index, packet, parent)

  -- Reserved 8: CHAR
  if show.padding then
    index, reserved_8 = nse_nseix_orderentry_nnf_v1_12.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_8.size
  end

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_orderentry_nnf_v1_12.order_number.dissect(buffer, index, packet, parent)

  -- Counter Broker Id: CHAR
  index, counter_broker_id = nse_nseix_orderentry_nnf_v1_12.counter_broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  return index
end

-- Dissect: Nlt Order Inquiry Response Message
nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.nlt_order_inquiry_response_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Nlt Order Message To Trader Message
nse_nseix_orderentry_nnf_v1_12.nlt_order_message_to_trader_message = {}

-- Size: Nlt Order Message To Trader Message
nse_nseix_orderentry_nnf_v1_12.nlt_order_message_to_trader_message.size =
  nse_nseix_orderentry_nnf_v1_12.message_buffer.size

-- Display: Nlt Order Message To Trader Message
nse_nseix_orderentry_nnf_v1_12.nlt_order_message_to_trader_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nlt Order Message To Trader Message
nse_nseix_orderentry_nnf_v1_12.nlt_order_message_to_trader_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Buffer: CHAR
  index, message_buffer = nse_nseix_orderentry_nnf_v1_12.message_buffer.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Nlt Order Message To Trader Message
nse_nseix_orderentry_nnf_v1_12.nlt_order_message_to_trader_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.nlt_order_message_to_trader_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.nlt_order_message_to_trader_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.nlt_order_message_to_trader_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.nlt_order_message_to_trader_message.fields(buffer, offset, packet, parent)
  end
end

-- User Address Unlock Approve Message
nse_nseix_orderentry_nnf_v1_12.user_address_unlock_approve_message = {}

-- Size: User Address Unlock Approve Message
nse_nseix_orderentry_nnf_v1_12.user_address_unlock_approve_message.size =
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_36.size

-- Display: User Address Unlock Approve Message
nse_nseix_orderentry_nnf_v1_12.user_address_unlock_approve_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Address Unlock Approve Message
nse_nseix_orderentry_nnf_v1_12.user_address_unlock_approve_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 36: CHAR
  if show.padding then
    index, reserved_36 = nse_nseix_orderentry_nnf_v1_12.reserved_36.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_36.size
  end

  return index
end

-- Dissect: User Address Unlock Approve Message
nse_nseix_orderentry_nnf_v1_12.user_address_unlock_approve_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_address_unlock_approve_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.user_address_unlock_approve_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.user_address_unlock_approve_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.user_address_unlock_approve_message.fields(buffer, offset, packet, parent)
  end
end

-- User Address Unlock Confirm Message
nse_nseix_orderentry_nnf_v1_12.user_address_unlock_confirm_message = {}

-- Size: User Address Unlock Confirm Message
nse_nseix_orderentry_nnf_v1_12.user_address_unlock_confirm_message.size =
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_36.size

-- Display: User Address Unlock Confirm Message
nse_nseix_orderentry_nnf_v1_12.user_address_unlock_confirm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Address Unlock Confirm Message
nse_nseix_orderentry_nnf_v1_12.user_address_unlock_confirm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 36: CHAR
  if show.padding then
    index, reserved_36 = nse_nseix_orderentry_nnf_v1_12.reserved_36.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_36.size
  end

  return index
end

-- Dissect: User Address Unlock Confirm Message
nse_nseix_orderentry_nnf_v1_12.user_address_unlock_confirm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_address_unlock_confirm_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.user_address_unlock_confirm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.user_address_unlock_confirm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.user_address_unlock_confirm_message.fields(buffer, offset, packet, parent)
  end
end

-- User Trade Modify Cancel Status Change Response Message
nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_response_message = {}

-- Size: User Trade Modify Cancel Status Change Response Message
nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_response_message.size =
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.trd_mod_cxl_bit.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size

-- Display: User Trade Modify Cancel Status Change Response Message
nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Trade Modify Cancel Status Change Response Message
nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Trd Mod Cxl Bit: CHAR
  index, trd_mod_cxl_bit = nse_nseix_orderentry_nnf_v1_12.trd_mod_cxl_bit.dissect(buffer, index, packet, parent)

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  return index
end

-- Dissect: User Trade Modify Cancel Status Change Response Message
nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_trade_modify_cancel_status_change_response_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Collateral User Status Change Response Message
nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_response_message = {}

-- Size: Collateral User Status Change Response Message
nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_response_message.size =
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.col_user_bit.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size

-- Display: Collateral User Status Change Response Message
nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collateral User Status Change Response Message
nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Col User Bit: CHAR
  index, col_user_bit = nse_nseix_orderentry_nnf_v1_12.col_user_bit.dissect(buffer, index, packet, parent)

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  return index
end

-- Dissect: Collateral User Status Change Response Message
nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.collateral_user_status_change_response_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Reset User Password Response Message
nse_nseix_orderentry_nnf_v1_12.reset_user_password_response_message = {}

-- Size: Reset User Password Response Message
nse_nseix_orderentry_nnf_v1_12.reset_user_password_response_message.size =
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_14.size

-- Display: Reset User Password Response Message
nse_nseix_orderentry_nnf_v1_12.reset_user_password_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset User Password Response Message
nse_nseix_orderentry_nnf_v1_12.reset_user_password_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 14: CHAR
  if show.padding then
    index, reserved_14 = nse_nseix_orderentry_nnf_v1_12.reserved_14.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_14.size
  end

  return index
end

-- Dissect: Reset User Password Response Message
nse_nseix_orderentry_nnf_v1_12.reset_user_password_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reset_user_password_response_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.reset_user_password_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.reset_user_password_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.reset_user_password_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Error Response Body
nse_nseix_orderentry_nnf_v1_12.error_response_body = {}

-- Size: Error Response Body
nse_nseix_orderentry_nnf_v1_12.error_response_body.size =
  nse_nseix_orderentry_nnf_v1_12.key.size + 
  nse_nseix_orderentry_nnf_v1_12.error_message.size

-- Display: Error Response Body
nse_nseix_orderentry_nnf_v1_12.error_response_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Error Response Body
nse_nseix_orderentry_nnf_v1_12.error_response_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Key: CHAR
  index, key = nse_nseix_orderentry_nnf_v1_12.key.dissect(buffer, index, packet, parent)

  -- Error Message: CHAR
  index, error_message = nse_nseix_orderentry_nnf_v1_12.error_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Error Response Body
nse_nseix_orderentry_nnf_v1_12.error_response_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.error_response_body, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.error_response_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.error_response_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.error_response_body.fields(buffer, offset, packet, parent)
  end
end

-- Branch Limits
nse_nseix_orderentry_nnf_v1_12.branch_limits = {}

-- Size: Branch Limits
nse_nseix_orderentry_nnf_v1_12.branch_limits.size =
  nse_nseix_orderentry_nnf_v1_12.branch_buy_value_limit.size + 
  nse_nseix_orderentry_nnf_v1_12.branch_sell_value_limit.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_16.size

-- Display: Branch Limits
nse_nseix_orderentry_nnf_v1_12.branch_limits.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Branch Limits
nse_nseix_orderentry_nnf_v1_12.branch_limits.fields = function(buffer, offset, packet, parent, branch_limits_index)
  local index = offset

  -- Implicit Branch Limits Index
  if branch_limits_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_limits_index, branch_limits_index)
    iteration:set_generated()
  end

  -- Branch Buy Value Limit: DOUBLE
  index, branch_buy_value_limit = nse_nseix_orderentry_nnf_v1_12.branch_buy_value_limit.dissect(buffer, index, packet, parent)

  -- Branch Sell Value Limit: DOUBLE
  index, branch_sell_value_limit = nse_nseix_orderentry_nnf_v1_12.branch_sell_value_limit.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  if show.padding then
    index, reserved_16 = nse_nseix_orderentry_nnf_v1_12.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_16.size
  end

  return index
end

-- Dissect: Branch Limits
nse_nseix_orderentry_nnf_v1_12.branch_limits.dissect = function(buffer, offset, packet, parent, branch_limits_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_limits, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.branch_limits.fields(buffer, offset, packet, parent, branch_limits_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.branch_limits.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.branch_limits.fields(buffer, offset, packet, parent, branch_limits_index)
  end
end

-- Branch Order Value Limit Body
nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_body = {}

-- Size: Branch Order Value Limit Body
nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_body.size =
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_25.size + 
  nse_nseix_orderentry_nnf_v1_12.branch_id.size + 
  2 * nse_nseix_orderentry_nnf_v1_12.branch_limits.size

-- Display: Branch Order Value Limit Body
nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Branch Order Value Limit Body
nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 25: CHAR
  if show.padding then
    index, reserved_25 = nse_nseix_orderentry_nnf_v1_12.reserved_25.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_25.size
  end

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_orderentry_nnf_v1_12.branch_id.dissect(buffer, index, packet, parent)

  -- Array Of: Branch Limits
  for branch_limits_index = 1, 2 do
    index, branch_limits = nse_nseix_orderentry_nnf_v1_12.branch_limits.dissect(buffer, index, packet, parent, branch_limits_index)
  end

  return index
end

-- Dissect: Branch Order Value Limit Body
nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_order_value_limit_body, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_body.fields(buffer, offset, packet, parent)
  end
end

-- Branch Limit Response Body
nse_nseix_orderentry_nnf_v1_12.branch_limit_response_body = {}

-- Dispatch: Branch Limit Response Body
nse_nseix_orderentry_nnf_v1_12.branch_limit_response_body.dispatch = {
  [136] = nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_body.dissect,
  [182] = nse_nseix_orderentry_nnf_v1_12.error_response_body.dissect,
}

-- Dissect: Branch Limit Response Body
nse_nseix_orderentry_nnf_v1_12.branch_limit_response_body.dissect = function(buffer, offset, packet, parent, message_length)
  local dissect = nse_nseix_orderentry_nnf_v1_12.branch_limit_response_body.dispatch[message_length]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Branch Order Value Limit Update Response Message
nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_response_message = {}

-- Calculate size of: Branch Order Value Limit Update Response Message
nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_response_message.size = function(buffer, offset)
  local index = 0

  -- Calculate runtime size of Branch Limit Response Body field
  local branch_limit_response_body_offset = offset + index
  local branch_limit_response_body_type = buffer(branch_limit_response_body_offset - 2, 2):int()
  index = index + nse_nseix_orderentry_nnf_v1_12.branch_limit_response_body.size(buffer, branch_limit_response_body_offset, branch_limit_response_body_type)

  return index
end

-- Display: Branch Order Value Limit Update Response Message
nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Branch Order Value Limit Update Response Message
nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 2, 2):int()

  -- Branch Limit Response Body: Runtime Type with 2 branches
  index = nse_nseix_orderentry_nnf_v1_12.branch_limit_response_body.dissect(buffer, index, packet, parent, message_length)

  return index
end

-- Dissect: Branch Order Value Limit Update Response Message
nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_order_value_limit_update_response_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Contingency Broadcast Message
nse_nseix_orderentry_nnf_v1_12.contingency_broadcast_message = {}

-- Size: Contingency Broadcast Message
nse_nseix_orderentry_nnf_v1_12.contingency_broadcast_message.size =
  nse_nseix_orderentry_nnf_v1_12.stream_number.size + 
  nse_nseix_orderentry_nnf_v1_12.status.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_200.size

-- Display: Contingency Broadcast Message
nse_nseix_orderentry_nnf_v1_12.contingency_broadcast_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contingency Broadcast Message
nse_nseix_orderentry_nnf_v1_12.contingency_broadcast_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Number: SHORT
  index, stream_number = nse_nseix_orderentry_nnf_v1_12.stream_number.dissect(buffer, index, packet, parent)

  -- Status: SHORT
  index, status = nse_nseix_orderentry_nnf_v1_12.status.dissect(buffer, index, packet, parent)

  -- Reserved 200: CHAR
  if show.padding then
    index, reserved_200 = nse_nseix_orderentry_nnf_v1_12.reserved_200.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_200.size
  end

  return index
end

-- Dissect: Contingency Broadcast Message
nse_nseix_orderentry_nnf_v1_12.contingency_broadcast_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.contingency_broadcast_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.contingency_broadcast_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.contingency_broadcast_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.contingency_broadcast_message.fields(buffer, offset, packet, parent)
  end
end

-- Box Sign Off Message
nse_nseix_orderentry_nnf_v1_12.box_sign_off_message = {}

-- Size: Box Sign Off Message
nse_nseix_orderentry_nnf_v1_12.box_sign_off_message.size =
  nse_nseix_orderentry_nnf_v1_12.box_id.size

-- Display: Box Sign Off Message
nse_nseix_orderentry_nnf_v1_12.box_sign_off_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Box Sign Off Message
nse_nseix_orderentry_nnf_v1_12.box_sign_off_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nseix_orderentry_nnf_v1_12.box_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Box Sign Off Message
nse_nseix_orderentry_nnf_v1_12.box_sign_off_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.box_sign_off_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.box_sign_off_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.box_sign_off_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.box_sign_off_message.fields(buffer, offset, packet, parent)
  end
end

-- Box Sign On Request Out Message
nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_out_message = {}

-- Size: Box Sign On Request Out Message
nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_out_message.size =
  nse_nseix_orderentry_nnf_v1_12.box_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_10.size

-- Display: Box Sign On Request Out Message
nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Box Sign On Request Out Message
nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nseix_orderentry_nnf_v1_12.box_id.dissect(buffer, index, packet, parent)

  -- Reserved 10: CHAR
  if show.padding then
    index, reserved_10 = nse_nseix_orderentry_nnf_v1_12.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_10.size
  end

  return index
end

-- Dissect: Box Sign On Request Out Message
nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.box_sign_on_request_out_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Secure Box Registration Response Out Message
nse_nseix_orderentry_nnf_v1_12.secure_box_registration_response_out_message = {}

-- Display: Secure Box Registration Response Out Message
nse_nseix_orderentry_nnf_v1_12.secure_box_registration_response_out_message.display = function(packet, parent, length)
  return "Secure Box Registration Response Out Message"
end


-- Dissect: Secure Box Registration Response Out Message
nse_nseix_orderentry_nnf_v1_12.secure_box_registration_response_out_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseix_orderentry_nnf_v1_12.secure_box_registration_response_out_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Gateway Router Response Message
nse_nseix_orderentry_nnf_v1_12.gateway_router_response_message = {}

-- Size: Gateway Router Response Message
nse_nseix_orderentry_nnf_v1_12.gateway_router_response_message.size =
  nse_nseix_orderentry_nnf_v1_12.box_id.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.filler.size + 
  nse_nseix_orderentry_nnf_v1_12.ip_address.size + 
  nse_nseix_orderentry_nnf_v1_12.port.size + 
  nse_nseix_orderentry_nnf_v1_12.session_key.size + 
  nse_nseix_orderentry_nnf_v1_12.cryptographic_key.size + 
  nse_nseix_orderentry_nnf_v1_12.cryptographic_iv.size

-- Display: Gateway Router Response Message
nse_nseix_orderentry_nnf_v1_12.gateway_router_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Router Response Message
nse_nseix_orderentry_nnf_v1_12.gateway_router_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nseix_orderentry_nnf_v1_12.box_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  if show.padding then
    index, filler = nse_nseix_orderentry_nnf_v1_12.filler.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.filler.size
  end

  -- Ip Address: CHAR
  index, ip_address = nse_nseix_orderentry_nnf_v1_12.ip_address.dissect(buffer, index, packet, parent)

  -- Port: LONG
  index, port = nse_nseix_orderentry_nnf_v1_12.port.dissect(buffer, index, packet, parent)

  -- Session Key: CHAR
  index, session_key = nse_nseix_orderentry_nnf_v1_12.session_key.dissect(buffer, index, packet, parent)

  -- Cryptographic Key: CHAR
  index, cryptographic_key = nse_nseix_orderentry_nnf_v1_12.cryptographic_key.dissect(buffer, index, packet, parent)

  -- Cryptographic Iv: CHAR
  index, cryptographic_iv = nse_nseix_orderentry_nnf_v1_12.cryptographic_iv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Router Response Message
nse_nseix_orderentry_nnf_v1_12.gateway_router_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.gateway_router_response_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.gateway_router_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.gateway_router_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.gateway_router_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Giveup
nse_nseix_orderentry_nnf_v1_12.giveup = {}

-- Size: Giveup
nse_nseix_orderentry_nnf_v1_12.giveup.size =
  nse_nseix_orderentry_nnf_v1_12.order_number.size + 
  nse_nseix_orderentry_nnf_v1_12.fill_number.size + 
  nse_nseix_orderentry_nnf_v1_12.instrument_name.size + 
  nse_nseix_orderentry_nnf_v1_12.symbol.size + 
  nse_nseix_orderentry_nnf_v1_12.expiry_date.size + 
  nse_nseix_orderentry_nnf_v1_12.strike_price.size + 
  nse_nseix_orderentry_nnf_v1_12.option_type.size + 
  nse_nseix_orderentry_nnf_v1_12.ca_level.size + 
  nse_nseix_orderentry_nnf_v1_12.fill_volume.size + 
  nse_nseix_orderentry_nnf_v1_12.fill_price.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.filler.size + 
  nse_nseix_orderentry_nnf_v1_12.buy_sell.size + 
  nse_nseix_orderentry_nnf_v1_12.book_type.size + 
  nse_nseix_orderentry_nnf_v1_12.last_modified_date_time.size + 
  nse_nseix_orderentry_nnf_v1_12.initiated_by_control.size + 
  nse_nseix_orderentry_nnf_v1_12.open_close.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.participant.size + 
  nse_nseix_orderentry_nnf_v1_12.giveup_flag.size + 
  nse_nseix_orderentry_nnf_v1_12.deleted.size + 
  nse_nseix_orderentry_nnf_v1_12.second_reserved_1.size

-- Display: Giveup
nse_nseix_orderentry_nnf_v1_12.giveup.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Giveup
nse_nseix_orderentry_nnf_v1_12.giveup.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_orderentry_nnf_v1_12.order_number.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_orderentry_nnf_v1_12.fill_number.dissect(buffer, index, packet, parent)

  -- Instrument Name: CHAR
  index, instrument_name = nse_nseix_orderentry_nnf_v1_12.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nseix_orderentry_nnf_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nseix_orderentry_nnf_v1_12.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nseix_orderentry_nnf_v1_12.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nseix_orderentry_nnf_v1_12.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nseix_orderentry_nnf_v1_12.ca_level.dissect(buffer, index, packet, parent)

  -- Fill Volume: LONG
  index, fill_volume = nse_nseix_orderentry_nnf_v1_12.fill_volume.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_orderentry_nnf_v1_12.fill_price.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  if show.padding then
    index, filler = nse_nseix_orderentry_nnf_v1_12.filler.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.filler.size
  end

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_orderentry_nnf_v1_12.buy_sell.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_orderentry_nnf_v1_12.book_type.dissect(buffer, index, packet, parent)

  -- Last Modified Date Time: LONG
  index, last_modified_date_time = nse_nseix_orderentry_nnf_v1_12.last_modified_date_time.dissect(buffer, index, packet, parent)

  -- Initiated By Control: CHAR
  index, initiated_by_control = nse_nseix_orderentry_nnf_v1_12.initiated_by_control.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_orderentry_nnf_v1_12.open_close.dissect(buffer, index, packet, parent)

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  -- Participant: CHAR
  index, participant = nse_nseix_orderentry_nnf_v1_12.participant.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_orderentry_nnf_v1_12.giveup_flag.dissect(buffer, index, packet, parent)

  -- Deleted: CHAR
  index, deleted = nse_nseix_orderentry_nnf_v1_12.deleted.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: BYTE
  if show.padding then
    index, second_reserved_1 = nse_nseix_orderentry_nnf_v1_12.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.second_reserved_1.size
  end

  return index
end

-- Dissect: Giveup
nse_nseix_orderentry_nnf_v1_12.giveup.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.giveup, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.giveup.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.giveup.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.giveup.fields(buffer, offset, packet, parent)
  end
end

-- Giveup Confirmation Message
nse_nseix_orderentry_nnf_v1_12.giveup_confirmation_message = {}

-- Size: Giveup Confirmation Message
nse_nseix_orderentry_nnf_v1_12.giveup_confirmation_message.size =
  nse_nseix_orderentry_nnf_v1_12.reason_code.size + 
  nse_nseix_orderentry_nnf_v1_12.giveup.size

-- Display: Giveup Confirmation Message
nse_nseix_orderentry_nnf_v1_12.giveup_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Giveup Confirmation Message
nse_nseix_orderentry_nnf_v1_12.giveup_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_orderentry_nnf_v1_12.reason_code.dissect(buffer, index, packet, parent)

  -- Giveup: Struct of 22 fields
  index, giveup = nse_nseix_orderentry_nnf_v1_12.giveup.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Giveup Confirmation Message
nse_nseix_orderentry_nnf_v1_12.giveup_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.giveup_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.giveup_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.giveup_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.giveup_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Report Trailer Body
nse_nseix_orderentry_nnf_v1_12.report_trailer_body = {}

-- Size: Report Trailer Body
nse_nseix_orderentry_nnf_v1_12.report_trailer_body.size =
  nse_nseix_orderentry_nnf_v1_12.number_of_packets.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size

-- Display: Report Trailer Body
nse_nseix_orderentry_nnf_v1_12.report_trailer_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Report Trailer Body
nse_nseix_orderentry_nnf_v1_12.report_trailer_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Packets: LONG
  index, number_of_packets = nse_nseix_orderentry_nnf_v1_12.number_of_packets.dissect(buffer, index, packet, parent)

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  return index
end

-- Dissect: Report Trailer Body
nse_nseix_orderentry_nnf_v1_12.report_trailer_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.report_trailer_body, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.report_trailer_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.report_trailer_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.report_trailer_body.fields(buffer, offset, packet, parent)
  end
end

-- Report Data
nse_nseix_orderentry_nnf_v1_12.report_data = {}

-- Size: Report Data
nse_nseix_orderentry_nnf_v1_12.report_data.size =
  nse_nseix_orderentry_nnf_v1_12.mkt.size + 
  nse_nseix_orderentry_nnf_v1_12.instrument_name_1.size + 
  nse_nseix_orderentry_nnf_v1_12.symbol_1.size + 
  nse_nseix_orderentry_nnf_v1_12.expiry_date_1.size + 
  nse_nseix_orderentry_nnf_v1_12.strike_price_1.size + 
  nse_nseix_orderentry_nnf_v1_12.option_type_1.size + 
  nse_nseix_orderentry_nnf_v1_12.ca_level_1.size + 
  nse_nseix_orderentry_nnf_v1_12.instrument_name_2.size + 
  nse_nseix_orderentry_nnf_v1_12.symbol_2.size + 
  nse_nseix_orderentry_nnf_v1_12.expiry_date_2.size + 
  nse_nseix_orderentry_nnf_v1_12.strike_price_2.size + 
  nse_nseix_orderentry_nnf_v1_12.option_type_2.size + 
  nse_nseix_orderentry_nnf_v1_12.ca_level_2.size + 
  nse_nseix_orderentry_nnf_v1_12.open_price_diff.size + 
  nse_nseix_orderentry_nnf_v1_12.high_price_diff.size + 
  nse_nseix_orderentry_nnf_v1_12.low_price_diff.size + 
  nse_nseix_orderentry_nnf_v1_12.last_trade_price_diff.size + 
  nse_nseix_orderentry_nnf_v1_12.num_of_contracts_trd.size

-- Display: Report Data
nse_nseix_orderentry_nnf_v1_12.report_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Report Data
nse_nseix_orderentry_nnf_v1_12.report_data.fields = function(buffer, offset, packet, parent, report_data_index)
  local index = offset

  -- Implicit Report Data Index
  if report_data_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.report_data_index, report_data_index)
    iteration:set_generated()
  end

  -- Mkt: SHORT
  index, mkt = nse_nseix_orderentry_nnf_v1_12.mkt.dissect(buffer, index, packet, parent)

  -- Instrument Name 1: CHAR
  index, instrument_name_1 = nse_nseix_orderentry_nnf_v1_12.instrument_name_1.dissect(buffer, index, packet, parent)

  -- Symbol 1: CHAR
  index, symbol_1 = nse_nseix_orderentry_nnf_v1_12.symbol_1.dissect(buffer, index, packet, parent)

  -- Expiry Date 1: LONG
  index, expiry_date_1 = nse_nseix_orderentry_nnf_v1_12.expiry_date_1.dissect(buffer, index, packet, parent)

  -- Strike Price 1: LONG
  index, strike_price_1 = nse_nseix_orderentry_nnf_v1_12.strike_price_1.dissect(buffer, index, packet, parent)

  -- Option Type 1: CHAR
  index, option_type_1 = nse_nseix_orderentry_nnf_v1_12.option_type_1.dissect(buffer, index, packet, parent)

  -- Ca Level 1: SHORT
  index, ca_level_1 = nse_nseix_orderentry_nnf_v1_12.ca_level_1.dissect(buffer, index, packet, parent)

  -- Instrument Name 2: CHAR
  index, instrument_name_2 = nse_nseix_orderentry_nnf_v1_12.instrument_name_2.dissect(buffer, index, packet, parent)

  -- Symbol 2: CHAR
  index, symbol_2 = nse_nseix_orderentry_nnf_v1_12.symbol_2.dissect(buffer, index, packet, parent)

  -- Expiry Date 2: LONG
  index, expiry_date_2 = nse_nseix_orderentry_nnf_v1_12.expiry_date_2.dissect(buffer, index, packet, parent)

  -- Strike Price 2: LONG
  index, strike_price_2 = nse_nseix_orderentry_nnf_v1_12.strike_price_2.dissect(buffer, index, packet, parent)

  -- Option Type 2: CHAR
  index, option_type_2 = nse_nseix_orderentry_nnf_v1_12.option_type_2.dissect(buffer, index, packet, parent)

  -- Ca Level 2: SHORT
  index, ca_level_2 = nse_nseix_orderentry_nnf_v1_12.ca_level_2.dissect(buffer, index, packet, parent)

  -- Open Price Diff: LONG
  index, open_price_diff = nse_nseix_orderentry_nnf_v1_12.open_price_diff.dissect(buffer, index, packet, parent)

  -- High Price Diff: LONG
  index, high_price_diff = nse_nseix_orderentry_nnf_v1_12.high_price_diff.dissect(buffer, index, packet, parent)

  -- Low Price Diff: LONG
  index, low_price_diff = nse_nseix_orderentry_nnf_v1_12.low_price_diff.dissect(buffer, index, packet, parent)

  -- Last Trade Price Diff: LONG
  index, last_trade_price_diff = nse_nseix_orderentry_nnf_v1_12.last_trade_price_diff.dissect(buffer, index, packet, parent)

  -- Num Of Contracts Trd: LONG
  index, num_of_contracts_trd = nse_nseix_orderentry_nnf_v1_12.num_of_contracts_trd.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Report Data
nse_nseix_orderentry_nnf_v1_12.report_data.dissect = function(buffer, offset, packet, parent, report_data_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.report_data, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.report_data.fields(buffer, offset, packet, parent, report_data_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.report_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.report_data.fields(buffer, offset, packet, parent, report_data_index)
  end
end

-- Spread Report Statistics Body
nse_nseix_orderentry_nnf_v1_12.spread_report_statistics_body = {}

-- Size: Spread Report Statistics Body
nse_nseix_orderentry_nnf_v1_12.spread_report_statistics_body.size =
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.no_of_records.size + 
  3 * nse_nseix_orderentry_nnf_v1_12.report_data.size

-- Display: Spread Report Statistics Body
nse_nseix_orderentry_nnf_v1_12.spread_report_statistics_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Report Statistics Body
nse_nseix_orderentry_nnf_v1_12.spread_report_statistics_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  -- No Of Records: SHORT
  index, no_of_records = nse_nseix_orderentry_nnf_v1_12.no_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Report Data
  for report_data_index = 1, 3 do
    index, report_data = nse_nseix_orderentry_nnf_v1_12.report_data.dissect(buffer, index, packet, parent, report_data_index)
  end

  return index
end

-- Dissect: Spread Report Statistics Body
nse_nseix_orderentry_nnf_v1_12.spread_report_statistics_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.spread_report_statistics_body, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.spread_report_statistics_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.spread_report_statistics_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.spread_report_statistics_body.fields(buffer, offset, packet, parent)
  end
end

-- Spread Report Header Body
nse_nseix_orderentry_nnf_v1_12.spread_report_header_body = {}

-- Size: Spread Report Header Body
nse_nseix_orderentry_nnf_v1_12.spread_report_header_body.size =
  nse_nseix_orderentry_nnf_v1_12.org_scope.size + 
  nse_nseix_orderentry_nnf_v1_12.report_date.size + 
  nse_nseix_orderentry_nnf_v1_12.user_type.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_number.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_name.size + 
  nse_nseix_orderentry_nnf_v1_12.trader_number.size + 
  nse_nseix_orderentry_nnf_v1_12.trader_name.size

-- Display: Spread Report Header Body
nse_nseix_orderentry_nnf_v1_12.spread_report_header_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Report Header Body
nse_nseix_orderentry_nnf_v1_12.spread_report_header_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Org Scope: CHAR
  index, org_scope = nse_nseix_orderentry_nnf_v1_12.org_scope.dissect(buffer, index, packet, parent)

  -- Report Date: LONG
  index, report_date = nse_nseix_orderentry_nnf_v1_12.report_date.dissect(buffer, index, packet, parent)

  -- User Type: SHORT
  index, user_type = nse_nseix_orderentry_nnf_v1_12.user_type.dissect(buffer, index, packet, parent)

  -- Broker Number: CHAR
  index, broker_number = nse_nseix_orderentry_nnf_v1_12.broker_number.dissect(buffer, index, packet, parent)

  -- Broker Name: CHAR
  index, broker_name = nse_nseix_orderentry_nnf_v1_12.broker_name.dissect(buffer, index, packet, parent)

  -- Trader Number: LONG
  index, trader_number = nse_nseix_orderentry_nnf_v1_12.trader_number.dissect(buffer, index, packet, parent)

  -- Trader Name: CHAR
  index, trader_name = nse_nseix_orderentry_nnf_v1_12.trader_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Report Header Body
nse_nseix_orderentry_nnf_v1_12.spread_report_header_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.spread_report_header_body, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.spread_report_header_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.spread_report_header_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.spread_report_header_body.fields(buffer, offset, packet, parent)
  end
end

-- Spread Report Body
nse_nseix_orderentry_nnf_v1_12.spread_report_body = {}

-- Dispatch: Spread Report Body
nse_nseix_orderentry_nnf_v1_12.spread_report_body.dispatch = {
  ["H"] = nse_nseix_orderentry_nnf_v1_12.spread_report_header_body.dissect,
  ["R"] = nse_nseix_orderentry_nnf_v1_12.spread_report_statistics_body.dissect,
  ["T"] = nse_nseix_orderentry_nnf_v1_12.report_trailer_body.dissect,
}

-- Dissect: Spread Report Body
nse_nseix_orderentry_nnf_v1_12.spread_report_body.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nse_nseix_orderentry_nnf_v1_12.spread_report_body.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Spread Bhavcopy Message
nse_nseix_orderentry_nnf_v1_12.spread_bhavcopy_message = {}

-- Calculate size of: Spread Bhavcopy Message
nse_nseix_orderentry_nnf_v1_12.spread_bhavcopy_message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseix_orderentry_nnf_v1_12.message_type.size

  -- Calculate runtime size of Spread Report Body field
  local spread_report_body_offset = offset + index
  local spread_report_body_type = buffer(spread_report_body_offset - 1, 1):string()
  index = index + nse_nseix_orderentry_nnf_v1_12.spread_report_body.size(buffer, spread_report_body_offset, spread_report_body_type)

  return index
end

-- Display: Spread Bhavcopy Message
nse_nseix_orderentry_nnf_v1_12.spread_bhavcopy_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Bhavcopy Message
nse_nseix_orderentry_nnf_v1_12.spread_bhavcopy_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: CHAR
  index, message_type = nse_nseix_orderentry_nnf_v1_12.message_type.dissect(buffer, index, packet, parent)

  -- Spread Report Body: Runtime Type with 3 branches
  index = nse_nseix_orderentry_nnf_v1_12.spread_report_body.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Spread Bhavcopy Message
nse_nseix_orderentry_nnf_v1_12.spread_bhavcopy_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.spread_bhavcopy_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.spread_bhavcopy_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.spread_bhavcopy_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.spread_bhavcopy_message.fields(buffer, offset, packet, parent)
  end
end

-- Contract Desc
nse_nseix_orderentry_nnf_v1_12.contract_desc = {}

-- Size: Contract Desc
nse_nseix_orderentry_nnf_v1_12.contract_desc.size =
  nse_nseix_orderentry_nnf_v1_12.instrument_name.size + 
  nse_nseix_orderentry_nnf_v1_12.symbol.size + 
  nse_nseix_orderentry_nnf_v1_12.expiry_date.size + 
  nse_nseix_orderentry_nnf_v1_12.strike_price.size + 
  nse_nseix_orderentry_nnf_v1_12.option_type.size + 
  nse_nseix_orderentry_nnf_v1_12.ca_level.size

-- Display: Contract Desc
nse_nseix_orderentry_nnf_v1_12.contract_desc.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Desc
nse_nseix_orderentry_nnf_v1_12.contract_desc.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Name: CHAR
  index, instrument_name = nse_nseix_orderentry_nnf_v1_12.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nseix_orderentry_nnf_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nseix_orderentry_nnf_v1_12.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nseix_orderentry_nnf_v1_12.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nseix_orderentry_nnf_v1_12.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nseix_orderentry_nnf_v1_12.ca_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Desc
nse_nseix_orderentry_nnf_v1_12.contract_desc.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.contract_desc, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.contract_desc.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.contract_desc.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.contract_desc.fields(buffer, offset, packet, parent)
  end
end

-- Mkt Stats Data
nse_nseix_orderentry_nnf_v1_12.mkt_stats_data = {}

-- Size: Mkt Stats Data
nse_nseix_orderentry_nnf_v1_12.mkt_stats_data.size =
  nse_nseix_orderentry_nnf_v1_12.contract_desc.size + 
  nse_nseix_orderentry_nnf_v1_12.market_type.size + 
  nse_nseix_orderentry_nnf_v1_12.open_price.size + 
  nse_nseix_orderentry_nnf_v1_12.high_price.size + 
  nse_nseix_orderentry_nnf_v1_12.low_price.size + 
  nse_nseix_orderentry_nnf_v1_12.closing_price.size + 
  nse_nseix_orderentry_nnf_v1_12.total_quantity_traded.size + 
  nse_nseix_orderentry_nnf_v1_12.total_value_traded.size + 
  nse_nseix_orderentry_nnf_v1_12.previous_close_price.size + 
  nse_nseix_orderentry_nnf_v1_12.open_interest.size + 
  nse_nseix_orderentry_nnf_v1_12.chg_open_interest.size + 
  nse_nseix_orderentry_nnf_v1_12.indicator.size

-- Display: Mkt Stats Data
nse_nseix_orderentry_nnf_v1_12.mkt_stats_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mkt Stats Data
nse_nseix_orderentry_nnf_v1_12.mkt_stats_data.fields = function(buffer, offset, packet, parent, mkt_stats_data_index)
  local index = offset

  -- Implicit Mkt Stats Data Index
  if mkt_stats_data_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.mkt_stats_data_index, mkt_stats_data_index)
    iteration:set_generated()
  end

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_orderentry_nnf_v1_12.contract_desc.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nseix_orderentry_nnf_v1_12.market_type.dissect(buffer, index, packet, parent)

  -- Open Price: LONG
  index, open_price = nse_nseix_orderentry_nnf_v1_12.open_price.dissect(buffer, index, packet, parent)

  -- High Price: LONG
  index, high_price = nse_nseix_orderentry_nnf_v1_12.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: LONG
  index, low_price = nse_nseix_orderentry_nnf_v1_12.low_price.dissect(buffer, index, packet, parent)

  -- Closing Price: LONG
  index, closing_price = nse_nseix_orderentry_nnf_v1_12.closing_price.dissect(buffer, index, packet, parent)

  -- Total Quantity Traded: LONG
  index, total_quantity_traded = nse_nseix_orderentry_nnf_v1_12.total_quantity_traded.dissect(buffer, index, packet, parent)

  -- Total Value Traded: DOUBLE
  index, total_value_traded = nse_nseix_orderentry_nnf_v1_12.total_value_traded.dissect(buffer, index, packet, parent)

  -- Previous Close Price: LONG
  index, previous_close_price = nse_nseix_orderentry_nnf_v1_12.previous_close_price.dissect(buffer, index, packet, parent)

  -- Open Interest: LONG
  index, open_interest = nse_nseix_orderentry_nnf_v1_12.open_interest.dissect(buffer, index, packet, parent)

  -- Chg Open Interest: LONG
  index, chg_open_interest = nse_nseix_orderentry_nnf_v1_12.chg_open_interest.dissect(buffer, index, packet, parent)

  -- Indicator: CHAR
  index, indicator = nse_nseix_orderentry_nnf_v1_12.indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mkt Stats Data
nse_nseix_orderentry_nnf_v1_12.mkt_stats_data.dissect = function(buffer, offset, packet, parent, mkt_stats_data_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.mkt_stats_data, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.mkt_stats_data.fields(buffer, offset, packet, parent, mkt_stats_data_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.mkt_stats_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.mkt_stats_data.fields(buffer, offset, packet, parent, mkt_stats_data_index)
  end
end

-- Report Statistics Body
nse_nseix_orderentry_nnf_v1_12.report_statistics_body = {}

-- Size: Report Statistics Body
nse_nseix_orderentry_nnf_v1_12.report_statistics_body.size =
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.number_of_records.size + 
  6 * nse_nseix_orderentry_nnf_v1_12.mkt_stats_data.size

-- Display: Report Statistics Body
nse_nseix_orderentry_nnf_v1_12.report_statistics_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Report Statistics Body
nse_nseix_orderentry_nnf_v1_12.report_statistics_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  -- Number Of Records: SHORT
  index, number_of_records = nse_nseix_orderentry_nnf_v1_12.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Mkt Stats Data
  for mkt_stats_data_index = 1, 6 do
    index, mkt_stats_data = nse_nseix_orderentry_nnf_v1_12.mkt_stats_data.dissect(buffer, index, packet, parent, mkt_stats_data_index)
  end

  return index
end

-- Dissect: Report Statistics Body
nse_nseix_orderentry_nnf_v1_12.report_statistics_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.report_statistics_body, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.report_statistics_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.report_statistics_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.report_statistics_body.fields(buffer, offset, packet, parent)
  end
end

-- Report Header Body
nse_nseix_orderentry_nnf_v1_12.report_header_body = {}

-- Size: Report Header Body
nse_nseix_orderentry_nnf_v1_12.report_header_body.size =
  nse_nseix_orderentry_nnf_v1_12.org_scope.size + 
  nse_nseix_orderentry_nnf_v1_12.report_date.size + 
  nse_nseix_orderentry_nnf_v1_12.user_type.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.firm_name.size + 
  nse_nseix_orderentry_nnf_v1_12.trader_number.size + 
  nse_nseix_orderentry_nnf_v1_12.trader_name.size

-- Display: Report Header Body
nse_nseix_orderentry_nnf_v1_12.report_header_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Report Header Body
nse_nseix_orderentry_nnf_v1_12.report_header_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Org Scope: CHAR
  index, org_scope = nse_nseix_orderentry_nnf_v1_12.org_scope.dissect(buffer, index, packet, parent)

  -- Report Date: LONG
  index, report_date = nse_nseix_orderentry_nnf_v1_12.report_date.dissect(buffer, index, packet, parent)

  -- User Type: SHORT
  index, user_type = nse_nseix_orderentry_nnf_v1_12.user_type.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Firm Name: CHAR
  index, firm_name = nse_nseix_orderentry_nnf_v1_12.firm_name.dissect(buffer, index, packet, parent)

  -- Trader Number: LONG
  index, trader_number = nse_nseix_orderentry_nnf_v1_12.trader_number.dissect(buffer, index, packet, parent)

  -- Trader Name: CHAR
  index, trader_name = nse_nseix_orderentry_nnf_v1_12.trader_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Report Header Body
nse_nseix_orderentry_nnf_v1_12.report_header_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.report_header_body, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.report_header_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.report_header_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.report_header_body.fields(buffer, offset, packet, parent)
  end
end

-- Report Body
nse_nseix_orderentry_nnf_v1_12.report_body = {}

-- Dispatch: Report Body
nse_nseix_orderentry_nnf_v1_12.report_body.dispatch = {
  ["H"] = nse_nseix_orderentry_nnf_v1_12.report_header_body.dissect,
  ["R"] = nse_nseix_orderentry_nnf_v1_12.report_statistics_body.dissect,
  ["T"] = nse_nseix_orderentry_nnf_v1_12.report_trailer_body.dissect,
}

-- Dissect: Report Body
nse_nseix_orderentry_nnf_v1_12.report_body.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nse_nseix_orderentry_nnf_v1_12.report_body.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Market Statistics Report Message
nse_nseix_orderentry_nnf_v1_12.market_statistics_report_message = {}

-- Calculate size of: Market Statistics Report Message
nse_nseix_orderentry_nnf_v1_12.market_statistics_report_message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseix_orderentry_nnf_v1_12.message_type.size

  -- Calculate runtime size of Report Body field
  local report_body_offset = offset + index
  local report_body_type = buffer(report_body_offset - 1, 1):string()
  index = index + nse_nseix_orderentry_nnf_v1_12.report_body.size(buffer, report_body_offset, report_body_type)

  return index
end

-- Display: Market Statistics Report Message
nse_nseix_orderentry_nnf_v1_12.market_statistics_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Statistics Report Message
nse_nseix_orderentry_nnf_v1_12.market_statistics_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: CHAR
  index, message_type = nse_nseix_orderentry_nnf_v1_12.message_type.dissect(buffer, index, packet, parent)

  -- Report Body: Runtime Type with 3 branches
  index = nse_nseix_orderentry_nnf_v1_12.report_body.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Market Statistics Report Message
nse_nseix_orderentry_nnf_v1_12.market_statistics_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.market_statistics_report_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.market_statistics_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.market_statistics_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.market_statistics_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Mba Inquiry Result
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_result = {}

-- Size: Mba Inquiry Result
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_result.size =
  nse_nseix_orderentry_nnf_v1_12.cumulative_quantity.size + 
  nse_nseix_orderentry_nnf_v1_12.total_value.size + 
  nse_nseix_orderentry_nnf_v1_12.wap.size + 
  nse_nseix_orderentry_nnf_v1_12.impact_cost.size + 
  nse_nseix_orderentry_nnf_v1_12.order_price.size

-- Display: Mba Inquiry Result
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_result.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mba Inquiry Result
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_result.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cumulative Quantity: LONG
  index, cumulative_quantity = nse_nseix_orderentry_nnf_v1_12.cumulative_quantity.dissect(buffer, index, packet, parent)

  -- Total Value: DOUBLE
  index, total_value = nse_nseix_orderentry_nnf_v1_12.total_value.dissect(buffer, index, packet, parent)

  -- Wap: LONG
  index, wap = nse_nseix_orderentry_nnf_v1_12.wap.dissect(buffer, index, packet, parent)

  -- Impact Cost: LONG
  index, impact_cost = nse_nseix_orderentry_nnf_v1_12.impact_cost.dissect(buffer, index, packet, parent)

  -- Order Price: LONG
  index, order_price = nse_nseix_orderentry_nnf_v1_12.order_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mba Inquiry Result
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_result.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.mba_inquiry_result, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_result.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_result.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.mba_inquiry_result.fields(buffer, offset, packet, parent)
  end
end

-- Mba Inquiry Response Message
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_response_message = {}

-- Size: Mba Inquiry Response Message
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_response_message.size =
  nse_nseix_orderentry_nnf_v1_12.token.size + 
  nse_nseix_orderentry_nnf_v1_12.book.size + 
  nse_nseix_orderentry_nnf_v1_12.buy_sell.size + 
  nse_nseix_orderentry_nnf_v1_12.mba_inquiry_result.size

-- Display: Mba Inquiry Response Message
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mba Inquiry Response Message
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nseix_orderentry_nnf_v1_12.token.dissect(buffer, index, packet, parent)

  -- Book: SHORT
  index, book = nse_nseix_orderentry_nnf_v1_12.book.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_orderentry_nnf_v1_12.buy_sell.dissect(buffer, index, packet, parent)

  -- Mba Inquiry Result: Struct of 5 fields
  index, mba_inquiry_result = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_result.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mba Inquiry Response Message
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.mba_inquiry_response_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.mba_inquiry_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message To Trader Message
nse_nseix_orderentry_nnf_v1_12.control_message_to_trader_message = {}

-- Size: Control Message To Trader Message
nse_nseix_orderentry_nnf_v1_12.control_message_to_trader_message.size =
  nse_nseix_orderentry_nnf_v1_12.trader_id.size + 
  nse_nseix_orderentry_nnf_v1_12.action_code.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.broad_cast_message_length.size + 
  nse_nseix_orderentry_nnf_v1_12.broad_cast_message.size + 
  nse_nseix_orderentry_nnf_v1_12.second_reserved_1.size

-- Display: Control Message To Trader Message
nse_nseix_orderentry_nnf_v1_12.control_message_to_trader_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message To Trader Message
nse_nseix_orderentry_nnf_v1_12.control_message_to_trader_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trader Id: LONG
  index, trader_id = nse_nseix_orderentry_nnf_v1_12.trader_id.dissect(buffer, index, packet, parent)

  -- Action Code: CHAR
  index, action_code = nse_nseix_orderentry_nnf_v1_12.action_code.dissect(buffer, index, packet, parent)

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  -- Broad Cast Message Length: SHORT
  index, broad_cast_message_length = nse_nseix_orderentry_nnf_v1_12.broad_cast_message_length.dissect(buffer, index, packet, parent)

  -- Broad Cast Message: CHAR
  index, broad_cast_message = nse_nseix_orderentry_nnf_v1_12.broad_cast_message.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: BYTE
  if show.padding then
    index, second_reserved_1 = nse_nseix_orderentry_nnf_v1_12.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.second_reserved_1.size
  end

  return index
end

-- Dissect: Control Message To Trader Message
nse_nseix_orderentry_nnf_v1_12.control_message_to_trader_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.control_message_to_trader_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.control_message_to_trader_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.control_message_to_trader_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.control_message_to_trader_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Limit Update Message
nse_nseix_orderentry_nnf_v1_12.spread_order_limit_update_message = {}

-- Size: Spread Order Limit Update Message
nse_nseix_orderentry_nnf_v1_12.spread_order_limit_update_message.size =
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.spd_ord_qty_buff.size + 
  nse_nseix_orderentry_nnf_v1_12.spd_ord_val_buff.size

-- Display: Spread Order Limit Update Message
nse_nseix_orderentry_nnf_v1_12.spread_order_limit_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Limit Update Message
nse_nseix_orderentry_nnf_v1_12.spread_order_limit_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Spd Ord Qty Buff: DOUBLE
  index, spd_ord_qty_buff = nse_nseix_orderentry_nnf_v1_12.spd_ord_qty_buff.dissect(buffer, index, packet, parent)

  -- Spd Ord Val Buff: DOUBLE
  index, spd_ord_val_buff = nse_nseix_orderentry_nnf_v1_12.spd_ord_val_buff.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Limit Update Message
nse_nseix_orderentry_nnf_v1_12.spread_order_limit_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.spread_order_limit_update_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.spread_order_limit_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.spread_order_limit_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.spread_order_limit_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Dealer Limit Update Message
nse_nseix_orderentry_nnf_v1_12.dealer_limit_update_message = {}

-- Size: Dealer Limit Update Message
nse_nseix_orderentry_nnf_v1_12.dealer_limit_update_message.size =
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.ord_qty_buff.size + 
  nse_nseix_orderentry_nnf_v1_12.ord_val_buff.size

-- Display: Dealer Limit Update Message
nse_nseix_orderentry_nnf_v1_12.dealer_limit_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dealer Limit Update Message
nse_nseix_orderentry_nnf_v1_12.dealer_limit_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Ord Qty Buff: DOUBLE
  index, ord_qty_buff = nse_nseix_orderentry_nnf_v1_12.ord_qty_buff.dissect(buffer, index, packet, parent)

  -- Ord Val Buff: DOUBLE
  index, ord_val_buff = nse_nseix_orderentry_nnf_v1_12.ord_val_buff.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dealer Limit Update Message
nse_nseix_orderentry_nnf_v1_12.dealer_limit_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.dealer_limit_update_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.dealer_limit_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.dealer_limit_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.dealer_limit_update_message.fields(buffer, offset, packet, parent)
  end
end

-- User Limits
nse_nseix_orderentry_nnf_v1_12.user_limits = {}

-- Size: User Limits
nse_nseix_orderentry_nnf_v1_12.user_limits.size =
  nse_nseix_orderentry_nnf_v1_12.reserved_32.size + 
  nse_nseix_orderentry_nnf_v1_12.user_order_buy_value_limit.size + 
  nse_nseix_orderentry_nnf_v1_12.user_order_sell_value_limit.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_16.size

-- Display: User Limits
nse_nseix_orderentry_nnf_v1_12.user_limits.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Limits
nse_nseix_orderentry_nnf_v1_12.user_limits.fields = function(buffer, offset, packet, parent, user_limits_index)
  local index = offset

  -- Implicit User Limits Index
  if user_limits_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_limits_index, user_limits_index)
    iteration:set_generated()
  end

  -- Reserved 32: CHAR
  if show.padding then
    index, reserved_32 = nse_nseix_orderentry_nnf_v1_12.reserved_32.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_32.size
  end

  -- User Order Buy Value Limit: DOUBLE
  index, user_order_buy_value_limit = nse_nseix_orderentry_nnf_v1_12.user_order_buy_value_limit.dissect(buffer, index, packet, parent)

  -- User Order Sell Value Limit: DOUBLE
  index, user_order_sell_value_limit = nse_nseix_orderentry_nnf_v1_12.user_order_sell_value_limit.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  if show.padding then
    index, reserved_16 = nse_nseix_orderentry_nnf_v1_12.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_16.size
  end

  return index
end

-- Dissect: User Limits
nse_nseix_orderentry_nnf_v1_12.user_limits.dissect = function(buffer, offset, packet, parent, user_limits_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_limits, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.user_limits.fields(buffer, offset, packet, parent, user_limits_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.user_limits.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.user_limits.fields(buffer, offset, packet, parent, user_limits_index)
  end
end

-- User Order Value Limit Body
nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_body = {}

-- Size: User Order Value Limit Body
nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_body.size =
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.branch_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_26.size + 
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_2.size + 
  2 * nse_nseix_orderentry_nnf_v1_12.user_limits.size

-- Display: User Order Value Limit Body
nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Order Value Limit Body
nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_orderentry_nnf_v1_12.branch_id.dissect(buffer, index, packet, parent)

  -- Reserved 26: CHAR
  if show.padding then
    index, reserved_26 = nse_nseix_orderentry_nnf_v1_12.reserved_26.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_26.size
  end

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  if show.padding then
    index, reserved_2 = nse_nseix_orderentry_nnf_v1_12.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_2.size
  end

  -- Array Of: User Limits
  for user_limits_index = 1, 2 do
    index, user_limits = nse_nseix_orderentry_nnf_v1_12.user_limits.dissect(buffer, index, packet, parent, user_limits_index)
  end

  return index
end

-- Dissect: User Order Value Limit Body
nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_value_limit_body, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_body.fields(buffer, offset, packet, parent)
  end
end

-- Instrument User
nse_nseix_orderentry_nnf_v1_12.instrument_user = {}

-- Size: Instrument User
nse_nseix_orderentry_nnf_v1_12.instrument_user.size =
  nse_nseix_orderentry_nnf_v1_12.branch_buy_value_limit.size + 
  nse_nseix_orderentry_nnf_v1_12.branch_sell_value_limit.size + 
  nse_nseix_orderentry_nnf_v1_12.branch_used_buy_value_limit.size + 
  nse_nseix_orderentry_nnf_v1_12.branch_used_sell_value_limit.size + 
  nse_nseix_orderentry_nnf_v1_12.user_order_buy_value_limit.size + 
  nse_nseix_orderentry_nnf_v1_12.user_order_sell_value_limit.size + 
  nse_nseix_orderentry_nnf_v1_12.user_order_used_buy_value_limit.size + 
  nse_nseix_orderentry_nnf_v1_12.user_order_used_sell_value_limit.size

-- Display: Instrument User
nse_nseix_orderentry_nnf_v1_12.instrument_user.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument User
nse_nseix_orderentry_nnf_v1_12.instrument_user.fields = function(buffer, offset, packet, parent, instrument_user_index)
  local index = offset

  -- Implicit Instrument User Index
  if instrument_user_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.instrument_user_index, instrument_user_index)
    iteration:set_generated()
  end

  -- Branch Buy Value Limit: DOUBLE
  index, branch_buy_value_limit = nse_nseix_orderentry_nnf_v1_12.branch_buy_value_limit.dissect(buffer, index, packet, parent)

  -- Branch Sell Value Limit: DOUBLE
  index, branch_sell_value_limit = nse_nseix_orderentry_nnf_v1_12.branch_sell_value_limit.dissect(buffer, index, packet, parent)

  -- Branch Used Buy Value Limit: DOUBLE
  index, branch_used_buy_value_limit = nse_nseix_orderentry_nnf_v1_12.branch_used_buy_value_limit.dissect(buffer, index, packet, parent)

  -- Branch Used Sell Value Limit: DOUBLE
  index, branch_used_sell_value_limit = nse_nseix_orderentry_nnf_v1_12.branch_used_sell_value_limit.dissect(buffer, index, packet, parent)

  -- User Order Buy Value Limit: DOUBLE
  index, user_order_buy_value_limit = nse_nseix_orderentry_nnf_v1_12.user_order_buy_value_limit.dissect(buffer, index, packet, parent)

  -- User Order Sell Value Limit: DOUBLE
  index, user_order_sell_value_limit = nse_nseix_orderentry_nnf_v1_12.user_order_sell_value_limit.dissect(buffer, index, packet, parent)

  -- User Order Used Buy Value Limit: DOUBLE
  index, user_order_used_buy_value_limit = nse_nseix_orderentry_nnf_v1_12.user_order_used_buy_value_limit.dissect(buffer, index, packet, parent)

  -- User Order Used Sell Value Limit: DOUBLE
  index, user_order_used_sell_value_limit = nse_nseix_orderentry_nnf_v1_12.user_order_used_sell_value_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument User
nse_nseix_orderentry_nnf_v1_12.instrument_user.dissect = function(buffer, offset, packet, parent, instrument_user_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.instrument_user, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.instrument_user.fields(buffer, offset, packet, parent, instrument_user_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.instrument_user.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.instrument_user.fields(buffer, offset, packet, parent, instrument_user_index)
  end
end

-- User Order Limit Body
nse_nseix_orderentry_nnf_v1_12.user_order_limit_body = {}

-- Size: User Order Limit Body
nse_nseix_orderentry_nnf_v1_12.user_order_limit_body.size =
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.branch_id.size + 
  nse_nseix_orderentry_nnf_v1_12.user_name.size + 
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.user_type.size + 
  2 * nse_nseix_orderentry_nnf_v1_12.instrument_user.size

-- Display: User Order Limit Body
nse_nseix_orderentry_nnf_v1_12.user_order_limit_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Order Limit Body
nse_nseix_orderentry_nnf_v1_12.user_order_limit_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_orderentry_nnf_v1_12.branch_id.dissect(buffer, index, packet, parent)

  -- User Name: CHAR
  index, user_name = nse_nseix_orderentry_nnf_v1_12.user_name.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- User Type: SHORT
  index, user_type = nse_nseix_orderentry_nnf_v1_12.user_type.dissect(buffer, index, packet, parent)

  -- Array Of: Instrument User
  for instrument_user_index = 1, 2 do
    index, instrument_user = nse_nseix_orderentry_nnf_v1_12.instrument_user.dissect(buffer, index, packet, parent, instrument_user_index)
  end

  return index
end

-- Dissect: User Order Limit Body
nse_nseix_orderentry_nnf_v1_12.user_order_limit_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_limit_body, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.user_order_limit_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.user_order_limit_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.user_order_limit_body.fields(buffer, offset, packet, parent)
  end
end

-- User Limit Response Body
nse_nseix_orderentry_nnf_v1_12.user_limit_response_body = {}

-- Dispatch: User Limit Response Body
nse_nseix_orderentry_nnf_v1_12.user_limit_response_body.dispatch = {
  [206] = nse_nseix_orderentry_nnf_v1_12.user_order_limit_body.dissect,
  [208] = nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_body.dissect,
  [182] = nse_nseix_orderentry_nnf_v1_12.error_response_body.dissect,
}

-- Dissect: User Limit Response Body
nse_nseix_orderentry_nnf_v1_12.user_limit_response_body.dissect = function(buffer, offset, packet, parent, message_length)
  local dissect = nse_nseix_orderentry_nnf_v1_12.user_limit_response_body.dispatch[message_length]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- User Order Limit Update Message
nse_nseix_orderentry_nnf_v1_12.user_order_limit_update_message = {}

-- Calculate size of: User Order Limit Update Message
nse_nseix_orderentry_nnf_v1_12.user_order_limit_update_message.size = function(buffer, offset)
  local index = 0

  -- Calculate runtime size of User Limit Response Body field
  local user_limit_response_body_offset = offset + index
  local user_limit_response_body_type = buffer(user_limit_response_body_offset - 2, 2):int()
  index = index + nse_nseix_orderentry_nnf_v1_12.user_limit_response_body.size(buffer, user_limit_response_body_offset, user_limit_response_body_type)

  return index
end

-- Display: User Order Limit Update Message
nse_nseix_orderentry_nnf_v1_12.user_order_limit_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Order Limit Update Message
nse_nseix_orderentry_nnf_v1_12.user_order_limit_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 2, 2):int()

  -- User Limit Response Body: Runtime Type with 3 branches
  index = nse_nseix_orderentry_nnf_v1_12.user_limit_response_body.dissect(buffer, index, packet, parent, message_length)

  return index
end

-- Dissect: User Order Limit Update Message
nse_nseix_orderentry_nnf_v1_12.user_order_limit_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_limit_update_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.user_order_limit_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.user_order_limit_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.user_order_limit_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Additional Order Flags
nse_nseix_orderentry_nnf_v1_12.additional_order_flags = {}

-- Size: Additional Order Flags
nse_nseix_orderentry_nnf_v1_12.additional_order_flags.size = 1

-- Display: Additional Order Flags
nse_nseix_orderentry_nnf_v1_12.additional_order_flags.display = function(range, value, packet, parent)
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
nse_nseix_orderentry_nnf_v1_12.additional_order_flags.bits = function(range, value, packet, parent)

  -- Reserved Bit 1: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_bit_1, range, value)

  -- Col: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.col, range, value)

  -- Reserved 34: 2 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_34, range, value)

  -- Stpc: 1 Bit Enum with 2 values
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.stpc, range, value)

  -- Session Ind: 1 Bit Enum with 2 values
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.session_ind, range, value)

  -- Reserved 78: 2 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_78, range, value)
end

-- Dissect: Additional Order Flags
nse_nseix_orderentry_nnf_v1_12.additional_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseix_orderentry_nnf_v1_12.additional_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nseix_orderentry_nnf_v1_12.additional_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.additional_order_flags, range, display)

  if show.structs then
    nse_nseix_orderentry_nnf_v1_12.additional_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- St Order Flags
nse_nseix_orderentry_nnf_v1_12.st_order_flags = {}

-- Size: St Order Flags
nse_nseix_orderentry_nnf_v1_12.st_order_flags.size = 2

-- Display: St Order Flags
nse_nseix_orderentry_nnf_v1_12.st_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Nlt Indc flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Nlt Indc"
  end
  -- Is Pre Close flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Pre Close"
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
nse_nseix_orderentry_nnf_v1_12.st_order_flags.bits = function(range, value, packet, parent)

  -- Nlt Indc: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.nlt_indc, range, value)

  -- Pre Close: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.pre_close, range, value)

  -- Preopen: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.preopen, range, value)

  -- Frozen: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.frozen, range, value)

  -- Modified: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.modified, range, value)

  -- Traded: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.traded, range, value)

  -- Matched Ind: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.matched_ind, range, value)

  -- Mf: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.mf, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.aon, range, value)

  -- Ioc: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.ioc, range, value)

  -- Gtc: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.gtc, range, value)

  -- Day: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.day, range, value)

  -- Mit: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.mit, range, value)

  -- Sl: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.sl, range, value)

  -- Market: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.market, range, value)

  -- Ato: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.ato, range, value)
end

-- Dissect: St Order Flags
nse_nseix_orderentry_nnf_v1_12.st_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseix_orderentry_nnf_v1_12.st_order_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseix_orderentry_nnf_v1_12.st_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.st_order_flags, range, display)

  if show.structs then
    nse_nseix_orderentry_nnf_v1_12.st_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Ms Spd Leg Info
nse_nseix_orderentry_nnf_v1_12.ms_spd_leg_info = {}

-- Size: Ms Spd Leg Info
nse_nseix_orderentry_nnf_v1_12.ms_spd_leg_info.size =
  nse_nseix_orderentry_nnf_v1_12.token_2.size + 
  nse_nseix_orderentry_nnf_v1_12.contract_desc.size + 
  nse_nseix_orderentry_nnf_v1_12.op_broker_id_2.size + 
  nse_nseix_orderentry_nnf_v1_12.fillerx_2.size + 
  nse_nseix_orderentry_nnf_v1_12.order_type_2.size + 
  nse_nseix_orderentry_nnf_v1_12.buy_sell_2.size + 
  nse_nseix_orderentry_nnf_v1_12.disclosed_vol_2.size + 
  nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_2.size + 
  nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_2.size + 
  nse_nseix_orderentry_nnf_v1_12.volume_2.size + 
  nse_nseix_orderentry_nnf_v1_12.volume_filled_today_2.size + 
  nse_nseix_orderentry_nnf_v1_12.price_2.size + 
  nse_nseix_orderentry_nnf_v1_12.trigger_price_2.size + 
  nse_nseix_orderentry_nnf_v1_12.min_fill_aon_2.size + 
  nse_nseix_orderentry_nnf_v1_12.st_order_flags.size + 
  nse_nseix_orderentry_nnf_v1_12.open_close_2.size + 
  nse_nseix_orderentry_nnf_v1_12.additional_order_flags.size + 
  nse_nseix_orderentry_nnf_v1_12.giveup_flag_2.size + 
  nse_nseix_orderentry_nnf_v1_12.filler_y.size

-- Display: Ms Spd Leg Info
nse_nseix_orderentry_nnf_v1_12.ms_spd_leg_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ms Spd Leg Info
nse_nseix_orderentry_nnf_v1_12.ms_spd_leg_info.fields = function(buffer, offset, packet, parent, ms_spd_leg_info_index)
  local index = offset

  -- Implicit Ms Spd Leg Info Index
  if ms_spd_leg_info_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.ms_spd_leg_info_index, ms_spd_leg_info_index)
    iteration:set_generated()
  end

  -- Token 2: LONG
  index, token_2 = nse_nseix_orderentry_nnf_v1_12.token_2.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_orderentry_nnf_v1_12.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 2: CHAR
  index, op_broker_id_2 = nse_nseix_orderentry_nnf_v1_12.op_broker_id_2.dissect(buffer, index, packet, parent)

  -- Fillerx 2: CHAR
  if show.padding then
    index, fillerx_2 = nse_nseix_orderentry_nnf_v1_12.fillerx_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.fillerx_2.size
  end

  -- Order Type 2: SHORT
  index, order_type_2 = nse_nseix_orderentry_nnf_v1_12.order_type_2.dissect(buffer, index, packet, parent)

  -- Buy Sell 2: SHORT
  index, buy_sell_2 = nse_nseix_orderentry_nnf_v1_12.buy_sell_2.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 2: LONG
  index, disclosed_vol_2 = nse_nseix_orderentry_nnf_v1_12.disclosed_vol_2.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 2: LONG
  index, disclosed_vol_remaining_2 = nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_2.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 2: LONG
  index, total_vol_remaining_2 = nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_2.dissect(buffer, index, packet, parent)

  -- Volume 2: LONG
  index, volume_2 = nse_nseix_orderentry_nnf_v1_12.volume_2.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 2: LONG
  index, volume_filled_today_2 = nse_nseix_orderentry_nnf_v1_12.volume_filled_today_2.dissect(buffer, index, packet, parent)

  -- Price 2: LONG
  index, price_2 = nse_nseix_orderentry_nnf_v1_12.price_2.dissect(buffer, index, packet, parent)

  -- Trigger Price 2: LONG
  index, trigger_price_2 = nse_nseix_orderentry_nnf_v1_12.trigger_price_2.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 2: LONG
  index, min_fill_aon_2 = nse_nseix_orderentry_nnf_v1_12.min_fill_aon_2.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_orderentry_nnf_v1_12.st_order_flags.dissect(buffer, index, packet, parent)

  -- Open Close 2: CHAR
  index, open_close_2 = nse_nseix_orderentry_nnf_v1_12.open_close_2.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 6 fields
  index, additional_order_flags = nse_nseix_orderentry_nnf_v1_12.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 2: CHAR
  index, giveup_flag_2 = nse_nseix_orderentry_nnf_v1_12.giveup_flag_2.dissect(buffer, index, packet, parent)

  -- Filler Y: CHAR
  if show.padding then
    index, filler_y = nse_nseix_orderentry_nnf_v1_12.filler_y.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.filler_y.size
  end

  return index
end

-- Dissect: Ms Spd Leg Info
nse_nseix_orderentry_nnf_v1_12.ms_spd_leg_info.dissect = function(buffer, offset, packet, parent, ms_spd_leg_info_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.ms_spd_leg_info, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.ms_spd_leg_info.fields(buffer, offset, packet, parent, ms_spd_leg_info_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.ms_spd_leg_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.ms_spd_leg_info.fields(buffer, offset, packet, parent, ms_spd_leg_info_index)
  end
end

-- Spread Order Body
nse_nseix_orderentry_nnf_v1_12.spread_order_body = {}

-- Size: Spread Order Body
nse_nseix_orderentry_nnf_v1_12.spread_order_body.size =
  nse_nseix_orderentry_nnf_v1_12.participant_type_1.size + 
  nse_nseix_orderentry_nnf_v1_12.filler_1.size + 
  nse_nseix_orderentry_nnf_v1_12.competitor_period_1.size + 
  nse_nseix_orderentry_nnf_v1_12.solicitor_period_1.size + 
  nse_nseix_orderentry_nnf_v1_12.mod_cxl_by_1.size + 
  nse_nseix_orderentry_nnf_v1_12.filler_9.size + 
  nse_nseix_orderentry_nnf_v1_12.reason_code_1.size + 
  nse_nseix_orderentry_nnf_v1_12.start_alpha_1.size + 
  nse_nseix_orderentry_nnf_v1_12.end_alpha_1.size + 
  nse_nseix_orderentry_nnf_v1_12.token_1.size + 
  nse_nseix_orderentry_nnf_v1_12.contract_desc.size + 
  nse_nseix_orderentry_nnf_v1_12.op_broker_id_1.size + 
  nse_nseix_orderentry_nnf_v1_12.fillerx_1.size + 
  nse_nseix_orderentry_nnf_v1_12.filler_options_1.size + 
  nse_nseix_orderentry_nnf_v1_12.fillery_1.size + 
  nse_nseix_orderentry_nnf_v1_12.order_type_1.size + 
  nse_nseix_orderentry_nnf_v1_12.order_number_1.size + 
  nse_nseix_orderentry_nnf_v1_12.account_number_1.size + 
  nse_nseix_orderentry_nnf_v1_12.book_type_1.size + 
  nse_nseix_orderentry_nnf_v1_12.buy_sell_1.size + 
  nse_nseix_orderentry_nnf_v1_12.disclosed_vol_1.size + 
  nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_1.size + 
  nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_1.size + 
  nse_nseix_orderentry_nnf_v1_12.volume_1.size + 
  nse_nseix_orderentry_nnf_v1_12.volume_filled_today_1.size + 
  nse_nseix_orderentry_nnf_v1_12.price_1.size + 
  nse_nseix_orderentry_nnf_v1_12.trigger_price_1.size + 
  nse_nseix_orderentry_nnf_v1_12.good_till_date_1.size + 
  nse_nseix_orderentry_nnf_v1_12.entry_date_time_1.size + 
  nse_nseix_orderentry_nnf_v1_12.min_fill_aon_1.size + 
  nse_nseix_orderentry_nnf_v1_12.last_modified_1.size + 
  nse_nseix_orderentry_nnf_v1_12.st_order_flags.size + 
  nse_nseix_orderentry_nnf_v1_12.branch_id_1.size + 
  nse_nseix_orderentry_nnf_v1_12.trader_id_1.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_id_1.size + 
  nse_nseix_orderentry_nnf_v1_12.c_ord_filler.size + 
  nse_nseix_orderentry_nnf_v1_12.open_close_1.size + 
  nse_nseix_orderentry_nnf_v1_12.settlor_1.size + 
  nse_nseix_orderentry_nnf_v1_12.pro_client_1.size + 
  nse_nseix_orderentry_nnf_v1_12.settlement_period_1.size + 
  nse_nseix_orderentry_nnf_v1_12.additional_order_flags.size + 
  nse_nseix_orderentry_nnf_v1_12.giveup_flag_1.size + 
  nse_nseix_orderentry_nnf_v1_12.filler_116.size + 
  nse_nseix_orderentry_nnf_v1_12.filler_17.size + 
  nse_nseix_orderentry_nnf_v1_12.filler_18.size + 
  nse_nseix_orderentry_nnf_v1_12.nnf_field.size + 
  nse_nseix_orderentry_nnf_v1_12.mkt_replay.size + 
  nse_nseix_orderentry_nnf_v1_12.echo_back.size + 
  nse_nseix_orderentry_nnf_v1_12.last_activity_reference.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_52.size + 
  nse_nseix_orderentry_nnf_v1_12.price_diff.size + 
  2 * nse_nseix_orderentry_nnf_v1_12.ms_spd_leg_info.size

-- Display: Spread Order Body
nse_nseix_orderentry_nnf_v1_12.spread_order_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Body
nse_nseix_orderentry_nnf_v1_12.spread_order_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_orderentry_nnf_v1_12.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_orderentry_nnf_v1_12.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_orderentry_nnf_v1_12.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_orderentry_nnf_v1_12.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_orderentry_nnf_v1_12.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_orderentry_nnf_v1_12.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_orderentry_nnf_v1_12.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_orderentry_nnf_v1_12.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_orderentry_nnf_v1_12.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_orderentry_nnf_v1_12.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_orderentry_nnf_v1_12.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_orderentry_nnf_v1_12.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_orderentry_nnf_v1_12.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_orderentry_nnf_v1_12.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_orderentry_nnf_v1_12.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_orderentry_nnf_v1_12.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_orderentry_nnf_v1_12.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_orderentry_nnf_v1_12.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_orderentry_nnf_v1_12.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_orderentry_nnf_v1_12.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_orderentry_nnf_v1_12.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_orderentry_nnf_v1_12.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_orderentry_nnf_v1_12.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_orderentry_nnf_v1_12.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_orderentry_nnf_v1_12.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_orderentry_nnf_v1_12.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_orderentry_nnf_v1_12.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_orderentry_nnf_v1_12.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_orderentry_nnf_v1_12.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_orderentry_nnf_v1_12.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_orderentry_nnf_v1_12.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_orderentry_nnf_v1_12.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_orderentry_nnf_v1_12.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_orderentry_nnf_v1_12.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_orderentry_nnf_v1_12.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_orderentry_nnf_v1_12.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_orderentry_nnf_v1_12.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_orderentry_nnf_v1_12.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_orderentry_nnf_v1_12.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_orderentry_nnf_v1_12.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 6 fields
  index, additional_order_flags = nse_nseix_orderentry_nnf_v1_12.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_orderentry_nnf_v1_12.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 116: USHORT
  if show.padding then
    index, filler_116 = nse_nseix_orderentry_nnf_v1_12.filler_116.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.filler_116.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_orderentry_nnf_v1_12.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_orderentry_nnf_v1_12.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_orderentry_nnf_v1_12.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_orderentry_nnf_v1_12.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_orderentry_nnf_v1_12.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_orderentry_nnf_v1_12.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_orderentry_nnf_v1_12.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_orderentry_nnf_v1_12.price_diff.dissect(buffer, index, packet, parent)

  -- Array Of: Ms Spd Leg Info
  for ms_spd_leg_info_index = 1, 2 do
    index, ms_spd_leg_info = nse_nseix_orderentry_nnf_v1_12.ms_spd_leg_info.dissect(buffer, index, packet, parent, ms_spd_leg_info_index)
  end

  return index
end

-- Dissect: Spread Order Body
nse_nseix_orderentry_nnf_v1_12.spread_order_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.spread_order_body, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.spread_order_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.spread_order_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.spread_order_body.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Response Message
nse_nseix_orderentry_nnf_v1_12.spread_order_response_message = {}

-- Size: Spread Order Response Message
nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.size =
  nse_nseix_orderentry_nnf_v1_12.spread_order_body.size

-- Display: Spread Order Response Message
nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Response Message
nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Spread Order Body: Struct of 52 fields
  index, spread_order_body = nse_nseix_orderentry_nnf_v1_12.spread_order_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Response Message
nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.spread_order_response_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Good Till Date
nse_nseix_orderentry_nnf_v1_12.good_till_date = {}

-- Size: Good Till Date
nse_nseix_orderentry_nnf_v1_12.good_till_date.size = 4

-- Dissect: Good Till Date
nse_nseix_orderentry_nnf_v1_12.good_till_date.dissect = function(buffer, offset, packet, parent)
  local good_till_date_seconds = buffer(offset, 4):int()
  -- Dissect Good Till Date Seconds
  if good_till_date_seconds > 32767 then
    return nse_nseix_orderentry_nnf_v1_12.good_till_date_seconds.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Good Till Days
  return nse_nseix_orderentry_nnf_v1_12.good_till_days.dissect(buffer, offset, packet, parent)
end

-- Trade Confirmation Message
nse_nseix_orderentry_nnf_v1_12.trade_confirmation_message = {}

-- Size: Trade Confirmation Message
nse_nseix_orderentry_nnf_v1_12.trade_confirmation_message.size =
  nse_nseix_orderentry_nnf_v1_12.response_order_number.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.trader_number.size + 
  nse_nseix_orderentry_nnf_v1_12.account_number.size + 
  nse_nseix_orderentry_nnf_v1_12.buy_sell_indicator.size + 
  nse_nseix_orderentry_nnf_v1_12.original_volume.size + 
  nse_nseix_orderentry_nnf_v1_12.disclosed_volume.size + 
  nse_nseix_orderentry_nnf_v1_12.remaining_volume.size + 
  nse_nseix_orderentry_nnf_v1_12.disclosed_volume_remaining.size + 
  nse_nseix_orderentry_nnf_v1_12.price.size + 
  nse_nseix_orderentry_nnf_v1_12.st_order_flags.size + 
  nse_nseix_orderentry_nnf_v1_12.good_till_date.size + 
  nse_nseix_orderentry_nnf_v1_12.fill_number.size + 
  nse_nseix_orderentry_nnf_v1_12.fill_quantity.size + 
  nse_nseix_orderentry_nnf_v1_12.fill_price.size + 
  nse_nseix_orderentry_nnf_v1_12.volume_filled_today.size + 
  nse_nseix_orderentry_nnf_v1_12.activity_type.size + 
  nse_nseix_orderentry_nnf_v1_12.activity_time.size + 
  nse_nseix_orderentry_nnf_v1_12.counter_trader_order_number.size + 
  nse_nseix_orderentry_nnf_v1_12.counter_broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.second_reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.token.size + 
  nse_nseix_orderentry_nnf_v1_12.contract_desc.size + 
  nse_nseix_orderentry_nnf_v1_12.open_close.size + 
  nse_nseix_orderentry_nnf_v1_12.old_open_close.size + 
  nse_nseix_orderentry_nnf_v1_12.trade_book_type.size + 
  nse_nseix_orderentry_nnf_v1_12.third_reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.new_volume.size + 
  nse_nseix_orderentry_nnf_v1_12.old_account_number.size + 
  nse_nseix_orderentry_nnf_v1_12.participant.size + 
  nse_nseix_orderentry_nnf_v1_12.old_participant.size + 
  nse_nseix_orderentry_nnf_v1_12.additional_order_flags.size + 
  nse_nseix_orderentry_nnf_v1_12.fourth_reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.give_up_trade.size + 
  nse_nseix_orderentry_nnf_v1_12.fifth_reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_10.size + 
  nse_nseix_orderentry_nnf_v1_12.echo_back.size + 
  nse_nseix_orderentry_nnf_v1_12.last_activity_reference.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_52.size

-- Display: Trade Confirmation Message
nse_nseix_orderentry_nnf_v1_12.trade_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Confirmation Message
nse_nseix_orderentry_nnf_v1_12.trade_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseix_orderentry_nnf_v1_12.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  -- Trader Number: LONG
  index, trader_number = nse_nseix_orderentry_nnf_v1_12.trader_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_orderentry_nnf_v1_12.account_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_orderentry_nnf_v1_12.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Original Volume: LONG
  index, original_volume = nse_nseix_orderentry_nnf_v1_12.original_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_orderentry_nnf_v1_12.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume: LONG
  index, remaining_volume = nse_nseix_orderentry_nnf_v1_12.remaining_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_orderentry_nnf_v1_12.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_orderentry_nnf_v1_12.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_orderentry_nnf_v1_12.st_order_flags.dissect(buffer, index, packet, parent)

  -- Good Till Date: Runtime Type with 2 branches
  index = nse_nseix_orderentry_nnf_v1_12.good_till_date.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_orderentry_nnf_v1_12.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Quantity: LONG
  index, fill_quantity = nse_nseix_orderentry_nnf_v1_12.fill_quantity.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_orderentry_nnf_v1_12.fill_price.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_orderentry_nnf_v1_12.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseix_orderentry_nnf_v1_12.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseix_orderentry_nnf_v1_12.activity_time.dissect(buffer, index, packet, parent)

  -- Counter Trader Order Number: DOUBLE
  index, counter_trader_order_number = nse_nseix_orderentry_nnf_v1_12.counter_trader_order_number.dissect(buffer, index, packet, parent)

  -- Counter Broker Id: CHAR
  index, counter_broker_id = nse_nseix_orderentry_nnf_v1_12.counter_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: BYTE
  if show.padding then
    index, second_reserved_1 = nse_nseix_orderentry_nnf_v1_12.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.second_reserved_1.size
  end

  -- Token: LONG
  index, token = nse_nseix_orderentry_nnf_v1_12.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_orderentry_nnf_v1_12.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_orderentry_nnf_v1_12.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nseix_orderentry_nnf_v1_12.old_open_close.dissect(buffer, index, packet, parent)

  -- Trade Book Type: CHAR
  index, trade_book_type = nse_nseix_orderentry_nnf_v1_12.trade_book_type.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: BYTE
  if show.padding then
    index, third_reserved_1 = nse_nseix_orderentry_nnf_v1_12.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.third_reserved_1.size
  end

  -- New Volume: LONG
  index, new_volume = nse_nseix_orderentry_nnf_v1_12.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nseix_orderentry_nnf_v1_12.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nseix_orderentry_nnf_v1_12.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nseix_orderentry_nnf_v1_12.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 6 fields
  index, additional_order_flags = nse_nseix_orderentry_nnf_v1_12.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: BYTE
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_orderentry_nnf_v1_12.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.fourth_reserved_1.size
  end

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nseix_orderentry_nnf_v1_12.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: BYTE
  if show.padding then
    index, fifth_reserved_1 = nse_nseix_orderentry_nnf_v1_12.fifth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.fifth_reserved_1.size
  end

  -- Reserved 10: CHAR
  if show.padding then
    index, reserved_10 = nse_nseix_orderentry_nnf_v1_12.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_10.size
  end

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_orderentry_nnf_v1_12.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_orderentry_nnf_v1_12.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_orderentry_nnf_v1_12.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_52.size
  end

  return index
end

-- Dissect: Trade Confirmation Message
nse_nseix_orderentry_nnf_v1_12.trade_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.trade_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.trade_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.trade_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.trade_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Inquiry Body
nse_nseix_orderentry_nnf_v1_12.trade_inquiry_body = {}

-- Size: Trade Inquiry Body
nse_nseix_orderentry_nnf_v1_12.trade_inquiry_body.size =
  nse_nseix_orderentry_nnf_v1_12.token_no.size + 
  nse_nseix_orderentry_nnf_v1_12.contract_desc.size + 
  nse_nseix_orderentry_nnf_v1_12.fill_number.size + 
  nse_nseix_orderentry_nnf_v1_12.fill_quantity.size + 
  nse_nseix_orderentry_nnf_v1_12.fill_price.size + 
  nse_nseix_orderentry_nnf_v1_12.mkt_type.size + 
  nse_nseix_orderentry_nnf_v1_12.buy_open_close.size + 
  nse_nseix_orderentry_nnf_v1_12.new_volume.size + 
  nse_nseix_orderentry_nnf_v1_12.buy_broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.sell_broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.trader_id.size + 
  nse_nseix_orderentry_nnf_v1_12.requested_by.size + 
  nse_nseix_orderentry_nnf_v1_12.sell_open_close.size + 
  nse_nseix_orderentry_nnf_v1_12.buy_account_number.size + 
  nse_nseix_orderentry_nnf_v1_12.sell_account_number.size + 
  nse_nseix_orderentry_nnf_v1_12.buy_participant.size + 
  nse_nseix_orderentry_nnf_v1_12.sell_participant.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_2.size + 
  nse_nseix_orderentry_nnf_v1_12.buy_giveup_flag.size + 
  nse_nseix_orderentry_nnf_v1_12.sell_giveup_flag.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_80.size

-- Display: Trade Inquiry Body
nse_nseix_orderentry_nnf_v1_12.trade_inquiry_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Inquiry Body
nse_nseix_orderentry_nnf_v1_12.trade_inquiry_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token No: LONG
  index, token_no = nse_nseix_orderentry_nnf_v1_12.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_orderentry_nnf_v1_12.contract_desc.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_orderentry_nnf_v1_12.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Quantity: LONG
  index, fill_quantity = nse_nseix_orderentry_nnf_v1_12.fill_quantity.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_orderentry_nnf_v1_12.fill_price.dissect(buffer, index, packet, parent)

  -- Mkt Type: CHAR
  index, mkt_type = nse_nseix_orderentry_nnf_v1_12.mkt_type.dissect(buffer, index, packet, parent)

  -- Buy Open Close: CHAR
  index, buy_open_close = nse_nseix_orderentry_nnf_v1_12.buy_open_close.dissect(buffer, index, packet, parent)

  -- New Volume: LONG
  index, new_volume = nse_nseix_orderentry_nnf_v1_12.new_volume.dissect(buffer, index, packet, parent)

  -- Buy Broker Id: CHAR
  index, buy_broker_id = nse_nseix_orderentry_nnf_v1_12.buy_broker_id.dissect(buffer, index, packet, parent)

  -- Sell Broker Id: CHAR
  index, sell_broker_id = nse_nseix_orderentry_nnf_v1_12.sell_broker_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_orderentry_nnf_v1_12.trader_id.dissect(buffer, index, packet, parent)

  -- Requested By: CHAR
  index, requested_by = nse_nseix_orderentry_nnf_v1_12.requested_by.dissect(buffer, index, packet, parent)

  -- Sell Open Close: CHAR
  index, sell_open_close = nse_nseix_orderentry_nnf_v1_12.sell_open_close.dissect(buffer, index, packet, parent)

  -- Buy Account Number: CHAR
  index, buy_account_number = nse_nseix_orderentry_nnf_v1_12.buy_account_number.dissect(buffer, index, packet, parent)

  -- Sell Account Number: CHAR
  index, sell_account_number = nse_nseix_orderentry_nnf_v1_12.sell_account_number.dissect(buffer, index, packet, parent)

  -- Buy Participant: CHAR
  index, buy_participant = nse_nseix_orderentry_nnf_v1_12.buy_participant.dissect(buffer, index, packet, parent)

  -- Sell Participant: CHAR
  index, sell_participant = nse_nseix_orderentry_nnf_v1_12.sell_participant.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  if show.padding then
    index, reserved_2 = nse_nseix_orderentry_nnf_v1_12.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_2.size
  end

  -- Buy Giveup Flag: CHAR
  index, buy_giveup_flag = nse_nseix_orderentry_nnf_v1_12.buy_giveup_flag.dissect(buffer, index, packet, parent)

  -- Sell Giveup Flag: CHAR
  index, sell_giveup_flag = nse_nseix_orderentry_nnf_v1_12.sell_giveup_flag.dissect(buffer, index, packet, parent)

  -- Reserved 80: CHAR
  if show.padding then
    index, reserved_80 = nse_nseix_orderentry_nnf_v1_12.reserved_80.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_80.size
  end

  return index
end

-- Dissect: Trade Inquiry Body
nse_nseix_orderentry_nnf_v1_12.trade_inquiry_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.trade_inquiry_body, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.trade_inquiry_body.fields(buffer, offset, packet, parent)
  end
end

-- Trade Inquiry Response Message
nse_nseix_orderentry_nnf_v1_12.trade_inquiry_response_message = {}

-- Size: Trade Inquiry Response Message
nse_nseix_orderentry_nnf_v1_12.trade_inquiry_response_message.size =
  nse_nseix_orderentry_nnf_v1_12.trade_inquiry_body.size

-- Display: Trade Inquiry Response Message
nse_nseix_orderentry_nnf_v1_12.trade_inquiry_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Inquiry Response Message
nse_nseix_orderentry_nnf_v1_12.trade_inquiry_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Inquiry Body: Struct of 21 fields
  index, trade_inquiry_body = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Inquiry Response Message
nse_nseix_orderentry_nnf_v1_12.trade_inquiry_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.trade_inquiry_response_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.trade_inquiry_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Entry Body
nse_nseix_orderentry_nnf_v1_12.order_entry_body = {}

-- Size: Order Entry Body
nse_nseix_orderentry_nnf_v1_12.order_entry_body.size =
  nse_nseix_orderentry_nnf_v1_12.participant_type.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.competitor_period.size + 
  nse_nseix_orderentry_nnf_v1_12.solicitor_period.size + 
  nse_nseix_orderentry_nnf_v1_12.modified_cancelled_by.size + 
  nse_nseix_orderentry_nnf_v1_12.second_reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.reason_code.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_4.size + 
  nse_nseix_orderentry_nnf_v1_12.token_no.size + 
  nse_nseix_orderentry_nnf_v1_12.contract_desc.size + 
  nse_nseix_orderentry_nnf_v1_12.counter_party_broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.third_reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_2.size + 
  nse_nseix_orderentry_nnf_v1_12.closeout_flag.size + 
  nse_nseix_orderentry_nnf_v1_12.fourth_reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.order_type.size + 
  nse_nseix_orderentry_nnf_v1_12.order_number.size + 
  nse_nseix_orderentry_nnf_v1_12.account_number.size + 
  nse_nseix_orderentry_nnf_v1_12.book_type.size + 
  nse_nseix_orderentry_nnf_v1_12.buy_sell_indicator.size + 
  nse_nseix_orderentry_nnf_v1_12.disclosed_volume.size + 
  nse_nseix_orderentry_nnf_v1_12.disclosed_volume_remaining.size + 
  nse_nseix_orderentry_nnf_v1_12.total_volume_remaining.size + 
  nse_nseix_orderentry_nnf_v1_12.volume.size + 
  nse_nseix_orderentry_nnf_v1_12.volume_filled_today.size + 
  nse_nseix_orderentry_nnf_v1_12.price.size + 
  nse_nseix_orderentry_nnf_v1_12.trigger_price.size + 
  nse_nseix_orderentry_nnf_v1_12.good_till_date.size + 
  nse_nseix_orderentry_nnf_v1_12.entry_date_time.size + 
  nse_nseix_orderentry_nnf_v1_12.minimum_fill_aon_volume.size + 
  nse_nseix_orderentry_nnf_v1_12.last_modified.size + 
  nse_nseix_orderentry_nnf_v1_12.st_order_flags.size + 
  nse_nseix_orderentry_nnf_v1_12.branch_id.size + 
  nse_nseix_orderentry_nnf_v1_12.trader_id.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.c_ord_filler.size + 
  nse_nseix_orderentry_nnf_v1_12.open_close.size + 
  nse_nseix_orderentry_nnf_v1_12.settlor.size + 
  nse_nseix_orderentry_nnf_v1_12.pro_client_indicator.size + 
  nse_nseix_orderentry_nnf_v1_12.settlement_period.size + 
  nse_nseix_orderentry_nnf_v1_12.additional_order_flags.size + 
  nse_nseix_orderentry_nnf_v1_12.giveup_flag.size + 
  nse_nseix_orderentry_nnf_v1_12.reference.size + 
  nse_nseix_orderentry_nnf_v1_12.nnf_field.size + 
  nse_nseix_orderentry_nnf_v1_12.mkt_replay.size + 
  nse_nseix_orderentry_nnf_v1_12.echo_back.size + 
  nse_nseix_orderentry_nnf_v1_12.last_activity_reference.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_52.size

-- Display: Order Entry Body
nse_nseix_orderentry_nnf_v1_12.order_entry_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Entry Body
nse_nseix_orderentry_nnf_v1_12.order_entry_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_orderentry_nnf_v1_12.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_orderentry_nnf_v1_12.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_orderentry_nnf_v1_12.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_orderentry_nnf_v1_12.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: BYTE
  if show.padding then
    index, second_reserved_1 = nse_nseix_orderentry_nnf_v1_12.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_orderentry_nnf_v1_12.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_orderentry_nnf_v1_12.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_orderentry_nnf_v1_12.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_orderentry_nnf_v1_12.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_orderentry_nnf_v1_12.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: BYTE
  if show.padding then
    index, third_reserved_1 = nse_nseix_orderentry_nnf_v1_12.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.third_reserved_1.size
  end

  -- Reserved 2: SHORT
  if show.padding then
    index, reserved_2 = nse_nseix_orderentry_nnf_v1_12.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_orderentry_nnf_v1_12.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: BYTE
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_orderentry_nnf_v1_12.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_orderentry_nnf_v1_12.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_orderentry_nnf_v1_12.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_orderentry_nnf_v1_12.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_orderentry_nnf_v1_12.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_orderentry_nnf_v1_12.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_orderentry_nnf_v1_12.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_orderentry_nnf_v1_12.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_orderentry_nnf_v1_12.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_orderentry_nnf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_orderentry_nnf_v1_12.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_orderentry_nnf_v1_12.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_orderentry_nnf_v1_12.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: Runtime Type with 2 branches
  index = nse_nseix_orderentry_nnf_v1_12.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_orderentry_nnf_v1_12.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_orderentry_nnf_v1_12.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_orderentry_nnf_v1_12.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_orderentry_nnf_v1_12.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_orderentry_nnf_v1_12.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_orderentry_nnf_v1_12.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_orderentry_nnf_v1_12.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_orderentry_nnf_v1_12.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_orderentry_nnf_v1_12.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_orderentry_nnf_v1_12.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_orderentry_nnf_v1_12.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 6 fields
  index, additional_order_flags = nse_nseix_orderentry_nnf_v1_12.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_orderentry_nnf_v1_12.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_orderentry_nnf_v1_12.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_orderentry_nnf_v1_12.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_orderentry_nnf_v1_12.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_orderentry_nnf_v1_12.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_orderentry_nnf_v1_12.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_orderentry_nnf_v1_12.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_52.size
  end

  return index
end

-- Dissect: Order Entry Body
nse_nseix_orderentry_nnf_v1_12.order_entry_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_entry_body, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.order_entry_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.order_entry_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.order_entry_body.fields(buffer, offset, packet, parent)
  end
end

-- Cancellation Confirmation Body
nse_nseix_orderentry_nnf_v1_12.cancellation_confirmation_body = {}

-- Dispatch: Cancellation Confirmation Body
nse_nseix_orderentry_nnf_v1_12.cancellation_confirmation_body.dispatch = {
  [316] = nse_nseix_orderentry_nnf_v1_12.order_entry_body.dissect,
  [480] = nse_nseix_orderentry_nnf_v1_12.spread_order_body.dissect,
}

-- Dissect: Cancellation Confirmation Body
nse_nseix_orderentry_nnf_v1_12.cancellation_confirmation_body.dissect = function(buffer, offset, packet, parent, message_length)
  local dissect = nse_nseix_orderentry_nnf_v1_12.cancellation_confirmation_body.dispatch[message_length]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Order Cancellation Confirmation Message
nse_nseix_orderentry_nnf_v1_12.order_cancellation_confirmation_message = {}

-- Calculate size of: Order Cancellation Confirmation Message
nse_nseix_orderentry_nnf_v1_12.order_cancellation_confirmation_message.size = function(buffer, offset)
  local index = 0

  -- Calculate runtime size of Cancellation Confirmation Body field
  local cancellation_confirmation_body_offset = offset + index
  local cancellation_confirmation_body_type = buffer(cancellation_confirmation_body_offset - 2, 2):int()
  index = index + nse_nseix_orderentry_nnf_v1_12.cancellation_confirmation_body.size(buffer, cancellation_confirmation_body_offset, cancellation_confirmation_body_type)

  return index
end

-- Display: Order Cancellation Confirmation Message
nse_nseix_orderentry_nnf_v1_12.order_cancellation_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Confirmation Message
nse_nseix_orderentry_nnf_v1_12.order_cancellation_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 2, 2):int()

  -- Cancellation Confirmation Body: Runtime Type with 2 branches
  index = nse_nseix_orderentry_nnf_v1_12.cancellation_confirmation_body.dissect(buffer, index, packet, parent, message_length)

  return index
end

-- Dissect: Order Cancellation Confirmation Message
nse_nseix_orderentry_nnf_v1_12.order_cancellation_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_cancellation_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.order_cancellation_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.order_cancellation_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.order_cancellation_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Response Message
nse_nseix_orderentry_nnf_v1_12.order_response_message = {}

-- Size: Order Response Message
nse_nseix_orderentry_nnf_v1_12.order_response_message.size =
  nse_nseix_orderentry_nnf_v1_12.order_entry_body.size

-- Display: Order Response Message
nse_nseix_orderentry_nnf_v1_12.order_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Response Message
nse_nseix_orderentry_nnf_v1_12.order_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Entry Body: Struct of 48 fields
  index, order_entry_body = nse_nseix_orderentry_nnf_v1_12.order_entry_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Response Message
nse_nseix_orderentry_nnf_v1_12.order_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_response_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.order_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.order_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.order_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification Confirmation Message
nse_nseix_orderentry_nnf_v1_12.order_modification_confirmation_message = {}

-- Size: Order Modification Confirmation Message
nse_nseix_orderentry_nnf_v1_12.order_modification_confirmation_message.size =
  nse_nseix_orderentry_nnf_v1_12.order_entry_body.size

-- Display: Order Modification Confirmation Message
nse_nseix_orderentry_nnf_v1_12.order_modification_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modification Confirmation Message
nse_nseix_orderentry_nnf_v1_12.order_modification_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Entry Body: Struct of 48 fields
  index, order_entry_body = nse_nseix_orderentry_nnf_v1_12.order_entry_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modification Confirmation Message
nse_nseix_orderentry_nnf_v1_12.order_modification_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_modification_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.order_modification_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.order_modification_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.order_modification_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Confirmation Message
nse_nseix_orderentry_nnf_v1_12.order_confirmation_message = {}

-- Size: Order Confirmation Message
nse_nseix_orderentry_nnf_v1_12.order_confirmation_message.size =
  nse_nseix_orderentry_nnf_v1_12.order_entry_body.size

-- Display: Order Confirmation Message
nse_nseix_orderentry_nnf_v1_12.order_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Confirmation Message
nse_nseix_orderentry_nnf_v1_12.order_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Entry Body: Struct of 48 fields
  index, order_entry_body = nse_nseix_orderentry_nnf_v1_12.order_entry_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Confirmation Message
nse_nseix_orderentry_nnf_v1_12.order_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.order_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.order_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.order_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Trailer Record Message
nse_nseix_orderentry_nnf_v1_12.trailer_record_message = {}

-- Display: Trailer Record Message
nse_nseix_orderentry_nnf_v1_12.trailer_record_message.display = function(packet, parent, length)
  return "Trailer Record Message"
end


-- Dissect: Trailer Record Message
nse_nseix_orderentry_nnf_v1_12.trailer_record_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseix_orderentry_nnf_v1_12.trailer_record_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Message Download Data
nse_nseix_orderentry_nnf_v1_12.message_download_data = {}

-- Display: Message Download Data
nse_nseix_orderentry_nnf_v1_12.message_download_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Download Data
nse_nseix_orderentry_nnf_v1_12.message_download_data.fields = function(buffer, offset, packet, parent, size_of_message_download_data)
  local index = offset

  -- Dependency for Download Payload
  local end_of_payload = offset + size_of_message_download_data

  -- Download Payload: 0 Byte
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, download_payload = nse_nseix_orderentry_nnf_v1_12.download_payload.dissect(buffer, index, packet, parent, end_of_payload - index)
  end

  return index
end

-- Dissect: Message Download Data
nse_nseix_orderentry_nnf_v1_12.message_download_data.dissect = function(buffer, offset, packet, parent, size_of_message_download_data)
  local index = offset + size_of_message_download_data

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.message_download_data, buffer(offset, 0))
    local decoded, failure = pcall(nse_nseix_orderentry_nnf_v1_12.message_download_data.fields, bounded, offset, packet, parent, size_of_message_download_data)
    if not decoded then
      undecoded(failure, parent, nse_nseix_orderentry_nnf_v1_12.experts.undecoded, "Message Download Data does not decode within its "..size_of_message_download_data.." bytes")
    end
    parent:set_len(size_of_message_download_data)
    local display = nse_nseix_orderentry_nnf_v1_12.message_download_data.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(nse_nseix_orderentry_nnf_v1_12.message_download_data.fields, bounded, offset, packet, parent, size_of_message_download_data)
    if not decoded then
      undecoded(failure, parent, nse_nseix_orderentry_nnf_v1_12.experts.undecoded, "Message Download Data does not decode within its "..size_of_message_download_data.." bytes")
    end

    return index
  end
end

-- Inner Header
nse_nseix_orderentry_nnf_v1_12.inner_header = {}

-- Size: Inner Header
nse_nseix_orderentry_nnf_v1_12.inner_header.size =
  nse_nseix_orderentry_nnf_v1_12.inner_trader_id.size + 
  nse_nseix_orderentry_nnf_v1_12.inner_log_time.size + 
  nse_nseix_orderentry_nnf_v1_12.inner_alpha_char.size + 
  nse_nseix_orderentry_nnf_v1_12.inner_transaction_code.size + 
  nse_nseix_orderentry_nnf_v1_12.inner_error_code.size + 
  nse_nseix_orderentry_nnf_v1_12.inner_timestamp.size + 
  nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_1.size + 
  nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_2.size + 
  nse_nseix_orderentry_nnf_v1_12.inner_message_length.size

-- Display: Inner Header
nse_nseix_orderentry_nnf_v1_12.inner_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inner Header
nse_nseix_orderentry_nnf_v1_12.inner_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inner Trader Id: LONG
  index, inner_trader_id = nse_nseix_orderentry_nnf_v1_12.inner_trader_id.dissect(buffer, index, packet, parent)

  -- Inner Log Time: LONG
  index, inner_log_time = nse_nseix_orderentry_nnf_v1_12.inner_log_time.dissect(buffer, index, packet, parent)

  -- Inner Alpha Char: CHAR
  index, inner_alpha_char = nse_nseix_orderentry_nnf_v1_12.inner_alpha_char.dissect(buffer, index, packet, parent)

  -- Inner Transaction Code: SHORT
  index, inner_transaction_code = nse_nseix_orderentry_nnf_v1_12.inner_transaction_code.dissect(buffer, index, packet, parent)

  -- Inner Error Code: SHORT
  index, inner_error_code = nse_nseix_orderentry_nnf_v1_12.inner_error_code.dissect(buffer, index, packet, parent)

  -- Inner Timestamp: CHAR
  index, inner_timestamp = nse_nseix_orderentry_nnf_v1_12.inner_timestamp.dissect(buffer, index, packet, parent)

  -- Inner Time Stamp 1: CHAR
  index, inner_time_stamp_1 = nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_1.dissect(buffer, index, packet, parent)

  -- Inner Time Stamp 2: CHAR
  index, inner_time_stamp_2 = nse_nseix_orderentry_nnf_v1_12.inner_time_stamp_2.dissect(buffer, index, packet, parent)

  -- Inner Message Length: SHORT
  index, inner_message_length = nse_nseix_orderentry_nnf_v1_12.inner_message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inner Header
nse_nseix_orderentry_nnf_v1_12.inner_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.inner_header, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.inner_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.inner_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.inner_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Record Message
nse_nseix_orderentry_nnf_v1_12.message_record_message = {}

-- Calculate size of: Message Record Message
nse_nseix_orderentry_nnf_v1_12.message_record_message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseix_orderentry_nnf_v1_12.inner_header.size

  -- Parse runtime size of: Message Download Data
  local message_length = buffer(offset + index - 42, 2):int()
  index = index + message_length - 80

  return index
end

-- Display: Message Record Message
nse_nseix_orderentry_nnf_v1_12.message_record_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Record Message
nse_nseix_orderentry_nnf_v1_12.message_record_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inner Header: Struct of 9 fields
  index, inner_header = nse_nseix_orderentry_nnf_v1_12.inner_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 2, 2):int()

  -- Runtime Size Of: Message Download Data
  local size_of_message_download_data = message_length - 80

  -- Message Download Data: Struct of 1 fields
  index, message_download_data = nse_nseix_orderentry_nnf_v1_12.message_download_data.dissect(buffer, index, packet, parent, size_of_message_download_data)

  return index
end

-- Dissect: Message Record Message
nse_nseix_orderentry_nnf_v1_12.message_record_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.message_record_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.message_record_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.message_record_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.message_record_message.fields(buffer, offset, packet, parent)
  end
end

-- Header Record Message
nse_nseix_orderentry_nnf_v1_12.header_record_message = {}

-- Display: Header Record Message
nse_nseix_orderentry_nnf_v1_12.header_record_message.display = function(packet, parent, length)
  return "Header Record Message"
end


-- Dissect: Header Record Message
nse_nseix_orderentry_nnf_v1_12.header_record_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseix_orderentry_nnf_v1_12.header_record_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Local Database Data
nse_nseix_orderentry_nnf_v1_12.local_database_data = {}

-- Display: Local Database Data
nse_nseix_orderentry_nnf_v1_12.local_database_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Local Database Data
nse_nseix_orderentry_nnf_v1_12.local_database_data.fields = function(buffer, offset, packet, parent, size_of_local_database_data)
  local index = offset

  -- Dependency for Data Payload
  local end_of_payload = offset + size_of_local_database_data

  -- Data Payload: 0 Byte
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, data_payload = nse_nseix_orderentry_nnf_v1_12.data_payload.dissect(buffer, index, packet, parent, end_of_payload - index)
  end

  return index
end

-- Dissect: Local Database Data
nse_nseix_orderentry_nnf_v1_12.local_database_data.dissect = function(buffer, offset, packet, parent, size_of_local_database_data)
  local index = offset + size_of_local_database_data

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.local_database_data, buffer(offset, 0))
    local decoded, failure = pcall(nse_nseix_orderentry_nnf_v1_12.local_database_data.fields, bounded, offset, packet, parent, size_of_local_database_data)
    if not decoded then
      undecoded(failure, parent, nse_nseix_orderentry_nnf_v1_12.experts.undecoded, "Local Database Data does not decode within its "..size_of_local_database_data.." bytes")
    end
    parent:set_len(size_of_local_database_data)
    local display = nse_nseix_orderentry_nnf_v1_12.local_database_data.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(nse_nseix_orderentry_nnf_v1_12.local_database_data.fields, bounded, offset, packet, parent, size_of_local_database_data)
    if not decoded then
      undecoded(failure, parent, nse_nseix_orderentry_nnf_v1_12.experts.undecoded, "Local Database Data does not decode within its "..size_of_local_database_data.." bytes")
    end

    return index
  end
end

-- Update Local Database Data Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_data_message = {}

-- Calculate size of: Update Local Database Data Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_data_message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseix_orderentry_nnf_v1_12.inner_header.size

  -- Parse runtime size of: Local Database Data
  local message_length = buffer(offset + index - 42, 2):int()
  index = index + message_length - 80

  return index
end

-- Display: Update Local Database Data Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database Data Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inner Header: Struct of 9 fields
  index, inner_header = nse_nseix_orderentry_nnf_v1_12.inner_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 2, 2):int()

  -- Runtime Size Of: Local Database Data
  local size_of_local_database_data = message_length - 80

  -- Local Database Data: Struct of 1 fields
  index, local_database_data = nse_nseix_orderentry_nnf_v1_12.local_database_data.dissect(buffer, index, packet, parent, size_of_local_database_data)

  return index
end

-- Dissect: Update Local Database Data Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.update_local_database_data_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.update_local_database_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.update_local_database_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.update_local_database_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Update Local Database Trailer Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_trailer_message = {}

-- Size: Update Local Database Trailer Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_trailer_message.size =
  nse_nseix_orderentry_nnf_v1_12.reserved_2.size

-- Display: Update Local Database Trailer Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_trailer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database Trailer Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_trailer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: SHORT
  if show.padding then
    index, reserved_2 = nse_nseix_orderentry_nnf_v1_12.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_2.size
  end

  return index
end

-- Dissect: Update Local Database Trailer Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_trailer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.update_local_database_trailer_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.update_local_database_trailer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.update_local_database_trailer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.update_local_database_trailer_message.fields(buffer, offset, packet, parent)
  end
end

-- Update Local Database Header Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_header_message = {}

-- Size: Update Local Database Header Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_header_message.size =
  nse_nseix_orderentry_nnf_v1_12.reserved_2.size

-- Display: Update Local Database Header Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database Header Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: SHORT
  if show.padding then
    index, reserved_2 = nse_nseix_orderentry_nnf_v1_12.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_2.size
  end

  return index
end

-- Dissect: Update Local Database Header Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.update_local_database_header_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.update_local_database_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.update_local_database_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.update_local_database_header_message.fields(buffer, offset, packet, parent)
  end
end

-- St Stock Eligible Indicators
nse_nseix_orderentry_nnf_v1_12.st_stock_eligible_indicators = {}

-- Size: St Stock Eligible Indicators
nse_nseix_orderentry_nnf_v1_12.st_stock_eligible_indicators.size = 2

-- Display: St Stock Eligible Indicators
nse_nseix_orderentry_nnf_v1_12.st_stock_eligible_indicators.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Books Merged flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Books Merged"
  end
  -- Is Minimum Fill flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Minimum Fill"
  end
  -- Is Aon flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Aon"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: St Stock Eligible Indicators
nse_nseix_orderentry_nnf_v1_12.st_stock_eligible_indicators.bits = function(range, value, packet, parent)

  -- Reserved 113: 13 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_113, range, value)

  -- Books Merged: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.books_merged, range, value)

  -- Minimum Fill: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.minimum_fill, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.aon, range, value)
end

-- Dissect: St Stock Eligible Indicators
nse_nseix_orderentry_nnf_v1_12.st_stock_eligible_indicators.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseix_orderentry_nnf_v1_12.st_stock_eligible_indicators.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseix_orderentry_nnf_v1_12.st_stock_eligible_indicators.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.st_stock_eligible_indicators, range, display)

  if show.structs then
    nse_nseix_orderentry_nnf_v1_12.st_stock_eligible_indicators.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- St Pl Market Status
nse_nseix_orderentry_nnf_v1_12.st_pl_market_status = {}

-- Size: St Pl Market Status
nse_nseix_orderentry_nnf_v1_12.st_pl_market_status.size =
  nse_nseix_orderentry_nnf_v1_12.normal.size + 
  nse_nseix_orderentry_nnf_v1_12.oddlot.size + 
  nse_nseix_orderentry_nnf_v1_12.spot.size + 
  nse_nseix_orderentry_nnf_v1_12.auction.size

-- Display: St Pl Market Status
nse_nseix_orderentry_nnf_v1_12.st_pl_market_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Pl Market Status
nse_nseix_orderentry_nnf_v1_12.st_pl_market_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Normal: SHORT
  index, normal = nse_nseix_orderentry_nnf_v1_12.normal.dissect(buffer, index, packet, parent)

  -- Oddlot: SHORT
  index, oddlot = nse_nseix_orderentry_nnf_v1_12.oddlot.dissect(buffer, index, packet, parent)

  -- Spot: SHORT
  index, spot = nse_nseix_orderentry_nnf_v1_12.spot.dissect(buffer, index, packet, parent)

  -- Auction: SHORT
  index, auction = nse_nseix_orderentry_nnf_v1_12.auction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Pl Market Status
nse_nseix_orderentry_nnf_v1_12.st_pl_market_status.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.st_pl_market_status, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.st_pl_market_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.st_pl_market_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.st_pl_market_status.fields(buffer, offset, packet, parent)
  end
end

-- St Ex Market Status
nse_nseix_orderentry_nnf_v1_12.st_ex_market_status = {}

-- Size: St Ex Market Status
nse_nseix_orderentry_nnf_v1_12.st_ex_market_status.size =
  nse_nseix_orderentry_nnf_v1_12.normal.size + 
  nse_nseix_orderentry_nnf_v1_12.oddlot.size + 
  nse_nseix_orderentry_nnf_v1_12.spot.size + 
  nse_nseix_orderentry_nnf_v1_12.auction.size

-- Display: St Ex Market Status
nse_nseix_orderentry_nnf_v1_12.st_ex_market_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Ex Market Status
nse_nseix_orderentry_nnf_v1_12.st_ex_market_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Normal: SHORT
  index, normal = nse_nseix_orderentry_nnf_v1_12.normal.dissect(buffer, index, packet, parent)

  -- Oddlot: SHORT
  index, oddlot = nse_nseix_orderentry_nnf_v1_12.oddlot.dissect(buffer, index, packet, parent)

  -- Spot: SHORT
  index, spot = nse_nseix_orderentry_nnf_v1_12.spot.dissect(buffer, index, packet, parent)

  -- Auction: SHORT
  index, auction = nse_nseix_orderentry_nnf_v1_12.auction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Ex Market Status
nse_nseix_orderentry_nnf_v1_12.st_ex_market_status.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.st_ex_market_status, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.st_ex_market_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.st_ex_market_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.st_ex_market_status.fields(buffer, offset, packet, parent)
  end
end

-- St Market Status
nse_nseix_orderentry_nnf_v1_12.st_market_status = {}

-- Size: St Market Status
nse_nseix_orderentry_nnf_v1_12.st_market_status.size =
  nse_nseix_orderentry_nnf_v1_12.normal.size + 
  nse_nseix_orderentry_nnf_v1_12.oddlot.size + 
  nse_nseix_orderentry_nnf_v1_12.spot.size + 
  nse_nseix_orderentry_nnf_v1_12.auction.size

-- Display: St Market Status
nse_nseix_orderentry_nnf_v1_12.st_market_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Market Status
nse_nseix_orderentry_nnf_v1_12.st_market_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Normal: SHORT
  index, normal = nse_nseix_orderentry_nnf_v1_12.normal.dissect(buffer, index, packet, parent)

  -- Oddlot: SHORT
  index, oddlot = nse_nseix_orderentry_nnf_v1_12.oddlot.dissect(buffer, index, packet, parent)

  -- Spot: SHORT
  index, spot = nse_nseix_orderentry_nnf_v1_12.spot.dissect(buffer, index, packet, parent)

  -- Auction: SHORT
  index, auction = nse_nseix_orderentry_nnf_v1_12.auction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Market Status
nse_nseix_orderentry_nnf_v1_12.st_market_status.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.st_market_status, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.st_market_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.st_market_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.st_market_status.fields(buffer, offset, packet, parent)
  end
end

-- System Information Out Message
nse_nseix_orderentry_nnf_v1_12.system_information_out_message = {}

-- Size: System Information Out Message
nse_nseix_orderentry_nnf_v1_12.system_information_out_message.size =
  nse_nseix_orderentry_nnf_v1_12.st_market_status.size + 
  nse_nseix_orderentry_nnf_v1_12.st_ex_market_status.size + 
  nse_nseix_orderentry_nnf_v1_12.st_pl_market_status.size + 
  nse_nseix_orderentry_nnf_v1_12.update_portfolio.size + 
  nse_nseix_orderentry_nnf_v1_12.c_filler.size + 
  nse_nseix_orderentry_nnf_v1_12.market_index.size + 
  nse_nseix_orderentry_nnf_v1_12.default_settlement_period_normal.size + 
  nse_nseix_orderentry_nnf_v1_12.default_settlement_period_spot.size + 
  nse_nseix_orderentry_nnf_v1_12.default_settlement_period_auction.size + 
  nse_nseix_orderentry_nnf_v1_12.competitor_period.size + 
  nse_nseix_orderentry_nnf_v1_12.solicitor_period.size + 
  nse_nseix_orderentry_nnf_v1_12.warning_percent.size + 
  nse_nseix_orderentry_nnf_v1_12.volume_freeze_percent.size + 
  nse_nseix_orderentry_nnf_v1_12.snap_quote_time.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_2.size + 
  nse_nseix_orderentry_nnf_v1_12.board_lot_quantity.size + 
  nse_nseix_orderentry_nnf_v1_12.tick_size.size + 
  nse_nseix_orderentry_nnf_v1_12.maximum_gtc_days.size + 
  nse_nseix_orderentry_nnf_v1_12.st_stock_eligible_indicators.size + 
  nse_nseix_orderentry_nnf_v1_12.disclosed_quantity_percent_allowed.size + 
  nse_nseix_orderentry_nnf_v1_12.risk_free_interest_rate.size

-- Display: System Information Out Message
nse_nseix_orderentry_nnf_v1_12.system_information_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Information Out Message
nse_nseix_orderentry_nnf_v1_12.system_information_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- St Market Status: Struct of 4 fields
  index, st_market_status = nse_nseix_orderentry_nnf_v1_12.st_market_status.dissect(buffer, index, packet, parent)

  -- St Ex Market Status: Struct of 4 fields
  index, st_ex_market_status = nse_nseix_orderentry_nnf_v1_12.st_ex_market_status.dissect(buffer, index, packet, parent)

  -- St Pl Market Status: Struct of 4 fields
  index, st_pl_market_status = nse_nseix_orderentry_nnf_v1_12.st_pl_market_status.dissect(buffer, index, packet, parent)

  -- Update Portfolio: CHAR
  index, update_portfolio = nse_nseix_orderentry_nnf_v1_12.update_portfolio.dissect(buffer, index, packet, parent)

  -- C Filler: CHAR
  index, c_filler = nse_nseix_orderentry_nnf_v1_12.c_filler.dissect(buffer, index, packet, parent)

  -- Market Index: LONG
  index, market_index = nse_nseix_orderentry_nnf_v1_12.market_index.dissect(buffer, index, packet, parent)

  -- Default Settlement Period Normal: SHORT
  index, default_settlement_period_normal = nse_nseix_orderentry_nnf_v1_12.default_settlement_period_normal.dissect(buffer, index, packet, parent)

  -- Default Settlement Period Spot: SHORT
  index, default_settlement_period_spot = nse_nseix_orderentry_nnf_v1_12.default_settlement_period_spot.dissect(buffer, index, packet, parent)

  -- Default Settlement Period Auction: SHORT
  index, default_settlement_period_auction = nse_nseix_orderentry_nnf_v1_12.default_settlement_period_auction.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_orderentry_nnf_v1_12.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_orderentry_nnf_v1_12.solicitor_period.dissect(buffer, index, packet, parent)

  -- Warning Percent: SHORT
  index, warning_percent = nse_nseix_orderentry_nnf_v1_12.warning_percent.dissect(buffer, index, packet, parent)

  -- Volume Freeze Percent: SHORT
  index, volume_freeze_percent = nse_nseix_orderentry_nnf_v1_12.volume_freeze_percent.dissect(buffer, index, packet, parent)

  -- Snap Quote Time: SHORT
  index, snap_quote_time = nse_nseix_orderentry_nnf_v1_12.snap_quote_time.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  if show.padding then
    index, reserved_2 = nse_nseix_orderentry_nnf_v1_12.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_2.size
  end

  -- Board Lot Quantity: LONG
  index, board_lot_quantity = nse_nseix_orderentry_nnf_v1_12.board_lot_quantity.dissect(buffer, index, packet, parent)

  -- Tick Size: LONG
  index, tick_size = nse_nseix_orderentry_nnf_v1_12.tick_size.dissect(buffer, index, packet, parent)

  -- Maximum Gtc Days: SHORT
  index, maximum_gtc_days = nse_nseix_orderentry_nnf_v1_12.maximum_gtc_days.dissect(buffer, index, packet, parent)

  -- St Stock Eligible Indicators: Struct of 4 fields
  index, st_stock_eligible_indicators = nse_nseix_orderentry_nnf_v1_12.st_stock_eligible_indicators.dissect(buffer, index, packet, parent)

  -- Disclosed Quantity Percent Allowed: SHORT
  index, disclosed_quantity_percent_allowed = nse_nseix_orderentry_nnf_v1_12.disclosed_quantity_percent_allowed.dissect(buffer, index, packet, parent)

  -- Risk Free Interest Rate: LONG
  index, risk_free_interest_rate = nse_nseix_orderentry_nnf_v1_12.risk_free_interest_rate.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Information Out Message
nse_nseix_orderentry_nnf_v1_12.system_information_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.system_information_out_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.system_information_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.system_information_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.system_information_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Sign Off Request Out Message
nse_nseix_orderentry_nnf_v1_12.sign_off_request_out_message = {}

-- Size: Sign Off Request Out Message
nse_nseix_orderentry_nnf_v1_12.sign_off_request_out_message.size =
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_145.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size

-- Display: Sign Off Request Out Message
nse_nseix_orderentry_nnf_v1_12.sign_off_request_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sign Off Request Out Message
nse_nseix_orderentry_nnf_v1_12.sign_off_request_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 145: CHAR
  if show.padding then
    index, reserved_145 = nse_nseix_orderentry_nnf_v1_12.reserved_145.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_145.size
  end

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  return index
end

-- Dissect: Sign Off Request Out Message
nse_nseix_orderentry_nnf_v1_12.sign_off_request_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.sign_off_request_out_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.sign_off_request_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.sign_off_request_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.sign_off_request_out_message.fields(buffer, offset, packet, parent)
  end
end

-- St Broker Eligibility Per Mkt
nse_nseix_orderentry_nnf_v1_12.st_broker_eligibility_per_mkt = {}

-- Size: St Broker Eligibility Per Mkt
nse_nseix_orderentry_nnf_v1_12.st_broker_eligibility_per_mkt.size = 2

-- Display: St Broker Eligibility Per Mkt
nse_nseix_orderentry_nnf_v1_12.st_broker_eligibility_per_mkt.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Nlt flag set?
  if bit.band(value, 0x0200) ~= 0 then
    flags[#flags + 1] = "Nlt"
  end
  -- Is Pre Close flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "Pre Close"
  end
  -- Is Preopen flag set?
  if bit.band(value, 0x0800) ~= 0 then
    flags[#flags + 1] = "Preopen"
  end
  -- Is Auction Market flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Auction Market"
  end
  -- Is Spot Market flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Spot Market"
  end
  -- Is Oddlot Market flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Oddlot Market"
  end
  -- Is Normal Market flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Normal Market"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: St Broker Eligibility Per Mkt
nse_nseix_orderentry_nnf_v1_12.st_broker_eligibility_per_mkt.bits = function(range, value, packet, parent)

  -- Reserved 19: 9 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reserved_19, range, value)

  -- Nlt: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.nlt, range, value)

  -- Pre Close: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.pre_close, range, value)

  -- Preopen: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.preopen, range, value)

  -- Auction Market: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.auction_market, range, value)

  -- Spot Market: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.spot_market, range, value)

  -- Oddlot Market: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.oddlot_market, range, value)

  -- Normal Market: 1 Bit
  parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.normal_market, range, value)
end

-- Dissect: St Broker Eligibility Per Mkt
nse_nseix_orderentry_nnf_v1_12.st_broker_eligibility_per_mkt.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseix_orderentry_nnf_v1_12.st_broker_eligibility_per_mkt.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseix_orderentry_nnf_v1_12.st_broker_eligibility_per_mkt.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.st_broker_eligibility_per_mkt, range, display)

  if show.structs then
    nse_nseix_orderentry_nnf_v1_12.st_broker_eligibility_per_mkt.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Sign On Out Body
nse_nseix_orderentry_nnf_v1_12.sign_on_out_body = {}

-- Size: Sign On Out Body
nse_nseix_orderentry_nnf_v1_12.sign_on_out_body.size =
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.password.size + 
  nse_nseix_orderentry_nnf_v1_12.new_password.size + 
  nse_nseix_orderentry_nnf_v1_12.trader_name.size + 
  nse_nseix_orderentry_nnf_v1_12.last_password_change_date.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.branch_id.size + 
  nse_nseix_orderentry_nnf_v1_12.version_number.size + 
  nse_nseix_orderentry_nnf_v1_12.end_time.size + 
  nse_nseix_orderentry_nnf_v1_12.second_reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.colour.size + 
  nse_nseix_orderentry_nnf_v1_12.third_reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.user_type.size + 
  nse_nseix_orderentry_nnf_v1_12.sequence_number.size + 
  nse_nseix_orderentry_nnf_v1_12.ws_class_name.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_status.size + 
  nse_nseix_orderentry_nnf_v1_12.fourth_reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.st_broker_eligibility_per_mkt.size + 
  nse_nseix_orderentry_nnf_v1_12.member_type.size + 
  nse_nseix_orderentry_nnf_v1_12.clearing_status.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_name.size

-- Display: Sign On Out Body
nse_nseix_orderentry_nnf_v1_12.sign_on_out_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sign On Out Body
nse_nseix_orderentry_nnf_v1_12.sign_on_out_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Password: CHAR
  index, password = nse_nseix_orderentry_nnf_v1_12.password.dissect(buffer, index, packet, parent)

  -- New Password: CHAR
  index, new_password = nse_nseix_orderentry_nnf_v1_12.new_password.dissect(buffer, index, packet, parent)

  -- Trader Name: CHAR
  index, trader_name = nse_nseix_orderentry_nnf_v1_12.trader_name.dissect(buffer, index, packet, parent)

  -- Last Password Change Date: LONG
  index, last_password_change_date = nse_nseix_orderentry_nnf_v1_12.last_password_change_date.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_orderentry_nnf_v1_12.branch_id.dissect(buffer, index, packet, parent)

  -- Version Number: LONG
  index, version_number = nse_nseix_orderentry_nnf_v1_12.version_number.dissect(buffer, index, packet, parent)

  -- End Time: LONG
  index, end_time = nse_nseix_orderentry_nnf_v1_12.end_time.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: BYTE
  if show.padding then
    index, second_reserved_1 = nse_nseix_orderentry_nnf_v1_12.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.second_reserved_1.size
  end

  -- Colour: CHAR
  index, colour = nse_nseix_orderentry_nnf_v1_12.colour.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: BYTE
  if show.padding then
    index, third_reserved_1 = nse_nseix_orderentry_nnf_v1_12.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.third_reserved_1.size
  end

  -- User Type: SHORT
  index, user_type = nse_nseix_orderentry_nnf_v1_12.user_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: DOUBLE
  index, sequence_number = nse_nseix_orderentry_nnf_v1_12.sequence_number.dissect(buffer, index, packet, parent)

  -- Ws Class Name: CHAR
  index, ws_class_name = nse_nseix_orderentry_nnf_v1_12.ws_class_name.dissect(buffer, index, packet, parent)

  -- Broker Status: CHAR
  index, broker_status = nse_nseix_orderentry_nnf_v1_12.broker_status.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: BYTE
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_orderentry_nnf_v1_12.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.fourth_reserved_1.size
  end

  -- St Broker Eligibility Per Mkt: Struct of 8 fields
  index, st_broker_eligibility_per_mkt = nse_nseix_orderentry_nnf_v1_12.st_broker_eligibility_per_mkt.dissect(buffer, index, packet, parent)

  -- Member Type: SHORT
  index, member_type = nse_nseix_orderentry_nnf_v1_12.member_type.dissect(buffer, index, packet, parent)

  -- Clearing Status: CHAR
  index, clearing_status = nse_nseix_orderentry_nnf_v1_12.clearing_status.dissect(buffer, index, packet, parent)

  -- Broker Name: CHAR
  index, broker_name = nse_nseix_orderentry_nnf_v1_12.broker_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sign On Out Body
nse_nseix_orderentry_nnf_v1_12.sign_on_out_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.sign_on_out_body, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.sign_on_out_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.sign_on_out_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.sign_on_out_body.fields(buffer, offset, packet, parent)
  end
end

-- Sign On Response Body
nse_nseix_orderentry_nnf_v1_12.sign_on_response_body = {}

-- Dispatch: Sign On Response Body
nse_nseix_orderentry_nnf_v1_12.sign_on_response_body.dispatch = {
  [214] = nse_nseix_orderentry_nnf_v1_12.sign_on_out_body.dissect,
  [182] = nse_nseix_orderentry_nnf_v1_12.error_response_body.dissect,
}

-- Dissect: Sign On Response Body
nse_nseix_orderentry_nnf_v1_12.sign_on_response_body.dissect = function(buffer, offset, packet, parent, message_length)
  local dissect = nse_nseix_orderentry_nnf_v1_12.sign_on_response_body.dispatch[message_length]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sign On Request Out Message
nse_nseix_orderentry_nnf_v1_12.sign_on_request_out_message = {}

-- Calculate size of: Sign On Request Out Message
nse_nseix_orderentry_nnf_v1_12.sign_on_request_out_message.size = function(buffer, offset)
  local index = 0

  -- Calculate runtime size of Sign On Response Body field
  local sign_on_response_body_offset = offset + index
  local sign_on_response_body_type = buffer(sign_on_response_body_offset - 2, 2):int()
  index = index + nse_nseix_orderentry_nnf_v1_12.sign_on_response_body.size(buffer, sign_on_response_body_offset, sign_on_response_body_type)

  return index
end

-- Display: Sign On Request Out Message
nse_nseix_orderentry_nnf_v1_12.sign_on_request_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sign On Request Out Message
nse_nseix_orderentry_nnf_v1_12.sign_on_request_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 2, 2):int()

  -- Sign On Response Body: Runtime Type with 2 branches
  index = nse_nseix_orderentry_nnf_v1_12.sign_on_response_body.dissect(buffer, index, packet, parent, message_length)

  return index
end

-- Dissect: Sign On Request Out Message
nse_nseix_orderentry_nnf_v1_12.sign_on_request_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.sign_on_request_out_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.sign_on_request_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.sign_on_request_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.sign_on_request_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Server Message Payload
nse_nseix_orderentry_nnf_v1_12.server_message_payload = {}

-- Dispatch: Server Message Payload
nse_nseix_orderentry_nnf_v1_12.server_message_payload.dispatch = {
  [2301] = nse_nseix_orderentry_nnf_v1_12.sign_on_request_out_message.dissect,
  [5585] = nse_nseix_orderentry_nnf_v1_12.sign_on_request_out_message.dissect,
  [2321] = nse_nseix_orderentry_nnf_v1_12.sign_off_request_out_message.dissect,
  [1601] = nse_nseix_orderentry_nnf_v1_12.system_information_out_message.dissect,
  [7321] = nse_nseix_orderentry_nnf_v1_12.system_information_out_message.dissect,
  [7307] = nse_nseix_orderentry_nnf_v1_12.update_local_database_header_message.dissect,
  [7308] = nse_nseix_orderentry_nnf_v1_12.update_local_database_trailer_message.dissect,
  [7304] = nse_nseix_orderentry_nnf_v1_12.update_local_database_data_message.dissect,
  [7011] = nse_nseix_orderentry_nnf_v1_12.header_record_message.dissect,
  [7021] = nse_nseix_orderentry_nnf_v1_12.message_record_message.dissect,
  [7031] = nse_nseix_orderentry_nnf_v1_12.trailer_record_message.dissect,
  [2073] = nse_nseix_orderentry_nnf_v1_12.order_confirmation_message.dissect,
  [2083] = nse_nseix_orderentry_nnf_v1_12.order_confirmation_message.dissect,
  [2074] = nse_nseix_orderentry_nnf_v1_12.order_modification_confirmation_message.dissect,
  [2085] = nse_nseix_orderentry_nnf_v1_12.order_modification_confirmation_message.dissect,
  [2001] = nse_nseix_orderentry_nnf_v1_12.order_response_message.dissect,
  [2012] = nse_nseix_orderentry_nnf_v1_12.order_response_message.dissect,
  [2041] = nse_nseix_orderentry_nnf_v1_12.order_response_message.dissect,
  [2042] = nse_nseix_orderentry_nnf_v1_12.order_response_message.dissect,
  [2071] = nse_nseix_orderentry_nnf_v1_12.order_response_message.dissect,
  [2072] = nse_nseix_orderentry_nnf_v1_12.order_response_message.dissect,
  [2087] = nse_nseix_orderentry_nnf_v1_12.order_response_message.dissect,
  [2088] = nse_nseix_orderentry_nnf_v1_12.order_response_message.dissect,
  [2089] = nse_nseix_orderentry_nnf_v1_12.order_response_message.dissect,
  [2170] = nse_nseix_orderentry_nnf_v1_12.order_response_message.dissect,
  [2231] = nse_nseix_orderentry_nnf_v1_12.order_response_message.dissect,
  [9002] = nse_nseix_orderentry_nnf_v1_12.order_response_message.dissect,
  [27100] = nse_nseix_orderentry_nnf_v1_12.order_response_message.dissect,
  [2075] = nse_nseix_orderentry_nnf_v1_12.order_cancellation_confirmation_message.dissect,
  [2223] = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_response_message.dissect,
  [2288] = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_response_message.dissect,
  [5441] = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_response_message.dissect,
  [5450] = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_response_message.dissect,
  [5452] = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_response_message.dissect,
  [5453] = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_response_message.dissect,
  [2090] = nse_nseix_orderentry_nnf_v1_12.trade_confirmation_message.dissect,
  [2212] = nse_nseix_orderentry_nnf_v1_12.trade_confirmation_message.dissect,
  [2222] = nse_nseix_orderentry_nnf_v1_12.trade_confirmation_message.dissect,
  [2282] = nse_nseix_orderentry_nnf_v1_12.trade_confirmation_message.dissect,
  [2286] = nse_nseix_orderentry_nnf_v1_12.trade_confirmation_message.dissect,
  [2287] = nse_nseix_orderentry_nnf_v1_12.trade_confirmation_message.dissect,
  [5449] = nse_nseix_orderentry_nnf_v1_12.trade_confirmation_message.dissect,
  [2101] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2103] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2105] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2107] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2119] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2124] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2125] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2126] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2127] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2130] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2131] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2132] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2133] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2136] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2154] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2155] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [2156] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [9004] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [27102] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [27103] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [27104] = nse_nseix_orderentry_nnf_v1_12.spread_order_response_message.dissect,
  [5731] = nse_nseix_orderentry_nnf_v1_12.user_order_limit_update_message.dissect,
  [5733] = nse_nseix_orderentry_nnf_v1_12.dealer_limit_update_message.dissect,
  [5772] = nse_nseix_orderentry_nnf_v1_12.spread_order_limit_update_message.dissect,
  [5295] = nse_nseix_orderentry_nnf_v1_12.control_message_to_trader_message.dissect,
  [1685] = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_response_message.dissect,
  [1687] = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_response_message.dissect,
  [1689] = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_response_message.dissect,
  [1833] = nse_nseix_orderentry_nnf_v1_12.market_statistics_report_message.dissect,
  [6502] = nse_nseix_orderentry_nnf_v1_12.spread_bhavcopy_message.dissect,
  [4506] = nse_nseix_orderentry_nnf_v1_12.giveup_confirmation_message.dissect,
  [4507] = nse_nseix_orderentry_nnf_v1_12.giveup_confirmation_message.dissect,
  [2401] = nse_nseix_orderentry_nnf_v1_12.gateway_router_response_message.dissect,
  [23009] = nse_nseix_orderentry_nnf_v1_12.secure_box_registration_response_out_message.dissect,
  [23001] = nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_out_message.dissect,
  [20322] = nse_nseix_orderentry_nnf_v1_12.box_sign_off_message.dissect,
  [5294] = nse_nseix_orderentry_nnf_v1_12.contingency_broadcast_message.dissect,
  [5717] = nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_response_message.dissect,
  [5741] = nse_nseix_orderentry_nnf_v1_12.reset_user_password_response_message.dissect,
  [5745] = nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_response_message.dissect,
  [5739] = nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_response_message.dissect,
  [5428] = nse_nseix_orderentry_nnf_v1_12.user_address_unlock_confirm_message.dissect,
  [5483] = nse_nseix_orderentry_nnf_v1_12.user_address_unlock_approve_message.dissect,
  [5484] = nse_nseix_orderentry_nnf_v1_12.user_address_unlock_approve_message.dissect,
  [2093] = nse_nseix_orderentry_nnf_v1_12.nlt_order_message_to_trader_message.dissect,
  [1243] = nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_response_message.dissect,
  [7032] = nse_nseix_orderentry_nnf_v1_12.nlt_trailer_record_message.dissect,
}

-- Dissect: Server Message Payload
nse_nseix_orderentry_nnf_v1_12.server_message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nseix_orderentry_nnf_v1_12.server_message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nse_nseix_orderentry_nnf_v1_12.message_header = {}

-- Size: Message Header
nse_nseix_orderentry_nnf_v1_12.message_header.size =
  nse_nseix_orderentry_nnf_v1_12.transaction_code.size + 
  nse_nseix_orderentry_nnf_v1_12.log_time.size + 
  nse_nseix_orderentry_nnf_v1_12.alpha_char.size + 
  nse_nseix_orderentry_nnf_v1_12.trader_id.size + 
  nse_nseix_orderentry_nnf_v1_12.error_code.size + 
  nse_nseix_orderentry_nnf_v1_12.header_timestamp.size + 
  nse_nseix_orderentry_nnf_v1_12.time_stamp_1.size + 
  nse_nseix_orderentry_nnf_v1_12.time_stamp_2.size + 
  nse_nseix_orderentry_nnf_v1_12.message_length.size

-- Display: Message Header
nse_nseix_orderentry_nnf_v1_12.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nse_nseix_orderentry_nnf_v1_12.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nseix_orderentry_nnf_v1_12.transaction_code.dissect(buffer, index, packet, parent)

  -- Log Time: LONG
  index, log_time = nse_nseix_orderentry_nnf_v1_12.log_time.dissect(buffer, index, packet, parent)

  -- Alpha Char: CHAR
  index, alpha_char = nse_nseix_orderentry_nnf_v1_12.alpha_char.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_orderentry_nnf_v1_12.trader_id.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nseix_orderentry_nnf_v1_12.error_code.dissect(buffer, index, packet, parent)

  -- Header Timestamp: CHAR
  index, header_timestamp = nse_nseix_orderentry_nnf_v1_12.header_timestamp.dissect(buffer, index, packet, parent)

  -- Time Stamp 1: CHAR
  index, time_stamp_1 = nse_nseix_orderentry_nnf_v1_12.time_stamp_1.dissect(buffer, index, packet, parent)

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nseix_orderentry_nnf_v1_12.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Message Length: SHORT
  index, message_length = nse_nseix_orderentry_nnf_v1_12.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nse_nseix_orderentry_nnf_v1_12.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.message_header, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Message
nse_nseix_orderentry_nnf_v1_12.server_message = {}

-- Display: Server Message
nse_nseix_orderentry_nnf_v1_12.server_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Message
nse_nseix_orderentry_nnf_v1_12.server_message.fields = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nseix_orderentry_nnf_v1_12.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 40, 2):int()

  -- Server Message Payload: Runtime Type with 38 branches
  index = nse_nseix_orderentry_nnf_v1_12.server_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Server Message
nse_nseix_orderentry_nnf_v1_12.server_message.dissect = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset + size_of_server_message

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.server_message, buffer(offset, 0))
    local decoded, failure = pcall(nse_nseix_orderentry_nnf_v1_12.server_message.fields, bounded, offset, packet, parent, size_of_server_message)
    if not decoded then
      undecoded(failure, parent, nse_nseix_orderentry_nnf_v1_12.experts.undecoded, "Server Message does not decode within its "..size_of_server_message.." bytes")
    end
    parent:set_len(size_of_server_message)
    local display = nse_nseix_orderentry_nnf_v1_12.server_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(nse_nseix_orderentry_nnf_v1_12.server_message.fields, bounded, offset, packet, parent, size_of_server_message)
    if not decoded then
      undecoded(failure, parent, nse_nseix_orderentry_nnf_v1_12.experts.undecoded, "Server Message does not decode within its "..size_of_server_message.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Server Message
local server_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nseix_orderentry_nnf_v1_12.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 38, 2):int()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
nse_nseix_orderentry_nnf_v1_12.server_packet = {}

-- Verify required size of Tcp packet
nse_nseix_orderentry_nnf_v1_12.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nseix_orderentry_nnf_v1_12.message_header.size
end

-- Dissect Server Packet
nse_nseix_orderentry_nnf_v1_12.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Message
  local end_of_payload = buffer:len()

  -- Server Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_message = server_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_message):tvb()
      index = nse_nseix_orderentry_nnf_v1_12.server_message.dissect(frame, index, packet, parent, size_of_server_message)
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

-- Nlt Order Inquiry Request Message
nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_request_message = {}

-- Size: Nlt Order Inquiry Request Message
nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_request_message.size =
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size

-- Display: Nlt Order Inquiry Request Message
nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nlt Order Inquiry Request Message
nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  return index
end

-- Dissect: Nlt Order Inquiry Request Message
nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.nlt_order_inquiry_request_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_request_message.fields(buffer, offset, packet, parent)
  end
end

-- User Address Unlock Request Message
nse_nseix_orderentry_nnf_v1_12.user_address_unlock_request_message = {}

-- Size: User Address Unlock Request Message
nse_nseix_orderentry_nnf_v1_12.user_address_unlock_request_message.size =
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_70.size

-- Display: User Address Unlock Request Message
nse_nseix_orderentry_nnf_v1_12.user_address_unlock_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Address Unlock Request Message
nse_nseix_orderentry_nnf_v1_12.user_address_unlock_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 70: CHAR
  if show.padding then
    index, reserved_70 = nse_nseix_orderentry_nnf_v1_12.reserved_70.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_70.size
  end

  return index
end

-- Dissect: User Address Unlock Request Message
nse_nseix_orderentry_nnf_v1_12.user_address_unlock_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_address_unlock_request_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.user_address_unlock_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.user_address_unlock_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.user_address_unlock_request_message.fields(buffer, offset, packet, parent)
  end
end

-- User Trade Modify Cancel Status Change Request Message
nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_request_message = {}

-- Size: User Trade Modify Cancel Status Change Request Message
nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_request_message.size =
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.trd_mod_cxl_bit.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_7.size

-- Display: User Trade Modify Cancel Status Change Request Message
nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Trade Modify Cancel Status Change Request Message
nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Trd Mod Cxl Bit: CHAR
  index, trd_mod_cxl_bit = nse_nseix_orderentry_nnf_v1_12.trd_mod_cxl_bit.dissect(buffer, index, packet, parent)

  -- Reserved 7: CHAR
  if show.padding then
    index, reserved_7 = nse_nseix_orderentry_nnf_v1_12.reserved_7.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_7.size
  end

  return index
end

-- Dissect: User Trade Modify Cancel Status Change Request Message
nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_trade_modify_cancel_status_change_request_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Collateral User Status Change Request Message
nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_request_message = {}

-- Size: Collateral User Status Change Request Message
nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_request_message.size =
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.col_user_bit.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_7.size

-- Display: Collateral User Status Change Request Message
nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collateral User Status Change Request Message
nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Col User Bit: CHAR
  index, col_user_bit = nse_nseix_orderentry_nnf_v1_12.col_user_bit.dissect(buffer, index, packet, parent)

  -- Reserved 7: CHAR
  if show.padding then
    index, reserved_7 = nse_nseix_orderentry_nnf_v1_12.reserved_7.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_7.size
  end

  return index
end

-- Dissect: Collateral User Status Change Request Message
nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.collateral_user_status_change_request_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Reset User Password Message
nse_nseix_orderentry_nnf_v1_12.reset_user_password_message = {}

-- Size: Reset User Password Message
nse_nseix_orderentry_nnf_v1_12.reset_user_password_message.size =
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_14.size

-- Display: Reset User Password Message
nse_nseix_orderentry_nnf_v1_12.reset_user_password_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset User Password Message
nse_nseix_orderentry_nnf_v1_12.reset_user_password_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 14: CHAR
  if show.padding then
    index, reserved_14 = nse_nseix_orderentry_nnf_v1_12.reserved_14.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_14.size
  end

  return index
end

-- Dissect: Reset User Password Message
nse_nseix_orderentry_nnf_v1_12.reset_user_password_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.reset_user_password_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.reset_user_password_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.reset_user_password_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.reset_user_password_message.fields(buffer, offset, packet, parent)
  end
end

-- Normal Order Limit Update Message
nse_nseix_orderentry_nnf_v1_12.normal_order_limit_update_message = {}

-- Size: Normal Order Limit Update Message
nse_nseix_orderentry_nnf_v1_12.normal_order_limit_update_message.size =
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.order_qty_limit.size + 
  nse_nseix_orderentry_nnf_v1_12.order_val_limit.size

-- Display: Normal Order Limit Update Message
nse_nseix_orderentry_nnf_v1_12.normal_order_limit_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Normal Order Limit Update Message
nse_nseix_orderentry_nnf_v1_12.normal_order_limit_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Order Qty Limit: DOUBLE
  index, order_qty_limit = nse_nseix_orderentry_nnf_v1_12.order_qty_limit.dissect(buffer, index, packet, parent)

  -- Order Val Limit: DOUBLE
  index, order_val_limit = nse_nseix_orderentry_nnf_v1_12.order_val_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Normal Order Limit Update Message
nse_nseix_orderentry_nnf_v1_12.normal_order_limit_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.normal_order_limit_update_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.normal_order_limit_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.normal_order_limit_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.normal_order_limit_update_message.fields(buffer, offset, packet, parent)
  end
end

-- User Order Value Limit Update Message
nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_update_message = {}

-- Size: User Order Value Limit Update Message
nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_update_message.size =
  nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_body.size

-- Display: User Order Value Limit Update Message
nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Order Value Limit Update Message
nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Order Value Limit Body: Struct of 7 fields
  index, user_order_value_limit_body = nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Order Value Limit Update Message
nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.user_order_value_limit_update_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Branch Order Value Limit Update Request Message
nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_request_message = {}

-- Size: Branch Order Value Limit Update Request Message
nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_request_message.size =
  nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_body.size

-- Display: Branch Order Value Limit Update Request Message
nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Branch Order Value Limit Update Request Message
nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Branch Order Value Limit Body: Struct of 4 fields
  index, branch_order_value_limit_body = nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Branch Order Value Limit Update Request Message
nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.branch_order_value_limit_update_request_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
nse_nseix_orderentry_nnf_v1_12.heartbeat_message = {}

-- Display: Heartbeat Message
nse_nseix_orderentry_nnf_v1_12.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
nse_nseix_orderentry_nnf_v1_12.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseix_orderentry_nnf_v1_12.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Box Sign On Request In Message
nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_in_message = {}

-- Size: Box Sign On Request In Message
nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_in_message.size =
  nse_nseix_orderentry_nnf_v1_12.box_id.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_5.size + 
  nse_nseix_orderentry_nnf_v1_12.session_key.size

-- Display: Box Sign On Request In Message
nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Box Sign On Request In Message
nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nseix_orderentry_nnf_v1_12.box_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 5: CHAR
  if show.padding then
    index, reserved_5 = nse_nseix_orderentry_nnf_v1_12.reserved_5.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_5.size
  end

  -- Session Key: CHAR
  index, session_key = nse_nseix_orderentry_nnf_v1_12.session_key.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Box Sign On Request In Message
nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.box_sign_on_request_in_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Secure Box Registration Request In Message
nse_nseix_orderentry_nnf_v1_12.secure_box_registration_request_in_message = {}

-- Size: Secure Box Registration Request In Message
nse_nseix_orderentry_nnf_v1_12.secure_box_registration_request_in_message.size =
  nse_nseix_orderentry_nnf_v1_12.box_id.size

-- Display: Secure Box Registration Request In Message
nse_nseix_orderentry_nnf_v1_12.secure_box_registration_request_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Secure Box Registration Request In Message
nse_nseix_orderentry_nnf_v1_12.secure_box_registration_request_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nseix_orderentry_nnf_v1_12.box_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Secure Box Registration Request In Message
nse_nseix_orderentry_nnf_v1_12.secure_box_registration_request_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.secure_box_registration_request_in_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.secure_box_registration_request_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.secure_box_registration_request_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.secure_box_registration_request_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Gateway Router Request Message
nse_nseix_orderentry_nnf_v1_12.gateway_router_request_message = {}

-- Size: Gateway Router Request Message
nse_nseix_orderentry_nnf_v1_12.gateway_router_request_message.size =
  nse_nseix_orderentry_nnf_v1_12.box_id.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.filler.size

-- Display: Gateway Router Request Message
nse_nseix_orderentry_nnf_v1_12.gateway_router_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Router Request Message
nse_nseix_orderentry_nnf_v1_12.gateway_router_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nseix_orderentry_nnf_v1_12.box_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  if show.padding then
    index, filler = nse_nseix_orderentry_nnf_v1_12.filler.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.filler.size
  end

  return index
end

-- Dissect: Gateway Router Request Message
nse_nseix_orderentry_nnf_v1_12.gateway_router_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.gateway_router_request_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.gateway_router_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.gateway_router_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.gateway_router_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Mba Inquiry Definition
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_definition = {}

-- Size: Mba Inquiry Definition
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_definition.size =
  nse_nseix_orderentry_nnf_v1_12.cumulative_quantity.size + 
  nse_nseix_orderentry_nnf_v1_12.total_value.size + 
  nse_nseix_orderentry_nnf_v1_12.wap.size

-- Display: Mba Inquiry Definition
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mba Inquiry Definition
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_definition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cumulative Quantity: LONG
  index, cumulative_quantity = nse_nseix_orderentry_nnf_v1_12.cumulative_quantity.dissect(buffer, index, packet, parent)

  -- Total Value: DOUBLE
  index, total_value = nse_nseix_orderentry_nnf_v1_12.total_value.dissect(buffer, index, packet, parent)

  -- Wap: LONG
  index, wap = nse_nseix_orderentry_nnf_v1_12.wap.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mba Inquiry Definition
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_definition.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.mba_inquiry_definition, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_definition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.mba_inquiry_definition.fields(buffer, offset, packet, parent)
  end
end

-- Mba Inquiry Request Message
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_request_message = {}

-- Size: Mba Inquiry Request Message
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_request_message.size =
  nse_nseix_orderentry_nnf_v1_12.token.size + 
  nse_nseix_orderentry_nnf_v1_12.book.size + 
  nse_nseix_orderentry_nnf_v1_12.buy_sell.size + 
  nse_nseix_orderentry_nnf_v1_12.mba_inquiry_definition.size

-- Display: Mba Inquiry Request Message
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mba Inquiry Request Message
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nseix_orderentry_nnf_v1_12.token.dissect(buffer, index, packet, parent)

  -- Book: SHORT
  index, book = nse_nseix_orderentry_nnf_v1_12.book.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_orderentry_nnf_v1_12.buy_sell.dissect(buffer, index, packet, parent)

  -- Mba Inquiry Definition: Struct of 3 fields
  index, mba_inquiry_definition = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_definition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mba Inquiry Request Message
nse_nseix_orderentry_nnf_v1_12.mba_inquiry_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.mba_inquiry_request_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.mba_inquiry_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Entry Request Message
nse_nseix_orderentry_nnf_v1_12.spread_order_entry_request_message = {}

-- Size: Spread Order Entry Request Message
nse_nseix_orderentry_nnf_v1_12.spread_order_entry_request_message.size =
  nse_nseix_orderentry_nnf_v1_12.spread_order_body.size

-- Display: Spread Order Entry Request Message
nse_nseix_orderentry_nnf_v1_12.spread_order_entry_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Entry Request Message
nse_nseix_orderentry_nnf_v1_12.spread_order_entry_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Spread Order Body: Struct of 52 fields
  index, spread_order_body = nse_nseix_orderentry_nnf_v1_12.spread_order_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Entry Request Message
nse_nseix_orderentry_nnf_v1_12.spread_order_entry_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.spread_order_entry_request_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.spread_order_entry_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.spread_order_entry_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.spread_order_entry_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Inquiry Message
nse_nseix_orderentry_nnf_v1_12.trade_inquiry_message = {}

-- Size: Trade Inquiry Message
nse_nseix_orderentry_nnf_v1_12.trade_inquiry_message.size =
  nse_nseix_orderentry_nnf_v1_12.trade_inquiry_body.size

-- Display: Trade Inquiry Message
nse_nseix_orderentry_nnf_v1_12.trade_inquiry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Inquiry Message
nse_nseix_orderentry_nnf_v1_12.trade_inquiry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Inquiry Body: Struct of 21 fields
  index, trade_inquiry_body = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Inquiry Message
nse_nseix_orderentry_nnf_v1_12.trade_inquiry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.trade_inquiry_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.trade_inquiry_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Modification Message
nse_nseix_orderentry_nnf_v1_12.price_modification_message = {}

-- Size: Price Modification Message
nse_nseix_orderentry_nnf_v1_12.price_modification_message.size =
  nse_nseix_orderentry_nnf_v1_12.token_no.size + 
  nse_nseix_orderentry_nnf_v1_12.trader_id.size + 
  nse_nseix_orderentry_nnf_v1_12.order_number.size + 
  nse_nseix_orderentry_nnf_v1_12.buy_sell.size + 
  nse_nseix_orderentry_nnf_v1_12.price.size + 
  nse_nseix_orderentry_nnf_v1_12.volume.size + 
  nse_nseix_orderentry_nnf_v1_12.last_modified.size + 
  nse_nseix_orderentry_nnf_v1_12.reference.size + 
  nse_nseix_orderentry_nnf_v1_12.last_activity_reference.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_24.size

-- Display: Price Modification Message
nse_nseix_orderentry_nnf_v1_12.price_modification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Modification Message
nse_nseix_orderentry_nnf_v1_12.price_modification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token No: LONG
  index, token_no = nse_nseix_orderentry_nnf_v1_12.token_no.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_orderentry_nnf_v1_12.trader_id.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_orderentry_nnf_v1_12.order_number.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_orderentry_nnf_v1_12.buy_sell.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_orderentry_nnf_v1_12.price.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_orderentry_nnf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_orderentry_nnf_v1_12.last_modified.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_orderentry_nnf_v1_12.reference.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_orderentry_nnf_v1_12.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 24: CHAR
  if show.padding then
    index, reserved_24 = nse_nseix_orderentry_nnf_v1_12.reserved_24.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_24.size
  end

  return index
end

-- Dissect: Price Modification Message
nse_nseix_orderentry_nnf_v1_12.price_modification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.price_modification_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.price_modification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.price_modification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.price_modification_message.fields(buffer, offset, packet, parent)
  end
end

-- Kill Switch Request Message
nse_nseix_orderentry_nnf_v1_12.kill_switch_request_message = {}

-- Size: Kill Switch Request Message
nse_nseix_orderentry_nnf_v1_12.kill_switch_request_message.size =
  nse_nseix_orderentry_nnf_v1_12.order_entry_body.size

-- Display: Kill Switch Request Message
nse_nseix_orderentry_nnf_v1_12.kill_switch_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Kill Switch Request Message
nse_nseix_orderentry_nnf_v1_12.kill_switch_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Entry Body: Struct of 48 fields
  index, order_entry_body = nse_nseix_orderentry_nnf_v1_12.order_entry_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Kill Switch Request Message
nse_nseix_orderentry_nnf_v1_12.kill_switch_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.kill_switch_request_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.kill_switch_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.kill_switch_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.kill_switch_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Request Message
nse_nseix_orderentry_nnf_v1_12.order_cancellation_request_message = {}

-- Size: Order Cancellation Request Message
nse_nseix_orderentry_nnf_v1_12.order_cancellation_request_message.size =
  nse_nseix_orderentry_nnf_v1_12.order_entry_body.size

-- Display: Order Cancellation Request Message
nse_nseix_orderentry_nnf_v1_12.order_cancellation_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Request Message
nse_nseix_orderentry_nnf_v1_12.order_cancellation_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Entry Body: Struct of 48 fields
  index, order_entry_body = nse_nseix_orderentry_nnf_v1_12.order_entry_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Request Message
nse_nseix_orderentry_nnf_v1_12.order_cancellation_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_cancellation_request_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.order_cancellation_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.order_cancellation_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.order_cancellation_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification Request Message
nse_nseix_orderentry_nnf_v1_12.order_modification_request_message = {}

-- Size: Order Modification Request Message
nse_nseix_orderentry_nnf_v1_12.order_modification_request_message.size =
  nse_nseix_orderentry_nnf_v1_12.order_entry_body.size

-- Display: Order Modification Request Message
nse_nseix_orderentry_nnf_v1_12.order_modification_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modification Request Message
nse_nseix_orderentry_nnf_v1_12.order_modification_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Entry Body: Struct of 48 fields
  index, order_entry_body = nse_nseix_orderentry_nnf_v1_12.order_entry_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modification Request Message
nse_nseix_orderentry_nnf_v1_12.order_modification_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_modification_request_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.order_modification_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.order_modification_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.order_modification_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Entry Request Message
nse_nseix_orderentry_nnf_v1_12.order_entry_request_message = {}

-- Size: Order Entry Request Message
nse_nseix_orderentry_nnf_v1_12.order_entry_request_message.size =
  nse_nseix_orderentry_nnf_v1_12.order_entry_body.size

-- Display: Order Entry Request Message
nse_nseix_orderentry_nnf_v1_12.order_entry_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Entry Request Message
nse_nseix_orderentry_nnf_v1_12.order_entry_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Entry Body: Struct of 48 fields
  index, order_entry_body = nse_nseix_orderentry_nnf_v1_12.order_entry_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Entry Request Message
nse_nseix_orderentry_nnf_v1_12.order_entry_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.order_entry_request_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.order_entry_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.order_entry_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.order_entry_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Download Request Message
nse_nseix_orderentry_nnf_v1_12.download_request_message = {}

-- Size: Download Request Message
nse_nseix_orderentry_nnf_v1_12.download_request_message.size =
  nse_nseix_orderentry_nnf_v1_12.sequence_number.size

-- Display: Download Request Message
nse_nseix_orderentry_nnf_v1_12.download_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Download Request Message
nse_nseix_orderentry_nnf_v1_12.download_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: DOUBLE
  index, sequence_number = nse_nseix_orderentry_nnf_v1_12.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Download Request Message
nse_nseix_orderentry_nnf_v1_12.download_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.download_request_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.download_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.download_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.download_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Update Local Database In Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_in_message = {}

-- Size: Update Local Database In Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_in_message.size =
  nse_nseix_orderentry_nnf_v1_12.last_update_security_time.size + 
  nse_nseix_orderentry_nnf_v1_12.last_update_participant_time.size + 
  nse_nseix_orderentry_nnf_v1_12.last_update_instrument_time.size + 
  nse_nseix_orderentry_nnf_v1_12.last_update_index_time.size + 
  nse_nseix_orderentry_nnf_v1_12.request_for_open_orders.size + 
  nse_nseix_orderentry_nnf_v1_12.c_filler.size + 
  nse_nseix_orderentry_nnf_v1_12.st_market_status.size + 
  nse_nseix_orderentry_nnf_v1_12.st_ex_market_status.size + 
  nse_nseix_orderentry_nnf_v1_12.st_pl_market_status.size

-- Display: Update Local Database In Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database In Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Security Time: LONG
  index, last_update_security_time = nse_nseix_orderentry_nnf_v1_12.last_update_security_time.dissect(buffer, index, packet, parent)

  -- Last Update Participant Time: LONG
  index, last_update_participant_time = nse_nseix_orderentry_nnf_v1_12.last_update_participant_time.dissect(buffer, index, packet, parent)

  -- Last Update Instrument Time: LONG
  index, last_update_instrument_time = nse_nseix_orderentry_nnf_v1_12.last_update_instrument_time.dissect(buffer, index, packet, parent)

  -- Last Update Index Time: LONG
  index, last_update_index_time = nse_nseix_orderentry_nnf_v1_12.last_update_index_time.dissect(buffer, index, packet, parent)

  -- Request For Open Orders: CHAR
  index, request_for_open_orders = nse_nseix_orderentry_nnf_v1_12.request_for_open_orders.dissect(buffer, index, packet, parent)

  -- C Filler: CHAR
  index, c_filler = nse_nseix_orderentry_nnf_v1_12.c_filler.dissect(buffer, index, packet, parent)

  -- St Market Status: Struct of 4 fields
  index, st_market_status = nse_nseix_orderentry_nnf_v1_12.st_market_status.dissect(buffer, index, packet, parent)

  -- St Ex Market Status: Struct of 4 fields
  index, st_ex_market_status = nse_nseix_orderentry_nnf_v1_12.st_ex_market_status.dissect(buffer, index, packet, parent)

  -- St Pl Market Status: Struct of 4 fields
  index, st_pl_market_status = nse_nseix_orderentry_nnf_v1_12.st_pl_market_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Update Local Database In Message
nse_nseix_orderentry_nnf_v1_12.update_local_database_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.update_local_database_in_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.update_local_database_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.update_local_database_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.update_local_database_in_message.fields(buffer, offset, packet, parent)
  end
end

-- System Information In Message
nse_nseix_orderentry_nnf_v1_12.system_information_in_message = {}

-- Size: System Information In Message
nse_nseix_orderentry_nnf_v1_12.system_information_in_message.size =
  nse_nseix_orderentry_nnf_v1_12.last_update_portfolio_time.size

-- Display: System Information In Message
nse_nseix_orderentry_nnf_v1_12.system_information_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Information In Message
nse_nseix_orderentry_nnf_v1_12.system_information_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Portfolio Time: LONG
  index, last_update_portfolio_time = nse_nseix_orderentry_nnf_v1_12.last_update_portfolio_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Information In Message
nse_nseix_orderentry_nnf_v1_12.system_information_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.system_information_in_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.system_information_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.system_information_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.system_information_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Sign Off Request In Message
nse_nseix_orderentry_nnf_v1_12.sign_off_request_in_message = {}

-- Display: Sign Off Request In Message
nse_nseix_orderentry_nnf_v1_12.sign_off_request_in_message.display = function(packet, parent, length)
  return "Sign Off Request In Message"
end


-- Dissect: Sign Off Request In Message
nse_nseix_orderentry_nnf_v1_12.sign_off_request_in_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseix_orderentry_nnf_v1_12.sign_off_request_in_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Sign On Request In Message
nse_nseix_orderentry_nnf_v1_12.sign_on_request_in_message = {}

-- Size: Sign On Request In Message
nse_nseix_orderentry_nnf_v1_12.sign_on_request_in_message.size =
  nse_nseix_orderentry_nnf_v1_12.user_id.size + 
  nse_nseix_orderentry_nnf_v1_12.password.size + 
  nse_nseix_orderentry_nnf_v1_12.new_password.size + 
  nse_nseix_orderentry_nnf_v1_12.trader_name.size + 
  nse_nseix_orderentry_nnf_v1_12.last_password_change_date.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_id.size + 
  nse_nseix_orderentry_nnf_v1_12.reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.branch_id.size + 
  nse_nseix_orderentry_nnf_v1_12.version_number.size + 
  nse_nseix_orderentry_nnf_v1_12.batch_2_start_time.size + 
  nse_nseix_orderentry_nnf_v1_12.host_switch_context.size + 
  nse_nseix_orderentry_nnf_v1_12.colour.size + 
  nse_nseix_orderentry_nnf_v1_12.second_reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.user_type.size + 
  nse_nseix_orderentry_nnf_v1_12.sequence_number.size + 
  nse_nseix_orderentry_nnf_v1_12.ws_class_name.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_status.size + 
  nse_nseix_orderentry_nnf_v1_12.third_reserved_1.size + 
  nse_nseix_orderentry_nnf_v1_12.st_broker_eligibility_per_mkt.size + 
  nse_nseix_orderentry_nnf_v1_12.member_type.size + 
  nse_nseix_orderentry_nnf_v1_12.clearing_status.size + 
  nse_nseix_orderentry_nnf_v1_12.broker_name.size

-- Display: Sign On Request In Message
nse_nseix_orderentry_nnf_v1_12.sign_on_request_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sign On Request In Message
nse_nseix_orderentry_nnf_v1_12.sign_on_request_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_orderentry_nnf_v1_12.user_id.dissect(buffer, index, packet, parent)

  -- Password: CHAR
  index, password = nse_nseix_orderentry_nnf_v1_12.password.dissect(buffer, index, packet, parent)

  -- New Password: CHAR
  index, new_password = nse_nseix_orderentry_nnf_v1_12.new_password.dissect(buffer, index, packet, parent)

  -- Trader Name: CHAR
  index, trader_name = nse_nseix_orderentry_nnf_v1_12.trader_name.dissect(buffer, index, packet, parent)

  -- Last Password Change Date: LONG
  index, last_password_change_date = nse_nseix_orderentry_nnf_v1_12.last_password_change_date.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_orderentry_nnf_v1_12.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: BYTE
  if show.padding then
    index, reserved_1 = nse_nseix_orderentry_nnf_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.reserved_1.size
  end

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_orderentry_nnf_v1_12.branch_id.dissect(buffer, index, packet, parent)

  -- Version Number: LONG
  index, version_number = nse_nseix_orderentry_nnf_v1_12.version_number.dissect(buffer, index, packet, parent)

  -- Batch 2 Start Time: LONG
  index, batch_2_start_time = nse_nseix_orderentry_nnf_v1_12.batch_2_start_time.dissect(buffer, index, packet, parent)

  -- Host Switch Context: CHAR
  index, host_switch_context = nse_nseix_orderentry_nnf_v1_12.host_switch_context.dissect(buffer, index, packet, parent)

  -- Colour: CHAR
  index, colour = nse_nseix_orderentry_nnf_v1_12.colour.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: BYTE
  if show.padding then
    index, second_reserved_1 = nse_nseix_orderentry_nnf_v1_12.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.second_reserved_1.size
  end

  -- User Type: SHORT
  index, user_type = nse_nseix_orderentry_nnf_v1_12.user_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: DOUBLE
  index, sequence_number = nse_nseix_orderentry_nnf_v1_12.sequence_number.dissect(buffer, index, packet, parent)

  -- Ws Class Name: CHAR
  index, ws_class_name = nse_nseix_orderentry_nnf_v1_12.ws_class_name.dissect(buffer, index, packet, parent)

  -- Broker Status: CHAR
  index, broker_status = nse_nseix_orderentry_nnf_v1_12.broker_status.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: BYTE
  if show.padding then
    index, third_reserved_1 = nse_nseix_orderentry_nnf_v1_12.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_orderentry_nnf_v1_12.third_reserved_1.size
  end

  -- St Broker Eligibility Per Mkt: Struct of 8 fields
  index, st_broker_eligibility_per_mkt = nse_nseix_orderentry_nnf_v1_12.st_broker_eligibility_per_mkt.dissect(buffer, index, packet, parent)

  -- Member Type: SHORT
  index, member_type = nse_nseix_orderentry_nnf_v1_12.member_type.dissect(buffer, index, packet, parent)

  -- Clearing Status: CHAR
  index, clearing_status = nse_nseix_orderentry_nnf_v1_12.clearing_status.dissect(buffer, index, packet, parent)

  -- Broker Name: CHAR
  index, broker_name = nse_nseix_orderentry_nnf_v1_12.broker_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sign On Request In Message
nse_nseix_orderentry_nnf_v1_12.sign_on_request_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.sign_on_request_in_message, buffer(offset, 0))
    local index = nse_nseix_orderentry_nnf_v1_12.sign_on_request_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_orderentry_nnf_v1_12.sign_on_request_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_orderentry_nnf_v1_12.sign_on_request_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Message Payload
nse_nseix_orderentry_nnf_v1_12.client_message_payload = {}

-- Dispatch: Client Message Payload
nse_nseix_orderentry_nnf_v1_12.client_message_payload.dispatch = {
  [2300] = nse_nseix_orderentry_nnf_v1_12.sign_on_request_in_message.dissect,
  [5584] = nse_nseix_orderentry_nnf_v1_12.sign_on_request_in_message.dissect,
  [2320] = nse_nseix_orderentry_nnf_v1_12.sign_off_request_in_message.dissect,
  [1600] = nse_nseix_orderentry_nnf_v1_12.system_information_in_message.dissect,
  [7300] = nse_nseix_orderentry_nnf_v1_12.update_local_database_in_message.dissect,
  [7000] = nse_nseix_orderentry_nnf_v1_12.download_request_message.dissect,
  [2000] = nse_nseix_orderentry_nnf_v1_12.order_entry_request_message.dissect,
  [2082] = nse_nseix_orderentry_nnf_v1_12.order_entry_request_message.dissect,
  [2040] = nse_nseix_orderentry_nnf_v1_12.order_modification_request_message.dissect,
  [2084] = nse_nseix_orderentry_nnf_v1_12.order_modification_request_message.dissect,
  [2070] = nse_nseix_orderentry_nnf_v1_12.order_cancellation_request_message.dissect,
  [2086] = nse_nseix_orderentry_nnf_v1_12.order_cancellation_request_message.dissect,
  [2062] = nse_nseix_orderentry_nnf_v1_12.kill_switch_request_message.dissect,
  [2013] = nse_nseix_orderentry_nnf_v1_12.price_modification_message.dissect,
  [5440] = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_message.dissect,
  [5445] = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_message.dissect,
  [5448] = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_message.dissect,
  [5451] = nse_nseix_orderentry_nnf_v1_12.trade_inquiry_message.dissect,
  [2100] = nse_nseix_orderentry_nnf_v1_12.spread_order_entry_request_message.dissect,
  [2102] = nse_nseix_orderentry_nnf_v1_12.spread_order_entry_request_message.dissect,
  [2104] = nse_nseix_orderentry_nnf_v1_12.spread_order_entry_request_message.dissect,
  [2106] = nse_nseix_orderentry_nnf_v1_12.spread_order_entry_request_message.dissect,
  [2118] = nse_nseix_orderentry_nnf_v1_12.spread_order_entry_request_message.dissect,
  [1684] = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_request_message.dissect,
  [1686] = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_request_message.dissect,
  [1688] = nse_nseix_orderentry_nnf_v1_12.mba_inquiry_request_message.dissect,
  [2400] = nse_nseix_orderentry_nnf_v1_12.gateway_router_request_message.dissect,
  [23008] = nse_nseix_orderentry_nnf_v1_12.secure_box_registration_request_in_message.dissect,
  [23000] = nse_nseix_orderentry_nnf_v1_12.box_sign_on_request_in_message.dissect,
  [23506] = nse_nseix_orderentry_nnf_v1_12.heartbeat_message.dissect,
  [5716] = nse_nseix_orderentry_nnf_v1_12.branch_order_value_limit_update_request_message.dissect,
  [5730] = nse_nseix_orderentry_nnf_v1_12.user_order_value_limit_update_message.dissect,
  [5732] = nse_nseix_orderentry_nnf_v1_12.normal_order_limit_update_message.dissect,
  [5771] = nse_nseix_orderentry_nnf_v1_12.normal_order_limit_update_message.dissect,
  [5740] = nse_nseix_orderentry_nnf_v1_12.reset_user_password_message.dissect,
  [5744] = nse_nseix_orderentry_nnf_v1_12.collateral_user_status_change_request_message.dissect,
  [5738] = nse_nseix_orderentry_nnf_v1_12.user_trade_modify_cancel_status_change_request_message.dissect,
  [5427] = nse_nseix_orderentry_nnf_v1_12.user_address_unlock_request_message.dissect,
  [1242] = nse_nseix_orderentry_nnf_v1_12.nlt_order_inquiry_request_message.dissect,
}

-- Dissect: Client Message Payload
nse_nseix_orderentry_nnf_v1_12.client_message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nseix_orderentry_nnf_v1_12.client_message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Message
nse_nseix_orderentry_nnf_v1_12.client_message = {}

-- Display: Client Message
nse_nseix_orderentry_nnf_v1_12.client_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Message
nse_nseix_orderentry_nnf_v1_12.client_message.fields = function(buffer, offset, packet, parent, size_of_client_message)
  local index = offset

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nseix_orderentry_nnf_v1_12.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 40, 2):int()

  -- Client Message Payload: Runtime Type with 25 branches
  index = nse_nseix_orderentry_nnf_v1_12.client_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Client Message
nse_nseix_orderentry_nnf_v1_12.client_message.dissect = function(buffer, offset, packet, parent, size_of_client_message)
  local index = offset + size_of_client_message

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nseix_orderentry_nnf_v1_12.fields.client_message, buffer(offset, 0))
    local decoded, failure = pcall(nse_nseix_orderentry_nnf_v1_12.client_message.fields, bounded, offset, packet, parent, size_of_client_message)
    if not decoded then
      undecoded(failure, parent, nse_nseix_orderentry_nnf_v1_12.experts.undecoded, "Client Message does not decode within its "..size_of_client_message.." bytes")
    end
    parent:set_len(size_of_client_message)
    local display = nse_nseix_orderentry_nnf_v1_12.client_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(nse_nseix_orderentry_nnf_v1_12.client_message.fields, bounded, offset, packet, parent, size_of_client_message)
    if not decoded then
      undecoded(failure, parent, nse_nseix_orderentry_nnf_v1_12.experts.undecoded, "Client Message does not decode within its "..size_of_client_message.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Client Message
local client_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nseix_orderentry_nnf_v1_12.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 38, 2):int()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
nse_nseix_orderentry_nnf_v1_12.client_packet = {}

-- Verify required size of Tcp packet
nse_nseix_orderentry_nnf_v1_12.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nseix_orderentry_nnf_v1_12.message_header.size
end

-- Dissect Client Packet
nse_nseix_orderentry_nnf_v1_12.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Message
  local end_of_payload = buffer:len()

  -- Client Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_message = client_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_message):tvb()
      index = nse_nseix_orderentry_nnf_v1_12.client_message.dissect(frame, index, packet, parent, size_of_client_message)
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
function omi_nse_nseix_orderentry_nnf_v1_12.init()
end

-- Connection roles for Nse NseIx OrderEntry Nnf 1.12: Client is the initiator, Server is the acceptor
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
nse_nseix_orderentry_nnf_v1_12.role = function(packet)
  if omi_nse_nseix_orderentry_nnf_v1_12.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nse_nseix_orderentry_nnf_v1_12.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nse_nseix_orderentry_nnf_v1_12.prefs.acceptor_port

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

  if omi_nse_nseix_orderentry_nnf_v1_12.prefs.swap_sides then
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
nse_nseix_orderentry_nnf_v1_12.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nse NseIx OrderEntry Nnf 1.12
function omi_nse_nseix_orderentry_nnf_v1_12.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nseix_orderentry_nnf_v1_12.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nseix_orderentry_nnf_v1_12, buffer(), omi_nse_nseix_orderentry_nnf_v1_12.description, "("..buffer:len().." Bytes)")
  local role = nse_nseix_orderentry_nnf_v1_12.role(packet)

  if role == "initiator" then
    return nse_nseix_orderentry_nnf_v1_12.client_packet.dissect(buffer, packet, protocol)
  end

  return nse_nseix_orderentry_nnf_v1_12.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nse_nseix_orderentry_nnf_v1_12.client_packet.fingerprint = function(buffer)
  if buffer:len() < 2 then
    return false
  end

  local transaction_code = buffer(0, 2):int()

  -- Sign On Request In Message
  if transaction_code == 2300 then
    return true
  end

  -- Sign On Request In Message
  if transaction_code == 5584 then
    return true
  end

  -- Sign Off Request In Message
  if transaction_code == 2320 then
    return true
  end

  -- System Information In Message
  if transaction_code == 1600 then
    return true
  end

  -- Update Local Database In Message
  if transaction_code == 7300 then
    return true
  end

  -- Download Request Message
  if transaction_code == 7000 then
    return true
  end

  -- Order Entry Request Message
  if transaction_code == 2000 then
    return true
  end

  -- Order Entry Request Message
  if transaction_code == 2082 then
    return true
  end

  -- Order Modification Request Message
  if transaction_code == 2040 then
    return true
  end

  -- Order Modification Request Message
  if transaction_code == 2084 then
    return true
  end

  -- Order Cancellation Request Message
  if transaction_code == 2070 then
    return true
  end

  -- Order Cancellation Request Message
  if transaction_code == 2086 then
    return true
  end

  -- Kill Switch Request Message
  if transaction_code == 2062 then
    return true
  end

  -- Price Modification Message
  if transaction_code == 2013 then
    return true
  end

  -- Trade Inquiry Message
  if transaction_code == 5440 then
    return true
  end

  -- Trade Inquiry Message
  if transaction_code == 5445 then
    return true
  end

  -- Trade Inquiry Message
  if transaction_code == 5448 then
    return true
  end

  -- Trade Inquiry Message
  if transaction_code == 5451 then
    return true
  end

  -- Spread Order Entry Request Message
  if transaction_code == 2100 then
    return true
  end

  -- Spread Order Entry Request Message
  if transaction_code == 2102 then
    return true
  end

  -- Spread Order Entry Request Message
  if transaction_code == 2104 then
    return true
  end

  -- Spread Order Entry Request Message
  if transaction_code == 2106 then
    return true
  end

  -- Spread Order Entry Request Message
  if transaction_code == 2118 then
    return true
  end

  -- Mba Inquiry Request Message
  if transaction_code == 1684 then
    return true
  end

  -- Mba Inquiry Request Message
  if transaction_code == 1686 then
    return true
  end

  -- Mba Inquiry Request Message
  if transaction_code == 1688 then
    return true
  end

  -- Gateway Router Request Message
  if transaction_code == 2400 then
    return true
  end

  -- Secure Box Registration Request In Message
  if transaction_code == 23008 then
    return true
  end

  -- Box Sign On Request In Message
  if transaction_code == 23000 then
    return true
  end

  -- Heartbeat Message
  if transaction_code == 23506 then
    return true
  end

  -- Branch Order Value Limit Update Request Message
  if transaction_code == 5716 then
    return true
  end

  -- User Order Value Limit Update Message
  if transaction_code == 5730 then
    return true
  end

  -- Normal Order Limit Update Message
  if transaction_code == 5732 then
    return true
  end

  -- Normal Order Limit Update Message
  if transaction_code == 5771 then
    return true
  end

  -- Reset User Password Message
  if transaction_code == 5740 then
    return true
  end

  -- Collateral User Status Change Request Message
  if transaction_code == 5744 then
    return true
  end

  -- User Trade Modify Cancel Status Change Request Message
  if transaction_code == 5738 then
    return true
  end

  -- User Address Unlock Request Message
  if transaction_code == 5427 then
    return true
  end

  -- Nlt Order Inquiry Request Message
  if transaction_code == 1242 then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nse_nseix_orderentry_nnf_v1_12.server_packet.fingerprint = function(buffer)
  if buffer:len() < 2 then
    return false
  end

  local transaction_code = buffer(0, 2):int()

  -- Sign On Request Out Message: carries the application messages, which tell this protocol from others sharing the session framing
  if transaction_code == 2301 then
    if buffer:len() < 40 then
      return false
    end

    local message_length = buffer(38, 2):int()

    -- Sign On Out Body
    if message_length == 214 then
      return true
    end

    -- Error Response Body
    if message_length == 182 then
      return true
    end

    return false
  end

  -- Sign On Request Out Message: carries the application messages, which tell this protocol from others sharing the session framing
  if transaction_code == 5585 then
    if buffer:len() < 40 then
      return false
    end

    local message_length = buffer(38, 2):int()

    -- Sign On Out Body
    if message_length == 214 then
      return true
    end

    -- Error Response Body
    if message_length == 182 then
      return true
    end

    return false
  end

  -- Sign Off Request Out Message
  if transaction_code == 2321 then
    return true
  end

  -- System Information Out Message
  if transaction_code == 1601 then
    return true
  end

  -- System Information Out Message
  if transaction_code == 7321 then
    return true
  end

  -- Update Local Database Header Message
  if transaction_code == 7307 then
    return true
  end

  -- Update Local Database Trailer Message
  if transaction_code == 7308 then
    return true
  end

  -- Update Local Database Data Message
  if transaction_code == 7304 then
    return true
  end

  -- Header Record Message
  if transaction_code == 7011 then
    return true
  end

  -- Message Record Message
  if transaction_code == 7021 then
    return true
  end

  -- Trailer Record Message
  if transaction_code == 7031 then
    return true
  end

  -- Order Confirmation Message
  if transaction_code == 2073 then
    return true
  end

  -- Order Confirmation Message
  if transaction_code == 2083 then
    return true
  end

  -- Order Modification Confirmation Message
  if transaction_code == 2074 then
    return true
  end

  -- Order Modification Confirmation Message
  if transaction_code == 2085 then
    return true
  end

  -- Order Response Message
  if transaction_code == 2001 then
    return true
  end

  -- Order Response Message
  if transaction_code == 2012 then
    return true
  end

  -- Order Response Message
  if transaction_code == 2041 then
    return true
  end

  -- Order Response Message
  if transaction_code == 2042 then
    return true
  end

  -- Order Response Message
  if transaction_code == 2071 then
    return true
  end

  -- Order Response Message
  if transaction_code == 2072 then
    return true
  end

  -- Order Response Message
  if transaction_code == 2087 then
    return true
  end

  -- Order Response Message
  if transaction_code == 2088 then
    return true
  end

  -- Order Response Message
  if transaction_code == 2089 then
    return true
  end

  -- Order Response Message
  if transaction_code == 2170 then
    return true
  end

  -- Order Response Message
  if transaction_code == 2231 then
    return true
  end

  -- Order Response Message
  if transaction_code == 9002 then
    return true
  end

  -- Order Response Message
  if transaction_code == 27100 then
    return true
  end

  -- Order Cancellation Confirmation Message: carries the application messages, which tell this protocol from others sharing the session framing
  if transaction_code == 2075 then
    if buffer:len() < 40 then
      return false
    end

    local message_length = buffer(38, 2):int()

    -- Order Entry Body
    if message_length == 316 then
      return true
    end

    -- Spread Order Body
    if message_length == 480 then
      return true
    end

    return false
  end

  -- Trade Inquiry Response Message
  if transaction_code == 2223 then
    return true
  end

  -- Trade Inquiry Response Message
  if transaction_code == 2288 then
    return true
  end

  -- Trade Inquiry Response Message
  if transaction_code == 5441 then
    return true
  end

  -- Trade Inquiry Response Message
  if transaction_code == 5450 then
    return true
  end

  -- Trade Inquiry Response Message
  if transaction_code == 5452 then
    return true
  end

  -- Trade Inquiry Response Message
  if transaction_code == 5453 then
    return true
  end

  -- Trade Confirmation Message
  if transaction_code == 2090 then
    return true
  end

  -- Trade Confirmation Message
  if transaction_code == 2212 then
    return true
  end

  -- Trade Confirmation Message
  if transaction_code == 2222 then
    return true
  end

  -- Trade Confirmation Message
  if transaction_code == 2282 then
    return true
  end

  -- Trade Confirmation Message
  if transaction_code == 2286 then
    return true
  end

  -- Trade Confirmation Message
  if transaction_code == 2287 then
    return true
  end

  -- Trade Confirmation Message
  if transaction_code == 5449 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2101 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2103 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2105 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2107 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2119 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2124 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2125 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2126 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2127 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2130 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2131 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2132 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2133 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2136 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2154 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2155 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 2156 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 9004 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 27102 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 27103 then
    return true
  end

  -- Spread Order Response Message
  if transaction_code == 27104 then
    return true
  end

  -- User Order Limit Update Message: carries the application messages, which tell this protocol from others sharing the session framing
  if transaction_code == 5731 then
    if buffer:len() < 40 then
      return false
    end

    local message_length = buffer(38, 2):int()

    -- User Order Limit Body
    if message_length == 206 then
      return true
    end

    -- User Order Value Limit Body
    if message_length == 208 then
      return true
    end

    -- Error Response Body
    if message_length == 182 then
      return true
    end

    return false
  end

  -- Dealer Limit Update Message
  if transaction_code == 5733 then
    return true
  end

  -- Spread Order Limit Update Message
  if transaction_code == 5772 then
    return true
  end

  -- Control Message To Trader Message
  if transaction_code == 5295 then
    return true
  end

  -- Mba Inquiry Response Message
  if transaction_code == 1685 then
    return true
  end

  -- Mba Inquiry Response Message
  if transaction_code == 1687 then
    return true
  end

  -- Mba Inquiry Response Message
  if transaction_code == 1689 then
    return true
  end

  -- Market Statistics Report Message: carries the application messages, which tell this protocol from others sharing the session framing
  if transaction_code == 1833 then
    if buffer:len() < 41 then
      return false
    end

    local message_type = buffer(40, 1):string()

    -- Report Header Body
    if message_type == "H" then
      return true
    end

    -- Report Statistics Body
    if message_type == "R" then
      return true
    end

    -- Report Trailer Body
    if message_type == "T" then
      return true
    end

    return false
  end

  -- Spread Bhavcopy Message: carries the application messages, which tell this protocol from others sharing the session framing
  if transaction_code == 6502 then
    if buffer:len() < 41 then
      return false
    end

    local message_type = buffer(40, 1):string()

    -- Spread Report Header Body
    if message_type == "H" then
      return true
    end

    -- Spread Report Statistics Body
    if message_type == "R" then
      return true
    end

    -- Report Trailer Body
    if message_type == "T" then
      return true
    end

    return false
  end

  -- Giveup Confirmation Message
  if transaction_code == 4506 then
    return true
  end

  -- Giveup Confirmation Message
  if transaction_code == 4507 then
    return true
  end

  -- Gateway Router Response Message
  if transaction_code == 2401 then
    return true
  end

  -- Secure Box Registration Response Out Message
  if transaction_code == 23009 then
    return true
  end

  -- Box Sign On Request Out Message
  if transaction_code == 23001 then
    return true
  end

  -- Box Sign Off Message
  if transaction_code == 20322 then
    return true
  end

  -- Contingency Broadcast Message
  if transaction_code == 5294 then
    return true
  end

  -- Branch Order Value Limit Update Response Message: carries the application messages, which tell this protocol from others sharing the session framing
  if transaction_code == 5717 then
    if buffer:len() < 40 then
      return false
    end

    local message_length = buffer(38, 2):int()

    -- Branch Order Value Limit Body
    if message_length == 136 then
      return true
    end

    -- Error Response Body
    if message_length == 182 then
      return true
    end

    return false
  end

  -- Reset User Password Response Message
  if transaction_code == 5741 then
    return true
  end

  -- Collateral User Status Change Response Message
  if transaction_code == 5745 then
    return true
  end

  -- User Trade Modify Cancel Status Change Response Message
  if transaction_code == 5739 then
    return true
  end

  -- User Address Unlock Confirm Message
  if transaction_code == 5428 then
    return true
  end

  -- User Address Unlock Approve Message
  if transaction_code == 5483 then
    return true
  end

  -- User Address Unlock Approve Message
  if transaction_code == 5484 then
    return true
  end

  -- Nlt Order Message To Trader Message
  if transaction_code == 2093 then
    return true
  end

  -- Nlt Order Inquiry Response Message
  if transaction_code == 1243 then
    return true
  end

  -- Nlt Trailer Record Message
  if transaction_code == 7032 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseIx OrderEntry Nnf 1.12 (Tcp)
local function omi_nse_nseix_orderentry_nnf_v1_12_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nseix_orderentry_nnf_v1_12.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nse_nseix_orderentry_nnf_v1_12.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nseix_orderentry_nnf_v1_12
  omi_nse_nseix_orderentry_nnf_v1_12.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseIx OrderEntry Nnf 1.12 (Tcp)
local function omi_nse_nseix_orderentry_nnf_v1_12_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nseix_orderentry_nnf_v1_12.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nse_nseix_orderentry_nnf_v1_12.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nseix_orderentry_nnf_v1_12
  omi_nse_nseix_orderentry_nnf_v1_12.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseIx OrderEntry Nnf 1.12 (Tcp): apply the heuristic of the sender's connection role
local function omi_nse_nseix_orderentry_nnf_v1_12_tcp_heuristic(buffer, packet, parent)
  local role = nse_nseix_orderentry_nnf_v1_12.role(packet)
  local initiator = omi_nse_nseix_orderentry_nnf_v1_12_tcp_initiator_heuristic
  local acceptor = omi_nse_nseix_orderentry_nnf_v1_12_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nse_nseix_orderentry_nnf_v1_12.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nse_nseix_orderentry_nnf_v1_12.swap(packet)

  return false
end

-- Register Heuristics for Nse NseIx OrderEntry Nnf 1.12
omi_nse_nseix_orderentry_nnf_v1_12:register_heuristic("tcp", omi_nse_nseix_orderentry_nnf_v1_12_tcp_heuristic)

-- Register Nse NseIx OrderEntry Nnf 1.12 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nse_nseix_orderentry_nnf_v1_12)

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
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
