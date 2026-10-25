-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseCm OrderEntry NnfDirect 6.6 Protocol
local omi_nse_nsecm_orderentry_nnfdirect_v6_6 = Proto("Omi.Nse.NseCm.OrderEntry.NnfDirect.v6.6", "Nse NseCm OrderEntry NnfDirect 6.6")

-- Protocol table
local nse_nsecm_orderentry_nnfdirect_v6_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseCm OrderEntry NnfDirect 6.6 Fields
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.account_num = ProtoField.new("Account Num", "nse.nsecm.orderentry.nnfdirect.v6.6.accountnum", ftypes.STRING, nil, nil, nil, "This field contains the Account Number or Client code")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.account_number = ProtoField.new("Account Number", "nse.nsecm.orderentry.nnfdirect.v6.6.accountnumber", ftypes.STRING, nil, nil, nil, "If the order is entered on behalf of a trader, the trader account number should be specified in this field")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.action_code = ProtoField.new("Action Code", "nse.nsecm.orderentry.nnfdirect.v6.6.actioncode", ftypes.STRING, nil, nil, nil, "This field contains the action code to indicate the action taken")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.activity_time = ProtoField.new("Activity Time", "nse.nsecm.orderentry.nnfdirect.v6.6.activitytime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "This field contains the time when the activity took place")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.activity_time_utc = ProtoField.new("Activity Time", "nse.nsecm.orderentry.nnfdirect.v6.6.activitytime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "This field contains the time when the activity took place")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.activity_type = ProtoField.new("Activity Type", "nse.nsecm.orderentry.nnfdirect.v6.6.activitytype", ftypes.STRING, nil, nil, nil, "This field contains the activity type")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.agm = ProtoField.new("Agm", "nse.nsecm.orderentry.nnfdirect.v6.6.agm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08, "Annual general meeting")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.algo_id = ProtoField.new("Algo Id", "nse.nsecm.orderentry.nnfdirect.v6.6.algoid", ftypes.INT32, nil, nil, nil, "For Algo order this field shall contain the Algo ID issued by the exchange")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.alpha_char = ProtoField.new("Alpha Char", "nse.nsecm.orderentry.nnfdirect.v6.6.alphachar", ftypes.STRING, nil, nil, nil, "First two characters of Symbol when the message carries one")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.aon = ProtoField.new("Aon", "nse.nsecm.orderentry.nnfdirect.v6.6.aon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200, "All or none order")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.ato = ProtoField.new("Ato", "nse.nsecm.orderentry.nnfdirect.v6.6.ato", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "At the open order")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auctioin_price = ProtoField.new("Auctioin Price", "nse.nsecm.orderentry.nnfdirect.v6.6.auctioinprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the auction matched, in paise, which the document spells AuctioinPrice")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction = ProtoField.new("Auction", "nse.nsecm.orderentry.nnfdirect.v6.6.auction", ftypes.INT16, nil, nil, nil, "Market ATO output, set if Market order, value of order price returned is ‘0’")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_market = ProtoField.new("Auction Market", "nse.nsecm.orderentry.nnfdirect.v6.6.auctionmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000, "Broker is eligible to trade in the auction market")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_market_status = ProtoField.new("Auction Market Status", "nse.nsecm.orderentry.nnfdirect.v6.6.auctionmarketstatus", ftypes.INT16, nil, nil, nil, "This field should contain the latest Auction Market status available at TWS")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_no = ProtoField.new("Auction No", "nse.nsecm.orderentry.nnfdirect.v6.6.auctionno", ftypes.INT16, nil, nil, nil, "This field should contain the auction number")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_number = ProtoField.new("Auction Number", "nse.nsecm.orderentry.nnfdirect.v6.6.auctionnumber", ftypes.INT16, nil, nil, nil, "Auction number is available when initiation of auction is broadcast (Auction Status Change Broadcast)")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_quantity = ProtoField.new("Auction Quantity", "nse.nsecm.orderentry.nnfdirect.v6.6.auctionquantity", ftypes.INT32, nil, nil, nil, "Quantity the auction matched")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_status = ProtoField.new("Auction Status", "nse.nsecm.orderentry.nnfdirect.v6.6.auctionstatus", ftypes.INT16, nil, nil, nil, "Status of the auction")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.best_buy_price = ProtoField.new("Best Buy Price", "nse.nsecm.orderentry.nnfdirect.v6.6.bestbuyprice", ftypes.DOUBLE, nil, nil, nil, "Best buy price in the auction, in paise")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.best_sell_price = ProtoField.new("Best Sell Price", "nse.nsecm.orderentry.nnfdirect.v6.6.bestsellprice", ftypes.DOUBLE, nil, nil, nil, "Best sell price in the auction, in paise")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.board_lot_quantity = ProtoField.new("Board Lot Quantity", "nse.nsecm.orderentry.nnfdirect.v6.6.boardlotquantity", ftypes.INT32, nil, nil, nil, "This field contains the board lot quantity")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.bonus = ProtoField.new("Bonus", "nse.nsecm.orderentry.nnfdirect.v6.6.bonus", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.book_closure_end_date = ProtoField.new("Book Closure End Date", "nse.nsecm.orderentry.nnfdirect.v6.6.bookclosureenddate", ftypes.INT32, nil, nil, nil, "This field contains the date when the record books in the company for shareholder names ends")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.book_closure_start_date = ProtoField.new("Book Closure Start Date", "nse.nsecm.orderentry.nnfdirect.v6.6.bookclosurestartdate", ftypes.INT32, nil, nil, nil, "This field contains the date when the record books in the company for shareholder names starts")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.book_type = ProtoField.new("Book Type", "nse.nsecm.orderentry.nnfdirect.v6.6.booktype", ftypes.INT16, nil, nil, nil, "This field should contain the type of order")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.books_merged = ProtoField.new("Books Merged", "nse.nsecm.orderentry.nnfdirect.v6.6.booksmerged", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20, "Books of the security are merged")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.box_id = ProtoField.new("Box Id", "nse.nsecm.orderentry.nnfdirect.v6.6.boxid", ftypes.INT16, nil, nil, nil, "Exchange provided Box ID to be used for this connection 165 SECURE_BOX_REGISTRATION_RESPONSE Exchange provided Box ID to be used for this connection 166 Exchange provided Box ID used for this connection Exchange provided Box ID used for this connection 170")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.branch = ProtoField.new("Branch", "nse.nsecm.orderentry.nnfdirect.v6.6.branch", ftypes.INT16, nil, nil, nil, "This field should contain the branch number for which limit to be set This field should contain the branch number of user for which limit to be set 7")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.branch_buy_value_limit = ProtoField.new("Branch Buy Value Limit", "nse.nsecm.orderentry.nnfdirect.v6.6.branchbuyvaluelimit", ftypes.DOUBLE, nil, nil, nil, "Buy value limit set for the branch")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.branch_id = ProtoField.new("Branch Id", "nse.nsecm.orderentry.nnfdirect.v6.6.branchid", ftypes.INT16, nil, nil, nil, "This field should contain the Branch ID to which the broker belongs")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.branch_limit = ProtoField.new("Branch Limit", "nse.nsecm.orderentry.nnfdirect.v6.6.branchlimit", ftypes.STRING, nil, nil, nil, "BRANCH_LIMIT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.branch_sell_value_limit = ProtoField.new("Branch Sell Value Limit", "nse.nsecm.orderentry.nnfdirect.v6.6.branchsellvaluelimit", ftypes.DOUBLE, nil, nil, nil, "Sell value limit set for the branch")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.broker_eligibility_per_market = ProtoField.new("Broker Eligibility Per Market", "nse.nsecm.orderentry.nnfdirect.v6.6.brokereligibilitypermarket", ftypes.STRING, nil, nil, nil, "Flags packed into 2 bytes")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.broker_eligibility_reserved_lower = ProtoField.new("Broker Eligibility Reserved Lower", "nse.nsecm.orderentry.nnfdirect.v6.6.brokereligibilityreservedlower", ftypes.UINT16, nil, base.DEC, 0x0300, "Reserved")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.broker_eligibility_reserved_upper = ProtoField.new("Broker Eligibility Reserved Upper", "nse.nsecm.orderentry.nnfdirect.v6.6.brokereligibilityreservedupper", ftypes.UINT16, nil, base.DEC, 0x00FE, "Reserved")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.broker_id = ProtoField.new("Broker Id", "nse.nsecm.orderentry.nnfdirect.v6.6.brokerid", ftypes.STRING, nil, nil, nil, "This field should contain the trading member ID")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.broker_name = ProtoField.new("Broker Name", "nse.nsecm.orderentry.nnfdirect.v6.6.brokername", ftypes.STRING, nil, nil, nil, "This field should be set to blank This field contains the broker’s name (trading member name)")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.broker_status = ProtoField.new("Broker Status", "nse.nsecm.orderentry.nnfdirect.v6.6.brokerstatus", ftypes.STRING, nil, nil, nil, "This field should be set to blank")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.buy_account_number = ProtoField.new("Buy Account Number", "nse.nsecm.orderentry.nnfdirect.v6.6.buyaccountnumber", ftypes.STRING, nil, nil, nil, "This field should contain the Account Number of the trade on Buy side")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.buy_broker_id = ProtoField.new("Buy Broker Id", "nse.nsecm.orderentry.nnfdirect.v6.6.buybrokerid", ftypes.STRING)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.buy_pan = ProtoField.new("Buy Pan", "nse.nsecm.orderentry.nnfdirect.v6.6.buypan", ftypes.STRING, nil, nil, nil, "This field shall contain the PAN (Permanent Account Number/PAN_EXEMPT)")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.buy_sell = ProtoField.new("Buy Sell", "nse.nsecm.orderentry.nnfdirect.v6.6.buysell", ftypes.INT16, nil, nil, nil, "This field should specify whether the order is a buy or sell")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.call_auction_1_flag = ProtoField.new("Call Auction 1 Flag", "nse.nsecm.orderentry.nnfdirect.v6.6.callauction1flag", ftypes.INT16, nil, nil, nil, "Call Auction1 Flag")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.call_auction_1_market_status = ProtoField.new("Call Auction 1 Market Status", "nse.nsecm.orderentry.nnfdirect.v6.6.callauction1marketstatus", ftypes.INT16, nil, nil, nil, "Call Auction1 Market Status")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.call_auction_1_short_2 = ProtoField.new("Call Auction 1 Short 2", "nse.nsecm.orderentry.nnfdirect.v6.6.callauction1short2", ftypes.INT16, nil, nil, nil, "11 Call auction1 market 219")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.call_auction_11 = ProtoField.new("Call Auction 11", "nse.nsecm.orderentry.nnfdirect.v6.6.callauction11", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800, "Broker is eligible to trade in the first call auction market")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.call_auction_2_market_status = ProtoField.new("Call Auction 2 Market Status", "nse.nsecm.orderentry.nnfdirect.v6.6.callauction2marketstatus", ftypes.INT16, nil, nil, nil, "Call Auction2 Market Status")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.call_auction_2_short_2 = ProtoField.new("Call Auction 2 Short 2", "nse.nsecm.orderentry.nnfdirect.v6.6.callauction2short2", ftypes.INT16, nil, nil, nil, "12 Call auction2 market")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.call_auction_21 = ProtoField.new("Call Auction 21", "nse.nsecm.orderentry.nnfdirect.v6.6.callauction21", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400, "Broker is eligible to trade in the second call auction market")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.checksum = ProtoField.new("Checksum", "nse.nsecm.orderentry.nnfdirect.v6.6.checksum", ftypes.BYTES, nil, nil, nil, "Md5 digest of the message data, or the Gcm authentication tag under the new encryption")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.colo_user_bit = ProtoField.new("Colo User Bit", "nse.nsecm.orderentry.nnfdirect.v6.6.colouserbit", ftypes.STRING, nil, nil, nil, "This field should contain user’s COL status to be set")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.competitor_period = ProtoField.new("Competitor Period", "nse.nsecm.orderentry.nnfdirect.v6.6.competitorperiod", ftypes.INT16, nil, nil, nil, "This field contains the default competitor period for auction")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.credit_rating = ProtoField.new("Credit Rating", "nse.nsecm.orderentry.nnfdirect.v6.6.creditrating", ftypes.STRING, nil, nil, nil, "This field contains daily price range of the security")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.cryptographic_additional_key = ProtoField.new("Cryptographic Additional Key", "nse.nsecm.orderentry.nnfdirect.v6.6.cryptographicadditionalkey", ftypes.STRING, nil, nil, nil, "Additional key the new encryption authenticates with")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.cryptographic_iv = ProtoField.new("Cryptographic Iv", "nse.nsecm.orderentry.nnfdirect.v6.6.cryptographiciv", ftypes.STRING, nil, nil, nil, "Initialisation vector for encryption and decryption with the gateway")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.cryptographic_key = ProtoField.new("Cryptographic Key", "nse.nsecm.orderentry.nnfdirect.v6.6.cryptographickey", ftypes.STRING, nil, nil, nil, "Cryptographic key for both the encryption and decryption of all messages between member application and allocated Gateway Server")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.cryptographic_tail = ProtoField.new("Cryptographic Tail", "nse.nsecm.orderentry.nnfdirect.v6.6.cryptographictail", ftypes.STRING, nil, nil, nil, "Initialisation vectors, layout selected by Message Length")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.data_payload = ProtoField.new("Data Payload", "nse.nsecm.orderentry.nnfdirect.v6.6.datapayload", ftypes.BYTES, nil, nil, nil, "Record body, opaque until the master change structures are transcribed")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.day = ProtoField.new("Day", "nse.nsecm.orderentry.nnfdirect.v6.6.day", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000, "Day order")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.default_settlement_period = ProtoField.new("Default Settlement Period", "nse.nsecm.orderentry.nnfdirect.v6.6.defaultsettlementperiod", ftypes.INT16)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.delete_flag = ProtoField.new("Delete Flag", "nse.nsecm.orderentry.nnfdirect.v6.6.deleteflag", ftypes.STRING, nil, nil, nil, "This field contains the status of the security, that is, whether the security is deleted or not")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.disclosed_quantity_percent_allowed = ProtoField.new("Disclosed Quantity Percent Allowed", "nse.nsecm.orderentry.nnfdirect.v6.6.disclosedquantitypercentallowed", ftypes.INT16)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.disclosed_vol = ProtoField.new("Disclosed Vol", "nse.nsecm.orderentry.nnfdirect.v6.6.disclosedvol", ftypes.INT32, nil, nil, nil, "This field should specify the quantity that has to be disclosed to the market")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.disclosed_vol_remaining = ProtoField.new("Disclosed Vol Remaining", "nse.nsecm.orderentry.nnfdirect.v6.6.disclosedvolremaining", ftypes.INT32, nil, nil, nil, "This field contains the disclosed volume remaining from the original disclosed volume after trade(s)")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.dividend = ProtoField.new("Dividend", "nse.nsecm.orderentry.nnfdirect.v6.6.dividend", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.dynamic_cryptographic_iv = ProtoField.new("Dynamic Cryptographic Iv", "nse.nsecm.orderentry.nnfdirect.v6.6.dynamiccryptographiciv", ftypes.INT64, nil, nil, nil, "Dynamic half of the initialisation vector used by the new encryption")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.egm = ProtoField.new("Egm", "nse.nsecm.orderentry.nnfdirect.v6.6.egm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04, "Extraordinary general meeting")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.eligibility = ProtoField.new("Eligibility", "nse.nsecm.orderentry.nnfdirect.v6.6.eligibility", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80, "Security is eligible to trade in this market")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.eligibility_reserved = ProtoField.new("Eligibility Reserved", "nse.nsecm.orderentry.nnfdirect.v6.6.eligibilityreserved", ftypes.UINT8, nil, base.DEC, 0x1F, "Reserved")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.eligiblity_indicator = ProtoField.new("Eligiblity Indicator", "nse.nsecm.orderentry.nnfdirect.v6.6.eligiblityindicator", ftypes.STRING, nil, nil, nil, "Flags packed into 1 byte")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.eligiblity_indicators = ProtoField.new("Eligiblity Indicators", "nse.nsecm.orderentry.nnfdirect.v6.6.eligiblityindicators", ftypes.STRING)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.end_time = ProtoField.new("End Time", "nse.nsecm.orderentry.nnfdirect.v6.6.endtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "This field contains the time the markets last closed and is sent as the number of seconds since midnight of January 1, 1980")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.end_time_utc = ProtoField.new("End Time", "nse.nsecm.orderentry.nnfdirect.v6.6.endtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "This field contains the time the markets last closed and is sent as the number of seconds since midnight of January 1, 1980")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.entry_date_time = ProtoField.new("Entry Date Time", "nse.nsecm.orderentry.nnfdirect.v6.6.entrydatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "This field should be set to zero while sending the order entry request")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.entry_date_time_utc = ProtoField.new("Entry Date Time", "nse.nsecm.orderentry.nnfdirect.v6.6.entrydatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "This field should be set to zero while sending the order entry request")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.error_code = ProtoField.new("Error Code", "nse.nsecm.orderentry.nnfdirect.v6.6.errorcode", ftypes.INT16, nil, nil, nil, "Zero when the request succeeded, otherwise an Error Response follows")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.error_message = ProtoField.new("Error Message", "nse.nsecm.orderentry.nnfdirect.v6.6.errormessage", ftypes.STRING)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.exec_time_stamp = ProtoField.new("Exec Time Stamp", "nse.nsecm.orderentry.nnfdirect.v6.6.exectimestamp", ftypes.DOUBLE, nil, nil, nil, "This field is used to store the time of writing to the order book")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.existing_encryption_tail = ProtoField.new("Existing Encryption Tail", "nse.nsecm.orderentry.nnfdirect.v6.6.existingencryptiontail", ftypes.STRING, nil, nil, nil, "Initialisation vector used by the existing encryption")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.expiry_date = ProtoField.new("Expiry Date", "nse.nsecm.orderentry.nnfdirect.v6.6.expirydate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "This field contains the last date of trading before any corporate action")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.expiry_date_utc = ProtoField.new("Expiry Date", "nse.nsecm.orderentry.nnfdirect.v6.6.expirydate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "This field contains the last date of trading before any corporate action")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.expulsion_date = ProtoField.new("Expulsion Date", "nse.nsecm.orderentry.nnfdirect.v6.6.expulsiondate", ftypes.INT32, nil, nil, nil, "This field contains the date of expulsion")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.face_value = ProtoField.new("Face Value", "nse.nsecm.orderentry.nnfdirect.v6.6.facevalue", ftypes.INT32, nil, nil, nil, "This field contains face value of the security")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.fill_number = ProtoField.new("Fill Number", "nse.nsecm.orderentry.nnfdirect.v6.6.fillnumber", ftypes.INT32, nil, nil, nil, "This field should contain the trade number of the trade to be modified")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.fill_price = ProtoField.new("Fill Price", "nse.nsecm.orderentry.nnfdirect.v6.6.fillprice", ftypes.DOUBLE, nil, nil, nil, "This field should contain the price at which the trade took place")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.fill_qty = ProtoField.new("Fill Qty", "nse.nsecm.orderentry.nnfdirect.v6.6.fillqty", ftypes.INT32, nil, nil, nil, "This field contains the traded volume")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.filler = ProtoField.new("Filler", "nse.nsecm.orderentry.nnfdirect.v6.6.filler", ftypes.STRING)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.filler_9 = ProtoField.new("Filler 9", "nse.nsecm.orderentry.nnfdirect.v6.6.filler9", ftypes.STRING, nil, nil, nil, "Filler")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.freeze_percent = ProtoField.new("Freeze Percent", "nse.nsecm.orderentry.nnfdirect.v6.6.freezepercent", ftypes.INT16, nil, nil, nil, "This field contains the volume freeze percent w.r.t")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.frozen = ProtoField.new("Frozen", "nse.nsecm.orderentry.nnfdirect.v6.6.frozen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "Order has resulted in a freeze awaiting approval")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.good_till_date = ProtoField.new("Good Till Date", "nse.nsecm.orderentry.nnfdirect.v6.6.goodtilldate", ftypes.INT32, nil, nil, nil, "This field should contain the number of days for a GTD order")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.gtc = ProtoField.new("Gtc", "nse.nsecm.orderentry.nnfdirect.v6.6.gtc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800, "Good till cancelled order")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.gtd = ProtoField.new("Gtd", "nse.nsecm.orderentry.nnfdirect.v6.6.gtd", ftypes.INT32, nil, nil, nil, "This field contains the number of days for a GTD Order")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.header_timestamp = ProtoField.new("Header Timestamp", "nse.nsecm.orderentry.nnfdirect.v6.6.headertimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Host end field, carrying nanoseconds since midnight 01-Jan-1980 on the transaction codes listed in the appendix")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.header_timestamp_utc = ProtoField.new("Header Timestamp", "nse.nsecm.orderentry.nnfdirect.v6.6.headertimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Host end field, carrying nanoseconds since midnight 01-Jan-1980 on the transaction codes listed in the appendix")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.initiator_type = ProtoField.new("Initiator Type", "nse.nsecm.orderentry.nnfdirect.v6.6.initiatortype", ftypes.INT16, nil, nil, nil, "Whether the auction was initiated by control or by a trader")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_alpha_char = ProtoField.new("Inner Alpha Char", "nse.nsecm.orderentry.nnfdirect.v6.6.inneralphachar", ftypes.STRING, nil, nil, nil, "First two characters of Symbol when the record carries one")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_error_code = ProtoField.new("Inner Error Code", "nse.nsecm.orderentry.nnfdirect.v6.6.innererrorcode", ftypes.INT16, nil, nil, nil, "Type of error")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_header = ProtoField.new("Inner Header", "nse.nsecm.orderentry.nnfdirect.v6.6.innerheader", ftypes.STRING, nil, nil, nil, "Forty byte header prefacing each downloaded record")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_log_time = ProtoField.new("Inner Log Time", "nse.nsecm.orderentry.nnfdirect.v6.6.innerlogtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the message was logged")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_log_time_utc = ProtoField.new("Inner Log Time", "nse.nsecm.orderentry.nnfdirect.v6.6.innerlogtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the message was logged")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_message_length = ProtoField.new("Inner Message Length", "nse.nsecm.orderentry.nnfdirect.v6.6.innermessagelength", ftypes.INT16, nil, nil, nil, "Length of the record including this header")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_time_stamp_1 = ProtoField.new("Inner Time Stamp 1", "nse.nsecm.orderentry.nnfdirect.v6.6.innertimestamp1", ftypes.STRING, nil, nil, nil, "Time the message arrives at the trading system host")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_time_stamp_2 = ProtoField.new("Inner Time Stamp 2", "nse.nsecm.orderentry.nnfdirect.v6.6.innertimestamp2", ftypes.STRING, nil, nil, nil, "Reserved for the host")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_timestamp = ProtoField.new("Inner Timestamp", "nse.nsecm.orderentry.nnfdirect.v6.6.innertimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time stamped at the trading system")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_timestamp_utc = ProtoField.new("Inner Timestamp", "nse.nsecm.orderentry.nnfdirect.v6.6.innertimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time stamped at the trading system")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_trader_id = ProtoField.new("Inner Trader Id", "nse.nsecm.orderentry.nnfdirect.v6.6.innertraderid", ftypes.INT32, nil, nil, nil, "User Id")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_transaction_code = ProtoField.new("Inner Transaction Code", "nse.nsecm.orderentry.nnfdirect.v6.6.innertransactioncode", ftypes.INT16, nil, nil, nil, "Transaction code naming the record carried")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inquirydata = ProtoField.new("Inquirydata", "nse.nsecm.orderentry.nnfdirect.v6.6.inquirydata", ftypes.STRING)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.instrument_type = ProtoField.new("Instrument Type", "nse.nsecm.orderentry.nnfdirect.v6.6.instrumenttype", ftypes.INT16, nil, nil, nil, "This field contains the instrument type of the security")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.interest = ProtoField.new("Interest", "nse.nsecm.orderentry.nnfdirect.v6.6.interest", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.interest_payment_date = ProtoField.new("Interest Payment Date", "nse.nsecm.orderentry.nnfdirect.v6.6.interestpaymentdate", ftypes.INT32, nil, nil, nil, "This field contains the interest payment date of the issue")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.ioc = ProtoField.new("Ioc", "nse.nsecm.orderentry.nnfdirect.v6.6.ioc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400, "Immediate or cancel order")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.ip_address = ProtoField.new("Ip Address", "nse.nsecm.orderentry.nnfdirect.v6.6.ipaddress", ftypes.STRING, nil, nil, nil, "IP address assigned by exchange IP address assigned by exchange")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.isin_number = ProtoField.new("Isin Number", "nse.nsecm.orderentry.nnfdirect.v6.6.isinnumber", ftypes.STRING, nil, nil, nil, "I S I N Number")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.issue_maturity_date = ProtoField.new("Issue Maturity Date", "nse.nsecm.orderentry.nnfdirect.v6.6.issuematuritydate", ftypes.INT32, nil, nil, nil, "This field contains the maturity date")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.issue_start_date = ProtoField.new("Issue Start Date", "nse.nsecm.orderentry.nnfdirect.v6.6.issuestartdate", ftypes.INT32, nil, nil, nil, "This field contains the date of issue of the security")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.issued_capital = ProtoField.new("Issued Capital", "nse.nsecm.orderentry.nnfdirect.v6.6.issuedcapital", ftypes.DOUBLE, nil, nil, nil, "This field contains issue size of the security")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_activity_reference = ProtoField.new("Last Activity Reference", "nse.nsecm.orderentry.nnfdirect.v6.6.lastactivityreference", ftypes.INT64, nil, nil, nil, "This field should be set to zero while sending the order entry request")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_modified = ProtoField.new("Last Modified", "nse.nsecm.orderentry.nnfdirect.v6.6.lastmodified", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "If the order has been modified, this field contains the time when the order was last modified")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_modified_utc = ProtoField.new("Last Modified", "nse.nsecm.orderentry.nnfdirect.v6.6.lastmodified.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "If the order has been modified, this field contains the time when the order was last modified")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_password_change_date = ProtoField.new("Last Password Change Date", "nse.nsecm.orderentry.nnfdirect.v6.6.lastpasswordchangedate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_password_change_date_utc = ProtoField.new("Last Password Change Date", "nse.nsecm.orderentry.nnfdirect.v6.6.lastpasswordchangedate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_password_change_date_time = ProtoField.new("Last Password Change Date Time", "nse.nsecm.orderentry.nnfdirect.v6.6.lastpasswordchangedatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_password_change_date_time_utc = ProtoField.new("Last Password Change Date Time", "nse.nsecm.orderentry.nnfdirect.v6.6.lastpasswordchangedatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_update_participant_time = ProtoField.new("Last Update Participant Time", "nse.nsecm.orderentry.nnfdirect.v6.6.lastupdateparticipanttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_update_participant_time_utc = ProtoField.new("Last Update Participant Time", "nse.nsecm.orderentry.nnfdirect.v6.6.lastupdateparticipanttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_update_security_time = ProtoField.new("Last Update Security Time", "nse.nsecm.orderentry.nnfdirect.v6.6.lastupdatesecuritytime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "This field should contain the time when the security information was last updated")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_update_security_time_utc = ProtoField.new("Last Update Security Time", "nse.nsecm.orderentry.nnfdirect.v6.6.lastupdatesecuritytime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "This field should contain the time when the security information was last updated")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.listing_date = ProtoField.new("Listing Date", "nse.nsecm.orderentry.nnfdirect.v6.6.listingdate", ftypes.INT32, nil, nil, nil, "This field contains the date of listing")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.local_database_data = ProtoField.new("Local Database Data", "nse.nsecm.orderentry.nnfdirect.v6.6.localdatabasedata", ftypes.STRING, nil, nil, nil, "Record body selected by Inner Transaction Code")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.local_update_date_time = ProtoField.new("Local Update Date Time", "nse.nsecm.orderentry.nnfdirect.v6.6.localupdatedatetime", ftypes.INT32, nil, nil, nil, "This field contains the local database update date and time")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.log_time = ProtoField.new("Log Time", "nse.nsecm.orderentry.nnfdirect.v6.6.logtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the message was generated by the trading system")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.log_time_utc = ProtoField.new("Log Time", "nse.nsecm.orderentry.nnfdirect.v6.6.logtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the message was generated by the trading system")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.market_index = ProtoField.new("Market Index", "nse.nsecm.orderentry.nnfdirect.v6.6.marketindex", ftypes.INT32, nil, nil, nil, "This field contains the current market index")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.market_type = ProtoField.new("Market Type", "nse.nsecm.orderentry.nnfdirect.v6.6.markettype", ftypes.INT16, nil, nil, nil, "This field should contain the value to denote the type of market, • ‘1’ for Normal Market")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.matched_ind = ProtoField.new("Matched Ind", "nse.nsecm.orderentry.nnfdirect.v6.6.matchedind", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080, "Order has been matched")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.maximum_gtc_days = ProtoField.new("Maximum Gtc Days", "nse.nsecm.orderentry.nnfdirect.v6.6.maximumgtcdays", ftypes.INT16)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.message_length = ProtoField.new("Message Length", "nse.nsecm.orderentry.nnfdirect.v6.6.messagelength", ftypes.INT16, nil, nil, nil, "Length of the message including the message header, twenty two less than Packet Length")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.mf = ProtoField.new("Mf", "nse.nsecm.orderentry.nnfdirect.v6.6.mf", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100, "Minimum fill order")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.min_fill_aon = ProtoField.new("Min Fill Aon", "nse.nsecm.orderentry.nnfdirect.v6.6.minfillaon", ftypes.INT32)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.minimum_fill = ProtoField.new("Minimum Fill", "nse.nsecm.orderentry.nnfdirect.v6.6.minimumfill", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20, "Security is eligible for minimum fill orders")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.mkt = ProtoField.new("Mkt", "nse.nsecm.orderentry.nnfdirect.v6.6.mkt", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Market order")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.mkt_maker_min_qty = ProtoField.new("Mkt Maker Min Qty", "nse.nsecm.orderentry.nnfdirect.v6.6.mktmakerminqty", ftypes.INT32, nil, nil, nil, "This field contains the Minimum quantity for the security, Used by Market maker user for market maker order")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.mkt_maker_spread = ProtoField.new("Mkt Maker Spread", "nse.nsecm.orderentry.nnfdirect.v6.6.mktmakerspread", ftypes.INT32, nil, nil, nil, "This field contains spread value of the security, used by Market maker user to place two-way quotes")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.mod_cxl_by = ProtoField.new("Mod Cxl By", "nse.nsecm.orderentry.nnfdirect.v6.6.modcxlby", ftypes.STRING, nil, nil, nil, "This field denotes which person has modified or cancelled a particular order")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.modified = ProtoField.new("Modified", "nse.nsecm.orderentry.nnfdirect.v6.6.modified", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020, "Order has been modified")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.msg = ProtoField.new("Msg", "nse.nsecm.orderentry.nnfdirect.v6.6.msg", ftypes.STRING)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.msg_length = ProtoField.new("Msg Length", "nse.nsecm.orderentry.nnfdirect.v6.6.msglength", ftypes.INT16)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.name = ProtoField.new("Name", "nse.nsecm.orderentry.nnfdirect.v6.6.name", ftypes.STRING, nil, nil, nil, "This field contains the security name")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.new_encryption_tail = ProtoField.new("New Encryption Tail", "nse.nsecm.orderentry.nnfdirect.v6.6.newencryptiontail", ftypes.STRING, nil, nil, nil, "Initialisation vectors used by the new authenticated encryption")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.new_password = ProtoField.new("New Password", "nse.nsecm.orderentry.nnfdirect.v6.6.newpassword", ftypes.STRING, nil, nil, nil, "This field should contain the new password entered by the user")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.new_volume = ProtoField.new("New Volume", "nse.nsecm.orderentry.nnfdirect.v6.6.newvolume", ftypes.INT32, nil, nil, nil, "This field value should be same as that of FillQuantity")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.nnf_field = ProtoField.new("Nnf Field", "nse.nsecm.orderentry.nnfdirect.v6.6.nnffield", ftypes.DOUBLE, nil, nil, nil, "This field should contain a 15 digit a unique identifier for various products deployed as per Exchange circular download ref no")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.no_delivery_end_date = ProtoField.new("No Delivery End Date", "nse.nsecm.orderentry.nnfdirect.v6.6.nodeliveryenddate", ftypes.INT32, nil, nil, nil, "This field contains the date from when physical delivery of share certificates starts after book closure")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.no_delivery_start_date = ProtoField.new("No Delivery Start Date", "nse.nsecm.orderentry.nnfdirect.v6.6.nodeliverystartdate", ftypes.INT32, nil, nil, nil, "This field contains the date from when physical delivery of share certificates is stopped for book closure")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.normal = ProtoField.new("Normal", "nse.nsecm.orderentry.nnfdirect.v6.6.normal", ftypes.INT16)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.normal_market = ProtoField.new("Normal Market", "nse.nsecm.orderentry.nnfdirect.v6.6.normalmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Broker is eligible to trade in the normal market")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.normal_market_status = ProtoField.new("Normal Market Status", "nse.nsecm.orderentry.nnfdirect.v6.6.normalmarketstatus", ftypes.INT16, nil, nil, nil, "This field should contain the latest Normal Market status available at TWS")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.number_of_records = ProtoField.new("Number Of Records", "nse.nsecm.orderentry.nnfdirect.v6.6.numberofrecords", ftypes.INT16, nil, nil, nil, "This field contains the number of markets for which Market Statistics is being sent")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.odd_lot_market_status = ProtoField.new("Odd Lot Market Status", "nse.nsecm.orderentry.nnfdirect.v6.6.oddlotmarketstatus", ftypes.INT16, nil, nil, nil, "This field should contain the latest Odd Lot Market status available at TWS")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.oddlot = ProtoField.new("Oddlot", "nse.nsecm.orderentry.nnfdirect.v6.6.oddlot", ftypes.INT16)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.oddlot_market = ProtoField.new("Oddlot Market", "nse.nsecm.orderentry.nnfdirect.v6.6.oddlotmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Broker is eligible to trade in the odd lot market")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.oe_remarks = ProtoField.new("Oe Remarks", "nse.nsecm.orderentry.nnfdirect.v6.6.oeremarks", ftypes.STRING, nil, nil, nil, "This field may contain any remarks that the dealer can enter about the order in this field")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.on_stop = ProtoField.new("On Stop", "nse.nsecm.orderentry.nnfdirect.v6.6.onstop", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Stop loss order")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.op_broker_id = ProtoField.new("Op Broker Id", "nse.nsecm.orderentry.nnfdirect.v6.6.opbrokerid", ftypes.STRING, nil, nil, nil, "This field will always be blank")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.op_order_number = ProtoField.new("Op Order Number", "nse.nsecm.orderentry.nnfdirect.v6.6.opordernumber", ftypes.DOUBLE, nil, nil, nil, "This field will always be blank")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_flags_reserved_one = ProtoField.new("Order Flags Reserved One", "nse.nsecm.orderentry.nnfdirect.v6.6.orderflagsreservedone", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "Reserved")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_flags_reserved_three = ProtoField.new("Order Flags Reserved Three", "nse.nsecm.orderentry.nnfdirect.v6.6.orderflagsreservedthree", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "Reserved")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_number = ProtoField.new("Order Number", "nse.nsecm.orderentry.nnfdirect.v6.6.ordernumber", ftypes.DOUBLE, nil, nil, nil, "This field contains an Order Number assigned to the order")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_qty_limit = ProtoField.new("Order Qty Limit", "nse.nsecm.orderentry.nnfdirect.v6.6.orderqtylimit", ftypes.DOUBLE)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_val_limit = ProtoField.new("Order Val Limit", "nse.nsecm.orderentry.nnfdirect.v6.6.ordervallimit", ftypes.DOUBLE, nil, nil, nil, "This field should contain Order Limit to be Set in lakhs Valid values: 0 to 9999999.99 This is to be multiplied by (100000*100) before sending to the trading system host 178")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.original_vol = ProtoField.new("Original Vol", "nse.nsecm.orderentry.nnfdirect.v6.6.originalvol", ftypes.INT32, nil, nil, nil, "This field contains the Original traded volume")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.packet_length = ProtoField.new("Packet Length", "nse.nsecm.orderentry.nnfdirect.v6.6.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the entire packet including this field, capped at 1024 bytes")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "nse.nsecm.orderentry.nnfdirect.v6.6.packetsequencenumber", ftypes.UINT32, nil, nil, nil, "Echoed back on responses to order related requests, zero on a non encrypting connection")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.page_indicator = ProtoField.new("Page Indicator", "nse.nsecm.orderentry.nnfdirect.v6.6.pageindicator", ftypes.STRING, nil, nil, nil, "This field is to help the user browse through various pages of information")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.pan = ProtoField.new("Pan", "nse.nsecm.orderentry.nnfdirect.v6.6.pan", ftypes.STRING, nil, nil, nil, "This field shall contain the PAN (Permanent Account Number / PAN_EXEMPT) - This field shall be mandatory for all orders (client / participant / PRO orders)")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.participant_type = ProtoField.new("Participant Type", "nse.nsecm.orderentry.nnfdirect.v6.6.participanttype", ftypes.STRING, nil, nil, nil, "Since only exchange can initiate the auction, this field should not be set to ‘I’ for initiator")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.participate_in_market_index = ProtoField.new("Participate In Market Index", "nse.nsecm.orderentry.nnfdirect.v6.6.participateinmarketindex", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80, "Security participates in the market index")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.password = ProtoField.new("Password", "nse.nsecm.orderentry.nnfdirect.v6.6.password", ftypes.STRING, nil, nil, nil, "This field should contain the password entered by the user")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.permitted_to_trade = ProtoField.new("Permitted To Trade", "nse.nsecm.orderentry.nnfdirect.v6.6.permittedtotrade", ftypes.INT16, nil, nil, nil, "This field contains one of the following values: ‘0’ – Listed but not permitted to trade ‘1’ – Permitted to trade ‘2’ - BSE listed (BSE exclusive security will be available, however trading on the same will be allowed only in case of outage at BSE) • ‘0’ - Listed but not permitted to trade • ‘1’ - Permitted to trade • ‘2’ – BSE listed (BSE exclusive security will be available, however trading on the same will be allowed only in case of outage at BSE) This field can have any one of the following value: • ‘0’ - Listed but not permitted to trade 232")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.port = ProtoField.new("Port", "nse.nsecm.orderentry.nnfdirect.v6.6.port", ftypes.INT32, nil, nil, nil, "Port Number given by exchange Port Number given by exchange")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.preopen = ProtoField.new("Preopen", "nse.nsecm.orderentry.nnfdirect.v6.6.preopen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "Order belongs to the pre open session")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.price = ProtoField.new("Price", "nse.nsecm.orderentry.nnfdirect.v6.6.price", ftypes.DOUBLE, nil, nil, nil, "This field should contain the price at which the order is placed")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.pro_client = ProtoField.new("Pro Client", "nse.nsecm.orderentry.nnfdirect.v6.6.proclient", ftypes.INT16, nil, nil, nil, "This field should contain one of the following values based on the order entering is on behalf of the broker or a trader")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.purpose = ProtoField.new("Purpose", "nse.nsecm.orderentry.nnfdirect.v6.6.purpose", ftypes.STRING)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.purpose_indicator = ProtoField.new("Purpose Indicator", "nse.nsecm.orderentry.nnfdirect.v6.6.purposeindicator", ftypes.STRING, nil, nil, nil, "Flags packed into 1 byte")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.purpose_reserved = ProtoField.new("Purpose Reserved", "nse.nsecm.orderentry.nnfdirect.v6.6.purposereserved", ftypes.UINT8, nil, base.DEC, 0x03, "Reserved")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.re_admission_date = ProtoField.new("Re Admission Date", "nse.nsecm.orderentry.nnfdirect.v6.6.readmissiondate", ftypes.INT32, nil, nil, nil, "This field contains the date of readmission")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reason_code = ProtoField.new("Reason Code", "nse.nsecm.orderentry.nnfdirect.v6.6.reasoncode", ftypes.INT16, nil, nil, nil, "This field contains the reason code for a particular order request rejection or order being frozen")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.record_date = ProtoField.new("Record Date", "nse.nsecm.orderentry.nnfdirect.v6.6.recorddate", ftypes.INT32, nil, nil, nil, "This field contains the date of record changed")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.remaining_vol = ProtoField.new("Remaining Vol", "nse.nsecm.orderentry.nnfdirect.v6.6.remainingvol", ftypes.INT32, nil, nil, nil, "This field contains the volume remaining after trade(s)")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.remark = ProtoField.new("Remark", "nse.nsecm.orderentry.nnfdirect.v6.6.remark", ftypes.STRING, nil, nil, nil, "This field contains remarks")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.request_for_open_orders = ProtoField.new("Request For Open Orders", "nse.nsecm.orderentry.nnfdirect.v6.6.requestforopenorders", ftypes.STRING, nil, nil, nil, "This field should be set to ‘G’ if GTC and GTD orders are to be downloaded")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.requested_by = ProtoField.new("Requested By", "nse.nsecm.orderentry.nnfdirect.v6.6.requestedby", ftypes.INT16, nil, nil, nil, "This field indicates which side (Buy/Sell) of the trade is to be modified/cancelled")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_1 = ProtoField.new("Reserved 1", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_10 = ProtoField.new("Reserved 10", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved10", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_14 = ProtoField.new("Reserved 14", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved14", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_16 = ProtoField.new("Reserved 16", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved16", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_2 = ProtoField.new("Reserved 2", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved2", ftypes.BYTES, nil, nil, nil, "This field is reserved for future use")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_24 = ProtoField.new("Reserved 24", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved24", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_25 = ProtoField.new("Reserved 25", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved25", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_26 = ProtoField.new("Reserved 26", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved26", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_4 = ProtoField.new("Reserved 4", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_5 = ProtoField.new("Reserved 5", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved5", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_52 = ProtoField.new("Reserved 52", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved52", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_56 = ProtoField.new("Reserved 56", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved56", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_6 = ProtoField.new("Reserved 6", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved6", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_60 = ProtoField.new("Reserved 60", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved60", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_7 = ProtoField.new("Reserved 7", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved7", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_8 = ProtoField.new("Reserved 8", "nse.nsecm.orderentry.nnfdirect.v6.6.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.response_order_number = ProtoField.new("Response Order Number", "nse.nsecm.orderentry.nnfdirect.v6.6.responseordernumber", ftypes.DOUBLE)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.rights = ProtoField.new("Rights", "nse.nsecm.orderentry.nnfdirect.v6.6.rights", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sec_info = ProtoField.new("Sec Info", "nse.nsecm.orderentry.nnfdirect.v6.6.secinfo", ftypes.STRING, nil, nil, nil, "SEC_INFO")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.second_default_settlement_period = ProtoField.new("Second Default Settlement Period", "nse.nsecm.orderentry.nnfdirect.v6.6.seconddefaultsettlementperiod", ftypes.INT16, nil, nil, nil, "Default Settlement Period")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "nse.nsecm.orderentry.nnfdirect.v6.6.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.second_reserved_16 = ProtoField.new("Second Reserved 16", "nse.nsecm.orderentry.nnfdirect.v6.6.secondreserved16", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.second_reserved_4 = ProtoField.new("Second Reserved 4", "nse.nsecm.orderentry.nnfdirect.v6.6.secondreserved4", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.second_reserved_8 = ProtoField.new("Second Reserved 8", "nse.nsecm.orderentry.nnfdirect.v6.6.secondreserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.secuirity_eligibility_per_market = ProtoField.new("Secuirity Eligibility Per Market", "nse.nsecm.orderentry.nnfdirect.v6.6.secuirityeligibilitypermarket", ftypes.STRING)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_eligibility_indicator = ProtoField.new("Security Eligibility Indicator", "nse.nsecm.orderentry.nnfdirect.v6.6.securityeligibilityindicator", ftypes.STRING, nil, nil, nil, "Flags packed into 1 byte")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_eligibility_reserved = ProtoField.new("Security Eligibility Reserved", "nse.nsecm.orderentry.nnfdirect.v6.6.securityeligibilityreserved", ftypes.UINT8, nil, base.DEC, 0x7F, "Reserved")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_eligible_indicator = ProtoField.new("Security Eligible Indicator", "nse.nsecm.orderentry.nnfdirect.v6.6.securityeligibleindicator", ftypes.STRING, nil, nil, nil, "Flags packed into 1 byte")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_eligible_indicators = ProtoField.new("Security Eligible Indicators", "nse.nsecm.orderentry.nnfdirect.v6.6.securityeligibleindicators", ftypes.STRING)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_eligible_reserved = ProtoField.new("Security Eligible Reserved", "nse.nsecm.orderentry.nnfdirect.v6.6.securityeligiblereserved", ftypes.UINT8, nil, base.DEC, 0x1F, "Reserved")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_status_per_market = ProtoField.new("Security Status Per Market", "nse.nsecm.orderentry.nnfdirect.v6.6.securitystatuspermarket", ftypes.STRING)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sell_account_number = ProtoField.new("Sell Account Number", "nse.nsecm.orderentry.nnfdirect.v6.6.sellaccountnumber", ftypes.STRING, nil, nil, nil, "This field should contain the Account Number of the trade on Sell side")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sell_broker_id = ProtoField.new("Sell Broker Id", "nse.nsecm.orderentry.nnfdirect.v6.6.sellbrokerid", ftypes.STRING)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sell_pan = ProtoField.new("Sell Pan", "nse.nsecm.orderentry.nnfdirect.v6.6.sellpan", ftypes.STRING, nil, nil, nil, "This field shall contain the PAN (Permanent Account Number/PAN_EXEMPT)")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sequence_number = ProtoField.new("Sequence Number", "nse.nsecm.orderentry.nnfdirect.v6.6.sequencenumber", ftypes.DOUBLE, nil, nil, nil, "This field should be set to numerical zero while sending the request to host")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.series = ProtoField.new("Series", "nse.nsecm.orderentry.nnfdirect.v6.6.series", ftypes.STRING, nil, nil, nil, "Series of the security")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.session_key = ProtoField.new("Session Key", "nse.nsecm.orderentry.nnfdirect.v6.6.sessionkey", ftypes.STRING, nil, nil, nil, "Session key received in GR_RESPONSE(2401) MS_BOX_SIGN_ON_REQUEST_OUT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.settlement_period = ProtoField.new("Settlement Period", "nse.nsecm.orderentry.nnfdirect.v6.6.settlementperiod", ftypes.INT16, nil, nil, nil, "Settlement period of the security")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.settlement_type = ProtoField.new("Settlement Type", "nse.nsecm.orderentry.nnfdirect.v6.6.settlementtype", ftypes.INT16, nil, nil, nil, "This field contains the settlement type")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.settlor = ProtoField.new("Settlor", "nse.nsecm.orderentry.nnfdirect.v6.6.settlor", ftypes.STRING, nil, nil, nil, "This field contains the ID of the participants who are responsible for settling the trades through the custodians")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.show_index = ProtoField.new("Show Index", "nse.nsecm.orderentry.nnfdirect.v6.6.showindex", ftypes.STRING, nil, nil, nil, "‘T’ = to use Trimmed-NNF protocol with Total Traded Quantity and Value Data Type Change Note: Only Trimmed-NNF protocol is supported by Direct Interface 167 HEARTBEAT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.solicitor_period = ProtoField.new("Solicitor Period", "nse.nsecm.orderentry.nnfdirect.v6.6.solicitorperiod", ftypes.INT16, nil, nil, nil, "This field contains the default solicitor period for auction")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.spot = ProtoField.new("Spot", "nse.nsecm.orderentry.nnfdirect.v6.6.spot", ftypes.INT16)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.spot_market = ProtoField.new("Spot Market", "nse.nsecm.orderentry.nnfdirect.v6.6.spotmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Broker is eligible to trade in the spot market")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.spot_market_status = ProtoField.new("Spot Market Status", "nse.nsecm.orderentry.nnfdirect.v6.6.spotmarketstatus", ftypes.INT16, nil, nil, nil, "This field should contain the latest Spot Market status available at TWS")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.st_order_flags = ProtoField.new("St Order Flags", "nse.nsecm.orderentry.nnfdirect.v6.6.storderflags", ftypes.STRING, nil, nil, nil, "Flags packed into 2 bytes")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.static_cryptographic_iv = ProtoField.new("Static Cryptographic Iv", "nse.nsecm.orderentry.nnfdirect.v6.6.staticcryptographiciv", ftypes.STRING, nil, nil, nil, "Static half of the initialisation vector used by the new encryption")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.status = ProtoField.new("Status", "nse.nsecm.orderentry.nnfdirect.v6.6.status", ftypes.INT16, nil, nil, nil, "Status of the security in one market")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.stpc = ProtoField.new("Stpc", "nse.nsecm.orderentry.nnfdirect.v6.6.stpc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "Self trade prevention check")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.surv_ind = ProtoField.new("Surv Ind", "nse.nsecm.orderentry.nnfdirect.v6.6.survind", ftypes.INT16, nil, nil, nil, "Indicator for security in Surveillance Measure Indicator for security in Surveillance Measure")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.suspended = ProtoField.new("Suspended", "nse.nsecm.orderentry.nnfdirect.v6.6.suspended", ftypes.STRING, nil, nil, nil, "This field specifies whether the security is suspended or not")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.symbol = ProtoField.new("Symbol", "nse.nsecm.orderentry.nnfdirect.v6.6.symbol", ftypes.STRING, nil, nil, nil, "Symbol of the security")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.terminal_idle_time = ProtoField.new("Terminal Idle Time", "nse.nsecm.orderentry.nnfdirect.v6.6.terminalidletime", ftypes.INT16, nil, nil, nil, "This field contains the idle time of the TWS terminal")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.third_default_settlement_period = ProtoField.new("Third Default Settlement Period", "nse.nsecm.orderentry.nnfdirect.v6.6.thirddefaultsettlementperiod", ftypes.INT16, nil, nil, nil, "Default Settlement Period")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.third_reserved_16 = ProtoField.new("Third Reserved 16", "nse.nsecm.orderentry.nnfdirect.v6.6.thirdreserved16", ftypes.BYTES, nil, nil, nil, "Reserved for future use 172 173")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.tick_size = ProtoField.new("Tick Size", "nse.nsecm.orderentry.nnfdirect.v6.6.ticksize", ftypes.INT32, nil, nil, nil, "This field contains the Tick size")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.time_stamp_1 = ProtoField.new("Time Stamp 1", "nse.nsecm.orderentry.nnfdirect.v6.6.timestamp1", ftypes.STRING, nil, nil, nil, "Reserved for the host")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.time_stamp_2 = ProtoField.new("Time Stamp 2", "nse.nsecm.orderentry.nnfdirect.v6.6.timestamp2", ftypes.STRING, nil, nil, nil, "Time the message reached the gateway")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.token = ProtoField.new("Token", "nse.nsecm.orderentry.nnfdirect.v6.6.token", ftypes.INT32, nil, nil, nil, "This field contains the token number of the security being updated")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.token_and_eligibility = ProtoField.new("Token And Eligibility", "nse.nsecm.orderentry.nnfdirect.v6.6.tokenandeligibility", ftypes.STRING)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.total_buy = ProtoField.new("Total Buy", "nse.nsecm.orderentry.nnfdirect.v6.6.totalbuy", ftypes.INT32, nil, nil, nil, "Total buy quantity in the auction")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.total_sell = ProtoField.new("Total Sell", "nse.nsecm.orderentry.nnfdirect.v6.6.totalsell", ftypes.INT32, nil, nil, nil, "Total sell quantity in the auction")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.total_vol_remaining = ProtoField.new("Total Vol Remaining", "nse.nsecm.orderentry.nnfdirect.v6.6.totalvolremaining", ftypes.INT32, nil, nil, nil, "This field specifies the total quantity remaining from the original quantity after trade(s)")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.traded = ProtoField.new("Traded", "nse.nsecm.orderentry.nnfdirect.v6.6.traded", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040, "Order has traded at least partly")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trader_id = ProtoField.new("Trader Id", "nse.nsecm.orderentry.nnfdirect.v6.6.traderid", ftypes.INT32, nil, nil, nil, "This field should contain the user ID")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trader_name = ProtoField.new("Trader Name", "nse.nsecm.orderentry.nnfdirect.v6.6.tradername", ftypes.STRING, nil, nil, nil, "This field when received from the host contains the user’s name")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trader_num = ProtoField.new("Trader Num", "nse.nsecm.orderentry.nnfdirect.v6.6.tradernum", ftypes.INT32, nil, nil, nil, "This field contains the trader’s or user ID")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nsecm.orderentry.nnfdirect.v6.6.transactioncode", ftypes.INT16, nil, nil, nil, "Type of message sent or received")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trd_mod_cxl_bit = ProtoField.new("Trd Mod Cxl Bit", "nse.nsecm.orderentry.nnfdirect.v6.6.trdmodcxlbit", ftypes.STRING, nil, nil, nil, "This field should contain user’s Trade Cancellation Status to be set")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trigger_price = ProtoField.new("Trigger Price", "nse.nsecm.orderentry.nnfdirect.v6.6.triggerprice", ftypes.DOUBLE, nil, nil, nil, "This field is applicable only for a Stop Loss order and should be a multiple of the tick size")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_id = ProtoField.new("User Id", "nse.nsecm.orderentry.nnfdirect.v6.6.userid", ftypes.INT32, nil, nil, nil, "This field should contain User ID of user/broker")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_limits = ProtoField.new("User Limits", "nse.nsecm.orderentry.nnfdirect.v6.6.userlimits", ftypes.STRING, nil, nil, nil, "USER_LIMITS")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_order_buy_value_limit = ProtoField.new("User Order Buy Value Limit", "nse.nsecm.orderentry.nnfdirect.v6.6.userorderbuyvaluelimit", ftypes.DOUBLE, nil, nil, nil, "Buy value limit set for the user")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_order_sell_value_limit = ProtoField.new("User Order Sell Value Limit", "nse.nsecm.orderentry.nnfdirect.v6.6.userordersellvaluelimit", ftypes.DOUBLE, nil, nil, nil, "Sell value limit set for the user")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_type = ProtoField.new("User Type", "nse.nsecm.orderentry.nnfdirect.v6.6.usertype", ftypes.INT16, nil, nil, nil, "This field indicates the type of user")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.version_number = ProtoField.new("Version Number", "nse.nsecm.orderentry.nnfdirect.v6.6.versionnumber", ftypes.INT32, nil, nil, nil, "This field should contain the version number of the trading system")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.vol_filled_today = ProtoField.new("Vol Filled Today", "nse.nsecm.orderentry.nnfdirect.v6.6.volfilledtoday", ftypes.INT32, nil, nil, nil, "This field contains the quantity traded today")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.volume = ProtoField.new("Volume", "nse.nsecm.orderentry.nnfdirect.v6.6.volume", ftypes.INT32, nil, nil, nil, "This field should specify the quantity of the order placed")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.volume_filled_today = ProtoField.new("Volume Filled Today", "nse.nsecm.orderentry.nnfdirect.v6.6.volumefilledtoday", ftypes.INT32, nil, nil, nil, "This field contains the total quantity traded in a day")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.volume_freeze_percent = ProtoField.new("Volume Freeze Percent", "nse.nsecm.orderentry.nnfdirect.v6.6.volumefreezepercent", ftypes.INT16, nil, nil, nil, "This field contains the volume freeze percentage")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.warning_percent = ProtoField.new("Warning Percent", "nse.nsecm.orderentry.nnfdirect.v6.6.warningpercent", ftypes.INT16, nil, nil, nil, "This field contains the warning percentage")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.workstation_number = ProtoField.new("Workstation Number", "nse.nsecm.orderentry.nnfdirect.v6.6.workstationnumber", ftypes.STRING)

-- Nse NseCm OrderEntry NnfDirect 6.6 Framing
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.client_direct_packet = ProtoField.new("Client Direct Packet", "nse.nsecm.orderentry.nnfdirect.v6.6.clientdirectpacket", ftypes.STRING, nil, nil, nil, "One framed interactive message sent by the firm")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.client_packet = ProtoField.new("Client Packet", "nse.nsecm.orderentry.nnfdirect.v6.6.clientpacket", ftypes.STRING, nil, nil, nil, "Nnf direct interface Tcp block of one or more packets sent by the firm")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.message_header = ProtoField.new("Message Header", "nse.nsecm.orderentry.nnfdirect.v6.6.messageheader", ftypes.STRING, nil, nil, nil, "MESSAGE_HEADER")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.packet_header = ProtoField.new("Packet Header", "nse.nsecm.orderentry.nnfdirect.v6.6.packetheader", ftypes.STRING, nil, nil, nil, "Direct interface twenty two byte packet header")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.server_direct_packet = ProtoField.new("Server Direct Packet", "nse.nsecm.orderentry.nnfdirect.v6.6.serverdirectpacket", ftypes.STRING, nil, nil, nil, "One framed interactive message sent by the exchange")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.server_packet = ProtoField.new("Server Packet", "nse.nsecm.orderentry.nnfdirect.v6.6.serverpacket", ftypes.STRING, nil, nil, nil, "Nnf direct interface Tcp block of one or more packets sent by the exchange")

-- Nse NseCm OrderEntry 6.6 Application Messages
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_inquiry_request_message = ProtoField.new("Auction Inquiry Request Message", "nse.nsecm.orderentry.nnfdirect.v6.6.auctioninquiryrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as AUCTION_INQUIRY_IN")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_inquiry_response_message = ProtoField.new("Auction Inquiry Response Message", "nse.nsecm.orderentry.nnfdirect.v6.6.auctioninquiryresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as AUCTION_INQUIRY_OUT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.box_sign_off_message = ProtoField.new("Box Sign Off Message", "nse.nsecm.orderentry.nnfdirect.v6.6.boxsignoffmessage", ftypes.STRING, nil, nil, nil, "Sent as BOX_SIGN_OFF")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.box_sign_on_request_message = ProtoField.new("Box Sign On Request Message", "nse.nsecm.orderentry.nnfdirect.v6.6.boxsignonrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as BOX_SIGN_ON_REQUEST_IN")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.box_sign_on_response_message = ProtoField.new("Box Sign On Response Message", "nse.nsecm.orderentry.nnfdirect.v6.6.boxsignonresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as BOX_SIGN_ON_REQUEST_OUT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.branch_order_value_limit_update_in_message = ProtoField.new("Branch Order Value Limit Update In Message", "nse.nsecm.orderentry.nnfdirect.v6.6.branchordervaluelimitupdateinmessage", ftypes.STRING, nil, nil, nil, "Sent as BRANCH_ORDER_LIMIT_UPDATE_IN")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.branch_order_value_limit_update_out_message = ProtoField.new("Branch Order Value Limit Update Out Message", "nse.nsecm.orderentry.nnfdirect.v6.6.branchordervaluelimitupdateoutmessage", ftypes.STRING, nil, nil, nil, "Sent as BRANCH_ORDER_LIMIT_UPDATE_OUT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.cancel_on_logout_status_request_message = ProtoField.new("Cancel On Logout Status Request Message", "nse.nsecm.orderentry.nnfdirect.v6.6.cancelonlogoutstatusrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as COL_USER_STATUS_CHANGE _IN")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.cancel_on_logout_status_response_message = ProtoField.new("Cancel On Logout Status Response Message", "nse.nsecm.orderentry.nnfdirect.v6.6.cancelonlogoutstatusresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as COL_USER_STATUS_CHANGE _OUT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.control_message_to_trader_message = ProtoField.new("Control Message To Trader Message", "nse.nsecm.orderentry.nnfdirect.v6.6.controlmessagetotradermessage", ftypes.STRING, nil, nil, nil, "Sent as CTRL_MSG_TO_TRADER")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.error_response_message = ProtoField.new("Error Response Message", "nse.nsecm.orderentry.nnfdirect.v6.6.errorresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as ERROR_RESPONSE_OUT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.gateway_router_request_message = ProtoField.new("Gateway Router Request Message", "nse.nsecm.orderentry.nnfdirect.v6.6.gatewayrouterrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as GR_REQUEST")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.gateway_router_response_message = ProtoField.new("Gateway Router Response Message", "nse.nsecm.orderentry.nnfdirect.v6.6.gatewayrouterresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as GR_RESPONSE")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.message_download_request_message = ProtoField.new("Message Download Request Message", "nse.nsecm.orderentry.nnfdirect.v6.6.messagedownloadrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as DOWNLOAD_REQUEST")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_entry_in_message = ProtoField.new("Order Entry In Message", "nse.nsecm.orderentry.nnfdirect.v6.6.orderentryinmessage", ftypes.STRING, nil, nil, nil, "Sent as BOARD_LOT_IN, ORDER_MOD_IN, KILL_SWITCH_IN, ORDER_CANCEL_IN")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_entry_out_message = ProtoField.new("Order Entry Out Message", "nse.nsecm.orderentry.nnfdirect.v6.6.orderentryoutmessage", ftypes.STRING, nil, nil, nil, "Sent as PRICE_CONFIRMATION, ORDER_MOD_REJECT, QUICK_CANCEL_OUT, ORDER_CANCEL_REJECT, and others")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_entry_short_message = ProtoField.new("Order Entry Short Message", "nse.nsecm.orderentry.nnfdirect.v6.6.orderentryshortmessage", ftypes.STRING, nil, nil, nil, "Sent as BOARD_LOT_OUT, ORDER_CANCEL_OUT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_limit_update_in_message = ProtoField.new("Order Limit Update In Message", "nse.nsecm.orderentry.nnfdirect.v6.6.orderlimitupdateinmessage", ftypes.STRING, nil, nil, nil, "Sent as DEALER_LIMIT_UPDATE_IN")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_limit_update_out_message = ProtoField.new("Order Limit Update Out Message", "nse.nsecm.orderentry.nnfdirect.v6.6.orderlimitupdateoutmessage", ftypes.STRING, nil, nil, nil, "Sent as DEALER_LIMIT_UPDATE_OUT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.password_reset_in_message = ProtoField.new("Password Reset In Message", "nse.nsecm.orderentry.nnfdirect.v6.6.passwordresetinmessage", ftypes.STRING, nil, nil, nil, "Sent as RESET_PASSWORD_IN")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.password_reset_out_message = ProtoField.new("Password Reset Out Message", "nse.nsecm.orderentry.nnfdirect.v6.6.passwordresetoutmessage", ftypes.STRING, nil, nil, nil, "Sent as RESET_PASSWORD_OUT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.secure_box_registration_request_message = ProtoField.new("Secure Box Registration Request Message", "nse.nsecm.orderentry.nnfdirect.v6.6.secureboxregistrationrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as SECURE_BOX_REGISTRATION_REQUE")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_master_change_message = ProtoField.new("Security Master Change Message", "nse.nsecm.orderentry.nnfdirect.v6.6.securitymasterchangemessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_SECURITY_MSTR_CHG")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_status_change_message = ProtoField.new("Security Status Change Message", "nse.nsecm.orderentry.nnfdirect.v6.6.securitystatuschangemessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_SECURITY_STATUS_CHG, BCAST_SECURITY_STATUS_CHG_PREO")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sign_on_request_in_message = ProtoField.new("Sign On Request In Message", "nse.nsecm.orderentry.nnfdirect.v6.6.signonrequestinmessage", ftypes.STRING, nil, nil, nil, "Sent as SIGN_ON_REQUEST_IN, SIGN_OFF_TRADER_IN")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sign_on_request_out_message = ProtoField.new("Sign On Request Out Message", "nse.nsecm.orderentry.nnfdirect.v6.6.signonrequestoutmessage", ftypes.STRING, nil, nil, nil, "Sent as SIGN_OFF_TRADER_OUT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sign_on_response_message = ProtoField.new("Sign On Response Message", "nse.nsecm.orderentry.nnfdirect.v6.6.signonresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as SIGN_ON_REQUEST_OUT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.system_information_message = ProtoField.new("System Information Message", "nse.nsecm.orderentry.nnfdirect.v6.6.systeminformationmessage", ftypes.STRING, nil, nil, nil, "Sent as SYSTEM_INFORMATION_OUT, PARTIAL_SYSTEM_INFORMATION")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trade_confirmation_message = ProtoField.new("Trade Confirmation Message", "nse.nsecm.orderentry.nnfdirect.v6.6.tradeconfirmationmessage", ftypes.STRING, nil, nil, nil, "Sent as ON_STOP_NOTIFICATION, TRADE_CONFIRMATION, TRADE_CANCEL_CONFIRM, TRADE_CANCEL_REJECT, and others")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trade_inquiry_in_message = ProtoField.new("Trade Inquiry In Message", "nse.nsecm.orderentry.nnfdirect.v6.6.tradeinquiryinmessage", ftypes.STRING, nil, nil, nil, "Sent as TRADE_CANCEL_IN, TRADE_MOD_IN")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trade_inquiry_out_message = ProtoField.new("Trade Inquiry Out Message", "nse.nsecm.orderentry.nnfdirect.v6.6.tradeinquiryoutmessage", ftypes.STRING, nil, nil, nil, "Sent as TRADE_ERROR, TRADE_CANCEL_OUT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trade_modification_cancellation_status_request_message = ProtoField.new("Trade Modification Cancellation Status Request Message", "nse.nsecm.orderentry.nnfdirect.v6.6.trademodificationcancellationstatusrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as TRD_MOD_CXL_STATUS_CHANGE _IN")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trade_modification_cancellation_status_response_message = ProtoField.new("Trade Modification Cancellation Status Response Message", "nse.nsecm.orderentry.nnfdirect.v6.6.trademodificationcancellationstatusresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as TRD_MOD_CXL_STATUS_CHANGE _OUT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.update_local_database_data_message = ProtoField.new("Update Local Database Data Message", "nse.nsecm.orderentry.nnfdirect.v6.6.updatelocaldatabasedatamessage", ftypes.STRING, nil, nil, nil, "Carries one local database record wrapped in an inner header")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.update_local_database_header_message = ProtoField.new("Update Local Database Header Message", "nse.nsecm.orderentry.nnfdirect.v6.6.updatelocaldatabaseheadermessage", ftypes.STRING, nil, nil, nil, "Sent as UPDATE_LOCALDB_HEADER")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.update_local_database_request_message = ProtoField.new("Update Local Database Request Message", "nse.nsecm.orderentry.nnfdirect.v6.6.updatelocaldatabaserequestmessage", ftypes.STRING, nil, nil, nil, "Sent as UPDATE_LOCALDB_IN")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.update_local_database_trailer_message = ProtoField.new("Update Local Database Trailer Message", "nse.nsecm.orderentry.nnfdirect.v6.6.updatelocaldatabasetrailermessage", ftypes.STRING, nil, nil, nil, "Sent as UPDATE_LOCALDB_TRAILER")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_order_value_limit_update_in_message = ProtoField.new("User Order Value Limit Update In Message", "nse.nsecm.orderentry.nnfdirect.v6.6.userordervaluelimitupdateinmessage", ftypes.STRING, nil, nil, nil, "Sent as USER_ORDER_LIMIT_UPDATE_IN")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_order_value_limit_update_out_message = ProtoField.new("User Order Value Limit Update Out Message", "nse.nsecm.orderentry.nnfdirect.v6.6.userordervaluelimitupdateoutmessage", ftypes.STRING, nil, nil, nil, "Sent as USER_ORDER_LIMIT_UPDATE_OUT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_unlock_approval_rejection_message = ProtoField.new("User Unlock Approval Rejection Message", "nse.nsecm.orderentry.nnfdirect.v6.6.userunlockapprovalrejectionmessage", ftypes.STRING, nil, nil, nil, "Sent as USER_ADDR_UNLOCK_APPROVE_OUT, USER_ADDR_UNLOCK_REJECT_OUT")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_unlock_request_message = ProtoField.new("User Unlock Request Message", "nse.nsecm.orderentry.nnfdirect.v6.6.userunlockrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as USER_ADDR_UNLOCK_IN")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_unlock_requested_response_message = ProtoField.new("User Unlock Requested Response Message", "nse.nsecm.orderentry.nnfdirect.v6.6.userunlockrequestedresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as USER_ADDR_UNLOCK_OUT")

-- Nse NseCm OrderEntry 6.6 Session Messages
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.header_record_message = ProtoField.new("Header Record Message", "nse.nsecm.orderentry.nnfdirect.v6.6.headerrecordmessage", ftypes.BYTES, nil, nil, nil, "Opens the message download for a stream")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.message_record_message = ProtoField.new("Message Record Message", "nse.nsecm.orderentry.nnfdirect.v6.6.messagerecordmessage", ftypes.BYTES, nil, nil, nil, "One record of the message download, which carries no body of its own")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.secure_box_registration_response_message = ProtoField.new("Secure Box Registration Response Message", "nse.nsecm.orderentry.nnfdirect.v6.6.secureboxregistrationresponsemessage", ftypes.BYTES, nil, nil, nil, "The trading system answers a secure box registration")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sign_off_confirmation_message = ProtoField.new("Sign Off Confirmation Message", "nse.nsecm.orderentry.nnfdirect.v6.6.signoffconfirmationmessage", ftypes.BYTES, nil, nil, nil, "The trading system confirms the trader is signed off")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.system_information_request_message = ProtoField.new("System Information Request Message", "nse.nsecm.orderentry.nnfdirect.v6.6.systeminformationrequestmessage", ftypes.BYTES, nil, nil, nil, "A trader asks the trading system for its system information")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trailer_record_message = ProtoField.new("Trailer Record Message", "nse.nsecm.orderentry.nnfdirect.v6.6.trailerrecordmessage", ftypes.BYTES, nil, nil, nil, "Signals the message download is complete for a stream")

-- Nse NseCm OrderEntry NnfDirect 6.6 Generated Fields
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inquirydata_index = ProtoField.new("Inquirydata Index", "nse.nsecm.orderentry.nnfdirect.v6.6.inquirydataindex", ftypes.UINT16)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.secuirity_eligibility_per_market_index = ProtoField.new("Secuirity Eligibility Per Market Index", "nse.nsecm.orderentry.nnfdirect.v6.6.secuirityeligibilitypermarketindex", ftypes.UINT16)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_status_per_market_index = ProtoField.new("Security Status Per Market Index", "nse.nsecm.orderentry.nnfdirect.v6.6.securitystatuspermarketindex", ftypes.UINT16)
omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.token_and_eligibility_index = ProtoField.new("Token And Eligibility Index", "nse.nsecm.orderentry.nnfdirect.v6.6.tokenandeligibilityindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Nse NseCm OrderEntry NnfDirect 6.6 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nse NseCm OrderEntry NnfDirect 6.6 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Nse NseCm OrderEntry NnfDirect 6.6 Show Options
omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs.show_application_messages then
    show.application_messages = omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs.show_application_messages
  end
  if show.headers ~= omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs.show_headers then
    show.headers = omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs.show_headers
  end
  if show.structs ~= omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs.show_structs then
    show.structs = omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs.show_structs
  end
  if show.indexes ~= omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs.show_indexes then
    show.indexes = omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs.show_indexes
  end
  if nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base ~= omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs.absolute_time_base then
    nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base = omi_nse_nsecm_orderentry_nnfdirect_v6_6.prefs.absolute_time_base
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
-- Nse NseCm OrderEntry NnfDirect 6.6 Fields
-----------------------------------------------------------------------

-- Account Num
nse_nsecm_orderentry_nnfdirect_v6_6.account_num = {}

-- Size: Account Num
nse_nsecm_orderentry_nnfdirect_v6_6.account_num.size = 10

-- Display: Account Num
nse_nsecm_orderentry_nnfdirect_v6_6.account_num.display = function(value)
  return "Account Num: "..value
end

-- Dissect: Account Num
nse_nsecm_orderentry_nnfdirect_v6_6.account_num.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.account_num.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.account_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.account_num, range, value, display)

  return offset + length, value
end

-- Account Number
nse_nsecm_orderentry_nnfdirect_v6_6.account_number = {}

-- Size: Account Number
nse_nsecm_orderentry_nnfdirect_v6_6.account_number.size = 10

-- Display: Account Number
nse_nsecm_orderentry_nnfdirect_v6_6.account_number.display = function(value)
  return "Account Number: "..value
end

-- Dissect: Account Number
nse_nsecm_orderentry_nnfdirect_v6_6.account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.account_number, range, value, display)

  return offset + length, value
end

-- Action Code
nse_nsecm_orderentry_nnfdirect_v6_6.action_code = {}

-- Size: Action Code
nse_nsecm_orderentry_nnfdirect_v6_6.action_code.size = 3

-- Display: Action Code
nse_nsecm_orderentry_nnfdirect_v6_6.action_code.display = function(value)
  return "Action Code: "..value
end

-- Dissect: Action Code
nse_nsecm_orderentry_nnfdirect_v6_6.action_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.action_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.action_code, range, value, display)

  return offset + length, value
end

-- Activity Time
nse_nsecm_orderentry_nnfdirect_v6_6.activity_time = {}

-- Size: Activity Time
nse_nsecm_orderentry_nnfdirect_v6_6.activity_time.size = 4

-- Dissect: Activity Time
nse_nsecm_orderentry_nnfdirect_v6_6.activity_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.activity_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.activity_time
  if nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.activity_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Activity Type
nse_nsecm_orderentry_nnfdirect_v6_6.activity_type = {}

-- Size: Activity Type
nse_nsecm_orderentry_nnfdirect_v6_6.activity_type.size = 2

-- Display: Activity Type
nse_nsecm_orderentry_nnfdirect_v6_6.activity_type.labels = {
  ["1"] = "Activity Type: Original Order (1)",
  ["2"] = "Activity Type: Activity Trade (2)",
  ["3"] = "Activity Type: Activity Order Cancel (3)",
  ["4"] = "Activity Type: Activity Order Modify (4)",
  ["5"] = "Activity Type: Activity Trade Mod (5)",
  ["6"] = "Activity Type: Activity Trade Cxl 1 (6)",
  ["7"] = "Activity Type: Activity Trade Cxl 2 (7)",
  ["8"] = "Activity Type: Activity Batch Order Cancel (8)",
}

nse_nsecm_orderentry_nnfdirect_v6_6.activity_type.display = function(value)
  return nse_nsecm_orderentry_nnfdirect_v6_6.activity_type.labels[value] or "Activity Type: Unknown("..value..")"
end

-- Dissect: Activity Type
nse_nsecm_orderentry_nnfdirect_v6_6.activity_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.activity_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.activity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.activity_type, range, value, display)

  return offset + length, value
end

-- Algo Id
nse_nsecm_orderentry_nnfdirect_v6_6.algo_id = {}

-- Size: Algo Id
nse_nsecm_orderentry_nnfdirect_v6_6.algo_id.size = 4

-- Display: Algo Id
nse_nsecm_orderentry_nnfdirect_v6_6.algo_id.display = function(value)
  return "Algo Id: "..value
end

-- Dissect: Algo Id
nse_nsecm_orderentry_nnfdirect_v6_6.algo_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.algo_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.algo_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.algo_id, range, value, display)

  return offset + length, value
end

-- Alpha Char
nse_nsecm_orderentry_nnfdirect_v6_6.alpha_char = {}

-- Size: Alpha Char
nse_nsecm_orderentry_nnfdirect_v6_6.alpha_char.size = 2

-- Display: Alpha Char
nse_nsecm_orderentry_nnfdirect_v6_6.alpha_char.display = function(value)
  return "Alpha Char: "..value
end

-- Dissect: Alpha Char
nse_nsecm_orderentry_nnfdirect_v6_6.alpha_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.alpha_char.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.alpha_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.alpha_char, range, value, display)

  return offset + length, value
end

-- Auctioin Price
nse_nsecm_orderentry_nnfdirect_v6_6.auctioin_price = {}

-- Size: Auctioin Price
nse_nsecm_orderentry_nnfdirect_v6_6.auctioin_price.size = 4

-- Display: Auctioin Price
nse_nsecm_orderentry_nnfdirect_v6_6.auctioin_price.display = function(value)
  return "Auctioin Price: "..value
end

-- Translate: Auctioin Price
nse_nsecm_orderentry_nnfdirect_v6_6.auctioin_price.translate = function(raw)
  return raw/100
end

-- Dissect: Auctioin Price
nse_nsecm_orderentry_nnfdirect_v6_6.auctioin_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.auctioin_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_orderentry_nnfdirect_v6_6.auctioin_price.translate(raw)
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.auctioin_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auctioin_price, range, value, display)

  return offset + length, value
end

-- Auction
nse_nsecm_orderentry_nnfdirect_v6_6.auction = {}

-- Size: Auction
nse_nsecm_orderentry_nnfdirect_v6_6.auction.size = 2

-- Display: Auction
nse_nsecm_orderentry_nnfdirect_v6_6.auction.display = function(value)
  return "Auction: "..value
end

-- Dissect: Auction
nse_nsecm_orderentry_nnfdirect_v6_6.auction.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.auction.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.auction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction, range, value, display)

  return offset + length, value
end

-- Auction Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.auction_market_status = {}

-- Size: Auction Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.auction_market_status.size = 2

-- Display: Auction Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.auction_market_status.display = function(value)
  return "Auction Market Status: "..value
end

-- Dissect: Auction Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.auction_market_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.auction_market_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.auction_market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_market_status, range, value, display)

  return offset + length, value
end

-- Auction No
nse_nsecm_orderentry_nnfdirect_v6_6.auction_no = {}

-- Size: Auction No
nse_nsecm_orderentry_nnfdirect_v6_6.auction_no.size = 2

-- Display: Auction No
nse_nsecm_orderentry_nnfdirect_v6_6.auction_no.display = function(value)
  return "Auction No: "..value
end

-- Dissect: Auction No
nse_nsecm_orderentry_nnfdirect_v6_6.auction_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.auction_no.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.auction_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_no, range, value, display)

  return offset + length, value
end

-- Auction Number
nse_nsecm_orderentry_nnfdirect_v6_6.auction_number = {}

-- Size: Auction Number
nse_nsecm_orderentry_nnfdirect_v6_6.auction_number.size = 2

-- Display: Auction Number
nse_nsecm_orderentry_nnfdirect_v6_6.auction_number.display = function(value)
  return "Auction Number: "..value
end

-- Dissect: Auction Number
nse_nsecm_orderentry_nnfdirect_v6_6.auction_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.auction_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.auction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_number, range, value, display)

  return offset + length, value
end

-- Auction Quantity
nse_nsecm_orderentry_nnfdirect_v6_6.auction_quantity = {}

-- Size: Auction Quantity
nse_nsecm_orderentry_nnfdirect_v6_6.auction_quantity.size = 4

-- Display: Auction Quantity
nse_nsecm_orderentry_nnfdirect_v6_6.auction_quantity.display = function(value)
  return "Auction Quantity: "..value
end

-- Dissect: Auction Quantity
nse_nsecm_orderentry_nnfdirect_v6_6.auction_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.auction_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.auction_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_quantity, range, value, display)

  return offset + length, value
end

-- Auction Status
nse_nsecm_orderentry_nnfdirect_v6_6.auction_status = {}

-- Size: Auction Status
nse_nsecm_orderentry_nnfdirect_v6_6.auction_status.size = 2

-- Display: Auction Status
nse_nsecm_orderentry_nnfdirect_v6_6.auction_status.labels = {
  [1] = "Auction Status: Auction Pending Approval (1)",
  [2] = "Auction Status: Auction Pending (2)",
  [3] = "Auction Status: Open Competitor Period (3)",
  [4] = "Auction Status: Open Solicitor Period (4)",
  [5] = "Auction Status: Auction Matching (5)",
  [6] = "Auction Status: Auction Finished (6)",
  [7] = "Auction Status: Auction Cancelled (7)",
}

nse_nsecm_orderentry_nnfdirect_v6_6.auction_status.display = function(value)
  return nse_nsecm_orderentry_nnfdirect_v6_6.auction_status.labels[value] or "Auction Status: Unknown("..value..")"
end

-- Dissect: Auction Status
nse_nsecm_orderentry_nnfdirect_v6_6.auction_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.auction_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.auction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Best Buy Price
nse_nsecm_orderentry_nnfdirect_v6_6.best_buy_price = {}

-- Size: Best Buy Price
nse_nsecm_orderentry_nnfdirect_v6_6.best_buy_price.size = 4

-- Display: Best Buy Price
nse_nsecm_orderentry_nnfdirect_v6_6.best_buy_price.display = function(value)
  return "Best Buy Price: "..value
end

-- Translate: Best Buy Price
nse_nsecm_orderentry_nnfdirect_v6_6.best_buy_price.translate = function(raw)
  return raw/100
end

-- Dissect: Best Buy Price
nse_nsecm_orderentry_nnfdirect_v6_6.best_buy_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.best_buy_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_orderentry_nnfdirect_v6_6.best_buy_price.translate(raw)
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.best_buy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.best_buy_price, range, value, display)

  return offset + length, value
end

-- Best Sell Price
nse_nsecm_orderentry_nnfdirect_v6_6.best_sell_price = {}

-- Size: Best Sell Price
nse_nsecm_orderentry_nnfdirect_v6_6.best_sell_price.size = 4

-- Display: Best Sell Price
nse_nsecm_orderentry_nnfdirect_v6_6.best_sell_price.display = function(value)
  return "Best Sell Price: "..value
end

-- Translate: Best Sell Price
nse_nsecm_orderentry_nnfdirect_v6_6.best_sell_price.translate = function(raw)
  return raw/100
end

-- Dissect: Best Sell Price
nse_nsecm_orderentry_nnfdirect_v6_6.best_sell_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.best_sell_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_orderentry_nnfdirect_v6_6.best_sell_price.translate(raw)
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.best_sell_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.best_sell_price, range, value, display)

  return offset + length, value
end

-- Board Lot Quantity
nse_nsecm_orderentry_nnfdirect_v6_6.board_lot_quantity = {}

-- Size: Board Lot Quantity
nse_nsecm_orderentry_nnfdirect_v6_6.board_lot_quantity.size = 4

-- Display: Board Lot Quantity
nse_nsecm_orderentry_nnfdirect_v6_6.board_lot_quantity.display = function(value)
  return "Board Lot Quantity: "..value
end

-- Dissect: Board Lot Quantity
nse_nsecm_orderentry_nnfdirect_v6_6.board_lot_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.board_lot_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.board_lot_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.board_lot_quantity, range, value, display)

  return offset + length, value
end

-- Book Closure End Date
nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_end_date = {}

-- Size: Book Closure End Date
nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_end_date.size = 4

-- Display: Book Closure End Date
nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_end_date.display = function(value)
  return "Book Closure End Date: "..value
end

-- Dissect: Book Closure End Date
nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_end_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_end_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.book_closure_end_date, range, value, display)

  return offset + length, value
end

-- Book Closure Start Date
nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_start_date = {}

-- Size: Book Closure Start Date
nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_start_date.size = 4

-- Display: Book Closure Start Date
nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_start_date.display = function(value)
  return "Book Closure Start Date: "..value
end

-- Dissect: Book Closure Start Date
nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_start_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.book_closure_start_date, range, value, display)

  return offset + length, value
end

-- Book Type
nse_nsecm_orderentry_nnfdirect_v6_6.book_type = {}

-- Size: Book Type
nse_nsecm_orderentry_nnfdirect_v6_6.book_type.size = 2

-- Display: Book Type
nse_nsecm_orderentry_nnfdirect_v6_6.book_type.labels = {
  [1] = "Book Type: Regular Lot Order (1)",
  [2] = "Book Type: Special Terms Order (2)",
  [3] = "Book Type: Stop Loss Order (3)",
  [5] = "Book Type: Odd Lot Order (5)",
  [6] = "Book Type: Spot Order (6)",
  [7] = "Book Type: Auction Order (7)",
  [11] = "Book Type: Call Auction 1 (11)",
  [12] = "Book Type: Call Auction 2 (12)",
}

nse_nsecm_orderentry_nnfdirect_v6_6.book_type.display = function(value)
  return nse_nsecm_orderentry_nnfdirect_v6_6.book_type.labels[value] or "Book Type: Unknown("..value..")"
end

-- Dissect: Book Type
nse_nsecm_orderentry_nnfdirect_v6_6.book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.book_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.book_type, range, value, display)

  return offset + length, value
end

-- Box Id
nse_nsecm_orderentry_nnfdirect_v6_6.box_id = {}

-- Size: Box Id
nse_nsecm_orderentry_nnfdirect_v6_6.box_id.size = 2

-- Display: Box Id
nse_nsecm_orderentry_nnfdirect_v6_6.box_id.display = function(value)
  return "Box Id: "..value
end

-- Dissect: Box Id
nse_nsecm_orderentry_nnfdirect_v6_6.box_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.box_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.box_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.box_id, range, value, display)

  return offset + length, value
end

-- Branch
nse_nsecm_orderentry_nnfdirect_v6_6.branch = {}

-- Size: Branch
nse_nsecm_orderentry_nnfdirect_v6_6.branch.size = 2

-- Display: Branch
nse_nsecm_orderentry_nnfdirect_v6_6.branch.display = function(value)
  return "Branch: "..value
end

-- Dissect: Branch
nse_nsecm_orderentry_nnfdirect_v6_6.branch.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.branch.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.branch.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.branch, range, value, display)

  return offset + length, value
end

-- Branch Buy Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.branch_buy_value_limit = {}

-- Size: Branch Buy Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.branch_buy_value_limit.size = 8

-- Display: Branch Buy Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.branch_buy_value_limit.display = function(value)
  return "Branch Buy Value Limit: "..string.format("%.0f", value)
end

-- Dissect: Branch Buy Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.branch_buy_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.branch_buy_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.branch_buy_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.branch_buy_value_limit, range, value, display)

  return offset + length, value
end

-- Branch Id
nse_nsecm_orderentry_nnfdirect_v6_6.branch_id = {}

-- Size: Branch Id
nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.size = 2

-- Display: Branch Id
nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.display = function(value)
  return "Branch Id: "..value
end

-- Dissect: Branch Id
nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.branch_id, range, value, display)

  return offset + length, value
end

-- Branch Sell Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.branch_sell_value_limit = {}

-- Size: Branch Sell Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.branch_sell_value_limit.size = 8

-- Display: Branch Sell Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.branch_sell_value_limit.display = function(value)
  return "Branch Sell Value Limit: "..string.format("%.0f", value)
end

-- Dissect: Branch Sell Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.branch_sell_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.branch_sell_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.branch_sell_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.branch_sell_value_limit, range, value, display)

  return offset + length, value
end

-- Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.broker_id = {}

-- Size: Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size = 5

-- Display: Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.display = function(value)
  return "Broker Id: "..value
end

-- Dissect: Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.broker_id, range, value, display)

  return offset + length, value
end

-- Broker Name
nse_nsecm_orderentry_nnfdirect_v6_6.broker_name = {}

-- Size: Broker Name
nse_nsecm_orderentry_nnfdirect_v6_6.broker_name.size = 26

-- Display: Broker Name
nse_nsecm_orderentry_nnfdirect_v6_6.broker_name.display = function(value)
  return "Broker Name: "..value
end

-- Dissect: Broker Name
nse_nsecm_orderentry_nnfdirect_v6_6.broker_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.broker_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.broker_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.broker_name, range, value, display)

  return offset + length, value
end

-- Broker Status
nse_nsecm_orderentry_nnfdirect_v6_6.broker_status = {}

-- Size: Broker Status
nse_nsecm_orderentry_nnfdirect_v6_6.broker_status.size = 1

-- Display: Broker Status
nse_nsecm_orderentry_nnfdirect_v6_6.broker_status.display = function(value)
  return "Broker Status: "..value
end

-- Dissect: Broker Status
nse_nsecm_orderentry_nnfdirect_v6_6.broker_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.broker_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.broker_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.broker_status, range, value, display)

  return offset + length, value
end

-- Buy Account Number
nse_nsecm_orderentry_nnfdirect_v6_6.buy_account_number = {}

-- Size: Buy Account Number
nse_nsecm_orderentry_nnfdirect_v6_6.buy_account_number.size = 10

-- Display: Buy Account Number
nse_nsecm_orderentry_nnfdirect_v6_6.buy_account_number.display = function(value)
  return "Buy Account Number: "..value
end

-- Dissect: Buy Account Number
nse_nsecm_orderentry_nnfdirect_v6_6.buy_account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.buy_account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.buy_account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.buy_account_number, range, value, display)

  return offset + length, value
end

-- Buy Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.buy_broker_id = {}

-- Size: Buy Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.buy_broker_id.size = 5

-- Display: Buy Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.buy_broker_id.display = function(value)
  return "Buy Broker Id: "..value
end

-- Dissect: Buy Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.buy_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.buy_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.buy_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.buy_broker_id, range, value, display)

  return offset + length, value
end

-- Buy Pan
nse_nsecm_orderentry_nnfdirect_v6_6.buy_pan = {}

-- Size: Buy Pan
nse_nsecm_orderentry_nnfdirect_v6_6.buy_pan.size = 10

-- Display: Buy Pan
nse_nsecm_orderentry_nnfdirect_v6_6.buy_pan.display = function(value)
  return "Buy Pan: "..value
end

-- Dissect: Buy Pan
nse_nsecm_orderentry_nnfdirect_v6_6.buy_pan.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.buy_pan.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.buy_pan.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.buy_pan, range, value, display)

  return offset + length, value
end

-- Buy Sell
nse_nsecm_orderentry_nnfdirect_v6_6.buy_sell = {}

-- Size: Buy Sell
nse_nsecm_orderentry_nnfdirect_v6_6.buy_sell.size = 2

-- Display: Buy Sell
nse_nsecm_orderentry_nnfdirect_v6_6.buy_sell.display = function(value)
  return "Buy Sell: "..value
end

-- Dissect: Buy Sell
nse_nsecm_orderentry_nnfdirect_v6_6.buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.buy_sell.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.buy_sell, range, value, display)

  return offset + length, value
end

-- Call Auction 1 Flag
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_flag = {}

-- Size: Call Auction 1 Flag
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_flag.size = 2

-- Display: Call Auction 1 Flag
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_flag.display = function(value)
  return "Call Auction 1 Flag: "..value
end

-- Dissect: Call Auction 1 Flag
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_flag.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.call_auction_1_flag, range, value, display)

  return offset + length, value
end

-- Call Auction 1 Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_market_status = {}

-- Size: Call Auction 1 Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_market_status.size = 2

-- Display: Call Auction 1 Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_market_status.display = function(value)
  return "Call Auction 1 Market Status: "..value
end

-- Dissect: Call Auction 1 Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_market_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_market_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.call_auction_1_market_status, range, value, display)

  return offset + length, value
end

-- Call Auction 1 Short 2
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_short_2 = {}

-- Size: Call Auction 1 Short 2
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_short_2.size = 2

-- Display: Call Auction 1 Short 2
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_short_2.display = function(value)
  return "Call Auction 1 Short 2: "..value
end

-- Dissect: Call Auction 1 Short 2
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_short_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.call_auction_1_short_2, range, value, display)

  return offset + length, value
end

-- Call Auction 2 Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_market_status = {}

-- Size: Call Auction 2 Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_market_status.size = 2

-- Display: Call Auction 2 Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_market_status.display = function(value)
  return "Call Auction 2 Market Status: "..value
end

-- Dissect: Call Auction 2 Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_market_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_market_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.call_auction_2_market_status, range, value, display)

  return offset + length, value
end

-- Call Auction 2 Short 2
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_short_2 = {}

-- Size: Call Auction 2 Short 2
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_short_2.size = 2

-- Display: Call Auction 2 Short 2
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_short_2.display = function(value)
  return "Call Auction 2 Short 2: "..value
end

-- Dissect: Call Auction 2 Short 2
nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_short_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.call_auction_2_short_2, range, value, display)

  return offset + length, value
end

-- Checksum
nse_nsecm_orderentry_nnfdirect_v6_6.checksum = {}

-- Size: Checksum
nse_nsecm_orderentry_nnfdirect_v6_6.checksum.size = 16

-- Display: Checksum
nse_nsecm_orderentry_nnfdirect_v6_6.checksum.display = function(value)
  return "Checksum: "..value
end

-- Dissect: Checksum
nse_nsecm_orderentry_nnfdirect_v6_6.checksum.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.checksum.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.checksum, range, value, display)

  return offset + length, value
end

-- Colo User Bit
nse_nsecm_orderentry_nnfdirect_v6_6.colo_user_bit = {}

-- Size: Colo User Bit
nse_nsecm_orderentry_nnfdirect_v6_6.colo_user_bit.size = 1

-- Display: Colo User Bit
nse_nsecm_orderentry_nnfdirect_v6_6.colo_user_bit.display = function(value)
  return "Colo User Bit: "..value
end

-- Dissect: Colo User Bit
nse_nsecm_orderentry_nnfdirect_v6_6.colo_user_bit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.colo_user_bit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.colo_user_bit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.colo_user_bit, range, value, display)

  return offset + length, value
end

-- Competitor Period
nse_nsecm_orderentry_nnfdirect_v6_6.competitor_period = {}

-- Size: Competitor Period
nse_nsecm_orderentry_nnfdirect_v6_6.competitor_period.size = 2

-- Display: Competitor Period
nse_nsecm_orderentry_nnfdirect_v6_6.competitor_period.display = function(value)
  return "Competitor Period: "..value
end

-- Dissect: Competitor Period
nse_nsecm_orderentry_nnfdirect_v6_6.competitor_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.competitor_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.competitor_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.competitor_period, range, value, display)

  return offset + length, value
end

-- Credit Rating
nse_nsecm_orderentry_nnfdirect_v6_6.credit_rating = {}

-- Size: Credit Rating
nse_nsecm_orderentry_nnfdirect_v6_6.credit_rating.size = 19

-- Display: Credit Rating
nse_nsecm_orderentry_nnfdirect_v6_6.credit_rating.display = function(value)
  return "Credit Rating: "..value
end

-- Dissect: Credit Rating
nse_nsecm_orderentry_nnfdirect_v6_6.credit_rating.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.credit_rating.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.credit_rating.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.credit_rating, range, value, display)

  return offset + length, value
end

-- Cryptographic Additional Key
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_additional_key = {}

-- Size: Cryptographic Additional Key
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_additional_key.size = 12

-- Display: Cryptographic Additional Key
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_additional_key.display = function(value)
  return "Cryptographic Additional Key: "..value
end

-- Dissect: Cryptographic Additional Key
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_additional_key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_additional_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_additional_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.cryptographic_additional_key, range, value, display)

  return offset + length, value
end

-- Cryptographic Iv
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_iv = {}

-- Size: Cryptographic Iv
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_iv.size = 16

-- Display: Cryptographic Iv
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_iv.display = function(value)
  return "Cryptographic Iv: "..value
end

-- Dissect: Cryptographic Iv
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_iv.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_iv.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_iv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.cryptographic_iv, range, value, display)

  return offset + length, value
end

-- Cryptographic Key
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_key = {}

-- Size: Cryptographic Key
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_key.size = 32

-- Display: Cryptographic Key
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_key.display = function(value)
  return "Cryptographic Key: "..value
end

-- Dissect: Cryptographic Key
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.cryptographic_key, range, value, display)

  return offset + length, value
end

-- Data Payload
nse_nsecm_orderentry_nnfdirect_v6_6.data_payload = {}

-- Display: Data Payload
nse_nsecm_orderentry_nnfdirect_v6_6.data_payload.display = function(value)
  return "Data Payload: "..value
end

-- Dissect runtime sized field: Data Payload
nse_nsecm_orderentry_nnfdirect_v6_6.data_payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.data_payload.display(value, packet, parent, size)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.data_payload, range, value, display)

  return offset + size, value
end

-- Default Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.default_settlement_period = {}

-- Size: Default Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.default_settlement_period.size = 2

-- Display: Default Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.default_settlement_period.display = function(value)
  return "Default Settlement Period: "..value
end

-- Dissect: Default Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.default_settlement_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.default_settlement_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.default_settlement_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.default_settlement_period, range, value, display)

  return offset + length, value
end

-- Delete Flag
nse_nsecm_orderentry_nnfdirect_v6_6.delete_flag = {}

-- Size: Delete Flag
nse_nsecm_orderentry_nnfdirect_v6_6.delete_flag.size = 1

-- Display: Delete Flag
nse_nsecm_orderentry_nnfdirect_v6_6.delete_flag.display = function(value)
  return "Delete Flag: "..value
end

-- Dissect: Delete Flag
nse_nsecm_orderentry_nnfdirect_v6_6.delete_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.delete_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.delete_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.delete_flag, range, value, display)

  return offset + length, value
end

-- Disclosed Quantity Percent Allowed
nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_quantity_percent_allowed = {}

-- Size: Disclosed Quantity Percent Allowed
nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_quantity_percent_allowed.size = 2

-- Display: Disclosed Quantity Percent Allowed
nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_quantity_percent_allowed.display = function(value)
  return "Disclosed Quantity Percent Allowed: "..value
end

-- Dissect: Disclosed Quantity Percent Allowed
nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_quantity_percent_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_quantity_percent_allowed.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_quantity_percent_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.disclosed_quantity_percent_allowed, range, value, display)

  return offset + length, value
end

-- Disclosed Vol
nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol = {}

-- Size: Disclosed Vol
nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol.size = 4

-- Display: Disclosed Vol
nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol.display = function(value)
  return "Disclosed Vol: "..value
end

-- Dissect: Disclosed Vol
nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.disclosed_vol, range, value, display)

  return offset + length, value
end

-- Disclosed Vol Remaining
nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol_remaining = {}

-- Size: Disclosed Vol Remaining
nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol_remaining.size = 4

-- Display: Disclosed Vol Remaining
nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol_remaining.display = function(value)
  return "Disclosed Vol Remaining: "..value
end

-- Dissect: Disclosed Vol Remaining
nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.disclosed_vol_remaining, range, value, display)

  return offset + length, value
end

-- Dynamic Cryptographic Iv
nse_nsecm_orderentry_nnfdirect_v6_6.dynamic_cryptographic_iv = {}

-- Size: Dynamic Cryptographic Iv
nse_nsecm_orderentry_nnfdirect_v6_6.dynamic_cryptographic_iv.size = 8

-- Display: Dynamic Cryptographic Iv
nse_nsecm_orderentry_nnfdirect_v6_6.dynamic_cryptographic_iv.display = function(value)
  return "Dynamic Cryptographic Iv: "..value
end

-- Dissect: Dynamic Cryptographic Iv
nse_nsecm_orderentry_nnfdirect_v6_6.dynamic_cryptographic_iv.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.dynamic_cryptographic_iv.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.dynamic_cryptographic_iv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.dynamic_cryptographic_iv, range, value, display)

  return offset + length, value
end

-- End Time
nse_nsecm_orderentry_nnfdirect_v6_6.end_time = {}

-- Size: End Time
nse_nsecm_orderentry_nnfdirect_v6_6.end_time.size = 4

-- Dissect: End Time
nse_nsecm_orderentry_nnfdirect_v6_6.end_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.end_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.end_time
  if nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.end_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Entry Date Time
nse_nsecm_orderentry_nnfdirect_v6_6.entry_date_time = {}

-- Size: Entry Date Time
nse_nsecm_orderentry_nnfdirect_v6_6.entry_date_time.size = 4

-- Dissect: Entry Date Time
nse_nsecm_orderentry_nnfdirect_v6_6.entry_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.entry_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.entry_date_time
  if nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.entry_date_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Error Code
nse_nsecm_orderentry_nnfdirect_v6_6.error_code = {}

-- Size: Error Code
nse_nsecm_orderentry_nnfdirect_v6_6.error_code.size = 2

-- Display: Error Code
nse_nsecm_orderentry_nnfdirect_v6_6.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
nse_nsecm_orderentry_nnfdirect_v6_6.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.error_code, range, value, display)

  return offset + length, value
end

-- Error Message
nse_nsecm_orderentry_nnfdirect_v6_6.error_message = {}

-- Size: Error Message
nse_nsecm_orderentry_nnfdirect_v6_6.error_message.size = 128

-- Display: Error Message
nse_nsecm_orderentry_nnfdirect_v6_6.error_message.display = function(value)
  return "Error Message: "..value
end

-- Dissect: Error Message
nse_nsecm_orderentry_nnfdirect_v6_6.error_message.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.error_message.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.error_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.error_message, range, value, display)

  return offset + length, value
end

-- Exec Time Stamp
nse_nsecm_orderentry_nnfdirect_v6_6.exec_time_stamp = {}

-- Size: Exec Time Stamp
nse_nsecm_orderentry_nnfdirect_v6_6.exec_time_stamp.size = 8

-- Display: Exec Time Stamp
nse_nsecm_orderentry_nnfdirect_v6_6.exec_time_stamp.display = function(value)
  return "Exec Time Stamp: "..string.format("%.0f", value)
end

-- Dissect: Exec Time Stamp
nse_nsecm_orderentry_nnfdirect_v6_6.exec_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.exec_time_stamp.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.exec_time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.exec_time_stamp, range, value, display)

  return offset + length, value
end

-- Expiry Date
nse_nsecm_orderentry_nnfdirect_v6_6.expiry_date = {}

-- Size: Expiry Date
nse_nsecm_orderentry_nnfdirect_v6_6.expiry_date.size = 4

-- Dissect: Expiry Date
nse_nsecm_orderentry_nnfdirect_v6_6.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.expiry_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.expiry_date
  if nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.expiry_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Expulsion Date
nse_nsecm_orderentry_nnfdirect_v6_6.expulsion_date = {}

-- Size: Expulsion Date
nse_nsecm_orderentry_nnfdirect_v6_6.expulsion_date.size = 4

-- Display: Expulsion Date
nse_nsecm_orderentry_nnfdirect_v6_6.expulsion_date.display = function(value)
  return "Expulsion Date: "..value
end

-- Dissect: Expulsion Date
nse_nsecm_orderentry_nnfdirect_v6_6.expulsion_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.expulsion_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.expulsion_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.expulsion_date, range, value, display)

  return offset + length, value
end

-- Face Value
nse_nsecm_orderentry_nnfdirect_v6_6.face_value = {}

-- Size: Face Value
nse_nsecm_orderentry_nnfdirect_v6_6.face_value.size = 4

-- Display: Face Value
nse_nsecm_orderentry_nnfdirect_v6_6.face_value.display = function(value)
  return "Face Value: "..value
end

-- Dissect: Face Value
nse_nsecm_orderentry_nnfdirect_v6_6.face_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.face_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.face_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.face_value, range, value, display)

  return offset + length, value
end

-- Fill Number
nse_nsecm_orderentry_nnfdirect_v6_6.fill_number = {}

-- Size: Fill Number
nse_nsecm_orderentry_nnfdirect_v6_6.fill_number.size = 4

-- Display: Fill Number
nse_nsecm_orderentry_nnfdirect_v6_6.fill_number.display = function(value)
  return "Fill Number: "..value
end

-- Dissect: Fill Number
nse_nsecm_orderentry_nnfdirect_v6_6.fill_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.fill_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.fill_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.fill_number, range, value, display)

  return offset + length, value
end

-- Fill Price
nse_nsecm_orderentry_nnfdirect_v6_6.fill_price = {}

-- Size: Fill Price
nse_nsecm_orderentry_nnfdirect_v6_6.fill_price.size = 4

-- Display: Fill Price
nse_nsecm_orderentry_nnfdirect_v6_6.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Translate: Fill Price
nse_nsecm_orderentry_nnfdirect_v6_6.fill_price.translate = function(raw)
  return raw/100
end

-- Dissect: Fill Price
nse_nsecm_orderentry_nnfdirect_v6_6.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.fill_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_orderentry_nnfdirect_v6_6.fill_price.translate(raw)
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Qty
nse_nsecm_orderentry_nnfdirect_v6_6.fill_qty = {}

-- Size: Fill Qty
nse_nsecm_orderentry_nnfdirect_v6_6.fill_qty.size = 4

-- Display: Fill Qty
nse_nsecm_orderentry_nnfdirect_v6_6.fill_qty.display = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
nse_nsecm_orderentry_nnfdirect_v6_6.fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.fill_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Filler
nse_nsecm_orderentry_nnfdirect_v6_6.filler = {}

-- Size: Filler
nse_nsecm_orderentry_nnfdirect_v6_6.filler.size = 1

-- Display: Filler
nse_nsecm_orderentry_nnfdirect_v6_6.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
nse_nsecm_orderentry_nnfdirect_v6_6.filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.filler, range, value, display)

  return offset + length, value
end

-- Filler 9
nse_nsecm_orderentry_nnfdirect_v6_6.filler_9 = {}

-- Size: Filler 9
nse_nsecm_orderentry_nnfdirect_v6_6.filler_9.size = 1

-- Display: Filler 9
nse_nsecm_orderentry_nnfdirect_v6_6.filler_9.display = function(value)
  return "Filler 9: "..value
end

-- Dissect: Filler 9
nse_nsecm_orderentry_nnfdirect_v6_6.filler_9.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.filler_9.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.filler_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.filler_9, range, value, display)

  return offset + length, value
end

-- Freeze Percent
nse_nsecm_orderentry_nnfdirect_v6_6.freeze_percent = {}

-- Size: Freeze Percent
nse_nsecm_orderentry_nnfdirect_v6_6.freeze_percent.size = 2

-- Display: Freeze Percent
nse_nsecm_orderentry_nnfdirect_v6_6.freeze_percent.display = function(value)
  return "Freeze Percent: "..value
end

-- Dissect: Freeze Percent
nse_nsecm_orderentry_nnfdirect_v6_6.freeze_percent.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.freeze_percent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.freeze_percent.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.freeze_percent, range, value, display)

  return offset + length, value
end

-- Good Till Date
nse_nsecm_orderentry_nnfdirect_v6_6.good_till_date = {}

-- Size: Good Till Date
nse_nsecm_orderentry_nnfdirect_v6_6.good_till_date.size = 4

-- Display: Good Till Date
nse_nsecm_orderentry_nnfdirect_v6_6.good_till_date.display = function(value)
  return "Good Till Date: "..value
end

-- Dissect: Good Till Date
nse_nsecm_orderentry_nnfdirect_v6_6.good_till_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.good_till_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.good_till_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.good_till_date, range, value, display)

  return offset + length, value
end

-- Gtd
nse_nsecm_orderentry_nnfdirect_v6_6.gtd = {}

-- Size: Gtd
nse_nsecm_orderentry_nnfdirect_v6_6.gtd.size = 4

-- Display: Gtd
nse_nsecm_orderentry_nnfdirect_v6_6.gtd.display = function(value)
  return "Gtd: "..value
end

-- Dissect: Gtd
nse_nsecm_orderentry_nnfdirect_v6_6.gtd.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.gtd.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.gtd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.gtd, range, value, display)

  return offset + length, value
end

-- Header Timestamp
nse_nsecm_orderentry_nnfdirect_v6_6.header_timestamp = {}

-- Size: Header Timestamp
nse_nsecm_orderentry_nnfdirect_v6_6.header_timestamp.size = 8

-- Dissect: Header Timestamp
nse_nsecm_orderentry_nnfdirect_v6_6.header_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.header_timestamp.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.header_timestamp
  if nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.header_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber() + 315532800
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Initiator Type
nse_nsecm_orderentry_nnfdirect_v6_6.initiator_type = {}

-- Size: Initiator Type
nse_nsecm_orderentry_nnfdirect_v6_6.initiator_type.size = 2

-- Display: Initiator Type
nse_nsecm_orderentry_nnfdirect_v6_6.initiator_type.display = function(value)
  return "Initiator Type: "..value
end

-- Dissect: Initiator Type
nse_nsecm_orderentry_nnfdirect_v6_6.initiator_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.initiator_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.initiator_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.initiator_type, range, value, display)

  return offset + length, value
end

-- Inner Alpha Char
nse_nsecm_orderentry_nnfdirect_v6_6.inner_alpha_char = {}

-- Size: Inner Alpha Char
nse_nsecm_orderentry_nnfdirect_v6_6.inner_alpha_char.size = 2

-- Display: Inner Alpha Char
nse_nsecm_orderentry_nnfdirect_v6_6.inner_alpha_char.display = function(value)
  return "Inner Alpha Char: "..value
end

-- Dissect: Inner Alpha Char
nse_nsecm_orderentry_nnfdirect_v6_6.inner_alpha_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.inner_alpha_char.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.inner_alpha_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_alpha_char, range, value, display)

  return offset + length, value
end

-- Inner Error Code
nse_nsecm_orderentry_nnfdirect_v6_6.inner_error_code = {}

-- Size: Inner Error Code
nse_nsecm_orderentry_nnfdirect_v6_6.inner_error_code.size = 2

-- Display: Inner Error Code
nse_nsecm_orderentry_nnfdirect_v6_6.inner_error_code.display = function(value)
  return "Inner Error Code: "..value
end

-- Dissect: Inner Error Code
nse_nsecm_orderentry_nnfdirect_v6_6.inner_error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.inner_error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.inner_error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_error_code, range, value, display)

  return offset + length, value
end

-- Inner Log Time
nse_nsecm_orderentry_nnfdirect_v6_6.inner_log_time = {}

-- Size: Inner Log Time
nse_nsecm_orderentry_nnfdirect_v6_6.inner_log_time.size = 4

-- Dissect: Inner Log Time
nse_nsecm_orderentry_nnfdirect_v6_6.inner_log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.inner_log_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_log_time
  if nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_log_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Inner Message Length
nse_nsecm_orderentry_nnfdirect_v6_6.inner_message_length = {}

-- Size: Inner Message Length
nse_nsecm_orderentry_nnfdirect_v6_6.inner_message_length.size = 2

-- Display: Inner Message Length
nse_nsecm_orderentry_nnfdirect_v6_6.inner_message_length.display = function(value)
  return "Inner Message Length: "..value
end

-- Dissect: Inner Message Length
nse_nsecm_orderentry_nnfdirect_v6_6.inner_message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.inner_message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.inner_message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_message_length, range, value, display)

  return offset + length, value
end

-- Inner Time Stamp 1
nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_1 = {}

-- Size: Inner Time Stamp 1
nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_1.size = 8

-- Display: Inner Time Stamp 1
nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_1.display = function(value)
  return "Inner Time Stamp 1: "..value
end

-- Dissect: Inner Time Stamp 1
nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_time_stamp_1, range, value, display)

  return offset + length, value
end

-- Inner Time Stamp 2
nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_2 = {}

-- Size: Inner Time Stamp 2
nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_2.size = 8

-- Display: Inner Time Stamp 2
nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_2.display = function(value)
  return "Inner Time Stamp 2: "..value
end

-- Dissect: Inner Time Stamp 2
nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_time_stamp_2, range, value, display)

  return offset + length, value
end

-- Inner Timestamp
nse_nsecm_orderentry_nnfdirect_v6_6.inner_timestamp = {}

-- Size: Inner Timestamp
nse_nsecm_orderentry_nnfdirect_v6_6.inner_timestamp.size = 8

-- Dissect: Inner Timestamp
nse_nsecm_orderentry_nnfdirect_v6_6.inner_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.inner_timestamp.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_timestamp
  if nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber() + 315532800
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Inner Trader Id
nse_nsecm_orderentry_nnfdirect_v6_6.inner_trader_id = {}

-- Size: Inner Trader Id
nse_nsecm_orderentry_nnfdirect_v6_6.inner_trader_id.size = 4

-- Display: Inner Trader Id
nse_nsecm_orderentry_nnfdirect_v6_6.inner_trader_id.display = function(value)
  return "Inner Trader Id: "..value
end

-- Dissect: Inner Trader Id
nse_nsecm_orderentry_nnfdirect_v6_6.inner_trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.inner_trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.inner_trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_trader_id, range, value, display)

  return offset + length, value
end

-- Inner Transaction Code
nse_nsecm_orderentry_nnfdirect_v6_6.inner_transaction_code = {}

-- Size: Inner Transaction Code
nse_nsecm_orderentry_nnfdirect_v6_6.inner_transaction_code.size = 2

-- Display: Inner Transaction Code
nse_nsecm_orderentry_nnfdirect_v6_6.inner_transaction_code.display = function(value)
  return "Inner Transaction Code: "..value
end

-- Dissect: Inner Transaction Code
nse_nsecm_orderentry_nnfdirect_v6_6.inner_transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.inner_transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.inner_transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_transaction_code, range, value, display)

  return offset + length, value
end

-- Instrument Type
nse_nsecm_orderentry_nnfdirect_v6_6.instrument_type = {}

-- Size: Instrument Type
nse_nsecm_orderentry_nnfdirect_v6_6.instrument_type.size = 2

-- Display: Instrument Type
nse_nsecm_orderentry_nnfdirect_v6_6.instrument_type.display = function(value)
  return "Instrument Type: "..value
end

-- Dissect: Instrument Type
nse_nsecm_orderentry_nnfdirect_v6_6.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.instrument_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Interest Payment Date
nse_nsecm_orderentry_nnfdirect_v6_6.interest_payment_date = {}

-- Size: Interest Payment Date
nse_nsecm_orderentry_nnfdirect_v6_6.interest_payment_date.size = 4

-- Display: Interest Payment Date
nse_nsecm_orderentry_nnfdirect_v6_6.interest_payment_date.display = function(value)
  return "Interest Payment Date: "..value
end

-- Dissect: Interest Payment Date
nse_nsecm_orderentry_nnfdirect_v6_6.interest_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.interest_payment_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.interest_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.interest_payment_date, range, value, display)

  return offset + length, value
end

-- Ip Address
nse_nsecm_orderentry_nnfdirect_v6_6.ip_address = {}

-- Size: Ip Address
nse_nsecm_orderentry_nnfdirect_v6_6.ip_address.size = 16

-- Display: Ip Address
nse_nsecm_orderentry_nnfdirect_v6_6.ip_address.display = function(value)
  return "Ip Address: "..value
end

-- Dissect: Ip Address
nse_nsecm_orderentry_nnfdirect_v6_6.ip_address.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.ip_address.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.ip_address.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.ip_address, range, value, display)

  return offset + length, value
end

-- Isin Number
nse_nsecm_orderentry_nnfdirect_v6_6.isin_number = {}

-- Size: Isin Number
nse_nsecm_orderentry_nnfdirect_v6_6.isin_number.size = 12

-- Display: Isin Number
nse_nsecm_orderentry_nnfdirect_v6_6.isin_number.display = function(value)
  return "Isin Number: "..value
end

-- Dissect: Isin Number
nse_nsecm_orderentry_nnfdirect_v6_6.isin_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.isin_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.isin_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.isin_number, range, value, display)

  return offset + length, value
end

-- Issue Maturity Date
nse_nsecm_orderentry_nnfdirect_v6_6.issue_maturity_date = {}

-- Size: Issue Maturity Date
nse_nsecm_orderentry_nnfdirect_v6_6.issue_maturity_date.size = 4

-- Display: Issue Maturity Date
nse_nsecm_orderentry_nnfdirect_v6_6.issue_maturity_date.display = function(value)
  return "Issue Maturity Date: "..value
end

-- Dissect: Issue Maturity Date
nse_nsecm_orderentry_nnfdirect_v6_6.issue_maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.issue_maturity_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.issue_maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.issue_maturity_date, range, value, display)

  return offset + length, value
end

-- Issue Start Date
nse_nsecm_orderentry_nnfdirect_v6_6.issue_start_date = {}

-- Size: Issue Start Date
nse_nsecm_orderentry_nnfdirect_v6_6.issue_start_date.size = 4

-- Display: Issue Start Date
nse_nsecm_orderentry_nnfdirect_v6_6.issue_start_date.display = function(value)
  return "Issue Start Date: "..value
end

-- Dissect: Issue Start Date
nse_nsecm_orderentry_nnfdirect_v6_6.issue_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.issue_start_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.issue_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.issue_start_date, range, value, display)

  return offset + length, value
end

-- Issued Capital
nse_nsecm_orderentry_nnfdirect_v6_6.issued_capital = {}

-- Size: Issued Capital
nse_nsecm_orderentry_nnfdirect_v6_6.issued_capital.size = 8

-- Display: Issued Capital
nse_nsecm_orderentry_nnfdirect_v6_6.issued_capital.display = function(value)
  return "Issued Capital: "..string.format("%.0f", value)
end

-- Dissect: Issued Capital
nse_nsecm_orderentry_nnfdirect_v6_6.issued_capital.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.issued_capital.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.issued_capital.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.issued_capital, range, value, display)

  return offset + length, value
end

-- Last Activity Reference
nse_nsecm_orderentry_nnfdirect_v6_6.last_activity_reference = {}

-- Size: Last Activity Reference
nse_nsecm_orderentry_nnfdirect_v6_6.last_activity_reference.size = 8

-- Display: Last Activity Reference
nse_nsecm_orderentry_nnfdirect_v6_6.last_activity_reference.display = function(value)
  return "Last Activity Reference: "..value
end

-- Dissect: Last Activity Reference
nse_nsecm_orderentry_nnfdirect_v6_6.last_activity_reference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.last_activity_reference.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.last_activity_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_activity_reference, range, value, display)

  return offset + length, value
end

-- Last Modified
nse_nsecm_orderentry_nnfdirect_v6_6.last_modified = {}

-- Size: Last Modified
nse_nsecm_orderentry_nnfdirect_v6_6.last_modified.size = 4

-- Dissect: Last Modified
nse_nsecm_orderentry_nnfdirect_v6_6.last_modified.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.last_modified.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_modified
  if nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_modified_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Last Password Change Date
nse_nsecm_orderentry_nnfdirect_v6_6.last_password_change_date = {}

-- Size: Last Password Change Date
nse_nsecm_orderentry_nnfdirect_v6_6.last_password_change_date.size = 4

-- Dissect: Last Password Change Date
nse_nsecm_orderentry_nnfdirect_v6_6.last_password_change_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.last_password_change_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_password_change_date
  if nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_password_change_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Last Password Change Date Time
nse_nsecm_orderentry_nnfdirect_v6_6.last_password_change_date_time = {}

-- Size: Last Password Change Date Time
nse_nsecm_orderentry_nnfdirect_v6_6.last_password_change_date_time.size = 4

-- Dissect: Last Password Change Date Time
nse_nsecm_orderentry_nnfdirect_v6_6.last_password_change_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.last_password_change_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_password_change_date_time
  if nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_password_change_date_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Last Update Participant Time
nse_nsecm_orderentry_nnfdirect_v6_6.last_update_participant_time = {}

-- Size: Last Update Participant Time
nse_nsecm_orderentry_nnfdirect_v6_6.last_update_participant_time.size = 4

-- Dissect: Last Update Participant Time
nse_nsecm_orderentry_nnfdirect_v6_6.last_update_participant_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.last_update_participant_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_update_participant_time
  if nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_update_participant_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Last Update Security Time
nse_nsecm_orderentry_nnfdirect_v6_6.last_update_security_time = {}

-- Size: Last Update Security Time
nse_nsecm_orderentry_nnfdirect_v6_6.last_update_security_time.size = 4

-- Dissect: Last Update Security Time
nse_nsecm_orderentry_nnfdirect_v6_6.last_update_security_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.last_update_security_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_update_security_time
  if nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.last_update_security_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Listing Date
nse_nsecm_orderentry_nnfdirect_v6_6.listing_date = {}

-- Size: Listing Date
nse_nsecm_orderentry_nnfdirect_v6_6.listing_date.size = 4

-- Display: Listing Date
nse_nsecm_orderentry_nnfdirect_v6_6.listing_date.display = function(value)
  return "Listing Date: "..value
end

-- Dissect: Listing Date
nse_nsecm_orderentry_nnfdirect_v6_6.listing_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.listing_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.listing_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.listing_date, range, value, display)

  return offset + length, value
end

-- Local Update Date Time
nse_nsecm_orderentry_nnfdirect_v6_6.local_update_date_time = {}

-- Size: Local Update Date Time
nse_nsecm_orderentry_nnfdirect_v6_6.local_update_date_time.size = 4

-- Display: Local Update Date Time
nse_nsecm_orderentry_nnfdirect_v6_6.local_update_date_time.display = function(value)
  return "Local Update Date Time: "..value
end

-- Dissect: Local Update Date Time
nse_nsecm_orderentry_nnfdirect_v6_6.local_update_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.local_update_date_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.local_update_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.local_update_date_time, range, value, display)

  return offset + length, value
end

-- Log Time
nse_nsecm_orderentry_nnfdirect_v6_6.log_time = {}

-- Size: Log Time
nse_nsecm_orderentry_nnfdirect_v6_6.log_time.size = 4

-- Dissect: Log Time
nse_nsecm_orderentry_nnfdirect_v6_6.log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.log_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.log_time
  if nse_nsecm_orderentry_nnfdirect_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.log_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Market Index
nse_nsecm_orderentry_nnfdirect_v6_6.market_index = {}

-- Size: Market Index
nse_nsecm_orderentry_nnfdirect_v6_6.market_index.size = 4

-- Display: Market Index
nse_nsecm_orderentry_nnfdirect_v6_6.market_index.display = function(value)
  return "Market Index: "..value
end

-- Dissect: Market Index
nse_nsecm_orderentry_nnfdirect_v6_6.market_index.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.market_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.market_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.market_index, range, value, display)

  return offset + length, value
end

-- Market Type
nse_nsecm_orderentry_nnfdirect_v6_6.market_type = {}

-- Size: Market Type
nse_nsecm_orderentry_nnfdirect_v6_6.market_type.size = 2

-- Display: Market Type
nse_nsecm_orderentry_nnfdirect_v6_6.market_type.labels = {
  [1] = "Market Type: Normal Market (1)",
  [2] = "Market Type: Odd Lot Market (2)",
  [3] = "Market Type: Spot Market (3)",
  [4] = "Market Type: Auction Market (4)",
  [5] = "Market Type: Call Auction 1 Market (5)",
  [6] = "Market Type: Call Auction 2 Market (6)",
}

nse_nsecm_orderentry_nnfdirect_v6_6.market_type.display = function(value)
  return nse_nsecm_orderentry_nnfdirect_v6_6.market_type.labels[value] or "Market Type: Unknown("..value..")"
end

-- Dissect: Market Type
nse_nsecm_orderentry_nnfdirect_v6_6.market_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.market_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.market_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.market_type, range, value, display)

  return offset + length, value
end

-- Maximum Gtc Days
nse_nsecm_orderentry_nnfdirect_v6_6.maximum_gtc_days = {}

-- Size: Maximum Gtc Days
nse_nsecm_orderentry_nnfdirect_v6_6.maximum_gtc_days.size = 2

-- Display: Maximum Gtc Days
nse_nsecm_orderentry_nnfdirect_v6_6.maximum_gtc_days.display = function(value)
  return "Maximum Gtc Days: "..value
end

-- Dissect: Maximum Gtc Days
nse_nsecm_orderentry_nnfdirect_v6_6.maximum_gtc_days.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.maximum_gtc_days.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.maximum_gtc_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.maximum_gtc_days, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nsecm_orderentry_nnfdirect_v6_6.message_length = {}

-- Size: Message Length
nse_nsecm_orderentry_nnfdirect_v6_6.message_length.size = 2

-- Display: Message Length
nse_nsecm_orderentry_nnfdirect_v6_6.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nsecm_orderentry_nnfdirect_v6_6.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Min Fill Aon
nse_nsecm_orderentry_nnfdirect_v6_6.min_fill_aon = {}

-- Size: Min Fill Aon
nse_nsecm_orderentry_nnfdirect_v6_6.min_fill_aon.size = 4

-- Display: Min Fill Aon
nse_nsecm_orderentry_nnfdirect_v6_6.min_fill_aon.display = function(value)
  return "Min Fill Aon: "..value
end

-- Dissect: Min Fill Aon
nse_nsecm_orderentry_nnfdirect_v6_6.min_fill_aon.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.min_fill_aon.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.min_fill_aon.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.min_fill_aon, range, value, display)

  return offset + length, value
end

-- Mkt Maker Min Qty
nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_min_qty = {}

-- Size: Mkt Maker Min Qty
nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_min_qty.size = 4

-- Display: Mkt Maker Min Qty
nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_min_qty.display = function(value)
  return "Mkt Maker Min Qty: "..value
end

-- Dissect: Mkt Maker Min Qty
nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_min_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_min_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.mkt_maker_min_qty, range, value, display)

  return offset + length, value
end

-- Mkt Maker Spread
nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_spread = {}

-- Size: Mkt Maker Spread
nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_spread.size = 4

-- Display: Mkt Maker Spread
nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_spread.display = function(value)
  return "Mkt Maker Spread: "..value
end

-- Dissect: Mkt Maker Spread
nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_spread.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_spread.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.mkt_maker_spread, range, value, display)

  return offset + length, value
end

-- Mod Cxl By
nse_nsecm_orderentry_nnfdirect_v6_6.mod_cxl_by = {}

-- Size: Mod Cxl By
nse_nsecm_orderentry_nnfdirect_v6_6.mod_cxl_by.size = 1

-- Display: Mod Cxl By
nse_nsecm_orderentry_nnfdirect_v6_6.mod_cxl_by.display = function(value)
  return "Mod Cxl By: "..value
end

-- Dissect: Mod Cxl By
nse_nsecm_orderentry_nnfdirect_v6_6.mod_cxl_by.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.mod_cxl_by.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.mod_cxl_by.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.mod_cxl_by, range, value, display)

  return offset + length, value
end

-- Msg
nse_nsecm_orderentry_nnfdirect_v6_6.msg = {}

-- Size: Msg
nse_nsecm_orderentry_nnfdirect_v6_6.msg.size = 240

-- Display: Msg
nse_nsecm_orderentry_nnfdirect_v6_6.msg.display = function(value)
  return "Msg: "..value
end

-- Dissect: Msg
nse_nsecm_orderentry_nnfdirect_v6_6.msg.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.msg.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.msg.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.msg, range, value, display)

  return offset + length, value
end

-- Msg Length
nse_nsecm_orderentry_nnfdirect_v6_6.msg_length = {}

-- Size: Msg Length
nse_nsecm_orderentry_nnfdirect_v6_6.msg_length.size = 2

-- Display: Msg Length
nse_nsecm_orderentry_nnfdirect_v6_6.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
nse_nsecm_orderentry_nnfdirect_v6_6.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.msg_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Name
nse_nsecm_orderentry_nnfdirect_v6_6.name = {}

-- Size: Name
nse_nsecm_orderentry_nnfdirect_v6_6.name.size = 25

-- Display: Name
nse_nsecm_orderentry_nnfdirect_v6_6.name.display = function(value)
  return "Name: "..value
end

-- Dissect: Name
nse_nsecm_orderentry_nnfdirect_v6_6.name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.name, range, value, display)

  return offset + length, value
end

-- New Password
nse_nsecm_orderentry_nnfdirect_v6_6.new_password = {}

-- Size: New Password
nse_nsecm_orderentry_nnfdirect_v6_6.new_password.size = 8

-- Display: New Password
nse_nsecm_orderentry_nnfdirect_v6_6.new_password.display = function(value)
  return "New Password: "..value
end

-- Dissect: New Password
nse_nsecm_orderentry_nnfdirect_v6_6.new_password.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.new_password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.new_password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.new_password, range, value, display)

  return offset + length, value
end

-- New Volume
nse_nsecm_orderentry_nnfdirect_v6_6.new_volume = {}

-- Size: New Volume
nse_nsecm_orderentry_nnfdirect_v6_6.new_volume.size = 4

-- Display: New Volume
nse_nsecm_orderentry_nnfdirect_v6_6.new_volume.display = function(value)
  return "New Volume: "..value
end

-- Dissect: New Volume
nse_nsecm_orderentry_nnfdirect_v6_6.new_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.new_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.new_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.new_volume, range, value, display)

  return offset + length, value
end

-- Nnf Field
nse_nsecm_orderentry_nnfdirect_v6_6.nnf_field = {}

-- Size: Nnf Field
nse_nsecm_orderentry_nnfdirect_v6_6.nnf_field.size = 8

-- Display: Nnf Field
nse_nsecm_orderentry_nnfdirect_v6_6.nnf_field.display = function(value)
  return "Nnf Field: "..string.format("%.0f", value)
end

-- Dissect: Nnf Field
nse_nsecm_orderentry_nnfdirect_v6_6.nnf_field.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.nnf_field.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.nnf_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.nnf_field, range, value, display)

  return offset + length, value
end

-- No Delivery End Date
nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_end_date = {}

-- Size: No Delivery End Date
nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_end_date.size = 4

-- Display: No Delivery End Date
nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_end_date.display = function(value)
  return "No Delivery End Date: "..value
end

-- Dissect: No Delivery End Date
nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_end_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_end_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.no_delivery_end_date, range, value, display)

  return offset + length, value
end

-- No Delivery Start Date
nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_start_date = {}

-- Size: No Delivery Start Date
nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_start_date.size = 4

-- Display: No Delivery Start Date
nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_start_date.display = function(value)
  return "No Delivery Start Date: "..value
end

-- Dissect: No Delivery Start Date
nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_start_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.no_delivery_start_date, range, value, display)

  return offset + length, value
end

-- Normal
nse_nsecm_orderentry_nnfdirect_v6_6.normal = {}

-- Size: Normal
nse_nsecm_orderentry_nnfdirect_v6_6.normal.size = 2

-- Display: Normal
nse_nsecm_orderentry_nnfdirect_v6_6.normal.display = function(value)
  return "Normal: "..value
end

-- Dissect: Normal
nse_nsecm_orderentry_nnfdirect_v6_6.normal.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.normal.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.normal.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.normal, range, value, display)

  return offset + length, value
end

-- Normal Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.normal_market_status = {}

-- Size: Normal Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.normal_market_status.size = 2

-- Display: Normal Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.normal_market_status.display = function(value)
  return "Normal Market Status: "..value
end

-- Dissect: Normal Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.normal_market_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.normal_market_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.normal_market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.normal_market_status, range, value, display)

  return offset + length, value
end

-- Number Of Records
nse_nsecm_orderentry_nnfdirect_v6_6.number_of_records = {}

-- Size: Number Of Records
nse_nsecm_orderentry_nnfdirect_v6_6.number_of_records.size = 2

-- Display: Number Of Records
nse_nsecm_orderentry_nnfdirect_v6_6.number_of_records.display = function(value)
  return "Number Of Records: "..value
end

-- Dissect: Number Of Records
nse_nsecm_orderentry_nnfdirect_v6_6.number_of_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.number_of_records.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.number_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.number_of_records, range, value, display)

  return offset + length, value
end

-- Odd Lot Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.odd_lot_market_status = {}

-- Size: Odd Lot Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.odd_lot_market_status.size = 2

-- Display: Odd Lot Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.odd_lot_market_status.display = function(value)
  return "Odd Lot Market Status: "..value
end

-- Dissect: Odd Lot Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.odd_lot_market_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.odd_lot_market_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.odd_lot_market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.odd_lot_market_status, range, value, display)

  return offset + length, value
end

-- Oddlot
nse_nsecm_orderentry_nnfdirect_v6_6.oddlot = {}

-- Size: Oddlot
nse_nsecm_orderentry_nnfdirect_v6_6.oddlot.size = 2

-- Display: Oddlot
nse_nsecm_orderentry_nnfdirect_v6_6.oddlot.display = function(value)
  return "Oddlot: "..value
end

-- Dissect: Oddlot
nse_nsecm_orderentry_nnfdirect_v6_6.oddlot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.oddlot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.oddlot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.oddlot, range, value, display)

  return offset + length, value
end

-- Oe Remarks
nse_nsecm_orderentry_nnfdirect_v6_6.oe_remarks = {}

-- Size: Oe Remarks
nse_nsecm_orderentry_nnfdirect_v6_6.oe_remarks.size = 25

-- Display: Oe Remarks
nse_nsecm_orderentry_nnfdirect_v6_6.oe_remarks.display = function(value)
  return "Oe Remarks: "..value
end

-- Dissect: Oe Remarks
nse_nsecm_orderentry_nnfdirect_v6_6.oe_remarks.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.oe_remarks.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.oe_remarks.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.oe_remarks, range, value, display)

  return offset + length, value
end

-- Op Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.op_broker_id = {}

-- Size: Op Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.op_broker_id.size = 5

-- Display: Op Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.op_broker_id.display = function(value)
  return "Op Broker Id: "..value
end

-- Dissect: Op Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.op_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.op_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.op_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.op_broker_id, range, value, display)

  return offset + length, value
end

-- Op Order Number
nse_nsecm_orderentry_nnfdirect_v6_6.op_order_number = {}

-- Size: Op Order Number
nse_nsecm_orderentry_nnfdirect_v6_6.op_order_number.size = 8

-- Display: Op Order Number
nse_nsecm_orderentry_nnfdirect_v6_6.op_order_number.display = function(value)
  return "Op Order Number: "..string.format("%.0f", value)
end

-- Dissect: Op Order Number
nse_nsecm_orderentry_nnfdirect_v6_6.op_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.op_order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.op_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.op_order_number, range, value, display)

  return offset + length, value
end

-- Order Number
nse_nsecm_orderentry_nnfdirect_v6_6.order_number = {}

-- Size: Order Number
nse_nsecm_orderentry_nnfdirect_v6_6.order_number.size = 8

-- Display: Order Number
nse_nsecm_orderentry_nnfdirect_v6_6.order_number.display = function(value)
  return "Order Number: "..string.format("%.0f", value)
end

-- Dissect: Order Number
nse_nsecm_orderentry_nnfdirect_v6_6.order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Qty Limit
nse_nsecm_orderentry_nnfdirect_v6_6.order_qty_limit = {}

-- Size: Order Qty Limit
nse_nsecm_orderentry_nnfdirect_v6_6.order_qty_limit.size = 8

-- Display: Order Qty Limit
nse_nsecm_orderentry_nnfdirect_v6_6.order_qty_limit.display = function(value)
  return "Order Qty Limit: "..string.format("%.0f", value)
end

-- Dissect: Order Qty Limit
nse_nsecm_orderentry_nnfdirect_v6_6.order_qty_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.order_qty_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.order_qty_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_qty_limit, range, value, display)

  return offset + length, value
end

-- Order Val Limit
nse_nsecm_orderentry_nnfdirect_v6_6.order_val_limit = {}

-- Size: Order Val Limit
nse_nsecm_orderentry_nnfdirect_v6_6.order_val_limit.size = 8

-- Display: Order Val Limit
nse_nsecm_orderentry_nnfdirect_v6_6.order_val_limit.display = function(value)
  return "Order Val Limit: "..string.format("%.0f", value)
end

-- Dissect: Order Val Limit
nse_nsecm_orderentry_nnfdirect_v6_6.order_val_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.order_val_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.order_val_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_val_limit, range, value, display)

  return offset + length, value
end

-- Original Vol
nse_nsecm_orderentry_nnfdirect_v6_6.original_vol = {}

-- Size: Original Vol
nse_nsecm_orderentry_nnfdirect_v6_6.original_vol.size = 4

-- Display: Original Vol
nse_nsecm_orderentry_nnfdirect_v6_6.original_vol.display = function(value)
  return "Original Vol: "..value
end

-- Dissect: Original Vol
nse_nsecm_orderentry_nnfdirect_v6_6.original_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.original_vol.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.original_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.original_vol, range, value, display)

  return offset + length, value
end

-- Packet Length
nse_nsecm_orderentry_nnfdirect_v6_6.packet_length = {}

-- Size: Packet Length
nse_nsecm_orderentry_nnfdirect_v6_6.packet_length.size = 2

-- Display: Packet Length
nse_nsecm_orderentry_nnfdirect_v6_6.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nse_nsecm_orderentry_nnfdirect_v6_6.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
nse_nsecm_orderentry_nnfdirect_v6_6.packet_sequence_number = {}

-- Size: Packet Sequence Number
nse_nsecm_orderentry_nnfdirect_v6_6.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
nse_nsecm_orderentry_nnfdirect_v6_6.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
nse_nsecm_orderentry_nnfdirect_v6_6.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Page Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.page_indicator = {}

-- Size: Page Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.page_indicator.size = 1

-- Display: Page Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.page_indicator.display = function(value)
  return "Page Indicator: "..value
end

-- Dissect: Page Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.page_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.page_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.page_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.page_indicator, range, value, display)

  return offset + length, value
end

-- Pan
nse_nsecm_orderentry_nnfdirect_v6_6.pan = {}

-- Size: Pan
nse_nsecm_orderentry_nnfdirect_v6_6.pan.size = 10

-- Display: Pan
nse_nsecm_orderentry_nnfdirect_v6_6.pan.display = function(value)
  return "Pan: "..value
end

-- Dissect: Pan
nse_nsecm_orderentry_nnfdirect_v6_6.pan.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.pan.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.pan.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.pan, range, value, display)

  return offset + length, value
end

-- Participant Type
nse_nsecm_orderentry_nnfdirect_v6_6.participant_type = {}

-- Size: Participant Type
nse_nsecm_orderentry_nnfdirect_v6_6.participant_type.size = 1

-- Display: Participant Type
nse_nsecm_orderentry_nnfdirect_v6_6.participant_type.display = function(value)
  return "Participant Type: "..value
end

-- Dissect: Participant Type
nse_nsecm_orderentry_nnfdirect_v6_6.participant_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.participant_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.participant_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.participant_type, range, value, display)

  return offset + length, value
end

-- Password
nse_nsecm_orderentry_nnfdirect_v6_6.password = {}

-- Size: Password
nse_nsecm_orderentry_nnfdirect_v6_6.password.size = 8

-- Display: Password
nse_nsecm_orderentry_nnfdirect_v6_6.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nse_nsecm_orderentry_nnfdirect_v6_6.password.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.password, range, value, display)

  return offset + length, value
end

-- Permitted To Trade
nse_nsecm_orderentry_nnfdirect_v6_6.permitted_to_trade = {}

-- Size: Permitted To Trade
nse_nsecm_orderentry_nnfdirect_v6_6.permitted_to_trade.size = 2

-- Display: Permitted To Trade
nse_nsecm_orderentry_nnfdirect_v6_6.permitted_to_trade.display = function(value)
  return "Permitted To Trade: "..value
end

-- Dissect: Permitted To Trade
nse_nsecm_orderentry_nnfdirect_v6_6.permitted_to_trade.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.permitted_to_trade.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.permitted_to_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.permitted_to_trade, range, value, display)

  return offset + length, value
end

-- Port
nse_nsecm_orderentry_nnfdirect_v6_6.port = {}

-- Size: Port
nse_nsecm_orderentry_nnfdirect_v6_6.port.size = 4

-- Display: Port
nse_nsecm_orderentry_nnfdirect_v6_6.port.display = function(value)
  return "Port: "..value
end

-- Dissect: Port
nse_nsecm_orderentry_nnfdirect_v6_6.port.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.port.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.port.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.port, range, value, display)

  return offset + length, value
end

-- Price
nse_nsecm_orderentry_nnfdirect_v6_6.price = {}

-- Size: Price
nse_nsecm_orderentry_nnfdirect_v6_6.price.size = 4

-- Display: Price
nse_nsecm_orderentry_nnfdirect_v6_6.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nsecm_orderentry_nnfdirect_v6_6.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
nse_nsecm_orderentry_nnfdirect_v6_6.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_orderentry_nnfdirect_v6_6.price.translate(raw)
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.price, range, value, display)

  return offset + length, value
end

-- Pro Client
nse_nsecm_orderentry_nnfdirect_v6_6.pro_client = {}

-- Size: Pro Client
nse_nsecm_orderentry_nnfdirect_v6_6.pro_client.size = 2

-- Display: Pro Client
nse_nsecm_orderentry_nnfdirect_v6_6.pro_client.display = function(value)
  return "Pro Client: "..value
end

-- Dissect: Pro Client
nse_nsecm_orderentry_nnfdirect_v6_6.pro_client.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.pro_client.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.pro_client.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.pro_client, range, value, display)

  return offset + length, value
end

-- Re Admission Date
nse_nsecm_orderentry_nnfdirect_v6_6.re_admission_date = {}

-- Size: Re Admission Date
nse_nsecm_orderentry_nnfdirect_v6_6.re_admission_date.size = 4

-- Display: Re Admission Date
nse_nsecm_orderentry_nnfdirect_v6_6.re_admission_date.display = function(value)
  return "Re Admission Date: "..value
end

-- Dissect: Re Admission Date
nse_nsecm_orderentry_nnfdirect_v6_6.re_admission_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.re_admission_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.re_admission_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.re_admission_date, range, value, display)

  return offset + length, value
end

-- Reason Code
nse_nsecm_orderentry_nnfdirect_v6_6.reason_code = {}

-- Size: Reason Code
nse_nsecm_orderentry_nnfdirect_v6_6.reason_code.size = 2

-- Display: Reason Code
nse_nsecm_orderentry_nnfdirect_v6_6.reason_code.display = function(value)
  return "Reason Code: "..value
end

-- Dissect: Reason Code
nse_nsecm_orderentry_nnfdirect_v6_6.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reason_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Record Date
nse_nsecm_orderentry_nnfdirect_v6_6.record_date = {}

-- Size: Record Date
nse_nsecm_orderentry_nnfdirect_v6_6.record_date.size = 4

-- Display: Record Date
nse_nsecm_orderentry_nnfdirect_v6_6.record_date.display = function(value)
  return "Record Date: "..value
end

-- Dissect: Record Date
nse_nsecm_orderentry_nnfdirect_v6_6.record_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.record_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.record_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.record_date, range, value, display)

  return offset + length, value
end

-- Remaining Vol
nse_nsecm_orderentry_nnfdirect_v6_6.remaining_vol = {}

-- Size: Remaining Vol
nse_nsecm_orderentry_nnfdirect_v6_6.remaining_vol.size = 4

-- Display: Remaining Vol
nse_nsecm_orderentry_nnfdirect_v6_6.remaining_vol.display = function(value)
  return "Remaining Vol: "..value
end

-- Dissect: Remaining Vol
nse_nsecm_orderentry_nnfdirect_v6_6.remaining_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.remaining_vol.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.remaining_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.remaining_vol, range, value, display)

  return offset + length, value
end

-- Remark
nse_nsecm_orderentry_nnfdirect_v6_6.remark = {}

-- Size: Remark
nse_nsecm_orderentry_nnfdirect_v6_6.remark.size = 25

-- Display: Remark
nse_nsecm_orderentry_nnfdirect_v6_6.remark.display = function(value)
  return "Remark: "..value
end

-- Dissect: Remark
nse_nsecm_orderentry_nnfdirect_v6_6.remark.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.remark.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.remark.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.remark, range, value, display)

  return offset + length, value
end

-- Request For Open Orders
nse_nsecm_orderentry_nnfdirect_v6_6.request_for_open_orders = {}

-- Size: Request For Open Orders
nse_nsecm_orderentry_nnfdirect_v6_6.request_for_open_orders.size = 1

-- Display: Request For Open Orders
nse_nsecm_orderentry_nnfdirect_v6_6.request_for_open_orders.display = function(value)
  return "Request For Open Orders: "..value
end

-- Dissect: Request For Open Orders
nse_nsecm_orderentry_nnfdirect_v6_6.request_for_open_orders.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.request_for_open_orders.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.request_for_open_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.request_for_open_orders, range, value, display)

  return offset + length, value
end

-- Requested By
nse_nsecm_orderentry_nnfdirect_v6_6.requested_by = {}

-- Size: Requested By
nse_nsecm_orderentry_nnfdirect_v6_6.requested_by.size = 2

-- Display: Requested By
nse_nsecm_orderentry_nnfdirect_v6_6.requested_by.display = function(value)
  return "Requested By: "..value
end

-- Dissect: Requested By
nse_nsecm_orderentry_nnfdirect_v6_6.requested_by.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.requested_by.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.requested_by.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.requested_by, range, value, display)

  return offset + length, value
end

-- Reserved 1
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1 = {}

-- Size: Reserved 1
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size = 1

-- Display: Reserved 1
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 10
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_10 = {}

-- Size: Reserved 10
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_10.size = 10

-- Display: Reserved 10
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_10.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Reserved 14
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_14 = {}

-- Size: Reserved 14
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_14.size = 14

-- Display: Reserved 14
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_14.display = function(value)
  return "Reserved 14: "..value
end

-- Dissect: Reserved 14
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_14.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_14.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_14, range, value, display)

  return offset + length, value
end

-- Reserved 16
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_16 = {}

-- Size: Reserved 16
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_16.size = 16

-- Display: Reserved 16
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 2
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2 = {}

-- Size: Reserved 2
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.size = 2

-- Display: Reserved 2
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 24
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_24 = {}

-- Size: Reserved 24
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_24.size = 24

-- Display: Reserved 24
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_24.display = function(value)
  return "Reserved 24: "..value
end

-- Dissect: Reserved 24
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_24.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_24.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_24.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_24, range, value, display)

  return offset + length, value
end

-- Reserved 25
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_25 = {}

-- Size: Reserved 25
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_25.size = 25

-- Display: Reserved 25
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_25.display = function(value)
  return "Reserved 25: "..value
end

-- Dissect: Reserved 25
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_25.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_25.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_25.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_25, range, value, display)

  return offset + length, value
end

-- Reserved 26
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_26 = {}

-- Size: Reserved 26
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_26.size = 26

-- Display: Reserved 26
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_26.display = function(value)
  return "Reserved 26: "..value
end

-- Dissect: Reserved 26
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_26.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_26.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_26.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_26, range, value, display)

  return offset + length, value
end

-- Reserved 4
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_4 = {}

-- Size: Reserved 4
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_4.size = 4

-- Display: Reserved 4
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 5
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_5 = {}

-- Size: Reserved 5
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_5.size = 5

-- Display: Reserved 5
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Reserved 52
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_52 = {}

-- Size: Reserved 52
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_52.size = 52

-- Display: Reserved 52
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_52.display = function(value)
  return "Reserved 52: "..value
end

-- Dissect: Reserved 52
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_52.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_52.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_52.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_52, range, value, display)

  return offset + length, value
end

-- Reserved 56
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_56 = {}

-- Size: Reserved 56
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_56.size = 56

-- Display: Reserved 56
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_56.display = function(value)
  return "Reserved 56: "..value
end

-- Dissect: Reserved 56
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_56.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_56.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_56.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_56, range, value, display)

  return offset + length, value
end

-- Reserved 6
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_6 = {}

-- Size: Reserved 6
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_6.size = 6

-- Display: Reserved 6
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_6.display = function(value)
  return "Reserved 6: "..value
end

-- Dissect: Reserved 6
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_6.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_6, range, value, display)

  return offset + length, value
end

-- Reserved 60
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_60 = {}

-- Size: Reserved 60
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_60.size = 60

-- Display: Reserved 60
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_60.display = function(value)
  return "Reserved 60: "..value
end

-- Dissect: Reserved 60
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_60.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_60.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_60.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_60, range, value, display)

  return offset + length, value
end

-- Reserved 7
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_7 = {}

-- Size: Reserved 7
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_7.size = 7

-- Display: Reserved 7
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_7.display = function(value)
  return "Reserved 7: "..value
end

-- Dissect: Reserved 7
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_7.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_7, range, value, display)

  return offset + length, value
end

-- Reserved 8
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8 = {}

-- Size: Reserved 8
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8.size = 8

-- Display: Reserved 8
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Response Order Number
nse_nsecm_orderentry_nnfdirect_v6_6.response_order_number = {}

-- Size: Response Order Number
nse_nsecm_orderentry_nnfdirect_v6_6.response_order_number.size = 8

-- Display: Response Order Number
nse_nsecm_orderentry_nnfdirect_v6_6.response_order_number.display = function(value)
  return "Response Order Number: "..string.format("%.0f", value)
end

-- Dissect: Response Order Number
nse_nsecm_orderentry_nnfdirect_v6_6.response_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.response_order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.response_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.response_order_number, range, value, display)

  return offset + length, value
end

-- Second Default Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.second_default_settlement_period = {}

-- Size: Second Default Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.second_default_settlement_period.size = 2

-- Display: Second Default Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.second_default_settlement_period.display = function(value)
  return "Second Default Settlement Period: "..value
end

-- Dissect: Second Default Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.second_default_settlement_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.second_default_settlement_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.second_default_settlement_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.second_default_settlement_period, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_1 = {}

-- Size: Second Reserved 1
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_1.size = 1

-- Display: Second Reserved 1
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Second Reserved 16
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_16 = {}

-- Size: Second Reserved 16
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_16.size = 16

-- Display: Second Reserved 16
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_16.display = function(value)
  return "Second Reserved 16: "..value
end

-- Dissect: Second Reserved 16
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.second_reserved_16, range, value, display)

  return offset + length, value
end

-- Second Reserved 4
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_4 = {}

-- Size: Second Reserved 4
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_4.size = 4

-- Display: Second Reserved 4
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_4.display = function(value)
  return "Second Reserved 4: "..value
end

-- Dissect: Second Reserved 4
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.second_reserved_4, range, value, display)

  return offset + length, value
end

-- Second Reserved 8
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_8 = {}

-- Size: Second Reserved 8
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_8.size = 8

-- Display: Second Reserved 8
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_8.display = function(value)
  return "Second Reserved 8: "..value
end

-- Dissect: Second Reserved 8
nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.second_reserved_8, range, value, display)

  return offset + length, value
end

-- Sell Account Number
nse_nsecm_orderentry_nnfdirect_v6_6.sell_account_number = {}

-- Size: Sell Account Number
nse_nsecm_orderentry_nnfdirect_v6_6.sell_account_number.size = 10

-- Display: Sell Account Number
nse_nsecm_orderentry_nnfdirect_v6_6.sell_account_number.display = function(value)
  return "Sell Account Number: "..value
end

-- Dissect: Sell Account Number
nse_nsecm_orderentry_nnfdirect_v6_6.sell_account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.sell_account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.sell_account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sell_account_number, range, value, display)

  return offset + length, value
end

-- Sell Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.sell_broker_id = {}

-- Size: Sell Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.sell_broker_id.size = 5

-- Display: Sell Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.sell_broker_id.display = function(value)
  return "Sell Broker Id: "..value
end

-- Dissect: Sell Broker Id
nse_nsecm_orderentry_nnfdirect_v6_6.sell_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.sell_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.sell_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sell_broker_id, range, value, display)

  return offset + length, value
end

-- Sell Pan
nse_nsecm_orderentry_nnfdirect_v6_6.sell_pan = {}

-- Size: Sell Pan
nse_nsecm_orderentry_nnfdirect_v6_6.sell_pan.size = 10

-- Display: Sell Pan
nse_nsecm_orderentry_nnfdirect_v6_6.sell_pan.display = function(value)
  return "Sell Pan: "..value
end

-- Dissect: Sell Pan
nse_nsecm_orderentry_nnfdirect_v6_6.sell_pan.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.sell_pan.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.sell_pan.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sell_pan, range, value, display)

  return offset + length, value
end

-- Sequence Number
nse_nsecm_orderentry_nnfdirect_v6_6.sequence_number = {}

-- Size: Sequence Number
nse_nsecm_orderentry_nnfdirect_v6_6.sequence_number.size = 8

-- Display: Sequence Number
nse_nsecm_orderentry_nnfdirect_v6_6.sequence_number.display = function(value)
  return "Sequence Number: "..string.format("%.0f", value)
end

-- Dissect: Sequence Number
nse_nsecm_orderentry_nnfdirect_v6_6.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.sequence_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Series
nse_nsecm_orderentry_nnfdirect_v6_6.series = {}

-- Size: Series
nse_nsecm_orderentry_nnfdirect_v6_6.series.size = 2

-- Display: Series
nse_nsecm_orderentry_nnfdirect_v6_6.series.display = function(value)
  return "Series: "..value
end

-- Dissect: Series
nse_nsecm_orderentry_nnfdirect_v6_6.series.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.series, range, value, display)

  return offset + length, value
end

-- Session Key
nse_nsecm_orderentry_nnfdirect_v6_6.session_key = {}

-- Size: Session Key
nse_nsecm_orderentry_nnfdirect_v6_6.session_key.size = 8

-- Display: Session Key
nse_nsecm_orderentry_nnfdirect_v6_6.session_key.display = function(value)
  return "Session Key: "..value
end

-- Dissect: Session Key
nse_nsecm_orderentry_nnfdirect_v6_6.session_key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.session_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.session_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.session_key, range, value, display)

  return offset + length, value
end

-- Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.settlement_period = {}

-- Size: Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.settlement_period.size = 2

-- Display: Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.settlement_period.display = function(value)
  return "Settlement Period: "..value
end

-- Dissect: Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.settlement_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.settlement_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.settlement_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.settlement_period, range, value, display)

  return offset + length, value
end

-- Settlement Type
nse_nsecm_orderentry_nnfdirect_v6_6.settlement_type = {}

-- Size: Settlement Type
nse_nsecm_orderentry_nnfdirect_v6_6.settlement_type.size = 2

-- Display: Settlement Type
nse_nsecm_orderentry_nnfdirect_v6_6.settlement_type.display = function(value)
  return "Settlement Type: "..value
end

-- Dissect: Settlement Type
nse_nsecm_orderentry_nnfdirect_v6_6.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.settlement_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Settlor
nse_nsecm_orderentry_nnfdirect_v6_6.settlor = {}

-- Size: Settlor
nse_nsecm_orderentry_nnfdirect_v6_6.settlor.size = 12

-- Display: Settlor
nse_nsecm_orderentry_nnfdirect_v6_6.settlor.display = function(value)
  return "Settlor: "..value
end

-- Dissect: Settlor
nse_nsecm_orderentry_nnfdirect_v6_6.settlor.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.settlor.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.settlor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.settlor, range, value, display)

  return offset + length, value
end

-- Show Index
nse_nsecm_orderentry_nnfdirect_v6_6.show_index = {}

-- Size: Show Index
nse_nsecm_orderentry_nnfdirect_v6_6.show_index.size = 1

-- Display: Show Index
nse_nsecm_orderentry_nnfdirect_v6_6.show_index.display = function(value)
  return "Show Index: "..value
end

-- Dissect: Show Index
nse_nsecm_orderentry_nnfdirect_v6_6.show_index.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.show_index.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.show_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.show_index, range, value, display)

  return offset + length, value
end

-- Solicitor Period
nse_nsecm_orderentry_nnfdirect_v6_6.solicitor_period = {}

-- Size: Solicitor Period
nse_nsecm_orderentry_nnfdirect_v6_6.solicitor_period.size = 2

-- Display: Solicitor Period
nse_nsecm_orderentry_nnfdirect_v6_6.solicitor_period.display = function(value)
  return "Solicitor Period: "..value
end

-- Dissect: Solicitor Period
nse_nsecm_orderentry_nnfdirect_v6_6.solicitor_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.solicitor_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.solicitor_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.solicitor_period, range, value, display)

  return offset + length, value
end

-- Spot
nse_nsecm_orderentry_nnfdirect_v6_6.spot = {}

-- Size: Spot
nse_nsecm_orderentry_nnfdirect_v6_6.spot.size = 2

-- Display: Spot
nse_nsecm_orderentry_nnfdirect_v6_6.spot.display = function(value)
  return "Spot: "..value
end

-- Dissect: Spot
nse_nsecm_orderentry_nnfdirect_v6_6.spot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.spot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.spot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.spot, range, value, display)

  return offset + length, value
end

-- Spot Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.spot_market_status = {}

-- Size: Spot Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.spot_market_status.size = 2

-- Display: Spot Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.spot_market_status.display = function(value)
  return "Spot Market Status: "..value
end

-- Dissect: Spot Market Status
nse_nsecm_orderentry_nnfdirect_v6_6.spot_market_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.spot_market_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.spot_market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.spot_market_status, range, value, display)

  return offset + length, value
end

-- Static Cryptographic Iv
nse_nsecm_orderentry_nnfdirect_v6_6.static_cryptographic_iv = {}

-- Size: Static Cryptographic Iv
nse_nsecm_orderentry_nnfdirect_v6_6.static_cryptographic_iv.size = 8

-- Display: Static Cryptographic Iv
nse_nsecm_orderentry_nnfdirect_v6_6.static_cryptographic_iv.display = function(value)
  return "Static Cryptographic Iv: "..value
end

-- Dissect: Static Cryptographic Iv
nse_nsecm_orderentry_nnfdirect_v6_6.static_cryptographic_iv.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.static_cryptographic_iv.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.static_cryptographic_iv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.static_cryptographic_iv, range, value, display)

  return offset + length, value
end

-- Status
nse_nsecm_orderentry_nnfdirect_v6_6.status = {}

-- Size: Status
nse_nsecm_orderentry_nnfdirect_v6_6.status.size = 2

-- Display: Status
nse_nsecm_orderentry_nnfdirect_v6_6.status.labels = {
  [1] = "Status: Preopen (1)",
  [2] = "Status: Open (2)",
  [3] = "Status: Suspended (3)",
  [4] = "Status: Preopen Extended (4)",
  [6] = "Status: Price Discovery (6)",
}

nse_nsecm_orderentry_nnfdirect_v6_6.status.display = function(value)
  return nse_nsecm_orderentry_nnfdirect_v6_6.status.labels[value] or "Status: Unknown("..value..")"
end

-- Dissect: Status
nse_nsecm_orderentry_nnfdirect_v6_6.status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.status, range, value, display)

  return offset + length, value
end

-- Surv Ind
nse_nsecm_orderentry_nnfdirect_v6_6.surv_ind = {}

-- Size: Surv Ind
nse_nsecm_orderentry_nnfdirect_v6_6.surv_ind.size = 2

-- Display: Surv Ind
nse_nsecm_orderentry_nnfdirect_v6_6.surv_ind.display = function(value)
  return "Surv Ind: "..value
end

-- Dissect: Surv Ind
nse_nsecm_orderentry_nnfdirect_v6_6.surv_ind.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.surv_ind.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.surv_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.surv_ind, range, value, display)

  return offset + length, value
end

-- Suspended
nse_nsecm_orderentry_nnfdirect_v6_6.suspended = {}

-- Size: Suspended
nse_nsecm_orderentry_nnfdirect_v6_6.suspended.size = 1

-- Display: Suspended
nse_nsecm_orderentry_nnfdirect_v6_6.suspended.display = function(value)
  return "Suspended: "..value
end

-- Dissect: Suspended
nse_nsecm_orderentry_nnfdirect_v6_6.suspended.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.suspended.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.suspended.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.suspended, range, value, display)

  return offset + length, value
end

-- Symbol
nse_nsecm_orderentry_nnfdirect_v6_6.symbol = {}

-- Size: Symbol
nse_nsecm_orderentry_nnfdirect_v6_6.symbol.size = 10

-- Display: Symbol
nse_nsecm_orderentry_nnfdirect_v6_6.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nse_nsecm_orderentry_nnfdirect_v6_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Terminal Idle Time
nse_nsecm_orderentry_nnfdirect_v6_6.terminal_idle_time = {}

-- Size: Terminal Idle Time
nse_nsecm_orderentry_nnfdirect_v6_6.terminal_idle_time.size = 2

-- Display: Terminal Idle Time
nse_nsecm_orderentry_nnfdirect_v6_6.terminal_idle_time.display = function(value)
  return "Terminal Idle Time: "..value
end

-- Dissect: Terminal Idle Time
nse_nsecm_orderentry_nnfdirect_v6_6.terminal_idle_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.terminal_idle_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.terminal_idle_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.terminal_idle_time, range, value, display)

  return offset + length, value
end

-- Third Default Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.third_default_settlement_period = {}

-- Size: Third Default Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.third_default_settlement_period.size = 2

-- Display: Third Default Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.third_default_settlement_period.display = function(value)
  return "Third Default Settlement Period: "..value
end

-- Dissect: Third Default Settlement Period
nse_nsecm_orderentry_nnfdirect_v6_6.third_default_settlement_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.third_default_settlement_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.third_default_settlement_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.third_default_settlement_period, range, value, display)

  return offset + length, value
end

-- Third Reserved 16
nse_nsecm_orderentry_nnfdirect_v6_6.third_reserved_16 = {}

-- Size: Third Reserved 16
nse_nsecm_orderentry_nnfdirect_v6_6.third_reserved_16.size = 16

-- Display: Third Reserved 16
nse_nsecm_orderentry_nnfdirect_v6_6.third_reserved_16.display = function(value)
  return "Third Reserved 16: "..value
end

-- Dissect: Third Reserved 16
nse_nsecm_orderentry_nnfdirect_v6_6.third_reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.third_reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.third_reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.third_reserved_16, range, value, display)

  return offset + length, value
end

-- Tick Size
nse_nsecm_orderentry_nnfdirect_v6_6.tick_size = {}

-- Size: Tick Size
nse_nsecm_orderentry_nnfdirect_v6_6.tick_size.size = 4

-- Display: Tick Size
nse_nsecm_orderentry_nnfdirect_v6_6.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
nse_nsecm_orderentry_nnfdirect_v6_6.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.tick_size.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Time Stamp 1
nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_1 = {}

-- Size: Time Stamp 1
nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_1.size = 8

-- Display: Time Stamp 1
nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_1.display = function(value)
  return "Time Stamp 1: "..value
end

-- Dissect: Time Stamp 1
nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.time_stamp_1, range, value, display)

  return offset + length, value
end

-- Time Stamp 2
nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_2 = {}

-- Size: Time Stamp 2
nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_2.size = 8

-- Display: Time Stamp 2
nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_2.display = function(value)
  return "Time Stamp 2: "..value
end

-- Dissect: Time Stamp 2
nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.time_stamp_2, range, value, display)

  return offset + length, value
end

-- Token
nse_nsecm_orderentry_nnfdirect_v6_6.token = {}

-- Size: Token
nse_nsecm_orderentry_nnfdirect_v6_6.token.size = 4

-- Display: Token
nse_nsecm_orderentry_nnfdirect_v6_6.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nsecm_orderentry_nnfdirect_v6_6.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.token.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.token, range, value, display)

  return offset + length, value
end

-- Total Buy
nse_nsecm_orderentry_nnfdirect_v6_6.total_buy = {}

-- Size: Total Buy
nse_nsecm_orderentry_nnfdirect_v6_6.total_buy.size = 4

-- Display: Total Buy
nse_nsecm_orderentry_nnfdirect_v6_6.total_buy.display = function(value)
  return "Total Buy: "..value
end

-- Dissect: Total Buy
nse_nsecm_orderentry_nnfdirect_v6_6.total_buy.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.total_buy.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.total_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.total_buy, range, value, display)

  return offset + length, value
end

-- Total Sell
nse_nsecm_orderentry_nnfdirect_v6_6.total_sell = {}

-- Size: Total Sell
nse_nsecm_orderentry_nnfdirect_v6_6.total_sell.size = 4

-- Display: Total Sell
nse_nsecm_orderentry_nnfdirect_v6_6.total_sell.display = function(value)
  return "Total Sell: "..value
end

-- Dissect: Total Sell
nse_nsecm_orderentry_nnfdirect_v6_6.total_sell.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.total_sell.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.total_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.total_sell, range, value, display)

  return offset + length, value
end

-- Total Vol Remaining
nse_nsecm_orderentry_nnfdirect_v6_6.total_vol_remaining = {}

-- Size: Total Vol Remaining
nse_nsecm_orderentry_nnfdirect_v6_6.total_vol_remaining.size = 4

-- Display: Total Vol Remaining
nse_nsecm_orderentry_nnfdirect_v6_6.total_vol_remaining.display = function(value)
  return "Total Vol Remaining: "..value
end

-- Dissect: Total Vol Remaining
nse_nsecm_orderentry_nnfdirect_v6_6.total_vol_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.total_vol_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.total_vol_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.total_vol_remaining, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nsecm_orderentry_nnfdirect_v6_6.trader_id = {}

-- Size: Trader Id
nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.size = 4

-- Display: Trader Id
nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trader Name
nse_nsecm_orderentry_nnfdirect_v6_6.trader_name = {}

-- Size: Trader Name
nse_nsecm_orderentry_nnfdirect_v6_6.trader_name.size = 26

-- Display: Trader Name
nse_nsecm_orderentry_nnfdirect_v6_6.trader_name.display = function(value)
  return "Trader Name: "..value
end

-- Dissect: Trader Name
nse_nsecm_orderentry_nnfdirect_v6_6.trader_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.trader_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.trader_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trader_name, range, value, display)

  return offset + length, value
end

-- Trader Num
nse_nsecm_orderentry_nnfdirect_v6_6.trader_num = {}

-- Size: Trader Num
nse_nsecm_orderentry_nnfdirect_v6_6.trader_num.size = 4

-- Display: Trader Num
nse_nsecm_orderentry_nnfdirect_v6_6.trader_num.display = function(value)
  return "Trader Num: "..value
end

-- Dissect: Trader Num
nse_nsecm_orderentry_nnfdirect_v6_6.trader_num.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.trader_num.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.trader_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trader_num, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nsecm_orderentry_nnfdirect_v6_6.transaction_code = {}

-- Size: Transaction Code
nse_nsecm_orderentry_nnfdirect_v6_6.transaction_code.size = 2

-- Display: Transaction Code
nse_nsecm_orderentry_nnfdirect_v6_6.transaction_code.labels = {
  [18017] = "Transaction Code: Auction Inquiry Response Message (18017)",
  [5717] = "Transaction Code: Branch Order Value Limit Update Out Message (5717)",
  [5716] = "Transaction Code: Branch Order Value Limit Update In Message (5716)",
  [5790] = "Transaction Code: Cancel On Logout Status Request Message (5790)",
  [5791] = "Transaction Code: Cancel On Logout Status Response Message (5791)",
  [2302] = "Transaction Code: Error Response Message (2302)",
  [7000] = "Transaction Code: Message Download Request Message (7000)",
  [23008] = "Transaction Code: Secure Box Registration Request Message (23008)",
  [18016] = "Transaction Code: Auction Inquiry Request Message (18016)",
  [20322] = "Transaction Code: Box Sign Off Message (20322)",
  [23000] = "Transaction Code: Box Sign On Request Message (23000)",
  [23001] = "Transaction Code: Box Sign On Response Message (23001)",
  [2400] = "Transaction Code: Gateway Router Request Message (2400)",
  [2401] = "Transaction Code: Gateway Router Response Message (2401)",
  [5295] = "Transaction Code: Control Message To Trader Message (5295)",
  [2212] = "Transaction Code: Trade Confirmation Message (2212)",
  [2222] = "Transaction Code: Trade Confirmation Message (2222)",
  [2282] = "Transaction Code: Trade Confirmation Message (2282)",
  [2286] = "Transaction Code: Trade Confirmation Message (2286)",
  [2287] = "Transaction Code: Trade Confirmation Message (2287)",
  [2012] = "Transaction Code: Order Entry Out Message (2012)",
  [2042] = "Transaction Code: Order Entry Out Message (2042)",
  [2061] = "Transaction Code: Order Entry Out Message (2061)",
  [2072] = "Transaction Code: Order Entry Out Message (2072)",
  [2073] = "Transaction Code: Order Entry Out Message (2073)",
  [2074] = "Transaction Code: Order Entry Out Message (2074)",
  [2075] = "Transaction Code: Order Entry Out Message (2075)",
  [2170] = "Transaction Code: Order Entry Out Message (2170)",
  [2231] = "Transaction Code: Order Entry Out Message (2231)",
  [9002] = "Transaction Code: Order Entry Out Message (9002)",
  [2001] = "Transaction Code: Order Entry Short Message (2001)",
  [2071] = "Transaction Code: Order Entry Short Message (2071)",
  [2000] = "Transaction Code: Order Entry In Message (2000)",
  [2040] = "Transaction Code: Order Entry In Message (2040)",
  [2062] = "Transaction Code: Order Entry In Message (2062)",
  [2070] = "Transaction Code: Order Entry In Message (2070)",
  [5722] = "Transaction Code: Order Limit Update Out Message (5722)",
  [5721] = "Transaction Code: Order Limit Update In Message (5721)",
  [5739] = "Transaction Code: Password Reset Out Message (5739)",
  [5738] = "Transaction Code: Password Reset In Message (5738)",
  [18130] = "Transaction Code: Security Status Change Message (18130)",
  [18707] = "Transaction Code: Security Status Change Message (18707)",
  [18720] = "Transaction Code: Security Master Change Message (18720)",
  [5724] = "Transaction Code: Sign On Request Out Message (5724)",
  [2300] = "Transaction Code: Sign On Request In Message (2300)",
  [5723] = "Transaction Code: Sign On Request In Message (5723)",
  [2301] = "Transaction Code: Sign On Response Message (2301)",
  [1601] = "Transaction Code: System Information Message (1601)",
  [7321] = "Transaction Code: System Information Message (7321)",
  [2223] = "Transaction Code: Trade Inquiry Out Message (2223)",
  [5441] = "Transaction Code: Trade Inquiry Out Message (5441)",
  [5440] = "Transaction Code: Trade Inquiry In Message (5440)",
  [5445] = "Transaction Code: Trade Inquiry In Message (5445)",
  [7307] = "Transaction Code: Update Local Database Header Message (7307)",
  [7308] = "Transaction Code: Update Local Database Trailer Message (7308)",
  [7300] = "Transaction Code: Update Local Database Request Message (7300)",
  [5792] = "Transaction Code: Trade Modification Cancellation Status Request Message (5792)",
  [5575] = "Transaction Code: User Unlock Approval Rejection Message (5575)",
  [5579] = "Transaction Code: User Unlock Approval Rejection Message (5579)",
  [5424] = "Transaction Code: User Unlock Request Message (5424)",
  [5425] = "Transaction Code: User Unlock Requested Response Message (5425)",
  [5720] = "Transaction Code: User Order Value Limit Update Out Message (5720)",
  [5719] = "Transaction Code: User Order Value Limit Update In Message (5719)",
  [5793] = "Transaction Code: Trade Modification Cancellation Status Response Message (5793)",
  [2321] = "Transaction Code: Sign Off Confirmation Message (2321)",
  [7011] = "Transaction Code: Header Record Message (7011)",
  [7021] = "Transaction Code: Message Record Message (7021)",
  [7031] = "Transaction Code: Trailer Record Message (7031)",
  [1600] = "Transaction Code: System Information Request Message (1600)",
  [23009] = "Transaction Code: Secure Box Registration Response Message (23009)",
  [7304] = "Transaction Code: Update Local Database Data Message (7304)",
}

nse_nsecm_orderentry_nnfdirect_v6_6.transaction_code.display = function(value)
  return nse_nsecm_orderentry_nnfdirect_v6_6.transaction_code.labels[value] or "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nsecm_orderentry_nnfdirect_v6_6.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.transaction_code, range, value, display)

  return offset + length, value
end

-- Trd Mod Cxl Bit
nse_nsecm_orderentry_nnfdirect_v6_6.trd_mod_cxl_bit = {}

-- Size: Trd Mod Cxl Bit
nse_nsecm_orderentry_nnfdirect_v6_6.trd_mod_cxl_bit.size = 1

-- Display: Trd Mod Cxl Bit
nse_nsecm_orderentry_nnfdirect_v6_6.trd_mod_cxl_bit.display = function(value)
  return "Trd Mod Cxl Bit: "..value
end

-- Dissect: Trd Mod Cxl Bit
nse_nsecm_orderentry_nnfdirect_v6_6.trd_mod_cxl_bit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.trd_mod_cxl_bit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.trd_mod_cxl_bit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trd_mod_cxl_bit, range, value, display)

  return offset + length, value
end

-- Trigger Price
nse_nsecm_orderentry_nnfdirect_v6_6.trigger_price = {}

-- Size: Trigger Price
nse_nsecm_orderentry_nnfdirect_v6_6.trigger_price.size = 4

-- Display: Trigger Price
nse_nsecm_orderentry_nnfdirect_v6_6.trigger_price.display = function(value)
  return "Trigger Price: "..value
end

-- Translate: Trigger Price
nse_nsecm_orderentry_nnfdirect_v6_6.trigger_price.translate = function(raw)
  return raw/100
end

-- Dissect: Trigger Price
nse_nsecm_orderentry_nnfdirect_v6_6.trigger_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.trigger_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_orderentry_nnfdirect_v6_6.trigger_price.translate(raw)
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.trigger_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trigger_price, range, value, display)

  return offset + length, value
end

-- User Id
nse_nsecm_orderentry_nnfdirect_v6_6.user_id = {}

-- Size: User Id
nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size = 4

-- Display: User Id
nse_nsecm_orderentry_nnfdirect_v6_6.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_id, range, value, display)

  return offset + length, value
end

-- User Order Buy Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_buy_value_limit = {}

-- Size: User Order Buy Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_buy_value_limit.size = 8

-- Display: User Order Buy Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_buy_value_limit.display = function(value)
  return "User Order Buy Value Limit: "..string.format("%.0f", value)
end

-- Dissect: User Order Buy Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_buy_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.user_order_buy_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.user_order_buy_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_order_buy_value_limit, range, value, display)

  return offset + length, value
end

-- User Order Sell Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_sell_value_limit = {}

-- Size: User Order Sell Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_sell_value_limit.size = 8

-- Display: User Order Sell Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_sell_value_limit.display = function(value)
  return "User Order Sell Value Limit: "..string.format("%.0f", value)
end

-- Dissect: User Order Sell Value Limit
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_sell_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.user_order_sell_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.user_order_sell_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_order_sell_value_limit, range, value, display)

  return offset + length, value
end

-- User Type
nse_nsecm_orderentry_nnfdirect_v6_6.user_type = {}

-- Size: User Type
nse_nsecm_orderentry_nnfdirect_v6_6.user_type.size = 2

-- Display: User Type
nse_nsecm_orderentry_nnfdirect_v6_6.user_type.display = function(value)
  return "User Type: "..value
end

-- Dissect: User Type
nse_nsecm_orderentry_nnfdirect_v6_6.user_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.user_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.user_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_type, range, value, display)

  return offset + length, value
end

-- Version Number
nse_nsecm_orderentry_nnfdirect_v6_6.version_number = {}

-- Size: Version Number
nse_nsecm_orderentry_nnfdirect_v6_6.version_number.size = 4

-- Display: Version Number
nse_nsecm_orderentry_nnfdirect_v6_6.version_number.display = function(value)
  return "Version Number: "..value
end

-- Dissect: Version Number
nse_nsecm_orderentry_nnfdirect_v6_6.version_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.version_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.version_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.version_number, range, value, display)

  return offset + length, value
end

-- Vol Filled Today
nse_nsecm_orderentry_nnfdirect_v6_6.vol_filled_today = {}

-- Size: Vol Filled Today
nse_nsecm_orderentry_nnfdirect_v6_6.vol_filled_today.size = 4

-- Display: Vol Filled Today
nse_nsecm_orderentry_nnfdirect_v6_6.vol_filled_today.display = function(value)
  return "Vol Filled Today: "..value
end

-- Dissect: Vol Filled Today
nse_nsecm_orderentry_nnfdirect_v6_6.vol_filled_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.vol_filled_today.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.vol_filled_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.vol_filled_today, range, value, display)

  return offset + length, value
end

-- Volume
nse_nsecm_orderentry_nnfdirect_v6_6.volume = {}

-- Size: Volume
nse_nsecm_orderentry_nnfdirect_v6_6.volume.size = 4

-- Display: Volume
nse_nsecm_orderentry_nnfdirect_v6_6.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nse_nsecm_orderentry_nnfdirect_v6_6.volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.volume, range, value, display)

  return offset + length, value
end

-- Volume Filled Today
nse_nsecm_orderentry_nnfdirect_v6_6.volume_filled_today = {}

-- Size: Volume Filled Today
nse_nsecm_orderentry_nnfdirect_v6_6.volume_filled_today.size = 4

-- Display: Volume Filled Today
nse_nsecm_orderentry_nnfdirect_v6_6.volume_filled_today.display = function(value)
  return "Volume Filled Today: "..value
end

-- Dissect: Volume Filled Today
nse_nsecm_orderentry_nnfdirect_v6_6.volume_filled_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.volume_filled_today.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.volume_filled_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.volume_filled_today, range, value, display)

  return offset + length, value
end

-- Volume Freeze Percent
nse_nsecm_orderentry_nnfdirect_v6_6.volume_freeze_percent = {}

-- Size: Volume Freeze Percent
nse_nsecm_orderentry_nnfdirect_v6_6.volume_freeze_percent.size = 2

-- Display: Volume Freeze Percent
nse_nsecm_orderentry_nnfdirect_v6_6.volume_freeze_percent.display = function(value)
  return "Volume Freeze Percent: "..value
end

-- Dissect: Volume Freeze Percent
nse_nsecm_orderentry_nnfdirect_v6_6.volume_freeze_percent.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.volume_freeze_percent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.volume_freeze_percent.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.volume_freeze_percent, range, value, display)

  return offset + length, value
end

-- Warning Percent
nse_nsecm_orderentry_nnfdirect_v6_6.warning_percent = {}

-- Size: Warning Percent
nse_nsecm_orderentry_nnfdirect_v6_6.warning_percent.size = 2

-- Display: Warning Percent
nse_nsecm_orderentry_nnfdirect_v6_6.warning_percent.display = function(value)
  return "Warning Percent: "..value
end

-- Dissect: Warning Percent
nse_nsecm_orderentry_nnfdirect_v6_6.warning_percent.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.warning_percent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.warning_percent.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.warning_percent, range, value, display)

  return offset + length, value
end

-- Workstation Number
nse_nsecm_orderentry_nnfdirect_v6_6.workstation_number = {}

-- Size: Workstation Number
nse_nsecm_orderentry_nnfdirect_v6_6.workstation_number.size = 14

-- Display: Workstation Number
nse_nsecm_orderentry_nnfdirect_v6_6.workstation_number.display = function(value)
  return "Workstation Number: "..value
end

-- Dissect: Workstation Number
nse_nsecm_orderentry_nnfdirect_v6_6.workstation_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_orderentry_nnfdirect_v6_6.workstation_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.workstation_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.workstation_number, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseCm OrderEntry NnfDirect 6.6
-----------------------------------------------------------------------

-- Local Database Data
nse_nsecm_orderentry_nnfdirect_v6_6.local_database_data = {}

-- Display: Local Database Data
nse_nsecm_orderentry_nnfdirect_v6_6.local_database_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Local Database Data
nse_nsecm_orderentry_nnfdirect_v6_6.local_database_data.fields = function(buffer, offset, packet, parent, size_of_local_database_data)
  local index = offset

  -- Dependency for Data Payload
  local end_of_payload = offset + size_of_local_database_data

  -- Data Payload: 0 Byte
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, data_payload = nse_nsecm_orderentry_nnfdirect_v6_6.data_payload.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Local Database Data
nse_nsecm_orderentry_nnfdirect_v6_6.local_database_data.dissect = function(buffer, offset, packet, parent, size_of_local_database_data)
  local index = offset + size_of_local_database_data

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.local_database_data, buffer(offset, 0))
    local current = nse_nsecm_orderentry_nnfdirect_v6_6.local_database_data.fields(buffer, offset, packet, parent, size_of_local_database_data)
    parent:set_len(size_of_local_database_data)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.local_database_data.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsecm_orderentry_nnfdirect_v6_6.local_database_data.fields(buffer, offset, packet, parent, size_of_local_database_data)

    return index
  end
end

-- Inner Header
nse_nsecm_orderentry_nnfdirect_v6_6.inner_header = {}

-- Size: Inner Header
nse_nsecm_orderentry_nnfdirect_v6_6.inner_header.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.inner_trader_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.inner_log_time.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.inner_alpha_char.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.inner_transaction_code.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.inner_error_code.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.inner_timestamp.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_2.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.inner_message_length.size

-- Display: Inner Header
nse_nsecm_orderentry_nnfdirect_v6_6.inner_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inner Header
nse_nsecm_orderentry_nnfdirect_v6_6.inner_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inner Trader Id: LONG
  index, inner_trader_id = nse_nsecm_orderentry_nnfdirect_v6_6.inner_trader_id.dissect(buffer, index, packet, parent)

  -- Inner Log Time: LONG
  index, inner_log_time = nse_nsecm_orderentry_nnfdirect_v6_6.inner_log_time.dissect(buffer, index, packet, parent)

  -- Inner Alpha Char: CHAR
  index, inner_alpha_char = nse_nsecm_orderentry_nnfdirect_v6_6.inner_alpha_char.dissect(buffer, index, packet, parent)

  -- Inner Transaction Code: SHORT
  index, inner_transaction_code = nse_nsecm_orderentry_nnfdirect_v6_6.inner_transaction_code.dissect(buffer, index, packet, parent)

  -- Inner Error Code: SHORT
  index, inner_error_code = nse_nsecm_orderentry_nnfdirect_v6_6.inner_error_code.dissect(buffer, index, packet, parent)

  -- Inner Timestamp: LONG LONG
  index, inner_timestamp = nse_nsecm_orderentry_nnfdirect_v6_6.inner_timestamp.dissect(buffer, index, packet, parent)

  -- Inner Time Stamp 1: CHAR
  index, inner_time_stamp_1 = nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_1.dissect(buffer, index, packet, parent)

  -- Inner Time Stamp 2: CHAR
  index, inner_time_stamp_2 = nse_nsecm_orderentry_nnfdirect_v6_6.inner_time_stamp_2.dissect(buffer, index, packet, parent)

  -- Inner Message Length: SHORT
  index, inner_message_length = nse_nsecm_orderentry_nnfdirect_v6_6.inner_message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inner Header
nse_nsecm_orderentry_nnfdirect_v6_6.inner_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inner_header, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.inner_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.inner_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.inner_header.fields(buffer, offset, packet, parent)
  end
end

-- Update Local Database Data Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_data_message = {}

-- Calculate size of: Update Local Database Data Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_data_message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsecm_orderentry_nnfdirect_v6_6.inner_header.size

  -- Parse runtime size of: Local Database Data
  index = index + buffer(offset + index - 42, 2):int()

  return index
end

-- Display: Update Local Database Data Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database Data Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inner Header: Struct of 9 fields
  index, inner_header = nse_nsecm_orderentry_nnfdirect_v6_6.inner_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 2, 2):int()

  -- Runtime Size Of: Local Database Data
  index, local_database_data = nse_nsecm_orderentry_nnfdirect_v6_6.local_database_data.dissect(buffer, index, packet, parent, message_length)

  return index
end

-- Dissect: Update Local Database Data Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.update_local_database_data_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Secure Box Registration Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.secure_box_registration_response_message = {}

-- Display: Secure Box Registration Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.secure_box_registration_response_message.display = function(packet, parent, length)
  return "Secure Box Registration Response Message"
end


-- Dissect: Secure Box Registration Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.secure_box_registration_response_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.secure_box_registration_response_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Trailer Record Message
nse_nsecm_orderentry_nnfdirect_v6_6.trailer_record_message = {}

-- Display: Trailer Record Message
nse_nsecm_orderentry_nnfdirect_v6_6.trailer_record_message.display = function(packet, parent, length)
  return "Trailer Record Message"
end


-- Dissect: Trailer Record Message
nse_nsecm_orderentry_nnfdirect_v6_6.trailer_record_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.trailer_record_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Message Record Message
nse_nsecm_orderentry_nnfdirect_v6_6.message_record_message = {}

-- Display: Message Record Message
nse_nsecm_orderentry_nnfdirect_v6_6.message_record_message.display = function(packet, parent, length)
  return "Message Record Message"
end


-- Dissect: Message Record Message
nse_nsecm_orderentry_nnfdirect_v6_6.message_record_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.message_record_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Header Record Message
nse_nsecm_orderentry_nnfdirect_v6_6.header_record_message = {}

-- Display: Header Record Message
nse_nsecm_orderentry_nnfdirect_v6_6.header_record_message.display = function(packet, parent, length)
  return "Header Record Message"
end


-- Dissect: Header Record Message
nse_nsecm_orderentry_nnfdirect_v6_6.header_record_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.header_record_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Sign Off Confirmation Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_off_confirmation_message = {}

-- Display: Sign Off Confirmation Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_off_confirmation_message.display = function(packet, parent, length)
  return "Sign Off Confirmation Message"
end


-- Dissect: Sign Off Confirmation Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_off_confirmation_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.sign_off_confirmation_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Trade Modification Cancellation Status Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_response_message = {}

-- Size: Trade Modification Cancellation Status Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_response_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.trd_mod_cxl_bit.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size

-- Display: Trade Modification Cancellation Status Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Modification Cancellation Status Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Trd Mod Cxl Bit: CHAR
  index, trd_mod_cxl_bit = nse_nsecm_orderentry_nnfdirect_v6_6.trd_mod_cxl_bit.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Modification Cancellation Status Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trade_modification_cancellation_status_response_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_response_message.fields(buffer, offset, packet, parent)
  end
end

-- User Limits
nse_nsecm_orderentry_nnfdirect_v6_6.user_limits = {}

-- Size: User Limits
nse_nsecm_orderentry_nnfdirect_v6_6.user_limits.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_16.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.user_order_buy_value_limit.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_24.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.user_order_sell_value_limit.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8.size

-- Display: User Limits
nse_nsecm_orderentry_nnfdirect_v6_6.user_limits.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Limits
nse_nsecm_orderentry_nnfdirect_v6_6.user_limits.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 16: CHAR
  index, reserved_16 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_16.dissect(buffer, index, packet, parent)

  -- User Order Buy Value Limit: DOUBLE
  index, user_order_buy_value_limit = nse_nsecm_orderentry_nnfdirect_v6_6.user_order_buy_value_limit.dissect(buffer, index, packet, parent)

  -- Reserved 24: CHAR
  index, reserved_24 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_24.dissect(buffer, index, packet, parent)

  -- User Order Sell Value Limit: DOUBLE
  index, user_order_sell_value_limit = nse_nsecm_orderentry_nnfdirect_v6_6.user_order_sell_value_limit.dissect(buffer, index, packet, parent)

  -- Reserved 8: CHAR
  index, reserved_8 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Limits
nse_nsecm_orderentry_nnfdirect_v6_6.user_limits.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_limits, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.user_limits.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.user_limits.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.user_limits.fields(buffer, offset, packet, parent)
  end
end

-- User Order Value Limit Update Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_out_message = {}

-- Size: User Order Value Limit Update Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_out_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.branch.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_26.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.user_limits.size

-- Display: User Order Value Limit Update Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Order Value Limit Update Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Branch: SHORT
  index, branch = nse_nsecm_orderentry_nnfdirect_v6_6.branch.dissect(buffer, index, packet, parent)

  -- Reserved 26: CHAR
  index, reserved_26 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_26.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- User Limits: Struct of 5 fields
  index, user_limits = nse_nsecm_orderentry_nnfdirect_v6_6.user_limits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Order Value Limit Update Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_order_value_limit_update_out_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_out_message.fields(buffer, offset, packet, parent)
  end
end

-- User Unlock Requested Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_requested_response_message = {}

-- Size: User Unlock Requested Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_requested_response_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size

-- Display: User Unlock Requested Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_requested_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Unlock Requested Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_requested_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Unlock Requested Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_requested_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_unlock_requested_response_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_requested_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_requested_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_requested_response_message.fields(buffer, offset, packet, parent)
  end
end

-- User Unlock Approval Rejection Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_approval_rejection_message = {}

-- Size: User Unlock Approval Rejection Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_approval_rejection_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size

-- Display: User Unlock Approval Rejection Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_approval_rejection_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Unlock Approval Rejection Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_approval_rejection_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Unlock Approval Rejection Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_approval_rejection_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_unlock_approval_rejection_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_approval_rejection_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_approval_rejection_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_approval_rejection_message.fields(buffer, offset, packet, parent)
  end
end

-- Update Local Database Trailer Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_trailer_message = {}

-- Size: Update Local Database Trailer Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_trailer_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.size

-- Display: Update Local Database Trailer Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_trailer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database Trailer Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_trailer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Update Local Database Trailer Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_trailer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.update_local_database_trailer_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_trailer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_trailer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_trailer_message.fields(buffer, offset, packet, parent)
  end
end

-- Update Local Database Header Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_header_message = {}

-- Size: Update Local Database Header Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_header_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.size

-- Display: Update Local Database Header Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database Header Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Update Local Database Header Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.update_local_database_header_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Sec Info
nse_nsecm_orderentry_nnfdirect_v6_6.sec_info = {}

-- Size: Sec Info
nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.symbol.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.series.size

-- Display: Sec Info
nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sec Info
nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: CHAR
  index, symbol = nse_nsecm_orderentry_nnfdirect_v6_6.symbol.dissect(buffer, index, packet, parent)

  -- Series: CHAR
  index, series = nse_nsecm_orderentry_nnfdirect_v6_6.series.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sec Info
nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sec_info, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.fields(buffer, offset, packet, parent)
  end
end

-- Trade Inquiry Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_out_message = {}

-- Size: Trade Inquiry Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_out_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.fill_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.fill_qty.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.fill_price.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.market_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.new_volume.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_24.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.buy_broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.sell_broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.requested_by.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.buy_account_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.sell_account_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.buy_pan.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.sell_pan.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_60.size

-- Display: Trade Inquiry Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Inquiry Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nsecm_orderentry_nnfdirect_v6_6.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nsecm_orderentry_nnfdirect_v6_6.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsecm_orderentry_nnfdirect_v6_6.fill_price.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_orderentry_nnfdirect_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- New Volume: LONG
  index, new_volume = nse_nsecm_orderentry_nnfdirect_v6_6.new_volume.dissect(buffer, index, packet, parent)

  -- Reserved 24: CHAR
  index, reserved_24 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_24.dissect(buffer, index, packet, parent)

  -- Buy Broker Id: CHAR
  index, buy_broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.buy_broker_id.dissect(buffer, index, packet, parent)

  -- Sell Broker Id: CHAR
  index, sell_broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.sell_broker_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.dissect(buffer, index, packet, parent)

  -- Requested By: SHORT
  index, requested_by = nse_nsecm_orderentry_nnfdirect_v6_6.requested_by.dissect(buffer, index, packet, parent)

  -- Buy Account Number: CHAR
  index, buy_account_number = nse_nsecm_orderentry_nnfdirect_v6_6.buy_account_number.dissect(buffer, index, packet, parent)

  -- Sell Account Number: CHAR
  index, sell_account_number = nse_nsecm_orderentry_nnfdirect_v6_6.sell_account_number.dissect(buffer, index, packet, parent)

  -- Buy Pan: CHAR
  index, buy_pan = nse_nsecm_orderentry_nnfdirect_v6_6.buy_pan.dissect(buffer, index, packet, parent)

  -- Sell Pan: CHAR
  index, sell_pan = nse_nsecm_orderentry_nnfdirect_v6_6.sell_pan.dissect(buffer, index, packet, parent)

  -- Reserved 60: CHAR
  index, reserved_60 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_60.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Inquiry Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trade_inquiry_out_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Eligible Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicator = {}

-- Size: Security Eligible Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicator.size = 1

-- Display: Security Eligible Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicator.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Books Merged flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Books Merged"
  end
  -- Is Minimum Fill flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Minimum Fill"
  end
  -- Is Aon flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Aon"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Eligible Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicator.bits = function(range, value, packet, parent)

  -- Security Eligible Reserved: 5 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_eligible_reserved, range, value)

  -- Books Merged: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.books_merged, range, value)

  -- Minimum Fill: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.minimum_fill, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.aon, range, value)
end

-- Dissect: Security Eligible Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicator.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicator.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_eligible_indicator, range, display)

  if show.structs then
    nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Eligible Indicators
nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicators = {}

-- Size: Security Eligible Indicators
nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicators.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicator.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size

-- Display: Security Eligible Indicators
nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicators.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Eligible Indicators
nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicators.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Eligible Indicator: Struct of 4 fields
  index, security_eligible_indicator = nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Eligible Indicators
nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicators.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_eligible_indicators, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicators.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicators.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicators.fields(buffer, offset, packet, parent)
  end
end

-- System Information Message
nse_nsecm_orderentry_nnfdirect_v6_6.system_information_message = {}

-- Size: System Information Message
nse_nsecm_orderentry_nnfdirect_v6_6.system_information_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.normal.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.oddlot.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.spot.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.auction.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_short_2.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_short_2.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.market_index.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.default_settlement_period.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.second_default_settlement_period.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.third_default_settlement_period.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.competitor_period.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.solicitor_period.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.warning_percent.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.volume_freeze_percent.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.terminal_idle_time.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.board_lot_quantity.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.tick_size.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.maximum_gtc_days.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicators.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_quantity_percent_allowed.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_6.size

-- Display: System Information Message
nse_nsecm_orderentry_nnfdirect_v6_6.system_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Information Message
nse_nsecm_orderentry_nnfdirect_v6_6.system_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Normal: SHORT
  index, normal = nse_nsecm_orderentry_nnfdirect_v6_6.normal.dissect(buffer, index, packet, parent)

  -- Oddlot: SHORT
  index, oddlot = nse_nsecm_orderentry_nnfdirect_v6_6.oddlot.dissect(buffer, index, packet, parent)

  -- Spot: SHORT
  index, spot = nse_nsecm_orderentry_nnfdirect_v6_6.spot.dissect(buffer, index, packet, parent)

  -- Auction: SHORT
  index, auction = nse_nsecm_orderentry_nnfdirect_v6_6.auction.dissect(buffer, index, packet, parent)

  -- Call Auction 1 Short 2: SHORT
  index, call_auction_1_short_2 = nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_short_2.dissect(buffer, index, packet, parent)

  -- Call Auction 2 Short 2: SHORT
  index, call_auction_2_short_2 = nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_short_2.dissect(buffer, index, packet, parent)

  -- Market Index: LONG
  index, market_index = nse_nsecm_orderentry_nnfdirect_v6_6.market_index.dissect(buffer, index, packet, parent)

  -- Default Settlement Period: SHORT
  index, default_settlement_period = nse_nsecm_orderentry_nnfdirect_v6_6.default_settlement_period.dissect(buffer, index, packet, parent)

  -- Second Default Settlement Period: SHORT
  index, second_default_settlement_period = nse_nsecm_orderentry_nnfdirect_v6_6.second_default_settlement_period.dissect(buffer, index, packet, parent)

  -- Third Default Settlement Period: SHORT
  index, third_default_settlement_period = nse_nsecm_orderentry_nnfdirect_v6_6.third_default_settlement_period.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsecm_orderentry_nnfdirect_v6_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsecm_orderentry_nnfdirect_v6_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Warning Percent: SHORT
  index, warning_percent = nse_nsecm_orderentry_nnfdirect_v6_6.warning_percent.dissect(buffer, index, packet, parent)

  -- Volume Freeze Percent: SHORT
  index, volume_freeze_percent = nse_nsecm_orderentry_nnfdirect_v6_6.volume_freeze_percent.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.dissect(buffer, index, packet, parent)

  -- Terminal Idle Time: SHORT
  index, terminal_idle_time = nse_nsecm_orderentry_nnfdirect_v6_6.terminal_idle_time.dissect(buffer, index, packet, parent)

  -- Board Lot Quantity: LONG
  index, board_lot_quantity = nse_nsecm_orderentry_nnfdirect_v6_6.board_lot_quantity.dissect(buffer, index, packet, parent)

  -- Tick Size: LONG
  index, tick_size = nse_nsecm_orderentry_nnfdirect_v6_6.tick_size.dissect(buffer, index, packet, parent)

  -- Maximum Gtc Days: SHORT
  index, maximum_gtc_days = nse_nsecm_orderentry_nnfdirect_v6_6.maximum_gtc_days.dissect(buffer, index, packet, parent)

  -- Security Eligible Indicators: Struct of 2 fields
  index, security_eligible_indicators = nse_nsecm_orderentry_nnfdirect_v6_6.security_eligible_indicators.dissect(buffer, index, packet, parent)

  -- Disclosed Quantity Percent Allowed: SHORT
  index, disclosed_quantity_percent_allowed = nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_quantity_percent_allowed.dissect(buffer, index, packet, parent)

  -- Reserved 6: CHAR
  index, reserved_6 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Information Message
nse_nsecm_orderentry_nnfdirect_v6_6.system_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.system_information_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.system_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.system_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.system_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Broker Eligibility Per Market
nse_nsecm_orderentry_nnfdirect_v6_6.broker_eligibility_per_market = {}

-- Size: Broker Eligibility Per Market
nse_nsecm_orderentry_nnfdirect_v6_6.broker_eligibility_per_market.size = 2

-- Display: Broker Eligibility Per Market
nse_nsecm_orderentry_nnfdirect_v6_6.broker_eligibility_per_market.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Preopen flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Preopen"
  end
  -- Is Call Auction 21 flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "Call Auction 21"
  end
  -- Is Call Auction 11 flag set?
  if bit.band(value, 0x0800) ~= 0 then
    flags[#flags + 1] = "Call Auction 11"
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

-- Dissect Bit Fields: Broker Eligibility Per Market
nse_nsecm_orderentry_nnfdirect_v6_6.broker_eligibility_per_market.bits = function(range, value, packet, parent)

  -- Preopen: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.preopen, range, value)

  -- Broker Eligibility Reserved Upper: 7 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.broker_eligibility_reserved_upper, range, value)

  -- Broker Eligibility Reserved Lower: 2 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.broker_eligibility_reserved_lower, range, value)

  -- Call Auction 21: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.call_auction_21, range, value)

  -- Call Auction 11: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.call_auction_11, range, value)

  -- Auction Market: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_market, range, value)

  -- Spot Market: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.spot_market, range, value)

  -- Oddlot Market: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.oddlot_market, range, value)

  -- Normal Market: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.normal_market, range, value)
end

-- Dissect: Broker Eligibility Per Market
nse_nsecm_orderentry_nnfdirect_v6_6.broker_eligibility_per_market.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecm_orderentry_nnfdirect_v6_6.broker_eligibility_per_market.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.broker_eligibility_per_market.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.broker_eligibility_per_market, range, display)

  if show.structs then
    nse_nsecm_orderentry_nnfdirect_v6_6.broker_eligibility_per_market.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Sign On Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_response_message = {}

-- Size: Sign On Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_response_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.password.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_8.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.new_password.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.trader_name.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.last_password_change_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.version_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.end_time.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_52.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.user_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.sequence_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_14.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_status.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_eligibility_per_market.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_name.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_16.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_16.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.third_reserved_16.size

-- Display: Sign On Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sign On Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 8: CHAR
  index, reserved_8 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8.dissect(buffer, index, packet, parent)

  -- Password: CHAR
  index, password = nse_nsecm_orderentry_nnfdirect_v6_6.password.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: CHAR
  index, second_reserved_8 = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_8.dissect(buffer, index, packet, parent)

  -- New Password: CHAR
  index, new_password = nse_nsecm_orderentry_nnfdirect_v6_6.new_password.dissect(buffer, index, packet, parent)

  -- Trader Name: CHAR
  index, trader_name = nse_nsecm_orderentry_nnfdirect_v6_6.trader_name.dissect(buffer, index, packet, parent)

  -- Last Password Change Date: LONG
  index, last_password_change_date = nse_nsecm_orderentry_nnfdirect_v6_6.last_password_change_date.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.dissect(buffer, index, packet, parent)

  -- Version Number: LONG
  index, version_number = nse_nsecm_orderentry_nnfdirect_v6_6.version_number.dissect(buffer, index, packet, parent)

  -- End Time: LONG
  index, end_time = nse_nsecm_orderentry_nnfdirect_v6_6.end_time.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  index, reserved_52 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_52.dissect(buffer, index, packet, parent)

  -- User Type: SHORT
  index, user_type = nse_nsecm_orderentry_nnfdirect_v6_6.user_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: DOUBLE
  index, sequence_number = nse_nsecm_orderentry_nnfdirect_v6_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Reserved 14: CHAR
  index, reserved_14 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_14.dissect(buffer, index, packet, parent)

  -- Broker Status: CHAR
  index, broker_status = nse_nsecm_orderentry_nnfdirect_v6_6.broker_status.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  index, second_reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Broker Eligibility Per Market: Struct of 9 fields
  index, broker_eligibility_per_market = nse_nsecm_orderentry_nnfdirect_v6_6.broker_eligibility_per_market.dissect(buffer, index, packet, parent)

  -- Broker Name: CHAR
  index, broker_name = nse_nsecm_orderentry_nnfdirect_v6_6.broker_name.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  index, reserved_16 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_16.dissect(buffer, index, packet, parent)

  -- Second Reserved 16: CHAR
  index, second_reserved_16 = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_16.dissect(buffer, index, packet, parent)

  -- Third Reserved 16: CHAR
  index, third_reserved_16 = nse_nsecm_orderentry_nnfdirect_v6_6.third_reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sign On Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sign_on_response_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Sign On Request Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_out_message = {}

-- Size: Sign On Request Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_out_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.password.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_8.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.new_password.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.trader_name.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.last_password_change_date_time.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.version_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_56.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.user_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.sequence_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.workstation_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_status.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.show_index.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_eligibility_per_market.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_name.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_16.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_16.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.third_reserved_16.size

-- Display: Sign On Request Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sign On Request Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 8: CHAR
  index, reserved_8 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8.dissect(buffer, index, packet, parent)

  -- Password: CHAR
  index, password = nse_nsecm_orderentry_nnfdirect_v6_6.password.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: CHAR
  index, second_reserved_8 = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_8.dissect(buffer, index, packet, parent)

  -- New Password: CHAR
  index, new_password = nse_nsecm_orderentry_nnfdirect_v6_6.new_password.dissect(buffer, index, packet, parent)

  -- Trader Name: CHAR
  index, trader_name = nse_nsecm_orderentry_nnfdirect_v6_6.trader_name.dissect(buffer, index, packet, parent)

  -- Last Password Change Date Time: LONG
  index, last_password_change_date_time = nse_nsecm_orderentry_nnfdirect_v6_6.last_password_change_date_time.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.dissect(buffer, index, packet, parent)

  -- Version Number: LONG
  index, version_number = nse_nsecm_orderentry_nnfdirect_v6_6.version_number.dissect(buffer, index, packet, parent)

  -- Reserved 56: CHAR
  index, reserved_56 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_56.dissect(buffer, index, packet, parent)

  -- User Type: SHORT
  index, user_type = nse_nsecm_orderentry_nnfdirect_v6_6.user_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: DOUBLE
  index, sequence_number = nse_nsecm_orderentry_nnfdirect_v6_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Workstation Number: CHAR
  index, workstation_number = nse_nsecm_orderentry_nnfdirect_v6_6.workstation_number.dissect(buffer, index, packet, parent)

  -- Broker Status: CHAR
  index, broker_status = nse_nsecm_orderentry_nnfdirect_v6_6.broker_status.dissect(buffer, index, packet, parent)

  -- Show Index: CHAR
  index, show_index = nse_nsecm_orderentry_nnfdirect_v6_6.show_index.dissect(buffer, index, packet, parent)

  -- Broker Eligibility Per Market: Struct of 9 fields
  index, broker_eligibility_per_market = nse_nsecm_orderentry_nnfdirect_v6_6.broker_eligibility_per_market.dissect(buffer, index, packet, parent)

  -- Broker Name: CHAR
  index, broker_name = nse_nsecm_orderentry_nnfdirect_v6_6.broker_name.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  index, reserved_16 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_16.dissect(buffer, index, packet, parent)

  -- Second Reserved 16: CHAR
  index, second_reserved_16 = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_16.dissect(buffer, index, packet, parent)

  -- Third Reserved 16: CHAR
  index, third_reserved_16 = nse_nsecm_orderentry_nnfdirect_v6_6.third_reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sign On Request Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sign_on_request_out_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Purpose Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.purpose_indicator = {}

-- Size: Purpose Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.purpose_indicator.size = 1

-- Display: Purpose Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.purpose_indicator.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Egm flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Egm"
  end
  -- Is Agm flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Agm"
  end
  -- Is Interest flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Interest"
  end
  -- Is Bonus flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Bonus"
  end
  -- Is Rights flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Rights"
  end
  -- Is Dividend flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Dividend"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Purpose Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.purpose_indicator.bits = function(range, value, packet, parent)

  -- Purpose Reserved: 2 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.purpose_reserved, range, value)

  -- Egm: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.egm, range, value)

  -- Agm: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.agm, range, value)

  -- Interest: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.interest, range, value)

  -- Bonus: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.bonus, range, value)

  -- Rights: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.rights, range, value)

  -- Dividend: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.dividend, range, value)
end

-- Dissect: Purpose Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.purpose_indicator.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecm_orderentry_nnfdirect_v6_6.purpose_indicator.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.purpose_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.purpose_indicator, range, display)

  if show.structs then
    nse_nsecm_orderentry_nnfdirect_v6_6.purpose_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Purpose
nse_nsecm_orderentry_nnfdirect_v6_6.purpose = {}

-- Size: Purpose
nse_nsecm_orderentry_nnfdirect_v6_6.purpose.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.purpose_indicator.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size

-- Display: Purpose
nse_nsecm_orderentry_nnfdirect_v6_6.purpose.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purpose
nse_nsecm_orderentry_nnfdirect_v6_6.purpose.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Purpose Indicator: Struct of 7 fields
  index, purpose_indicator = nse_nsecm_orderentry_nnfdirect_v6_6.purpose_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purpose
nse_nsecm_orderentry_nnfdirect_v6_6.purpose.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.purpose, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.purpose.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.purpose.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.purpose.fields(buffer, offset, packet, parent)
  end
end

-- Eligiblity Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicator = {}

-- Size: Eligiblity Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicator.size = 1

-- Display: Eligiblity Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicator.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Minimum Fill flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Minimum Fill"
  end
  -- Is Aon flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Aon"
  end
  -- Is Participate In Market Index flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Participate In Market Index"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Eligiblity Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicator.bits = function(range, value, packet, parent)

  -- Eligibility Reserved: 5 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.eligibility_reserved, range, value)

  -- Minimum Fill: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.minimum_fill, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.aon, range, value)

  -- Participate In Market Index: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.participate_in_market_index, range, value)
end

-- Dissect: Eligiblity Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicator.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicator.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.eligiblity_indicator, range, display)

  if show.structs then
    nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Eligiblity Indicators
nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicators = {}

-- Size: Eligiblity Indicators
nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicators.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicator.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size

-- Display: Eligiblity Indicators
nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicators.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eligiblity Indicators
nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicators.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Eligiblity Indicator: Struct of 4 fields
  index, eligiblity_indicator = nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eligiblity Indicators
nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicators.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.eligiblity_indicators, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicators.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicators.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicators.fields(buffer, offset, packet, parent)
  end
end

-- Security Eligibility Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.security_eligibility_indicator = {}

-- Size: Security Eligibility Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.security_eligibility_indicator.size = 1

-- Display: Security Eligibility Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.security_eligibility_indicator.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Eligibility flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Eligibility"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Eligibility Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.security_eligibility_indicator.bits = function(range, value, packet, parent)

  -- Security Eligibility Reserved: 7 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_eligibility_reserved, range, value)

  -- Eligibility: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.eligibility, range, value)
end

-- Dissect: Security Eligibility Indicator
nse_nsecm_orderentry_nnfdirect_v6_6.security_eligibility_indicator.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecm_orderentry_nnfdirect_v6_6.security_eligibility_indicator.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.security_eligibility_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_eligibility_indicator, range, display)

  if show.structs then
    nse_nsecm_orderentry_nnfdirect_v6_6.security_eligibility_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Secuirity Eligibility Per Market
nse_nsecm_orderentry_nnfdirect_v6_6.secuirity_eligibility_per_market = {}

-- Size: Secuirity Eligibility Per Market
nse_nsecm_orderentry_nnfdirect_v6_6.secuirity_eligibility_per_market.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.security_eligibility_indicator.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.status.size

-- Display: Secuirity Eligibility Per Market
nse_nsecm_orderentry_nnfdirect_v6_6.secuirity_eligibility_per_market.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Secuirity Eligibility Per Market
nse_nsecm_orderentry_nnfdirect_v6_6.secuirity_eligibility_per_market.fields = function(buffer, offset, packet, parent, secuirity_eligibility_per_market_index)
  local index = offset

  -- Implicit Secuirity Eligibility Per Market Index
  if secuirity_eligibility_per_market_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.secuirity_eligibility_per_market_index, secuirity_eligibility_per_market_index)
    iteration:set_generated()
  end

  -- Security Eligibility Indicator: Struct of 2 fields
  index, security_eligibility_indicator = nse_nsecm_orderentry_nnfdirect_v6_6.security_eligibility_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Status: SHORT
  index, status = nse_nsecm_orderentry_nnfdirect_v6_6.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Secuirity Eligibility Per Market
nse_nsecm_orderentry_nnfdirect_v6_6.secuirity_eligibility_per_market.dissect = function(buffer, offset, packet, parent, secuirity_eligibility_per_market_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.secuirity_eligibility_per_market, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.secuirity_eligibility_per_market.fields(buffer, offset, packet, parent, secuirity_eligibility_per_market_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.secuirity_eligibility_per_market.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.secuirity_eligibility_per_market.fields(buffer, offset, packet, parent, secuirity_eligibility_per_market_index)
  end
end

-- Security Master Change Message
nse_nsecm_orderentry_nnfdirect_v6_6.security_master_change_message = {}

-- Size: Security Master Change Message
nse_nsecm_orderentry_nnfdirect_v6_6.security_master_change_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.token.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.instrument_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.permitted_to_trade.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.issued_capital.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.settlement_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.freeze_percent.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.credit_rating.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size + 
  6 * nse_nsecm_orderentry_nnfdirect_v6_6.secuirity_eligibility_per_market.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.surv_ind.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.issue_start_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.interest_payment_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.issue_maturity_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.board_lot_quantity.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.tick_size.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.name.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.listing_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.expulsion_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.re_admission_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.record_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.expiry_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_start_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_end_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicators.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_start_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_end_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.purpose.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.local_update_date_time.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.delete_flag.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.remark.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.face_value.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.isin_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_spread.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_min_qty.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_flag.size

-- Display: Security Master Change Message
nse_nsecm_orderentry_nnfdirect_v6_6.security_master_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Master Change Message
nse_nsecm_orderentry_nnfdirect_v6_6.security_master_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nsecm_orderentry_nnfdirect_v6_6.token.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Instrument Type: SHORT
  index, instrument_type = nse_nsecm_orderentry_nnfdirect_v6_6.instrument_type.dissect(buffer, index, packet, parent)

  -- Permitted To Trade: SHORT
  index, permitted_to_trade = nse_nsecm_orderentry_nnfdirect_v6_6.permitted_to_trade.dissect(buffer, index, packet, parent)

  -- Issued Capital: DOUBLE
  index, issued_capital = nse_nsecm_orderentry_nnfdirect_v6_6.issued_capital.dissect(buffer, index, packet, parent)

  -- Settlement Type: SHORT
  index, settlement_type = nse_nsecm_orderentry_nnfdirect_v6_6.settlement_type.dissect(buffer, index, packet, parent)

  -- Freeze Percent: SHORT
  index, freeze_percent = nse_nsecm_orderentry_nnfdirect_v6_6.freeze_percent.dissect(buffer, index, packet, parent)

  -- Credit Rating: CHAR
  index, credit_rating = nse_nsecm_orderentry_nnfdirect_v6_6.credit_rating.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Array Of: Secuirity Eligibility Per Market
  for secuirity_eligibility_per_market_index = 1, 6 do
    index, secuirity_eligibility_per_market = nse_nsecm_orderentry_nnfdirect_v6_6.secuirity_eligibility_per_market.dissect(buffer, index, packet, parent, secuirity_eligibility_per_market_index)
  end

  -- Surv Ind: SHORT
  index, surv_ind = nse_nsecm_orderentry_nnfdirect_v6_6.surv_ind.dissect(buffer, index, packet, parent)

  -- Issue Start Date: LONG
  index, issue_start_date = nse_nsecm_orderentry_nnfdirect_v6_6.issue_start_date.dissect(buffer, index, packet, parent)

  -- Interest Payment Date: LONG
  index, interest_payment_date = nse_nsecm_orderentry_nnfdirect_v6_6.interest_payment_date.dissect(buffer, index, packet, parent)

  -- Issue Maturity Date: LONG
  index, issue_maturity_date = nse_nsecm_orderentry_nnfdirect_v6_6.issue_maturity_date.dissect(buffer, index, packet, parent)

  -- Board Lot Quantity: LONG
  index, board_lot_quantity = nse_nsecm_orderentry_nnfdirect_v6_6.board_lot_quantity.dissect(buffer, index, packet, parent)

  -- Tick Size: LONG
  index, tick_size = nse_nsecm_orderentry_nnfdirect_v6_6.tick_size.dissect(buffer, index, packet, parent)

  -- Name: CHAR
  index, name = nse_nsecm_orderentry_nnfdirect_v6_6.name.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  index, second_reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Listing Date: LONG
  index, listing_date = nse_nsecm_orderentry_nnfdirect_v6_6.listing_date.dissect(buffer, index, packet, parent)

  -- Expulsion Date: LONG
  index, expulsion_date = nse_nsecm_orderentry_nnfdirect_v6_6.expulsion_date.dissect(buffer, index, packet, parent)

  -- Re Admission Date: LONG
  index, re_admission_date = nse_nsecm_orderentry_nnfdirect_v6_6.re_admission_date.dissect(buffer, index, packet, parent)

  -- Record Date: LONG
  index, record_date = nse_nsecm_orderentry_nnfdirect_v6_6.record_date.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nsecm_orderentry_nnfdirect_v6_6.expiry_date.dissect(buffer, index, packet, parent)

  -- No Delivery Start Date: LONG
  index, no_delivery_start_date = nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_start_date.dissect(buffer, index, packet, parent)

  -- No Delivery End Date: LONG
  index, no_delivery_end_date = nse_nsecm_orderentry_nnfdirect_v6_6.no_delivery_end_date.dissect(buffer, index, packet, parent)

  -- Eligiblity Indicators: Struct of 2 fields
  index, eligiblity_indicators = nse_nsecm_orderentry_nnfdirect_v6_6.eligiblity_indicators.dissect(buffer, index, packet, parent)

  -- Book Closure Start Date: LONG
  index, book_closure_start_date = nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_start_date.dissect(buffer, index, packet, parent)

  -- Book Closure End Date: LONG
  index, book_closure_end_date = nse_nsecm_orderentry_nnfdirect_v6_6.book_closure_end_date.dissect(buffer, index, packet, parent)

  -- Purpose: Struct of 2 fields
  index, purpose = nse_nsecm_orderentry_nnfdirect_v6_6.purpose.dissect(buffer, index, packet, parent)

  -- Local Update Date Time: LONG
  index, local_update_date_time = nse_nsecm_orderentry_nnfdirect_v6_6.local_update_date_time.dissect(buffer, index, packet, parent)

  -- Delete Flag: CHAR
  index, delete_flag = nse_nsecm_orderentry_nnfdirect_v6_6.delete_flag.dissect(buffer, index, packet, parent)

  -- Remark: CHAR
  index, remark = nse_nsecm_orderentry_nnfdirect_v6_6.remark.dissect(buffer, index, packet, parent)

  -- Face Value: LONG
  index, face_value = nse_nsecm_orderentry_nnfdirect_v6_6.face_value.dissect(buffer, index, packet, parent)

  -- Isin Number: CHAR
  index, isin_number = nse_nsecm_orderentry_nnfdirect_v6_6.isin_number.dissect(buffer, index, packet, parent)

  -- Mkt Maker Spread: LONG
  index, mkt_maker_spread = nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_spread.dissect(buffer, index, packet, parent)

  -- Mkt Maker Min Qty: LONG
  index, mkt_maker_min_qty = nse_nsecm_orderentry_nnfdirect_v6_6.mkt_maker_min_qty.dissect(buffer, index, packet, parent)

  -- Call Auction 1 Flag: SHORT
  index, call_auction_1_flag = nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Master Change Message
nse_nsecm_orderentry_nnfdirect_v6_6.security_master_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_master_change_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.security_master_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.security_master_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.security_master_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Per Market
nse_nsecm_orderentry_nnfdirect_v6_6.security_status_per_market = {}

-- Size: Security Status Per Market
nse_nsecm_orderentry_nnfdirect_v6_6.security_status_per_market.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.status.size

-- Display: Security Status Per Market
nse_nsecm_orderentry_nnfdirect_v6_6.security_status_per_market.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Per Market
nse_nsecm_orderentry_nnfdirect_v6_6.security_status_per_market.fields = function(buffer, offset, packet, parent, security_status_per_market_index)
  local index = offset

  -- Implicit Security Status Per Market Index
  if security_status_per_market_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_status_per_market_index, security_status_per_market_index)
    iteration:set_generated()
  end

  -- Status: SHORT
  index, status = nse_nsecm_orderentry_nnfdirect_v6_6.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Per Market
nse_nsecm_orderentry_nnfdirect_v6_6.security_status_per_market.dissect = function(buffer, offset, packet, parent, security_status_per_market_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_status_per_market, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.security_status_per_market.fields(buffer, offset, packet, parent, security_status_per_market_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.security_status_per_market.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.security_status_per_market.fields(buffer, offset, packet, parent, security_status_per_market_index)
  end
end

-- Token And Eligibility
nse_nsecm_orderentry_nnfdirect_v6_6.token_and_eligibility = {}

-- Size: Token And Eligibility
nse_nsecm_orderentry_nnfdirect_v6_6.token_and_eligibility.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.token.size + 
  6 * nse_nsecm_orderentry_nnfdirect_v6_6.security_status_per_market.size

-- Display: Token And Eligibility
nse_nsecm_orderentry_nnfdirect_v6_6.token_and_eligibility.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Token And Eligibility
nse_nsecm_orderentry_nnfdirect_v6_6.token_and_eligibility.fields = function(buffer, offset, packet, parent, token_and_eligibility_index)
  local index = offset

  -- Implicit Token And Eligibility Index
  if token_and_eligibility_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.token_and_eligibility_index, token_and_eligibility_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nsecm_orderentry_nnfdirect_v6_6.token.dissect(buffer, index, packet, parent)

  -- Array Of: Security Status Per Market
  for security_status_per_market_index = 1, 6 do
    index, security_status_per_market = nse_nsecm_orderentry_nnfdirect_v6_6.security_status_per_market.dissect(buffer, index, packet, parent, security_status_per_market_index)
  end

  return index
end

-- Dissect: Token And Eligibility
nse_nsecm_orderentry_nnfdirect_v6_6.token_and_eligibility.dissect = function(buffer, offset, packet, parent, token_and_eligibility_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.token_and_eligibility, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.token_and_eligibility.fields(buffer, offset, packet, parent, token_and_eligibility_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.token_and_eligibility.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.token_and_eligibility.fields(buffer, offset, packet, parent, token_and_eligibility_index)
  end
end

-- Security Status Change Message
nse_nsecm_orderentry_nnfdirect_v6_6.security_status_change_message = {}

-- Size: Security Status Change Message
nse_nsecm_orderentry_nnfdirect_v6_6.security_status_change_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.number_of_records.size + 
  25 * nse_nsecm_orderentry_nnfdirect_v6_6.token_and_eligibility.size

-- Display: Security Status Change Message
nse_nsecm_orderentry_nnfdirect_v6_6.security_status_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Change Message
nse_nsecm_orderentry_nnfdirect_v6_6.security_status_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsecm_orderentry_nnfdirect_v6_6.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Token And Eligibility
  for token_and_eligibility_index = 1, 25 do
    index, token_and_eligibility = nse_nsecm_orderentry_nnfdirect_v6_6.token_and_eligibility.dissect(buffer, index, packet, parent, token_and_eligibility_index)
  end

  return index
end

-- Dissect: Security Status Change Message
nse_nsecm_orderentry_nnfdirect_v6_6.security_status_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.security_status_change_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.security_status_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.security_status_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.security_status_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Password Reset Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_out_message = {}

-- Size: Password Reset Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_out_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_14.size

-- Display: Password Reset Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Password Reset Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 14: CHAR
  index, reserved_14 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_14.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Password Reset Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.password_reset_out_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Limit Update Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_out_message = {}

-- Size: Order Limit Update Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_out_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.order_qty_limit.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.order_val_limit.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.size

-- Display: Order Limit Update Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Limit Update Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Order Qty Limit: DOUBLE
  index, order_qty_limit = nse_nsecm_orderentry_nnfdirect_v6_6.order_qty_limit.dissect(buffer, index, packet, parent)

  -- Order Val Limit: DOUBLE
  index, order_val_limit = nse_nsecm_orderentry_nnfdirect_v6_6.order_val_limit.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Limit Update Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_limit_update_out_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_out_message.fields(buffer, offset, packet, parent)
  end
end

-- St Order Flags
nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags = {}

-- Size: St Order Flags
nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags.size = 2

-- Display: St Order Flags
nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags.display = function(range, value, packet, parent)
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
nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags.bits = function(range, value, packet, parent)

  -- Order Flags Reserved One: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_flags_reserved_one, range, value)

  -- Stpc: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.stpc, range, value)

  -- Order Flags Reserved Three: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_flags_reserved_three, range, value)

  -- Preopen: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.preopen, range, value)

  -- Frozen: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.frozen, range, value)

  -- Modified: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.modified, range, value)

  -- Traded: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.traded, range, value)

  -- Matched Ind: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.matched_ind, range, value)

  -- Mf: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.mf, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.aon, range, value)

  -- Ioc: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.ioc, range, value)

  -- Gtc: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.gtc, range, value)

  -- Day: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.day, range, value)

  -- On Stop: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.on_stop, range, value)

  -- Mkt: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.mkt, range, value)

  -- Ato: 1 Bit
  parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.ato, range, value)
end

-- Dissect: St Order Flags
nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.st_order_flags, range, display)

  if show.structs then
    nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Entry Short Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_short_message = {}

-- Size: Order Entry Short Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_short_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.participant_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.competitor_period.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.solicitor_period.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.mod_cxl_by.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.filler_9.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reason_code.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_4.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.auction_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.op_broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.suspended.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.order_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.account_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.book_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.buy_sell.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol_remaining.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.total_vol_remaining.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.volume.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.volume_filled_today.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.price.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.trigger_price.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.good_till_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.entry_date_time.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.min_fill_aon.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.last_modified.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.oe_remarks.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.settlor.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.pro_client.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.settlement_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.nnf_field.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.exec_time_stamp.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_4.size

-- Display: Order Entry Short Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Entry Short Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nsecm_orderentry_nnfdirect_v6_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsecm_orderentry_nnfdirect_v6_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsecm_orderentry_nnfdirect_v6_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nsecm_orderentry_nnfdirect_v6_6.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  index, filler_9 = nse_nsecm_orderentry_nnfdirect_v6_6.filler_9.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsecm_orderentry_nnfdirect_v6_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  index, reserved_4 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_4.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_orderentry_nnfdirect_v6_6.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_orderentry_nnfdirect_v6_6.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_orderentry_nnfdirect_v6_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_orderentry_nnfdirect_v6_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_orderentry_nnfdirect_v6_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_orderentry_nnfdirect_v6_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nsecm_orderentry_nnfdirect_v6_6.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nsecm_orderentry_nnfdirect_v6_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nsecm_orderentry_nnfdirect_v6_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsecm_orderentry_nnfdirect_v6_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nsecm_orderentry_nnfdirect_v6_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nsecm_orderentry_nnfdirect_v6_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nsecm_orderentry_nnfdirect_v6_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nsecm_orderentry_nnfdirect_v6_6.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nsecm_orderentry_nnfdirect_v6_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nsecm_orderentry_nnfdirect_v6_6.oe_remarks.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_orderentry_nnfdirect_v6_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nsecm_orderentry_nnfdirect_v6_6.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Type: SHORT
  index, settlement_type = nse_nsecm_orderentry_nnfdirect_v6_6.settlement_type.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_orderentry_nnfdirect_v6_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nsecm_orderentry_nnfdirect_v6_6.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Second Reserved 4: CHAR
  index, second_reserved_4 = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Entry Short Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_entry_short_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Entry Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message = {}

-- Size: Order Entry Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.participant_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.competitor_period.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.solicitor_period.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.mod_cxl_by.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.filler_9.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reason_code.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_4.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.auction_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.op_broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.suspended.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.order_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.account_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.book_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.buy_sell.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol_remaining.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.total_vol_remaining.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.volume.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.volume_filled_today.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.price.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.trigger_price.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.good_till_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.entry_date_time.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.min_fill_aon.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.last_modified.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.oe_remarks.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.settlor.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.pro_client.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.settlement_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.nnf_field.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.exec_time_stamp.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_4.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.pan.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.algo_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.last_activity_reference.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_52.size

-- Display: Order Entry Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Entry Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nsecm_orderentry_nnfdirect_v6_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsecm_orderentry_nnfdirect_v6_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsecm_orderentry_nnfdirect_v6_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nsecm_orderentry_nnfdirect_v6_6.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  index, filler_9 = nse_nsecm_orderentry_nnfdirect_v6_6.filler_9.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsecm_orderentry_nnfdirect_v6_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  index, reserved_4 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_4.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_orderentry_nnfdirect_v6_6.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_orderentry_nnfdirect_v6_6.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_orderentry_nnfdirect_v6_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_orderentry_nnfdirect_v6_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_orderentry_nnfdirect_v6_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_orderentry_nnfdirect_v6_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nsecm_orderentry_nnfdirect_v6_6.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nsecm_orderentry_nnfdirect_v6_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nsecm_orderentry_nnfdirect_v6_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsecm_orderentry_nnfdirect_v6_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nsecm_orderentry_nnfdirect_v6_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nsecm_orderentry_nnfdirect_v6_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nsecm_orderentry_nnfdirect_v6_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nsecm_orderentry_nnfdirect_v6_6.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nsecm_orderentry_nnfdirect_v6_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nsecm_orderentry_nnfdirect_v6_6.oe_remarks.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_orderentry_nnfdirect_v6_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nsecm_orderentry_nnfdirect_v6_6.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Type: SHORT
  index, settlement_type = nse_nsecm_orderentry_nnfdirect_v6_6.settlement_type.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_orderentry_nnfdirect_v6_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nsecm_orderentry_nnfdirect_v6_6.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Second Reserved 4: CHAR
  index, second_reserved_4 = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_4.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_orderentry_nnfdirect_v6_6.pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsecm_orderentry_nnfdirect_v6_6.algo_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsecm_orderentry_nnfdirect_v6_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  index, reserved_52 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_52.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Entry Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_entry_out_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Confirmation Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_confirmation_message = {}

-- Size: Trade Confirmation Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_confirmation_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.response_order_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.trader_num.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.account_num.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.buy_sell.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.original_vol.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.remaining_vol.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol_remaining.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.price.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.gtd.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.fill_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.fill_qty.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.fill_price.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.vol_filled_today.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.activity_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.activity_time.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.op_order_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.op_broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.book_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.new_volume.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.pro_client.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.pan.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.algo_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.last_activity_reference.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_52.size

-- Display: Trade Confirmation Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Confirmation Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nsecm_orderentry_nnfdirect_v6_6.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Trader Num: LONG
  index, trader_num = nse_nsecm_orderentry_nnfdirect_v6_6.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nsecm_orderentry_nnfdirect_v6_6.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_orderentry_nnfdirect_v6_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nsecm_orderentry_nnfdirect_v6_6.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nsecm_orderentry_nnfdirect_v6_6.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsecm_orderentry_nnfdirect_v6_6.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nsecm_orderentry_nnfdirect_v6_6.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nsecm_orderentry_nnfdirect_v6_6.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nsecm_orderentry_nnfdirect_v6_6.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsecm_orderentry_nnfdirect_v6_6.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nsecm_orderentry_nnfdirect_v6_6.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nsecm_orderentry_nnfdirect_v6_6.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nsecm_orderentry_nnfdirect_v6_6.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nsecm_orderentry_nnfdirect_v6_6.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.op_broker_id.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  index, second_reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_orderentry_nnfdirect_v6_6.book_type.dissect(buffer, index, packet, parent)

  -- New Volume: LONG
  index, new_volume = nse_nsecm_orderentry_nnfdirect_v6_6.new_volume.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nsecm_orderentry_nnfdirect_v6_6.pro_client.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_orderentry_nnfdirect_v6_6.pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsecm_orderentry_nnfdirect_v6_6.algo_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsecm_orderentry_nnfdirect_v6_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  index, reserved_52 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_52.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Confirmation Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trade_confirmation_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.trade_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.trade_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.trade_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message To Trader Message
nse_nsecm_orderentry_nnfdirect_v6_6.control_message_to_trader_message = {}

-- Size: Control Message To Trader Message
nse_nsecm_orderentry_nnfdirect_v6_6.control_message_to_trader_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.action_code.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.msg_length.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.msg.size

-- Display: Control Message To Trader Message
nse_nsecm_orderentry_nnfdirect_v6_6.control_message_to_trader_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message To Trader Message
nse_nsecm_orderentry_nnfdirect_v6_6.control_message_to_trader_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trader Id: LONG
  index, trader_id = nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.dissect(buffer, index, packet, parent)

  -- Action Code: CHAR
  index, action_code = nse_nsecm_orderentry_nnfdirect_v6_6.action_code.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Msg Length: SHORT
  index, msg_length = nse_nsecm_orderentry_nnfdirect_v6_6.msg_length.dissect(buffer, index, packet, parent)

  -- Msg: CHAR
  index, msg = nse_nsecm_orderentry_nnfdirect_v6_6.msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Control Message To Trader Message
nse_nsecm_orderentry_nnfdirect_v6_6.control_message_to_trader_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.control_message_to_trader_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.control_message_to_trader_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.control_message_to_trader_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.control_message_to_trader_message.fields(buffer, offset, packet, parent)
  end
end

-- New Encryption Tail
nse_nsecm_orderentry_nnfdirect_v6_6.new_encryption_tail = {}

-- Size: New Encryption Tail
nse_nsecm_orderentry_nnfdirect_v6_6.new_encryption_tail.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.static_cryptographic_iv.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.dynamic_cryptographic_iv.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_additional_key.size

-- Display: New Encryption Tail
nse_nsecm_orderentry_nnfdirect_v6_6.new_encryption_tail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Encryption Tail
nse_nsecm_orderentry_nnfdirect_v6_6.new_encryption_tail.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Static Cryptographic Iv: CHAR
  index, static_cryptographic_iv = nse_nsecm_orderentry_nnfdirect_v6_6.static_cryptographic_iv.dissect(buffer, index, packet, parent)

  -- Dynamic Cryptographic Iv: LONG LONG
  index, dynamic_cryptographic_iv = nse_nsecm_orderentry_nnfdirect_v6_6.dynamic_cryptographic_iv.dissect(buffer, index, packet, parent)

  -- Cryptographic Additional Key: CHAR
  index, cryptographic_additional_key = nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_additional_key.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Encryption Tail
nse_nsecm_orderentry_nnfdirect_v6_6.new_encryption_tail.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.new_encryption_tail, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.new_encryption_tail.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.new_encryption_tail.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.new_encryption_tail.fields(buffer, offset, packet, parent)
  end
end

-- Existing Encryption Tail
nse_nsecm_orderentry_nnfdirect_v6_6.existing_encryption_tail = {}

-- Size: Existing Encryption Tail
nse_nsecm_orderentry_nnfdirect_v6_6.existing_encryption_tail.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_iv.size

-- Display: Existing Encryption Tail
nse_nsecm_orderentry_nnfdirect_v6_6.existing_encryption_tail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Existing Encryption Tail
nse_nsecm_orderentry_nnfdirect_v6_6.existing_encryption_tail.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cryptographic Iv: CHAR
  index, cryptographic_iv = nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_iv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Existing Encryption Tail
nse_nsecm_orderentry_nnfdirect_v6_6.existing_encryption_tail.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.existing_encryption_tail, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.existing_encryption_tail.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.existing_encryption_tail.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.existing_encryption_tail.fields(buffer, offset, packet, parent)
  end
end

-- Cryptographic Payload
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_payload = {}

-- Dissect: Cryptographic Payload
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_payload.dispatch = {
  [124] = nse_nsecm_orderentry_nnfdirect_v6_6.existing_encryption_tail.dissect,
  [136] = nse_nsecm_orderentry_nnfdirect_v6_6.new_encryption_tail.dissect,
}

nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_payload.dissect = function(buffer, offset, packet, parent, message_length)
  local dissect = nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_payload.dispatch[message_length]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Cryptographic Tail
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_tail = {}

-- Calculate size of: Cryptographic Tail
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_tail.size = function(buffer, offset)
  local index = 0

  -- Calculate runtime size of Cryptographic Payload field
  local cryptographic_payload_offset = offset + index
  local cryptographic_payload_type = buffer(cryptographic_payload_offset - 70, 2):int()
  index = index + nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_payload.size(buffer, cryptographic_payload_offset, cryptographic_payload_type)

  return index
end

-- Display: Cryptographic Tail
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_tail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cryptographic Tail
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_tail.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 70, 2):int()

  -- Cryptographic Payload: Runtime Type with 2 branches
  index = nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_payload.dissect(buffer, index, packet, parent, message_length)

  return index
end

-- Dissect: Cryptographic Tail
nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_tail.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.cryptographic_tail, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_tail.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_tail.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_tail.fields(buffer, offset, packet, parent)
  end
end

-- Gateway Router Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_response_message = {}

-- Calculate size of: Gateway Router Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_response_message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsecm_orderentry_nnfdirect_v6_6.box_id.size

  index = index + nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size

  index = index + nse_nsecm_orderentry_nnfdirect_v6_6.filler.size

  index = index + nse_nsecm_orderentry_nnfdirect_v6_6.ip_address.size

  index = index + nse_nsecm_orderentry_nnfdirect_v6_6.port.size

  index = index + nse_nsecm_orderentry_nnfdirect_v6_6.session_key.size

  index = index + nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_key.size

  index = index + nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_tail.size(buffer, offset + index)

  return index
end

-- Display: Gateway Router Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Router Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nsecm_orderentry_nnfdirect_v6_6.box_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_orderentry_nnfdirect_v6_6.filler.dissect(buffer, index, packet, parent)

  -- Ip Address: CHAR
  index, ip_address = nse_nsecm_orderentry_nnfdirect_v6_6.ip_address.dissect(buffer, index, packet, parent)

  -- Port: LONG
  index, port = nse_nsecm_orderentry_nnfdirect_v6_6.port.dissect(buffer, index, packet, parent)

  -- Session Key: CHAR
  index, session_key = nse_nsecm_orderentry_nnfdirect_v6_6.session_key.dissect(buffer, index, packet, parent)

  -- Cryptographic Key: CHAR
  index, cryptographic_key = nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_key.dissect(buffer, index, packet, parent)

  -- Cryptographic Tail: Struct of 1 fields
  index, cryptographic_tail = nse_nsecm_orderentry_nnfdirect_v6_6.cryptographic_tail.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Router Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.gateway_router_response_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Box Sign On Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_response_message = {}

-- Size: Box Sign On Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_response_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.box_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_10.size

-- Display: Box Sign On Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Box Sign On Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nsecm_orderentry_nnfdirect_v6_6.box_id.dissect(buffer, index, packet, parent)

  -- Reserved 10: CHAR
  index, reserved_10 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Box Sign On Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.box_sign_on_response_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Secure Box Registration Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.secure_box_registration_request_message = {}

-- Size: Secure Box Registration Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.secure_box_registration_request_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.box_id.size

-- Display: Secure Box Registration Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.secure_box_registration_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Secure Box Registration Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.secure_box_registration_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nsecm_orderentry_nnfdirect_v6_6.box_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Secure Box Registration Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.secure_box_registration_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.secure_box_registration_request_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.secure_box_registration_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.secure_box_registration_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.secure_box_registration_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Error Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.error_response_message = {}

-- Size: Error Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.error_response_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.error_message.size

-- Display: Error Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.error_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Error Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.error_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Error Message: CHAR
  index, error_message = nse_nsecm_orderentry_nnfdirect_v6_6.error_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Error Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.error_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.error_response_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.error_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.error_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.error_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel On Logout Status Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_response_message = {}

-- Size: Cancel On Logout Status Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_response_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.colo_user_bit.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size

-- Display: Cancel On Logout Status Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel On Logout Status Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Colo User Bit: CHAR
  index, colo_user_bit = nse_nsecm_orderentry_nnfdirect_v6_6.colo_user_bit.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel On Logout Status Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.cancel_on_logout_status_response_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Branch Limit
nse_nsecm_orderentry_nnfdirect_v6_6.branch_limit = {}

-- Size: Branch Limit
nse_nsecm_orderentry_nnfdirect_v6_6.branch_limit.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.branch_buy_value_limit.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.branch_sell_value_limit.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_8.size

-- Display: Branch Limit
nse_nsecm_orderentry_nnfdirect_v6_6.branch_limit.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Branch Limit
nse_nsecm_orderentry_nnfdirect_v6_6.branch_limit.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Branch Buy Value Limit: DOUBLE
  index, branch_buy_value_limit = nse_nsecm_orderentry_nnfdirect_v6_6.branch_buy_value_limit.dissect(buffer, index, packet, parent)

  -- Reserved 8: CHAR
  index, reserved_8 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8.dissect(buffer, index, packet, parent)

  -- Branch Sell Value Limit: DOUBLE
  index, branch_sell_value_limit = nse_nsecm_orderentry_nnfdirect_v6_6.branch_sell_value_limit.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: CHAR
  index, second_reserved_8 = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Branch Limit
nse_nsecm_orderentry_nnfdirect_v6_6.branch_limit.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.branch_limit, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.branch_limit.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.branch_limit.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.branch_limit.fields(buffer, offset, packet, parent)
  end
end

-- Branch Order Value Limit Update Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_out_message = {}

-- Size: Branch Order Value Limit Update Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_out_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_25.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.branch.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.branch_limit.size

-- Display: Branch Order Value Limit Update Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Branch Order Value Limit Update Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 25: CHAR
  index, reserved_25 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_25.dissect(buffer, index, packet, parent)

  -- Branch: SHORT
  index, branch = nse_nsecm_orderentry_nnfdirect_v6_6.branch.dissect(buffer, index, packet, parent)

  -- Branch Limit: Struct of 4 fields
  index, branch_limit = nse_nsecm_orderentry_nnfdirect_v6_6.branch_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Branch Order Value Limit Update Out Message
nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.branch_order_value_limit_update_out_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Inquirydata
nse_nsecm_orderentry_nnfdirect_v6_6.inquirydata = {}

-- Size: Inquirydata
nse_nsecm_orderentry_nnfdirect_v6_6.inquirydata.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.token.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.auction_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.auction_status.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.initiator_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.total_buy.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.best_buy_price.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.total_sell.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.best_sell_price.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.auctioin_price.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.auction_quantity.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.settlement_period.size

-- Display: Inquirydata
nse_nsecm_orderentry_nnfdirect_v6_6.inquirydata.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inquirydata
nse_nsecm_orderentry_nnfdirect_v6_6.inquirydata.fields = function(buffer, offset, packet, parent, inquirydata_index)
  local index = offset

  -- Implicit Inquirydata Index
  if inquirydata_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inquirydata_index, inquirydata_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nsecm_orderentry_nnfdirect_v6_6.token.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_orderentry_nnfdirect_v6_6.auction_number.dissect(buffer, index, packet, parent)

  -- Auction Status: SHORT
  index, auction_status = nse_nsecm_orderentry_nnfdirect_v6_6.auction_status.dissect(buffer, index, packet, parent)

  -- Initiator Type: SHORT
  index, initiator_type = nse_nsecm_orderentry_nnfdirect_v6_6.initiator_type.dissect(buffer, index, packet, parent)

  -- Total Buy: LONG
  index, total_buy = nse_nsecm_orderentry_nnfdirect_v6_6.total_buy.dissect(buffer, index, packet, parent)

  -- Best Buy Price: LONG
  index, best_buy_price = nse_nsecm_orderentry_nnfdirect_v6_6.best_buy_price.dissect(buffer, index, packet, parent)

  -- Total Sell: LONG
  index, total_sell = nse_nsecm_orderentry_nnfdirect_v6_6.total_sell.dissect(buffer, index, packet, parent)

  -- Best Sell Price: LONG
  index, best_sell_price = nse_nsecm_orderentry_nnfdirect_v6_6.best_sell_price.dissect(buffer, index, packet, parent)

  -- Auctioin Price: LONG
  index, auctioin_price = nse_nsecm_orderentry_nnfdirect_v6_6.auctioin_price.dissect(buffer, index, packet, parent)

  -- Auction Quantity: LONG
  index, auction_quantity = nse_nsecm_orderentry_nnfdirect_v6_6.auction_quantity.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nsecm_orderentry_nnfdirect_v6_6.settlement_period.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquirydata
nse_nsecm_orderentry_nnfdirect_v6_6.inquirydata.dissect = function(buffer, offset, packet, parent, inquirydata_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.inquirydata, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.inquirydata.fields(buffer, offset, packet, parent, inquirydata_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.inquirydata.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.inquirydata.fields(buffer, offset, packet, parent, inquirydata_index)
  end
end

-- Auction Inquiry Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_response_message = {}

-- Size: Auction Inquiry Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_response_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.number_of_records.size + 
  5 * nse_nsecm_orderentry_nnfdirect_v6_6.inquirydata.size

-- Display: Auction Inquiry Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Inquiry Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsecm_orderentry_nnfdirect_v6_6.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Inquirydata
  for inquirydata_index = 1, 5 do
    index, inquirydata = nse_nsecm_orderentry_nnfdirect_v6_6.inquirydata.dissect(buffer, index, packet, parent, inquirydata_index)
  end

  return index
end

-- Dissect: Auction Inquiry Response Message
nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_inquiry_response_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Server Message Payload
nse_nsecm_orderentry_nnfdirect_v6_6.server_message_payload = {}

-- Dissect: Server Message Payload
nse_nsecm_orderentry_nnfdirect_v6_6.server_message_payload.dispatch = {
  [18017] = nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_response_message.dissect,
  [5717] = nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_out_message.dissect,
  [5791] = nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_response_message.dissect,
  [2302] = nse_nsecm_orderentry_nnfdirect_v6_6.error_response_message.dissect,
  [23008] = nse_nsecm_orderentry_nnfdirect_v6_6.secure_box_registration_request_message.dissect,
  [23001] = nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_response_message.dissect,
  [2401] = nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_response_message.dissect,
  [5295] = nse_nsecm_orderentry_nnfdirect_v6_6.control_message_to_trader_message.dissect,
  [2212] = nse_nsecm_orderentry_nnfdirect_v6_6.trade_confirmation_message.dissect,
  [2222] = nse_nsecm_orderentry_nnfdirect_v6_6.trade_confirmation_message.dissect,
  [2282] = nse_nsecm_orderentry_nnfdirect_v6_6.trade_confirmation_message.dissect,
  [2286] = nse_nsecm_orderentry_nnfdirect_v6_6.trade_confirmation_message.dissect,
  [2287] = nse_nsecm_orderentry_nnfdirect_v6_6.trade_confirmation_message.dissect,
  [2012] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.dissect,
  [2042] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.dissect,
  [2061] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.dissect,
  [2072] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.dissect,
  [2073] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.dissect,
  [2074] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.dissect,
  [2075] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.dissect,
  [2170] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.dissect,
  [2231] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.dissect,
  [9002] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_out_message.dissect,
  [2001] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_short_message.dissect,
  [2071] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_short_message.dissect,
  [5722] = nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_out_message.dissect,
  [5739] = nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_out_message.dissect,
  [18130] = nse_nsecm_orderentry_nnfdirect_v6_6.security_status_change_message.dissect,
  [18707] = nse_nsecm_orderentry_nnfdirect_v6_6.security_status_change_message.dissect,
  [18720] = nse_nsecm_orderentry_nnfdirect_v6_6.security_master_change_message.dissect,
  [5724] = nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_out_message.dissect,
  [2301] = nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_response_message.dissect,
  [1601] = nse_nsecm_orderentry_nnfdirect_v6_6.system_information_message.dissect,
  [7321] = nse_nsecm_orderentry_nnfdirect_v6_6.system_information_message.dissect,
  [2223] = nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_out_message.dissect,
  [5441] = nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_out_message.dissect,
  [7307] = nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_header_message.dissect,
  [7308] = nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_trailer_message.dissect,
  [5575] = nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_approval_rejection_message.dissect,
  [5579] = nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_approval_rejection_message.dissect,
  [5425] = nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_requested_response_message.dissect,
  [5720] = nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_out_message.dissect,
  [5793] = nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_response_message.dissect,
  [2321] = nse_nsecm_orderentry_nnfdirect_v6_6.sign_off_confirmation_message.dissect,
  [7011] = nse_nsecm_orderentry_nnfdirect_v6_6.header_record_message.dissect,
  [7021] = nse_nsecm_orderentry_nnfdirect_v6_6.message_record_message.dissect,
  [7031] = nse_nsecm_orderentry_nnfdirect_v6_6.trailer_record_message.dissect,
  [23009] = nse_nsecm_orderentry_nnfdirect_v6_6.secure_box_registration_response_message.dissect,
  [7304] = nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_data_message.dissect,
}

nse_nsecm_orderentry_nnfdirect_v6_6.server_message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nsecm_orderentry_nnfdirect_v6_6.server_message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nse_nsecm_orderentry_nnfdirect_v6_6.message_header = {}

-- Size: Message Header
nse_nsecm_orderentry_nnfdirect_v6_6.message_header.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.transaction_code.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.log_time.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.alpha_char.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.error_code.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.header_timestamp.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_2.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.message_length.size

-- Display: Message Header
nse_nsecm_orderentry_nnfdirect_v6_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nse_nsecm_orderentry_nnfdirect_v6_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsecm_orderentry_nnfdirect_v6_6.transaction_code.dissect(buffer, index, packet, parent)

  -- Log Time: LONG
  index, log_time = nse_nsecm_orderentry_nnfdirect_v6_6.log_time.dissect(buffer, index, packet, parent)

  -- Alpha Char: CHAR
  index, alpha_char = nse_nsecm_orderentry_nnfdirect_v6_6.alpha_char.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nsecm_orderentry_nnfdirect_v6_6.error_code.dissect(buffer, index, packet, parent)

  -- Header Timestamp: LONG LONG
  index, header_timestamp = nse_nsecm_orderentry_nnfdirect_v6_6.header_timestamp.dissect(buffer, index, packet, parent)

  -- Time Stamp 1: CHAR
  index, time_stamp_1 = nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_1.dissect(buffer, index, packet, parent)

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nsecm_orderentry_nnfdirect_v6_6.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Message Length: SHORT
  index, message_length = nse_nsecm_orderentry_nnfdirect_v6_6.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nse_nsecm_orderentry_nnfdirect_v6_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.message_header, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nse_nsecm_orderentry_nnfdirect_v6_6.packet_header = {}

-- Size: Packet Header
nse_nsecm_orderentry_nnfdirect_v6_6.packet_header.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.packet_length.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.packet_sequence_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.checksum.size

-- Display: Packet Header
nse_nsecm_orderentry_nnfdirect_v6_6.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nse_nsecm_orderentry_nnfdirect_v6_6.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nse_nsecm_orderentry_nnfdirect_v6_6.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = nse_nsecm_orderentry_nnfdirect_v6_6.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Checksum: 16 Byte
  index, checksum = nse_nsecm_orderentry_nnfdirect_v6_6.checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nse_nsecm_orderentry_nnfdirect_v6_6.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.packet_header, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Direct Packet
nse_nsecm_orderentry_nnfdirect_v6_6.server_direct_packet = {}

-- Display: Server Direct Packet
nse_nsecm_orderentry_nnfdirect_v6_6.server_direct_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Direct Packet
nse_nsecm_orderentry_nnfdirect_v6_6.server_direct_packet.fields = function(buffer, offset, packet, parent, size_of_server_direct_packet)
  local index = offset

  -- Packet Header: Struct of 3 fields
  index, packet_header = nse_nsecm_orderentry_nnfdirect_v6_6.packet_header.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nsecm_orderentry_nnfdirect_v6_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 40, 2):int()

  -- Server Message Payload: Runtime Type with 31 branches
  index = nse_nsecm_orderentry_nnfdirect_v6_6.server_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Server Direct Packet
nse_nsecm_orderentry_nnfdirect_v6_6.server_direct_packet.dissect = function(buffer, offset, packet, parent, size_of_server_direct_packet)
  local index = offset + size_of_server_direct_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.server_direct_packet, buffer(offset, 0))
    local current = nse_nsecm_orderentry_nnfdirect_v6_6.server_direct_packet.fields(buffer, offset, packet, parent, size_of_server_direct_packet)
    parent:set_len(size_of_server_direct_packet)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.server_direct_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsecm_orderentry_nnfdirect_v6_6.server_direct_packet.fields(buffer, offset, packet, parent, size_of_server_direct_packet)

    return index
  end
end

-- Remaining Bytes For: Server Direct Packet
local server_direct_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nsecm_orderentry_nnfdirect_v6_6.packet_header.size then
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
nse_nsecm_orderentry_nnfdirect_v6_6.server_packet = {}

-- Verify required size of Tcp packet
nse_nsecm_orderentry_nnfdirect_v6_6.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsecm_orderentry_nnfdirect_v6_6.packet_header.size + nse_nsecm_orderentry_nnfdirect_v6_6.message_header.size
end

-- Dissect Server Packet
nse_nsecm_orderentry_nnfdirect_v6_6.server_packet.dissect = function(buffer, packet, parent)
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
      index = nse_nsecm_orderentry_nnfdirect_v6_6.server_direct_packet.dissect(frame, index, packet, parent, size_of_server_direct_packet)
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

-- System Information Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.system_information_request_message = {}

-- Display: System Information Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.system_information_request_message.display = function(packet, parent, length)
  return "System Information Request Message"
end


-- Dissect: System Information Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.system_information_request_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nsecm_orderentry_nnfdirect_v6_6.system_information_request_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- User Order Value Limit Update In Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_in_message = {}

-- Size: User Order Value Limit Update In Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_in_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.branch.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_26.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.user_limits.size

-- Display: User Order Value Limit Update In Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Order Value Limit Update In Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Branch: SHORT
  index, branch = nse_nsecm_orderentry_nnfdirect_v6_6.branch.dissect(buffer, index, packet, parent)

  -- Reserved 26: CHAR
  index, reserved_26 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_26.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- User Limits: Struct of 5 fields
  index, user_limits = nse_nsecm_orderentry_nnfdirect_v6_6.user_limits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Order Value Limit Update In Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_order_value_limit_update_in_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_in_message.fields(buffer, offset, packet, parent)
  end
end

-- User Unlock Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_request_message = {}

-- Size: User Unlock Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_request_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_24.size

-- Display: User Unlock Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Unlock Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 24: CHAR
  index, reserved_24 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_24.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Unlock Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.user_unlock_request_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Modification Cancellation Status Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_request_message = {}

-- Size: Trade Modification Cancellation Status Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_request_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.trd_mod_cxl_bit.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_7.size

-- Display: Trade Modification Cancellation Status Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Modification Cancellation Status Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Trd Mod Cxl Bit: CHAR
  index, trd_mod_cxl_bit = nse_nsecm_orderentry_nnfdirect_v6_6.trd_mod_cxl_bit.dissect(buffer, index, packet, parent)

  -- Reserved 7: CHAR
  index, reserved_7 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Modification Cancellation Status Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trade_modification_cancellation_status_request_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Update Local Database Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_request_message = {}

-- Size: Update Local Database Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_request_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.last_update_security_time.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.last_update_participant_time.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.request_for_open_orders.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.normal_market_status.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.odd_lot_market_status.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.spot_market_status.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.auction_market_status.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_market_status.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_market_status.size

-- Display: Update Local Database Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Security Time: LONG
  index, last_update_security_time = nse_nsecm_orderentry_nnfdirect_v6_6.last_update_security_time.dissect(buffer, index, packet, parent)

  -- Last Update Participant Time: LONG
  index, last_update_participant_time = nse_nsecm_orderentry_nnfdirect_v6_6.last_update_participant_time.dissect(buffer, index, packet, parent)

  -- Request For Open Orders: CHAR
  index, request_for_open_orders = nse_nsecm_orderentry_nnfdirect_v6_6.request_for_open_orders.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Normal Market Status: SHORT
  index, normal_market_status = nse_nsecm_orderentry_nnfdirect_v6_6.normal_market_status.dissect(buffer, index, packet, parent)

  -- Odd Lot Market Status: SHORT
  index, odd_lot_market_status = nse_nsecm_orderentry_nnfdirect_v6_6.odd_lot_market_status.dissect(buffer, index, packet, parent)

  -- Spot Market Status: SHORT
  index, spot_market_status = nse_nsecm_orderentry_nnfdirect_v6_6.spot_market_status.dissect(buffer, index, packet, parent)

  -- Auction Market Status: SHORT
  index, auction_market_status = nse_nsecm_orderentry_nnfdirect_v6_6.auction_market_status.dissect(buffer, index, packet, parent)

  -- Call Auction 1 Market Status: SHORT
  index, call_auction_1_market_status = nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_1_market_status.dissect(buffer, index, packet, parent)

  -- Call Auction 2 Market Status: SHORT
  index, call_auction_2_market_status = nse_nsecm_orderentry_nnfdirect_v6_6.call_auction_2_market_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Update Local Database Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.update_local_database_request_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Inquiry In Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_in_message = {}

-- Size: Trade Inquiry In Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_in_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.fill_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.fill_qty.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.fill_price.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.market_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.new_volume.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_24.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.buy_broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.sell_broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.requested_by.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.buy_account_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.sell_account_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.buy_pan.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.sell_pan.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_60.size

-- Display: Trade Inquiry In Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Inquiry In Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nsecm_orderentry_nnfdirect_v6_6.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nsecm_orderentry_nnfdirect_v6_6.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsecm_orderentry_nnfdirect_v6_6.fill_price.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_orderentry_nnfdirect_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- New Volume: LONG
  index, new_volume = nse_nsecm_orderentry_nnfdirect_v6_6.new_volume.dissect(buffer, index, packet, parent)

  -- Reserved 24: CHAR
  index, reserved_24 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_24.dissect(buffer, index, packet, parent)

  -- Buy Broker Id: CHAR
  index, buy_broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.buy_broker_id.dissect(buffer, index, packet, parent)

  -- Sell Broker Id: CHAR
  index, sell_broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.sell_broker_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.dissect(buffer, index, packet, parent)

  -- Requested By: SHORT
  index, requested_by = nse_nsecm_orderentry_nnfdirect_v6_6.requested_by.dissect(buffer, index, packet, parent)

  -- Buy Account Number: CHAR
  index, buy_account_number = nse_nsecm_orderentry_nnfdirect_v6_6.buy_account_number.dissect(buffer, index, packet, parent)

  -- Sell Account Number: CHAR
  index, sell_account_number = nse_nsecm_orderentry_nnfdirect_v6_6.sell_account_number.dissect(buffer, index, packet, parent)

  -- Buy Pan: CHAR
  index, buy_pan = nse_nsecm_orderentry_nnfdirect_v6_6.buy_pan.dissect(buffer, index, packet, parent)

  -- Sell Pan: CHAR
  index, sell_pan = nse_nsecm_orderentry_nnfdirect_v6_6.sell_pan.dissect(buffer, index, packet, parent)

  -- Reserved 60: CHAR
  index, reserved_60 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_60.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Inquiry In Message
nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.trade_inquiry_in_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Sign On Request In Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_in_message = {}

-- Size: Sign On Request In Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_in_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.password.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_8.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.new_password.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.trader_name.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.last_password_change_date_time.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.version_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_56.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.user_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.sequence_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.workstation_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_status.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.show_index.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_eligibility_per_market.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_name.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_16.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_16.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.third_reserved_16.size

-- Display: Sign On Request In Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sign On Request In Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 8: CHAR
  index, reserved_8 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_8.dissect(buffer, index, packet, parent)

  -- Password: CHAR
  index, password = nse_nsecm_orderentry_nnfdirect_v6_6.password.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: CHAR
  index, second_reserved_8 = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_8.dissect(buffer, index, packet, parent)

  -- New Password: CHAR
  index, new_password = nse_nsecm_orderentry_nnfdirect_v6_6.new_password.dissect(buffer, index, packet, parent)

  -- Trader Name: CHAR
  index, trader_name = nse_nsecm_orderentry_nnfdirect_v6_6.trader_name.dissect(buffer, index, packet, parent)

  -- Last Password Change Date Time: LONG
  index, last_password_change_date_time = nse_nsecm_orderentry_nnfdirect_v6_6.last_password_change_date_time.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.dissect(buffer, index, packet, parent)

  -- Version Number: LONG
  index, version_number = nse_nsecm_orderentry_nnfdirect_v6_6.version_number.dissect(buffer, index, packet, parent)

  -- Reserved 56: CHAR
  index, reserved_56 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_56.dissect(buffer, index, packet, parent)

  -- User Type: SHORT
  index, user_type = nse_nsecm_orderentry_nnfdirect_v6_6.user_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: DOUBLE
  index, sequence_number = nse_nsecm_orderentry_nnfdirect_v6_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Workstation Number: CHAR
  index, workstation_number = nse_nsecm_orderentry_nnfdirect_v6_6.workstation_number.dissect(buffer, index, packet, parent)

  -- Broker Status: CHAR
  index, broker_status = nse_nsecm_orderentry_nnfdirect_v6_6.broker_status.dissect(buffer, index, packet, parent)

  -- Show Index: CHAR
  index, show_index = nse_nsecm_orderentry_nnfdirect_v6_6.show_index.dissect(buffer, index, packet, parent)

  -- Broker Eligibility Per Market: Struct of 9 fields
  index, broker_eligibility_per_market = nse_nsecm_orderentry_nnfdirect_v6_6.broker_eligibility_per_market.dissect(buffer, index, packet, parent)

  -- Broker Name: CHAR
  index, broker_name = nse_nsecm_orderentry_nnfdirect_v6_6.broker_name.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  index, reserved_16 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_16.dissect(buffer, index, packet, parent)

  -- Second Reserved 16: CHAR
  index, second_reserved_16 = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_16.dissect(buffer, index, packet, parent)

  -- Third Reserved 16: CHAR
  index, third_reserved_16 = nse_nsecm_orderentry_nnfdirect_v6_6.third_reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sign On Request In Message
nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.sign_on_request_in_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Password Reset In Message
nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_in_message = {}

-- Size: Password Reset In Message
nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_in_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_14.size

-- Display: Password Reset In Message
nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Password Reset In Message
nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 14: CHAR
  index, reserved_14 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_14.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Password Reset In Message
nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.password_reset_in_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Limit Update In Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_in_message = {}

-- Size: Order Limit Update In Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_in_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.order_qty_limit.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.order_val_limit.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.size

-- Display: Order Limit Update In Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Limit Update In Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Order Qty Limit: DOUBLE
  index, order_qty_limit = nse_nsecm_orderentry_nnfdirect_v6_6.order_qty_limit.dissect(buffer, index, packet, parent)

  -- Order Val Limit: DOUBLE
  index, order_val_limit = nse_nsecm_orderentry_nnfdirect_v6_6.order_val_limit.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Limit Update In Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_limit_update_in_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Entry In Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_in_message = {}

-- Size: Order Entry In Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_in_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.participant_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.competitor_period.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.solicitor_period.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.mod_cxl_by.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.filler_9.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reason_code.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_4.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.auction_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.op_broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.suspended.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.order_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.account_number.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.book_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.buy_sell.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol_remaining.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.total_vol_remaining.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.volume.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.volume_filled_today.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.price.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.trigger_price.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.good_till_date.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.entry_date_time.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.min_fill_aon.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.last_modified.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.oe_remarks.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.settlor.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.pro_client.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.settlement_type.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.nnf_field.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.exec_time_stamp.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_4.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.pan.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.algo_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.last_activity_reference.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_52.size

-- Display: Order Entry In Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Entry In Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nsecm_orderentry_nnfdirect_v6_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsecm_orderentry_nnfdirect_v6_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsecm_orderentry_nnfdirect_v6_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nsecm_orderentry_nnfdirect_v6_6.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  index, filler_9 = nse_nsecm_orderentry_nnfdirect_v6_6.filler_9.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsecm_orderentry_nnfdirect_v6_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  index, reserved_4 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_4.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_orderentry_nnfdirect_v6_6.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nsecm_orderentry_nnfdirect_v6_6.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsecm_orderentry_nnfdirect_v6_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsecm_orderentry_nnfdirect_v6_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_orderentry_nnfdirect_v6_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsecm_orderentry_nnfdirect_v6_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nsecm_orderentry_nnfdirect_v6_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nsecm_orderentry_nnfdirect_v6_6.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nsecm_orderentry_nnfdirect_v6_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nsecm_orderentry_nnfdirect_v6_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsecm_orderentry_nnfdirect_v6_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nsecm_orderentry_nnfdirect_v6_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nsecm_orderentry_nnfdirect_v6_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nsecm_orderentry_nnfdirect_v6_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nsecm_orderentry_nnfdirect_v6_6.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nsecm_orderentry_nnfdirect_v6_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nsecm_orderentry_nnfdirect_v6_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsecm_orderentry_nnfdirect_v6_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsecm_orderentry_nnfdirect_v6_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nsecm_orderentry_nnfdirect_v6_6.oe_remarks.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsecm_orderentry_nnfdirect_v6_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nsecm_orderentry_nnfdirect_v6_6.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Type: SHORT
  index, settlement_type = nse_nsecm_orderentry_nnfdirect_v6_6.settlement_type.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsecm_orderentry_nnfdirect_v6_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nsecm_orderentry_nnfdirect_v6_6.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Second Reserved 4: CHAR
  index, second_reserved_4 = nse_nsecm_orderentry_nnfdirect_v6_6.second_reserved_4.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsecm_orderentry_nnfdirect_v6_6.pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsecm_orderentry_nnfdirect_v6_6.algo_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_2.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsecm_orderentry_nnfdirect_v6_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  index, reserved_52 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_52.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Entry In Message
nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.order_entry_in_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Gateway Router Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_request_message = {}

-- Size: Gateway Router Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_request_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.box_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.filler.size

-- Display: Gateway Router Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Router Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nsecm_orderentry_nnfdirect_v6_6.box_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_orderentry_nnfdirect_v6_6.filler.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Router Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.gateway_router_request_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Box Sign On Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_request_message = {}

-- Size: Box Sign On Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_request_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.box_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_5.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.session_key.size

-- Display: Box Sign On Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Box Sign On Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nsecm_orderentry_nnfdirect_v6_6.box_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 5: CHAR
  index, reserved_5 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_5.dissect(buffer, index, packet, parent)

  -- Session Key: CHAR
  index, session_key = nse_nsecm_orderentry_nnfdirect_v6_6.session_key.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Box Sign On Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.box_sign_on_request_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Box Sign Off Message
nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_off_message = {}

-- Size: Box Sign Off Message
nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_off_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.box_id.size

-- Display: Box Sign Off Message
nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_off_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Box Sign Off Message
nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_off_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nsecm_orderentry_nnfdirect_v6_6.box_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Box Sign Off Message
nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_off_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.box_sign_off_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_off_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_off_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_off_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Inquiry Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_request_message = {}

-- Size: Auction Inquiry Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_request_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.auction_no.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.page_indicator.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.filler.size

-- Display: Auction Inquiry Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Inquiry Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_orderentry_nnfdirect_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Auction No: SHORT
  index, auction_no = nse_nsecm_orderentry_nnfdirect_v6_6.auction_no.dissect(buffer, index, packet, parent)

  -- Page Indicator: CHAR
  index, page_indicator = nse_nsecm_orderentry_nnfdirect_v6_6.page_indicator.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsecm_orderentry_nnfdirect_v6_6.filler.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Inquiry Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.auction_inquiry_request_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Download Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.message_download_request_message = {}

-- Size: Message Download Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.message_download_request_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.sequence_number.size

-- Display: Message Download Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.message_download_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Download Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.message_download_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: DOUBLE
  index, sequence_number = nse_nsecm_orderentry_nnfdirect_v6_6.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Download Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.message_download_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.message_download_request_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.message_download_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.message_download_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.message_download_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel On Logout Status Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_request_message = {}

-- Size: Cancel On Logout Status Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_request_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.user_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.colo_user_bit.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_7.size

-- Display: Cancel On Logout Status Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel On Logout Status Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsecm_orderentry_nnfdirect_v6_6.user_id.dissect(buffer, index, packet, parent)

  -- Colo User Bit: CHAR
  index, colo_user_bit = nse_nsecm_orderentry_nnfdirect_v6_6.colo_user_bit.dissect(buffer, index, packet, parent)

  -- Reserved 7: CHAR
  index, reserved_7 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel On Logout Status Request Message
nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.cancel_on_logout_status_request_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Branch Order Value Limit Update In Message
nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_in_message = {}

-- Size: Branch Order Value Limit Update In Message
nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_in_message.size =
  nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.reserved_25.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.branch.size + 
  nse_nsecm_orderentry_nnfdirect_v6_6.branch_limit.size

-- Display: Branch Order Value Limit Update In Message
nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Branch Order Value Limit Update In Message
nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nsecm_orderentry_nnfdirect_v6_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 25: CHAR
  index, reserved_25 = nse_nsecm_orderentry_nnfdirect_v6_6.reserved_25.dissect(buffer, index, packet, parent)

  -- Branch: SHORT
  index, branch = nse_nsecm_orderentry_nnfdirect_v6_6.branch.dissect(buffer, index, packet, parent)

  -- Branch Limit: Struct of 4 fields
  index, branch_limit = nse_nsecm_orderentry_nnfdirect_v6_6.branch_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Branch Order Value Limit Update In Message
nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.branch_order_value_limit_update_in_message, buffer(offset, 0))
    local index = nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Message Payload
nse_nsecm_orderentry_nnfdirect_v6_6.client_message_payload = {}

-- Dissect: Client Message Payload
nse_nsecm_orderentry_nnfdirect_v6_6.client_message_payload.dispatch = {
  [5716] = nse_nsecm_orderentry_nnfdirect_v6_6.branch_order_value_limit_update_in_message.dissect,
  [5790] = nse_nsecm_orderentry_nnfdirect_v6_6.cancel_on_logout_status_request_message.dissect,
  [7000] = nse_nsecm_orderentry_nnfdirect_v6_6.message_download_request_message.dissect,
  [18016] = nse_nsecm_orderentry_nnfdirect_v6_6.auction_inquiry_request_message.dissect,
  [20322] = nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_off_message.dissect,
  [23000] = nse_nsecm_orderentry_nnfdirect_v6_6.box_sign_on_request_message.dissect,
  [2400] = nse_nsecm_orderentry_nnfdirect_v6_6.gateway_router_request_message.dissect,
  [2000] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_in_message.dissect,
  [2040] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_in_message.dissect,
  [2062] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_in_message.dissect,
  [2070] = nse_nsecm_orderentry_nnfdirect_v6_6.order_entry_in_message.dissect,
  [5721] = nse_nsecm_orderentry_nnfdirect_v6_6.order_limit_update_in_message.dissect,
  [5738] = nse_nsecm_orderentry_nnfdirect_v6_6.password_reset_in_message.dissect,
  [2300] = nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_in_message.dissect,
  [5723] = nse_nsecm_orderentry_nnfdirect_v6_6.sign_on_request_in_message.dissect,
  [5440] = nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_in_message.dissect,
  [5445] = nse_nsecm_orderentry_nnfdirect_v6_6.trade_inquiry_in_message.dissect,
  [7300] = nse_nsecm_orderentry_nnfdirect_v6_6.update_local_database_request_message.dissect,
  [5792] = nse_nsecm_orderentry_nnfdirect_v6_6.trade_modification_cancellation_status_request_message.dissect,
  [5424] = nse_nsecm_orderentry_nnfdirect_v6_6.user_unlock_request_message.dissect,
  [5719] = nse_nsecm_orderentry_nnfdirect_v6_6.user_order_value_limit_update_in_message.dissect,
  [1600] = nse_nsecm_orderentry_nnfdirect_v6_6.system_information_request_message.dissect,
}

nse_nsecm_orderentry_nnfdirect_v6_6.client_message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nsecm_orderentry_nnfdirect_v6_6.client_message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Direct Packet
nse_nsecm_orderentry_nnfdirect_v6_6.client_direct_packet = {}

-- Display: Client Direct Packet
nse_nsecm_orderentry_nnfdirect_v6_6.client_direct_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Direct Packet
nse_nsecm_orderentry_nnfdirect_v6_6.client_direct_packet.fields = function(buffer, offset, packet, parent, size_of_client_direct_packet)
  local index = offset

  -- Packet Header: Struct of 3 fields
  index, packet_header = nse_nsecm_orderentry_nnfdirect_v6_6.packet_header.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nsecm_orderentry_nnfdirect_v6_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 40, 2):int()

  -- Client Message Payload: Runtime Type with 17 branches
  index = nse_nsecm_orderentry_nnfdirect_v6_6.client_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Client Direct Packet
nse_nsecm_orderentry_nnfdirect_v6_6.client_direct_packet.dissect = function(buffer, offset, packet, parent, size_of_client_direct_packet)
  local index = offset + size_of_client_direct_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6.fields.client_direct_packet, buffer(offset, 0))
    local current = nse_nsecm_orderentry_nnfdirect_v6_6.client_direct_packet.fields(buffer, offset, packet, parent, size_of_client_direct_packet)
    parent:set_len(size_of_client_direct_packet)
    local display = nse_nsecm_orderentry_nnfdirect_v6_6.client_direct_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsecm_orderentry_nnfdirect_v6_6.client_direct_packet.fields(buffer, offset, packet, parent, size_of_client_direct_packet)

    return index
  end
end

-- Remaining Bytes For: Client Direct Packet
local client_direct_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nsecm_orderentry_nnfdirect_v6_6.packet_header.size then
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
nse_nsecm_orderentry_nnfdirect_v6_6.client_packet = {}

-- Verify required size of Tcp packet
nse_nsecm_orderentry_nnfdirect_v6_6.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsecm_orderentry_nnfdirect_v6_6.packet_header.size + nse_nsecm_orderentry_nnfdirect_v6_6.message_header.size
end

-- Dissect Client Packet
nse_nsecm_orderentry_nnfdirect_v6_6.client_packet.dissect = function(buffer, packet, parent)
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
      index = nse_nsecm_orderentry_nnfdirect_v6_6.client_direct_packet.dissect(frame, index, packet, parent, size_of_client_direct_packet)
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
function omi_nse_nsecm_orderentry_nnfdirect_v6_6.init()
end

-- Dissector for Nse NseCm OrderEntry NnfDirect 6.6
function omi_nse_nsecm_orderentry_nnfdirect_v6_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nsecm_orderentry_nnfdirect_v6_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nsecm_orderentry_nnfdirect_v6_6, buffer(), omi_nse_nsecm_orderentry_nnfdirect_v6_6.description, "("..buffer:len().." Bytes)")
  return nse_nsecm_orderentry_nnfdirect_v6_6.client_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nse_nsecm_orderentry_nnfdirect_v6_6.client_packet.fingerprint = function(buffer)
  if buffer:len() < 24 then
    return false
  end

  local transaction_code = buffer(22, 2):int()

  -- Branch Order Value Limit Update In Message
  if transaction_code == 5716 then
    return true
  end

  -- Cancel On Logout Status Request Message
  if transaction_code == 5790 then
    return true
  end

  -- Message Download Request Message
  if transaction_code == 7000 then
    return true
  end

  -- Auction Inquiry Request Message
  if transaction_code == 18016 then
    return true
  end

  -- Box Sign Off Message
  if transaction_code == 20322 then
    return true
  end

  -- Box Sign On Request Message
  if transaction_code == 23000 then
    return true
  end

  -- Gateway Router Request Message
  if transaction_code == 2400 then
    return true
  end

  -- Order Entry In Message
  if transaction_code == 2000 then
    return true
  end

  -- Order Entry In Message
  if transaction_code == 2040 then
    return true
  end

  -- Order Entry In Message
  if transaction_code == 2062 then
    return true
  end

  -- Order Entry In Message
  if transaction_code == 2070 then
    return true
  end

  -- Order Limit Update In Message
  if transaction_code == 5721 then
    return true
  end

  -- Password Reset In Message
  if transaction_code == 5738 then
    return true
  end

  -- Sign On Request In Message
  if transaction_code == 2300 then
    return true
  end

  -- Sign On Request In Message
  if transaction_code == 5723 then
    return true
  end

  -- Trade Inquiry In Message
  if transaction_code == 5440 then
    return true
  end

  -- Trade Inquiry In Message
  if transaction_code == 5445 then
    return true
  end

  -- Update Local Database Request Message
  if transaction_code == 7300 then
    return true
  end

  -- Trade Modification Cancellation Status Request Message
  if transaction_code == 5792 then
    return true
  end

  -- User Unlock Request Message
  if transaction_code == 5424 then
    return true
  end

  -- User Order Value Limit Update In Message
  if transaction_code == 5719 then
    return true
  end

  -- System Information Request Message
  if transaction_code == 1600 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseCm OrderEntry NnfDirect 6.6 (Tcp)
local function omi_nse_nsecm_orderentry_nnfdirect_v6_6_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsecm_orderentry_nnfdirect_v6_6.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nse_nsecm_orderentry_nnfdirect_v6_6.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsecm_orderentry_nnfdirect_v6_6
  omi_nse_nsecm_orderentry_nnfdirect_v6_6.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseCm OrderEntry NnfDirect 6.6 (Tcp)
local function omi_nse_nsecm_orderentry_nnfdirect_v6_6_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsecm_orderentry_nnfdirect_v6_6.server_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsecm_orderentry_nnfdirect_v6_6
  omi_nse_nsecm_orderentry_nnfdirect_v6_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Nse NseCm OrderEntry NnfDirect 6.6
omi_nse_nsecm_orderentry_nnfdirect_v6_6:register_heuristic("tcp", omi_nse_nsecm_orderentry_nnfdirect_v6_6_tcp_heuristic)

-- Register Nse NseCm OrderEntry NnfDirect 6.6 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nse_nsecm_orderentry_nnfdirect_v6_6)

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
