-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseSlbm OrderEntry NnfDirect 2.7 Protocol
local omi_nse_nseslbm_orderentry_nnfdirect_v2_7 = Proto("Omi.Nse.NseSlbm.OrderEntry.NnfDirect.v2.7", "Nse NseSlbm OrderEntry NnfDirect 2.7")

-- Protocol table
local nse_nseslbm_orderentry_nnfdirect_v2_7 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseSlbm OrderEntry NnfDirect 2.7 Fields
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.account_num = ProtoField.new("Account Num", "nse.nseslbm.orderentry.nnfdirect.v2.7.accountnum", ftypes.STRING, nil, nil, nil, "Account number or client code")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.account_number = ProtoField.new("Account Number", "nse.nseslbm.orderentry.nnfdirect.v2.7.accountnumber", ftypes.STRING, nil, nil, nil, "Trader account number, or the broker code for the broker's own order")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.action_code = ProtoField.new("Action Code", "nse.nseslbm.orderentry.nnfdirect.v2.7.actioncode", ftypes.STRING, nil, nil, nil, "Action taken")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.activity_time_utc = ProtoField.new("Activity Time", "nse.nseslbm.orderentry.nnfdirect.v2.7.activitytime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the activity took place")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.activity_time = ProtoField.new("Activity Time", "nse.nseslbm.orderentry.nnfdirect.v2.7.activitytime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the activity took place")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.activity_type = ProtoField.new("Activity Type", "nse.nseslbm.orderentry.nnfdirect.v2.7.activitytype", ftypes.STRING)
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.alpha_char = ProtoField.new("Alpha Char", "nse.nseslbm.orderentry.nnfdirect.v2.7.alphachar", ftypes.STRING, nil, nil, nil, "First two characters of Symbol when the message carries one")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.aon = ProtoField.new("Aon", "nse.nseslbm.orderentry.nnfdirect.v2.7.aon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200, "Orders have the all or none attribute set")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.ato = ProtoField.new("Ato", "nse.nseslbm.orderentry.nnfdirect.v2.7.ato", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Market order in preopen")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.auction = ProtoField.new("Auction", "nse.nseslbm.orderentry.nnfdirect.v2.7.auction", ftypes.INT16, nil, nil, nil, "Market status of the auction market")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.auction_market = ProtoField.new("Auction Market", "nse.nseslbm.orderentry.nnfdirect.v2.7.auctionmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000, "Trading member is eligible for the auction market")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.auction_market_status = ProtoField.new("Auction Market Status", "nse.nseslbm.orderentry.nnfdirect.v2.7.auctionmarketstatus", ftypes.INT16, nil, nil, nil, "Latest auction market status available at the workstation")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.auction_number = ProtoField.new("Auction Number", "nse.nseslbm.orderentry.nnfdirect.v2.7.auctionnumber", ftypes.INT16, nil, nil, nil, "Auction number for an auction order, else zero")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.board_lot_quantity = ProtoField.new("Board Lot Quantity", "nse.nseslbm.orderentry.nnfdirect.v2.7.boardlotquantity", ftypes.INT32, nil, nil, nil, "Board lot quantity; a regular lot order quantity must be a multiple of it")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.book_type = ProtoField.new("Book Type", "nse.nseslbm.orderentry.nnfdirect.v2.7.booktype", ftypes.INT16, nil, nil, nil, "Type of order")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.books_merged = ProtoField.new("Books Merged", "nse.nseslbm.orderentry.nnfdirect.v2.7.booksmerged", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.box_id = ProtoField.new("Box Id", "nse.nseslbm.orderentry.nnfdirect.v2.7.boxid", ftypes.INT16, nil, nil, nil, "Exchange provided Box ID to be used for this connection")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.branch_id = ProtoField.new("Branch Id", "nse.nseslbm.orderentry.nnfdirect.v2.7.branchid", ftypes.INT16, nil, nil, nil, "Branch the broker belongs to")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.broker_eligibility_per_market = ProtoField.new("Broker Eligibility Per Market", "nse.nseslbm.orderentry.nnfdirect.v2.7.brokereligibilitypermarket", ftypes.STRING, nil, nil, nil, "Markets the trading member may enter orders in, packed into 2 bytes")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.broker_id = ProtoField.new("Broker Id", "nse.nseslbm.orderentry.nnfdirect.v2.7.brokerid", ftypes.STRING, nil, nil, nil, "Trading member ID")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.broker_name = ProtoField.new("Broker Name", "nse.nseslbm.orderentry.nnfdirect.v2.7.brokername", ftypes.STRING, nil, nil, nil, "Trading member name")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.broker_status = ProtoField.new("Broker Status", "nse.nseslbm.orderentry.nnfdirect.v2.7.brokerstatus", ftypes.STRING, nil, nil, nil, "Set to blank")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.buy_broker_id = ProtoField.new("Buy Broker Id", "nse.nseslbm.orderentry.nnfdirect.v2.7.buybrokerid", ftypes.STRING, nil, nil, nil, "Broker of the buy side")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.buy_participant_id = ProtoField.new("Buy Participant Id", "nse.nseslbm.orderentry.nnfdirect.v2.7.buyparticipantid", ftypes.STRING, nil, nil, nil, "Participant of the buy side")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.buy_sell = ProtoField.new("Buy Sell", "nse.nseslbm.orderentry.nnfdirect.v2.7.buysell", ftypes.INT16, nil, nil, nil, "Whether the order is a buy or a sell; for SLBM buy is borrow and sell is lend")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.char_filler_3 = ProtoField.new("Char Filler 3", "nse.nseslbm.orderentry.nnfdirect.v2.7.charfiller3", ftypes.STRING, nil, nil, nil, "Filler")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.checksum = ProtoField.new("Checksum", "nse.nseslbm.orderentry.nnfdirect.v2.7.checksum", ftypes.BYTES, nil, nil, nil, "Md5 digest of the plain message data, or the Gcm authentication tag under the new encryption")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.client_registration_packet = ProtoField.new("Client Registration Packet", "nse.nseslbm.orderentry.nnfdirect.v2.7.clientregistrationpacket", ftypes.STRING, nil, nil, nil, "Secure Box Registration Request, the firm's first packet on the connection, never encrypted")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.client_session_packet = ProtoField.new("Client Session Packet", "nse.nseslbm.orderentry.nnfdirect.v2.7.clientsessionpacket", ftypes.STRING, nil, nil, nil, "Every packet the firm sends after its registration")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.competitor_period = ProtoField.new("Competitor Period", "nse.nseslbm.orderentry.nnfdirect.v2.7.competitorperiod", ftypes.INT16, nil, nil, nil, "Default competitor period for auction")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.cryptographic_iv_initialization_vector = ProtoField.new("Cryptographic Iv Initialization Vector", "nse.nseslbm.orderentry.nnfdirect.v2.7.cryptographicivinitializationvector", ftypes.STRING, nil, nil, nil, "Initialization vector for encrypting and decrypting every message with the allocated gateway server")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.cryptographic_key = ProtoField.new("Cryptographic Key", "nse.nseslbm.orderentry.nnfdirect.v2.7.cryptographickey", ftypes.STRING, nil, nil, nil, "Key for encrypting and decrypting every message with the allocated gateway server")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.data = ProtoField.new("Data", "nse.nseslbm.orderentry.nnfdirect.v2.7.data", ftypes.STRING, nil, nil, nil, "The wrapped message: an inner header naming the record, then its data")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.day = ProtoField.new("Day", "nse.nseslbm.orderentry.nnfdirect.v2.7.day", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000, "Day attribute, the default")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.default_settlement_period_auction = ProtoField.new("Default Settlement Period Auction", "nse.nseslbm.orderentry.nnfdirect.v2.7.defaultsettlementperiodauction", ftypes.INT16, nil, nil, nil, "Default settlement period of the auction market")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.default_settlement_period_normal = ProtoField.new("Default Settlement Period Normal", "nse.nseslbm.orderentry.nnfdirect.v2.7.defaultsettlementperiodnormal", ftypes.INT16, nil, nil, nil, "Default settlement period of the normal market")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.default_settlement_period_spot = ProtoField.new("Default Settlement Period Spot", "nse.nseslbm.orderentry.nnfdirect.v2.7.defaultsettlementperiodspot", ftypes.INT16, nil, nil, nil, "Default settlement period of the spot market")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.disclosed_quantity_percent_allowed = ProtoField.new("Disclosed Quantity Percent Allowed", "nse.nseslbm.orderentry.nnfdirect.v2.7.disclosedquantitypercentallowed", ftypes.INT16, nil, nil, nil, "Disclosed quantity allowed, as a percentage of the total quantity")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.disclosed_vol = ProtoField.new("Disclosed Vol", "nse.nseslbm.orderentry.nnfdirect.v2.7.disclosedvol", ftypes.INT32, nil, nil, nil, "Quantity to be disclosed to the market")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.disclosed_vol_remaining = ProtoField.new("Disclosed Vol Remaining", "nse.nseslbm.orderentry.nnfdirect.v2.7.disclosedvolremaining", ftypes.INT32, nil, nil, nil, "Disclosed volume remaining after trades")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.end_time_utc = ProtoField.new("End Time", "nse.nseslbm.orderentry.nnfdirect.v2.7.endtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the markets last closed, in seconds since midnight of January 1 1980")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.end_time = ProtoField.new("End Time", "nse.nseslbm.orderentry.nnfdirect.v2.7.endtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the markets last closed, in seconds since midnight of January 1 1980")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.entry_date_time_utc = ProtoField.new("Entry Date Time", "nse.nseslbm.orderentry.nnfdirect.v2.7.entrydatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the order was confirmed; zero on entry")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.entry_date_time = ProtoField.new("Entry Date Time", "nse.nseslbm.orderentry.nnfdirect.v2.7.entrydatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the order was confirmed; zero on entry")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.error_code = ProtoField.new("Error Code", "nse.nseslbm.orderentry.nnfdirect.v2.7.errorcode", ftypes.INT16, nil, nil, nil, "Zero when the request succeeded, otherwise an Error Response follows")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.error_message = ProtoField.new("Error Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.errormessage", ftypes.STRING, nil, nil, nil, "Error message describing the error")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.exec_time_stamp = ProtoField.new("Exec Time Stamp", "nse.nseslbm.orderentry.nnfdirect.v2.7.exectimestamp", ftypes.DOUBLE, nil, nil, nil, "Time the order was written to the order book; zero on sending")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.fill_number = ProtoField.new("Fill Number", "nse.nseslbm.orderentry.nnfdirect.v2.7.fillnumber", ftypes.INT32, nil, nil, nil, "Trade number")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.fill_price = ProtoField.new("Fill Price", "nse.nseslbm.orderentry.nnfdirect.v2.7.fillprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the order traded")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.fill_qty = ProtoField.new("Fill Qty", "nse.nseslbm.orderentry.nnfdirect.v2.7.fillqty", ftypes.INT32, nil, nil, nil, "Traded volume")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.filler = ProtoField.new("Filler", "nse.nseslbm.orderentry.nnfdirect.v2.7.filler", ftypes.BYTES)
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.filler_1 = ProtoField.new("Filler 1", "nse.nseslbm.orderentry.nnfdirect.v2.7.filler1", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "Filler")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.filler_9 = ProtoField.new("Filler 9", "nse.nseslbm.orderentry.nnfdirect.v2.7.filler9", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.fok = ProtoField.new("Fok", "nse.nseslbm.orderentry.nnfdirect.v2.7.fok", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400, "Immediate or cancel attribute")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.frozen = ProtoField.new("Frozen", "nse.nseslbm.orderentry.nnfdirect.v2.7.frozen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "The order has gone for a freeze")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.gtc = ProtoField.new("Gtc", "nse.nseslbm.orderentry.nnfdirect.v2.7.gtc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800, "Good till cancel attribute")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.gtd_utc = ProtoField.new("Gtd", "nse.nseslbm.orderentry.nnfdirect.v2.7.gtd.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Reverse leg settlement date of the contract")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.gtd = ProtoField.new("Gtd", "nse.nseslbm.orderentry.nnfdirect.v2.7.gtd", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Reverse leg settlement date of the contract")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.header_timestamp = ProtoField.new("Header Timestamp", "nse.nseslbm.orderentry.nnfdirect.v2.7.headertimestamp", ftypes.INT64, nil, nil, nil, "Host end field, carrying nanoseconds since midnight 01-Jan-1980 on the transaction codes listed in the appendix")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.i_mkt_type = ProtoField.new("I Mkt Type", "nse.nseslbm.orderentry.nnfdirect.v2.7.imkttype", ftypes.INT16, nil, nil, nil, "Market type of the trade")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.ip_address = ProtoField.new("Ip Address", "nse.nseslbm.orderentry.nnfdirect.v2.7.ipaddress", ftypes.STRING, nil, nil, nil, "IP address assigned by the exchange")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.l_fill_number = ProtoField.new("L Fill Number", "nse.nseslbm.orderentry.nnfdirect.v2.7.lfillnumber", ftypes.INT32, nil, nil, nil, "Trade number of the trade")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.l_fill_price = ProtoField.new("L Fill Price", "nse.nseslbm.orderentry.nnfdirect.v2.7.lfillprice", ftypes.DOUBLE, nil, nil, nil, "Price of the trade")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.l_fill_qty = ProtoField.new("L Fill Qty", "nse.nseslbm.orderentry.nnfdirect.v2.7.lfillqty", ftypes.INT32, nil, nil, nil, "Quantity of the trade")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.l_new_volume = ProtoField.new("L New Volume", "nse.nseslbm.orderentry.nnfdirect.v2.7.lnewvolume", ftypes.INT32, nil, nil, nil, "New volume of the trade")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_modified_utc = ProtoField.new("Last Modified", "nse.nseslbm.orderentry.nnfdirect.v2.7.lastmodified.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the order was last modified, in seconds from midnight of January 1 1980")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_modified = ProtoField.new("Last Modified", "nse.nseslbm.orderentry.nnfdirect.v2.7.lastmodified", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the order was last modified, in seconds from midnight of January 1 1980")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_password_change_date_utc = ProtoField.new("Last Password Change Date", "nse.nseslbm.orderentry.nnfdirect.v2.7.lastpasswordchangedate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last date and time the password was changed")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_password_change_date = ProtoField.new("Last Password Change Date", "nse.nseslbm.orderentry.nnfdirect.v2.7.lastpasswordchangedate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Last date and time the password was changed")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_password_change_date_time_utc = ProtoField.new("Last Password Change Date Time", "nse.nseslbm.orderentry.nnfdirect.v2.7.lastpasswordchangedatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Set to zero while logging on")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_password_change_date_time = ProtoField.new("Last Password Change Date Time", "nse.nseslbm.orderentry.nnfdirect.v2.7.lastpasswordchangedatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Set to zero while logging on")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_update_participant_time_utc = ProtoField.new("Last Update Participant Time", "nse.nseslbm.orderentry.nnfdirect.v2.7.lastupdateparticipanttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the participant information was last updated; zero for a complete download")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_update_participant_time = ProtoField.new("Last Update Participant Time", "nse.nseslbm.orderentry.nnfdirect.v2.7.lastupdateparticipanttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the participant information was last updated; zero for a complete download")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_update_security_time_utc = ProtoField.new("Last Update Security Time", "nse.nseslbm.orderentry.nnfdirect.v2.7.lastupdatesecuritytime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the security information was last updated; zero for a complete download")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_update_security_time = ProtoField.new("Last Update Security Time", "nse.nseslbm.orderentry.nnfdirect.v2.7.lastupdatesecuritytime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the security information was last updated; zero for a complete download")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.log_time_utc = ProtoField.new("Log Time", "nse.nseslbm.orderentry.nnfdirect.v2.7.logtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the message was generated by the trading system")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.log_time = ProtoField.new("Log Time", "nse.nseslbm.orderentry.nnfdirect.v2.7.logtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the message was generated by the trading system")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.logon_confirmation_body = ProtoField.new("Logon Confirmation Body", "nse.nseslbm.orderentry.nnfdirect.v2.7.logonconfirmationbody", ftypes.STRING)
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.logon_error_body = ProtoField.new("Logon Error Body", "nse.nseslbm.orderentry.nnfdirect.v2.7.logonerrorbody", ftypes.STRING)
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.logon_request_broker_name = ProtoField.new("Logon Request Broker Name", "nse.nseslbm.orderentry.nnfdirect.v2.7.logonrequestbrokername", ftypes.STRING, nil, nil, nil, "Set to blank")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.market_index = ProtoField.new("Market Index", "nse.nseslbm.orderentry.nnfdirect.v2.7.marketindex", ftypes.INT32, nil, nil, nil, "Current market index")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.matched_ind = ProtoField.new("Matched Ind", "nse.nseslbm.orderentry.nnfdirect.v2.7.matchedind", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080, "The negotiated order found a matching order")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.maximum_gtc_days = ProtoField.new("Maximum Gtc Days", "nse.nseslbm.orderentry.nnfdirect.v2.7.maximumgtcdays", ftypes.INT16, nil, nil, nil, "Maximum number of days after which a Good Till Cancelled order is cancelled")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.message_length = ProtoField.new("Message Length", "nse.nseslbm.orderentry.nnfdirect.v2.7.messagelength", ftypes.INT16, nil, nil, nil, "Length of the message including the message header, twenty two less than Packet Length")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.mf = ProtoField.new("Mf", "nse.nseslbm.orderentry.nnfdirect.v2.7.mf", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100, "Minimum fill attribute")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.min_fill_aon = ProtoField.new("Min Fill Aon", "nse.nseslbm.orderentry.nnfdirect.v2.7.minfillaon", ftypes.INT32, nil, nil, nil, "Minimum fill quantity when the minimum fill attribute is set")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.minimum_fill = ProtoField.new("Minimum Fill", "nse.nseslbm.orderentry.nnfdirect.v2.7.minimumfill", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Orders have the minimum fill attribute set")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.mkt = ProtoField.new("Mkt", "nse.nseslbm.orderentry.nnfdirect.v2.7.mkt", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Market order")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.mod_cxl_by = ProtoField.new("Mod Cxl By", "nse.nseslbm.orderentry.nnfdirect.v2.7.modcxlby", ftypes.STRING, nil, nil, nil, "Which person modified or cancelled the order")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.modified = ProtoField.new("Modified", "nse.nseslbm.orderentry.nnfdirect.v2.7.modified", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020, "The order is modified")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.msg = ProtoField.new("Msg", "nse.nseslbm.orderentry.nnfdirect.v2.7.msg", ftypes.STRING, nil, nil, nil, "Message")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.msg_length = ProtoField.new("Msg Length", "nse.nseslbm.orderentry.nnfdirect.v2.7.msglength", ftypes.INT16, nil, nil, nil, "Length of the message")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.new_password = ProtoField.new("New Password", "nse.nseslbm.orderentry.nnfdirect.v2.7.newpassword", ftypes.STRING, nil, nil, nil, "New password, entered only to change the password; otherwise blank")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.new_volume = ProtoField.new("New Volume", "nse.nseslbm.orderentry.nnfdirect.v2.7.newvolume", ftypes.INT32, nil, nil, nil, "Always zero for a trade confirmation")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.nnf_field = ProtoField.new("Nnf Field", "nse.nseslbm.orderentry.nnfdirect.v2.7.nnffield", ftypes.DOUBLE, nil, nil, nil, "Pin code, branch and terminal of the dealer, followed by the algo, vendor and exchange digits")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.normal = ProtoField.new("Normal", "nse.nseslbm.orderentry.nnfdirect.v2.7.normal", ftypes.INT16, nil, nil, nil, "Market status of the normal market")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.normal_market = ProtoField.new("Normal Market", "nse.nseslbm.orderentry.nnfdirect.v2.7.normalmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Trading member is eligible for the normal market")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.normal_market_status = ProtoField.new("Normal Market Status", "nse.nseslbm.orderentry.nnfdirect.v2.7.normalmarketstatus", ftypes.INT16, nil, nil, nil, "Latest normal market status available at the workstation")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.odd_lot_market_status = ProtoField.new("Odd Lot Market Status", "nse.nseslbm.orderentry.nnfdirect.v2.7.oddlotmarketstatus", ftypes.INT16, nil, nil, nil, "Latest odd lot market status available at the workstation")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.oddlot = ProtoField.new("Oddlot", "nse.nseslbm.orderentry.nnfdirect.v2.7.oddlot", ftypes.INT16, nil, nil, nil, "Market status of the odd lot market")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.oddlot_market = ProtoField.new("Oddlot Market", "nse.nseslbm.orderentry.nnfdirect.v2.7.oddlotmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Trading member is eligible for the odd lot market")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.oe_remarks = ProtoField.new("Oe Remarks", "nse.nseslbm.orderentry.nnfdirect.v2.7.oeremarks", ftypes.STRING, nil, nil, nil, "Remarks the dealer enters about the order")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.on_stop = ProtoField.new("On Stop", "nse.nseslbm.orderentry.nnfdirect.v2.7.onstop", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Stop loss attribute")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.op_broker_id = ProtoField.new("Op Broker Id", "nse.nseslbm.orderentry.nnfdirect.v2.7.opbrokerid", ftypes.STRING, nil, nil, nil, "Counter party broker code of a negotiated trade order")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.op_order_number = ProtoField.new("Op Order Number", "nse.nseslbm.orderentry.nnfdirect.v2.7.opordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number of the counter order taking part in the trade")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_flags_reserved_one = ProtoField.new("Order Flags Reserved One", "nse.nseslbm.orderentry.nnfdirect.v2.7.orderflagsreservedone", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "Reserved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_flags_reserved_three = ProtoField.new("Order Flags Reserved Three", "nse.nseslbm.orderentry.nnfdirect.v2.7.orderflagsreservedthree", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "Reserved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_number = ProtoField.new("Order Number", "nse.nseslbm.orderentry.nnfdirect.v2.7.ordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number: a two digit stream number followed by a fourteen digit sequence number")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_type = ProtoField.new("Order Type", "nse.nseslbm.orderentry.nnfdirect.v2.7.ordertype", ftypes.STRING, nil, nil, nil, "Blank for a normal order, RC for a recall order and RP for a repay order")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.original_vol = ProtoField.new("Original Vol", "nse.nseslbm.orderentry.nnfdirect.v2.7.originalvol", ftypes.INT32, nil, nil, nil, "Original traded volume")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.packet_length = ProtoField.new("Packet Length", "nse.nseslbm.orderentry.nnfdirect.v2.7.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the entire packet including this field, capped at 1024 bytes")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "nse.nseslbm.orderentry.nnfdirect.v2.7.packetsequencenumber", ftypes.UINT32, nil, nil, nil, "Echoed back on responses to order related requests, zero on a non encrypting connection")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.participant_type = ProtoField.new("Participant Type", "nse.nseslbm.orderentry.nnfdirect.v2.7.participanttype", ftypes.STRING, nil, nil, nil, "C for a competitor order and S for a solicitor order")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.password = ProtoField.new("Password", "nse.nseslbm.orderentry.nnfdirect.v2.7.password", ftypes.STRING, nil, nil, nil, "Password entered by the user")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.port = ProtoField.new("Port", "nse.nseslbm.orderentry.nnfdirect.v2.7.port", ftypes.INT32, nil, nil, nil, "Port number given by the exchange")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.price = ProtoField.new("Price", "nse.nseslbm.orderentry.nnfdirect.v2.7.price", ftypes.DOUBLE, nil, nil, nil, "Price of the order, multiplied by 100; zero for a market order")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.pro_client = ProtoField.new("Pro Client", "nse.nseslbm.orderentry.nnfdirect.v2.7.proclient", ftypes.INT16, nil, nil, nil, "Whether the order is a client's, a broker's or a warehousing order")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reason_code = ProtoField.new("Reason Code", "nse.nseslbm.orderentry.nnfdirect.v2.7.reasoncode", ftypes.INT16, nil, nil, nil, "Reason code for an order request rejection or an order being frozen")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.registration_checksum = ProtoField.new("Registration Checksum", "nse.nseslbm.orderentry.nnfdirect.v2.7.registrationchecksum", ftypes.BYTES, nil, nil, nil, "Md5 digest of the registration's message data, which is never encrypted")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.remaining_vol = ProtoField.new("Remaining Vol", "nse.nseslbm.orderentry.nnfdirect.v2.7.remainingvol", ftypes.INT32, nil, nil, nil, "Volume remaining after trades")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.request_for_open_orders = ProtoField.new("Request For Open Orders", "nse.nseslbm.orderentry.nnfdirect.v2.7.requestforopenorders", ftypes.STRING, nil, nil, nil, "G to download GTC and GTD orders, else N")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.requested_by = ProtoField.new("Requested By", "nse.nseslbm.orderentry.nnfdirect.v2.7.requestedby", ftypes.INT16, nil, nil, nil, "Side requesting the trade cancellation")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_1 = ProtoField.new("Reserved 1", "nse.nseslbm.orderentry.nnfdirect.v2.7.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_10 = ProtoField.new("Reserved 10", "nse.nseslbm.orderentry.nnfdirect.v2.7.reserved10", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_112 = ProtoField.new("Reserved 112", "nse.nseslbm.orderentry.nnfdirect.v2.7.reserved112", ftypes.UINT16, nil, base.DEC, 0x0FFF, "Reserved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_113 = ProtoField.new("Reserved 113", "nse.nseslbm.orderentry.nnfdirect.v2.7.reserved113", ftypes.UINT16, nil, base.DEC, 0x1FFF, "Reserved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_14 = ProtoField.new("Reserved 14", "nse.nseslbm.orderentry.nnfdirect.v2.7.reserved14", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_2 = ProtoField.new("Reserved 2", "nse.nseslbm.orderentry.nnfdirect.v2.7.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_4 = ProtoField.new("Reserved 4", "nse.nseslbm.orderentry.nnfdirect.v2.7.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_5 = ProtoField.new("Reserved 5", "nse.nseslbm.orderentry.nnfdirect.v2.7.reserved5", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_52 = ProtoField.new("Reserved 52", "nse.nseslbm.orderentry.nnfdirect.v2.7.reserved52", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_56 = ProtoField.new("Reserved 56", "nse.nseslbm.orderentry.nnfdirect.v2.7.reserved56", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.response_order_number = ProtoField.new("Response Order Number", "nse.nseslbm.orderentry.nnfdirect.v2.7.responseordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number of the trader's order taking part in the trade")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reverse_leg_settl_date_utc = ProtoField.new("Reverse Leg Settl Date", "nse.nseslbm.orderentry.nnfdirect.v2.7.reverselegsettldate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Reverse leg settlement date of the contract")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reverse_leg_settl_date = ProtoField.new("Reverse Leg Settl Date", "nse.nseslbm.orderentry.nnfdirect.v2.7.reverselegsettldate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Reverse leg settlement date of the contract")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.sec_info = ProtoField.new("Sec Info", "nse.nseslbm.orderentry.nnfdirect.v2.7.secinfo", ftypes.STRING, nil, nil, nil, "SEC_INFO")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "nse.nseslbm.orderentry.nnfdirect.v2.7.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.security_eligible_indicators = ProtoField.new("Security Eligible Indicators", "nse.nseslbm.orderentry.nnfdirect.v2.7.securityeligibleindicators", ftypes.STRING, nil, nil, nil, "Order attributes the system allows, packed into 2 bytes")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.sell_broker_id = ProtoField.new("Sell Broker Id", "nse.nseslbm.orderentry.nnfdirect.v2.7.sellbrokerid", ftypes.STRING, nil, nil, nil, "Broker of the sell side")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.sell_participant_id = ProtoField.new("Sell Participant Id", "nse.nseslbm.orderentry.nnfdirect.v2.7.sellparticipantid", ftypes.STRING, nil, nil, nil, "Participant of the sell side")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.sequence_number = ProtoField.new("Sequence Number", "nse.nseslbm.orderentry.nnfdirect.v2.7.sequencenumber", ftypes.DOUBLE, nil, nil, nil, "Set to zero while sending the request to the host")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.series = ProtoField.new("Series", "nse.nseslbm.orderentry.nnfdirect.v2.7.series", ftypes.STRING, nil, nil, nil, "Series of a security")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.server_registration_packet = ProtoField.new("Server Registration Packet", "nse.nseslbm.orderentry.nnfdirect.v2.7.serverregistrationpacket", ftypes.STRING, nil, nil, nil, "Secure Box Registration Response, the exchange's first packet on the connection, never encrypted")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.server_session_packet = ProtoField.new("Server Session Packet", "nse.nseslbm.orderentry.nnfdirect.v2.7.serversessionpacket", ftypes.STRING, nil, nil, nil, "Every packet the exchange sends after its registration response")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.session_key = ProtoField.new("Session Key", "nse.nseslbm.orderentry.nnfdirect.v2.7.sessionkey", ftypes.STRING, nil, nil, nil, "Session key to be used for authentication")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.settlement_period = ProtoField.new("Settlement Period", "nse.nseslbm.orderentry.nnfdirect.v2.7.settlementperiod", ftypes.INT16, nil, nil, nil, "Number of days in a settlement cycle")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.settlor = ProtoField.new("Settlor", "nse.nseslbm.orderentry.nnfdirect.v2.7.settlor", ftypes.STRING, nil, nil, nil, "Participant responsible for settling the trades through the custodians")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.show_index = ProtoField.new("Show Index", "nse.nseslbm.orderentry.nnfdirect.v2.7.showindex", ftypes.STRING)
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.solicitor_period = ProtoField.new("Solicitor Period", "nse.nseslbm.orderentry.nnfdirect.v2.7.solicitorperiod", ftypes.INT16, nil, nil, nil, "Default solicitor period for auction")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.spot = ProtoField.new("Spot", "nse.nseslbm.orderentry.nnfdirect.v2.7.spot", ftypes.INT16, nil, nil, nil, "Market status of the spot market")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.spot_market = ProtoField.new("Spot Market", "nse.nseslbm.orderentry.nnfdirect.v2.7.spotmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Trading member is eligible for the spot market")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.spot_market_status = ProtoField.new("Spot Market Status", "nse.nseslbm.orderentry.nnfdirect.v2.7.spotmarketstatus", ftypes.INT16, nil, nil, nil, "Latest spot market status available at the workstation")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.st_order_flags = ProtoField.new("St Order Flags", "nse.nseslbm.orderentry.nnfdirect.v2.7.storderflags", ftypes.STRING, nil, nil, nil, "Attributes of an order, packed into 2 bytes")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.stpc = ProtoField.new("Stpc", "nse.nseslbm.orderentry.nnfdirect.v2.7.stpc", ftypes.UINT16, {[0]="Exchange Default Action", [1]="Cancel Active Order"}, base.DEC, 0x0002, "Self trade prevention check")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.suspended = ProtoField.new("Suspended", "nse.nseslbm.orderentry.nnfdirect.v2.7.suspended", ftypes.STRING, nil, nil, nil, "Whether the security is suspended; C if the broker is in closeout")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.symbol = ProtoField.new("Symbol", "nse.nseslbm.orderentry.nnfdirect.v2.7.symbol", ftypes.STRING, nil, nil, nil, "Symbol of a security")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.terminal_idle_time = ProtoField.new("Terminal Idle Time", "nse.nseslbm.orderentry.nnfdirect.v2.7.terminalidletime", ftypes.INT16, nil, nil, nil, "Idle time of the trader workstation")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.tick_size = ProtoField.new("Tick Size", "nse.nseslbm.orderentry.nnfdirect.v2.7.ticksize", ftypes.DOUBLE, nil, nil, nil, "Tick size; order and trigger prices must be a multiple of it")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.time_stamp_1 = ProtoField.new("Time Stamp 1", "nse.nseslbm.orderentry.nnfdirect.v2.7.timestamp1", ftypes.STRING, nil, nil, nil, "Time the message arrived at the trading system host, in jiffies; zero when sent to the host")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.time_stamp_2 = ProtoField.new("Time Stamp 2", "nse.nseslbm.orderentry.nnfdirect.v2.7.timestamp2", ftypes.STRING, nil, nil, nil, "Set by the host: the number of the machine the packet comes from on an order entry connection, the stream number on a drop copy one; zero when sent to the host")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.total_vol_remaining = ProtoField.new("Total Vol Remaining", "nse.nseslbm.orderentry.nnfdirect.v2.7.totalvolremaining", ftypes.INT32, nil, nil, nil, "Total quantity remaining after trades")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.traded = ProtoField.new("Traded", "nse.nseslbm.orderentry.nnfdirect.v2.7.traded", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040, "The order is traded partially or fully")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trader_id = ProtoField.new("Trader Id", "nse.nseslbm.orderentry.nnfdirect.v2.7.traderid", ftypes.INT32, nil, nil, nil, "User ID")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trader_name = ProtoField.new("Trader Name", "nse.nseslbm.orderentry.nnfdirect.v2.7.tradername", ftypes.STRING, nil, nil, nil, "User's name when received from the host; sent as blanks")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trader_num = ProtoField.new("Trader Num", "nse.nseslbm.orderentry.nnfdirect.v2.7.tradernum", ftypes.INT32, nil, nil, nil, "Trader's or user ID")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nseslbm.orderentry.nnfdirect.v2.7.transactioncode", ftypes.INT16, nil, nil, nil, "Type of message sent or received")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.transaction_id = ProtoField.new("Transaction Id", "nse.nseslbm.orderentry.nnfdirect.v2.7.transactionid", ftypes.INT32, nil, nil, nil, "Echo back field, returned as sent with no validation")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trigger_price = ProtoField.new("Trigger Price", "nse.nseslbm.orderentry.nnfdirect.v2.7.triggerprice", ftypes.DOUBLE, nil, nil, nil, "Trigger price of a stop loss order, multiplied by 100")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.user_id = ProtoField.new("User Id", "nse.nseslbm.orderentry.nnfdirect.v2.7.userid", ftypes.INT32, nil, nil, nil, "User ID of the user or broker")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.user_type = ProtoField.new("User Type", "nse.nseslbm.orderentry.nnfdirect.v2.7.usertype", ftypes.INT16, nil, nil, nil, "Type of user; set to zero while sending to the host")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.version_number = ProtoField.new("Version Number", "nse.nseslbm.orderentry.nnfdirect.v2.7.versionnumber", ftypes.INT32, nil, nil, nil, "Version number of the trading system, as VERSION RELEASE SUB_RELEASE")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.vol_filled_today = ProtoField.new("Vol Filled Today", "nse.nseslbm.orderentry.nnfdirect.v2.7.volfilledtoday", ftypes.INT32, nil, nil, nil, "Quantity traded today")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.volume = ProtoField.new("Volume", "nse.nseslbm.orderentry.nnfdirect.v2.7.volume", ftypes.INT32, nil, nil, nil, "Quantity of the order")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.volume_filled_today = ProtoField.new("Volume Filled Today", "nse.nseslbm.orderentry.nnfdirect.v2.7.volumefilledtoday", ftypes.INT32, nil, nil, nil, "Total quantity traded in the day")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.volume_freeze_percent = ProtoField.new("Volume Freeze Percent", "nse.nseslbm.orderentry.nnfdirect.v2.7.volumefreezepercent", ftypes.INT16, nil, nil, nil, "Turnover percentage at which the broker is deactivated")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.warning_percent = ProtoField.new("Warning Percent", "nse.nseslbm.orderentry.nnfdirect.v2.7.warningpercent", ftypes.INT16, nil, nil, nil, "Turnover percentage at which a warning is broadcast to all traders")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.workstation_number = ProtoField.new("Workstation Number", "nse.nseslbm.orderentry.nnfdirect.v2.7.workstationnumber", ftypes.STRING, nil, nil, nil, "Network ID of the workstation")

-- Nse NseSlbm OrderEntry NnfDirect 2.7 Framing
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.client_direct_packet = ProtoField.new("Client Direct Packet", "nse.nseslbm.orderentry.nnfdirect.v2.7.clientdirectpacket", ftypes.STRING, nil, nil, nil, "One framed interactive message sent by the firm")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.client_packet = ProtoField.new("Client Packet", "nse.nseslbm.orderentry.nnfdirect.v2.7.clientpacket", ftypes.STRING, nil, nil, nil, "Nnf direct interface Tcp block of one or more packets sent by the firm")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.message_header = ProtoField.new("Message Header", "nse.nseslbm.orderentry.nnfdirect.v2.7.messageheader", ftypes.STRING, nil, nil, nil, "MESSAGE_HEADER")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.packet_header = ProtoField.new("Packet Header", "nse.nseslbm.orderentry.nnfdirect.v2.7.packetheader", ftypes.STRING, nil, nil, nil, "Packet Length and Sequence number, the first six bytes of the direct interface's twenty two byte packet header; its last sixteen open each packet body branch")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.server_direct_packet = ProtoField.new("Server Direct Packet", "nse.nseslbm.orderentry.nnfdirect.v2.7.serverdirectpacket", ftypes.STRING, nil, nil, nil, "One framed interactive message sent by the exchange")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.server_packet = ProtoField.new("Server Packet", "nse.nseslbm.orderentry.nnfdirect.v2.7.serverpacket", ftypes.STRING, nil, nil, nil, "Nnf direct interface Tcp block of one or more packets sent by the exchange")

-- Nse NseSlbm OrderEntry 2.7 Application Messages
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.board_lot_out_message = ProtoField.new("Board Lot Out Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.boardlotoutmessage", ftypes.STRING, nil, nil, nil, "Sent as BOARD_LOT_OUT")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.box_sign_off_message = ProtoField.new("Box Sign Off Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.boxsignoffmessage", ftypes.STRING, nil, nil, nil, "Sent as BOX_SIGN_OFF with an error code when the exchange terminates the connection")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.box_sign_on_request_message = ProtoField.new("Box Sign On Request Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.boxsignonrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as BOX_SIGN_ON_REQUEST_IN, the first encrypted message on the box connection")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.box_sign_on_response_message = ProtoField.new("Box Sign On Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.boxsignonresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as BOX_SIGN_ON_REQUEST_OUT; an error terminates the box connection")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.cancel_negotiated_order_message = ProtoField.new("Cancel Negotiated Order Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.cancelnegotiatedordermessage", ftypes.STRING, nil, nil, nil, "Sent as CANCEL_NEG_ORDER to the party whose negotiated order is cancelled")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.cancellation_of_orders_in_batch_message = ProtoField.new("Cancellation Of Orders In Batch Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.cancellationofordersinbatchmessage", ftypes.STRING, nil, nil, nil, "Sent as BATCH_ORDER_CANCEL when untraded orders are deleted at the end of the day")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.control_message_to_trader_message = ProtoField.new("Control Message To Trader Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.controlmessagetotradermessage", ftypes.STRING, nil, nil, nil, "Sent as CTRL_MSG_TO_TRADER for a message from NSE-Control to a particular user, and for a counter party's trade cancellation request")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.error_response_message = ProtoField.new("Error Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.errorresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as ERROR_RESPONSE_OUT when the Error Code of the header is not zero")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.gateway_router_request_message = ProtoField.new("Gateway Router Request Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.gatewayrouterrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as GR_REQUEST to the gateway router over a TLS connection")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.gateway_router_response_message = ProtoField.new("Gateway Router Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.gatewayrouterresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as GR_RESPONSE with the allocated gateway server, its session key and the cryptographic key and vector")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.logon_request_message = ProtoField.new("Logon Request Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.logonrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as SIGN_ON_REQUEST_IN to establish an interactive circuit with the host")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.logon_response_message = ProtoField.new("Logon Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.logonresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as SIGN_ON_REQUEST_OUT: a logon confirmation, or an error response when the logon fails")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.market_price_confirmation_response_message = ProtoField.new("Market Price Confirmation Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.marketpriceconfirmationresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as PRICE_CONFIRMATION when a market order is not fully traded")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.message_download_data_message = ProtoField.new("Message Download Data Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.messagedownloaddatamessage", ftypes.STRING, nil, nil, nil, "Sent as MESSAGE_RECORD, wrapping one trader specific or broadcast message")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.message_download_request_message = ProtoField.new("Message Download Request Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.messagedownloadrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as DOWNLOAD_REQUEST to download the messages intended for the trader")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.negotiated_order_entered_by_counter_party_message = ProtoField.new("Negotiated Order Entered By Counter Party Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.negotiatedorderenteredbycounterpartymessage", ftypes.STRING, nil, nil, nil, "Sent as NEG_ORDER_BY_CPID to every user of the broker named as counter party")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.negotiated_order_to_regular_lot_message = ProtoField.new("Negotiated Order To Regular Lot Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.negotiatedordertoregularlotmessage", ftypes.STRING, nil, nil, nil, "Sent as NEG_ORDER_TO_BL to the party whose negotiated order is sent to the regular lot book")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_cancellation_confirmation_response_message = ProtoField.new("Order Cancellation Confirmation Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.ordercancellationconfirmationresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as ORDER_CANCEL_CONFIRMATION when an order is cancelled")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_cancellation_error_response_message = ProtoField.new("Order Cancellation Error Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.ordercancellationerrorresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as ORDER_CANCEL_REJECT when a cancellation is rejected")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_cancellation_request_message = ProtoField.new("Order Cancellation Request Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.ordercancellationrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as ORDER_CANCEL_IN to cancel an order")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_cancellation_response_message = ProtoField.new("Order Cancellation Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.ordercancellationresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as ORDER_CANCEL_OUT when an order cancellation is requested")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_confirmation_response_message = ProtoField.new("Order Confirmation Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.orderconfirmationresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as ORDER_CONFIRMATION when an order is confirmed, or when its freeze is approved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_entry_request_message = ProtoField.new("Order Entry Request Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.orderentryrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as BOARD_LOT_IN to place an order")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_error_response_message = ProtoField.new("Order Error Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.ordererrorresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as ORDER_ERROR when an order is rejected, or its freeze is rejected")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_freeze_response_message = ProtoField.new("Order Freeze Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.orderfreezeresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as FREEZE_TO_CONTROL when an order awaits approval from the exchange")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_modification_confirmation_response_message = ProtoField.new("Order Modification Confirmation Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.ordermodificationconfirmationresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as ORDER_MOD_CONFIRMATION when a modification is confirmed, or its freeze is approved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_modification_error_response_message = ProtoField.new("Order Modification Error Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.ordermodificationerrorresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as ORDER_MOD_REJECT when a modification is rejected, or its freeze is rejected")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_modification_request_message = ProtoField.new("Order Modification Request Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.ordermodificationrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as ORDER_MOD_IN to modify an unmatched order")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_modification_response_message = ProtoField.new("Order Modification Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.ordermodificationresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as ORDER_MOD_OUT when an order modification is requested")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.partial_system_information_response_message = ProtoField.new("Partial System Information Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.partialsysteminformationresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as PARTIAL_SYSTEM_INFORMATION when the market status the trader sent is not current")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.secure_box_registration_request_message = ProtoField.new("Secure Box Registration Request Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.secureboxregistrationrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as SECURE_BOX_REGISTRATION_REQUEST_IN on the new connection to the allocated gateway server")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.stop_loss_order_triggering_message = ProtoField.new("Stop Loss Order Triggering Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.stoplossordertriggeringmessage", ftypes.STRING, nil, nil, nil, "Sent as ON_STOP_NOTIFICATION when a stop loss order is triggered")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.system_information_response_message = ProtoField.new("System Information Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.systeminformationresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as SYSTEM_INFORMATION_OUT with the market status and global variables")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_cancellation_confirmation_response_message = ProtoField.new("Trade Cancellation Confirmation Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.tradecancellationconfirmationresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as TRADE_CANCEL_CONFIRM when the exchange approves a trade cancellation")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_cancellation_error_message = ProtoField.new("Trade Cancellation Error Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.tradecancellationerrormessage", ftypes.STRING, nil, nil, nil, "Sent as TRADE_ERROR when an error is detected in the request")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_cancellation_rejection_message = ProtoField.new("Trade Cancellation Rejection Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.tradecancellationrejectionmessage", ftypes.STRING, nil, nil, nil, "Sent as TRADE_CANCEL_REJECT when the exchange rejects a trade cancellation")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_cancellation_request_message = ProtoField.new("Trade Cancellation Request Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.tradecancellationrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as TRADE_CANCEL_IN to request cancellation of a trade")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_cancellation_requested_response_message = ProtoField.new("Trade Cancellation Requested Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.tradecancellationrequestedresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as TRADE_CANCEL_OUT to acknowledge that the request reached the trading system")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_confirmation_message = ProtoField.new("Trade Confirmation Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.tradeconfirmationmessage", ftypes.STRING, nil, nil, nil, "Sent as TRADE_CONFIRMATION when an order of the trader trades, or a negotiated trade is approved")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_modification_confirmation_message = ProtoField.new("Trade Modification Confirmation Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.trademodificationconfirmationmessage", ftypes.STRING, nil, nil, nil, "Sent as TRADE_MODIFY_CONFIRM")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_modification_rejection_message = ProtoField.new("Trade Modification Rejection Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.trademodificationrejectionmessage", ftypes.STRING, nil, nil, nil, "Sent as TRADE_MODIFY_REJECT")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_modification_request_message = ProtoField.new("Trade Modification Request Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.trademodificationrequestmessage", ftypes.STRING, nil, nil, nil, "Sent as TRADE_MOD_IN; trade modification is currently not allowed")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_modification_requested_response_message = ProtoField.new("Trade Modification Requested Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.trademodificationrequestedresponsemessage", ftypes.STRING, nil, nil, nil, "Sent as TRADE_MOD_OUT; trade modification is currently not allowed")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.update_local_database_data_message = ProtoField.new("Update Local Database Data Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.updatelocaldatabasedatamessage", ftypes.STRING, nil, nil, nil, "Sent as UPDATE_LOCALDB_DATA, wrapping a security master, security status or participant master record")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.update_local_database_header_message = ProtoField.new("Update Local Database Header Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.updatelocaldatabaseheadermessage", ftypes.STRING, nil, nil, nil, "Sent as UPDATE_LOCALDB_HEADER to signal that the local database download is starting")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.update_local_database_request_message = ProtoField.new("Update Local Database Request Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.updatelocaldatabaserequestmessage", ftypes.STRING, nil, nil, nil, "Sent as UPDATE_LOCALDB_IN to request the local database download")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.update_local_database_trailer_message = ProtoField.new("Update Local Database Trailer Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.updatelocaldatabasetrailermessage", ftypes.STRING, nil, nil, nil, "Sent as UPDATE_LOCALDB_TRAILER to signal that the local database download is complete")

-- Nse NseSlbm OrderEntry 2.7 Session Messages
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "Keeps the box connection alive during inactivity")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.logoff_confirmation_response_message = ProtoField.new("Logoff Confirmation Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.logoffconfirmationresponsemessage", ftypes.BYTES, nil, nil, nil, "The trading system confirms the trader is signed off")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.logoff_request_message = ProtoField.new("Logoff Request Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.logoffrequestmessage", ftypes.BYTES, nil, nil, nil, "A trader signs off from the trading system")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.message_download_header_message = ProtoField.new("Message Download Header Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.messagedownloadheadermessage", ftypes.BYTES, nil, nil, nil, "Opens the message download")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.message_download_trailer_message = ProtoField.new("Message Download Trailer Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.messagedownloadtrailermessage", ftypes.BYTES, nil, nil, nil, "Signals the message download is complete")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.secure_box_registration_response_message = ProtoField.new("Secure Box Registration Response Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.secureboxregistrationresponsemessage", ftypes.BYTES, nil, nil, nil, "The trading system answers a secure box registration")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.system_information_request_message = ProtoField.new("System Information Request Message", "nse.nseslbm.orderentry.nnfdirect.v2.7.systeminformationrequestmessage", ftypes.BYTES, nil, nil, nil, "A trader asks the trading system for its system information")

-- Nse NseSlbm OrderEntry NnfDirect 2.7 Expert Info
nse_nseslbm_orderentry_nnfdirect_v2_7.experts = {}
nse_nseslbm_orderentry_nnfdirect_v2_7.experts.undecoded = ProtoExpert.new("nse.nseslbm.orderentry.nnfdirect.v2.7.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
nse_nseslbm_orderentry_nnfdirect_v2_7.experts.checksum_incorrect = ProtoExpert.new("nse.nseslbm.orderentry.nnfdirect.v2.7.checksumincorrect", "Checksum incorrect: not the checksum of the bytes it covers", expert.group.CHECKSUM, expert.severity.ERROR)
nse_nseslbm_orderentry_nnfdirect_v2_7.experts.registration_checksum_incorrect = ProtoExpert.new("nse.nseslbm.orderentry.nnfdirect.v2.7.registrationchecksumincorrect", "Registration Checksum incorrect: not the checksum of the bytes it covers", expert.group.CHECKSUM, expert.severity.ERROR)
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.experts = { nse_nseslbm_orderentry_nnfdirect_v2_7.experts.undecoded, nse_nseslbm_orderentry_nnfdirect_v2_7.experts.checksum_incorrect, nse_nseslbm_orderentry_nnfdirect_v2_7.experts.registration_checksum_incorrect }

-----------------------------------------------------------------------
-- Nse NseSlbm OrderEntry NnfDirect 2.7 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "DateTime Local", 2 },
  { 2, "DateTime Utc", 3 },
  { 3, "DateTime Asia/Kolkata", 4 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format = 3

-- Offset of the source's zone from utc in seconds, as the reader states it
nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset = 0

-- Checksums are verified only where the reader asks
nse_nseslbm_orderentry_nnfdirect_v2_7.verify_checksums = false

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

-- Nse NseSlbm OrderEntry NnfDirect 2.7 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.padding = false

-- Register Nse NseSlbm OrderEntry NnfDirect 2.7 Show Options
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")

omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)
omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.zone_offset = Pref.string("Asia/Kolkata Utc Offset", "", "Offset of Asia/Kolkata from Utc, as +HH:MM. This protocol names that zone and not its offset: stated here, a time kept on its clock reads as an instant, and an instant reads on its clock")

omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.verify_checksums = Pref.bool("Verify Checksums", false, "Compute each checksum the protocol carries and compare it with the one sent. Off by default: a capture taken on the sending host often holds checksums filled in after it was captured")

-- Handle changed preferences
function omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.show_application_messages then
    show.application_messages = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.show_application_messages
  end
  if show.headers ~= omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.show_headers then
    show.headers = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.show_headers
  end
  if show.padding ~= omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.show_padding then
    show.padding = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.show_padding
  end
  if show.structs ~= omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.show_structs then
    show.structs = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.show_structs
  end
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format ~= omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.timestamp_format then
    nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.timestamp_format
  end
  local sign, hours, minutes = string.match(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.zone_offset, "^%s*([+-]?)(%d%d?):?(%d?%d?)%s*$")

  nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset = 0

  if hours then
    nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset = tonumber(hours) * 3600 + (tonumber(minutes) or 0) * 60
  end

  if sign == "-" then
    nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset = -nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset
  end
  if nse_nseslbm_orderentry_nnfdirect_v2_7.verify_checksums ~= omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.verify_checksums then
    nse_nseslbm_orderentry_nnfdirect_v2_7.verify_checksums = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.verify_checksums
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


-- Md5 digest constants (RFC 1321): the integer part of 2^32 times abs(sin(i)), and each step's rotation
local md5_sines = {}
for index = 1, 64 do
  md5_sines[index] = math.floor(math.abs(math.sin(index)) * 4294967296) & 0xFFFFFFFF
end
local md5_shifts = {
  7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22,
  5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20,
  4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23,
  6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21
}

-- Md5 digest: the range hashed, the checksum's own bytes left out or counted as zeros
local function digest_md5(range, skip, length, zeroed)
  local covered = range:raw()
  local message = covered:sub(1, skip)..(zeroed and string.rep("\0", length) or "")..covered:sub(skip + length + 1)
  local size = #message

  message = message.."\128"..string.rep("\0", (55 - size) % 64)..string.pack("<I8", size * 8)

  local h0, h1, h2, h3 = 0x67452301, 0xEFCDAB89, 0x98BADCFE, 0x10325476

  for chunk = 1, #message, 64 do
    local words = { string.unpack("<I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4", message, chunk) }
    local a, b, c, d = h0, h1, h2, h3

    for step = 0, 63 do
      local f, g
      if step < 16 then
        f = (b & c) | (~b & d)
        g = step
      elseif step < 32 then
        f = (d & b) | (~d & c)
        g = (5 * step + 1) % 16
      elseif step < 48 then
        f = b ~ c ~ d
        g = (3 * step + 5) % 16
      else
        f = c ~ (b | ~d)
        g = (7 * step) % 16
      end

      f = (f + a + md5_sines[step + 1] + words[g + 1]) & 0xFFFFFFFF
      local shift = md5_shifts[step + 1]
      a, d, c = d, c, b
      b = (b + (((f << shift) | (f >> (32 - shift))) & 0xFFFFFFFF)) & 0xFFFFFFFF
    end

    h0 = (h0 + a) & 0xFFFFFFFF
    h1 = (h1 + b) & 0xFFFFFFFF
    h2 = (h2 + c) & 0xFFFFFFFF
    h3 = (h3 + d) & 0xFFFFFFFF
  end

  local digest = string.pack("<I4I4I4I4", h0, h1, h2, h3)
  local spelled = {}

  for index = 1, #digest do
    spelled[index] = string.format("%02X", digest:byte(index))
  end

  return table.concat(spelled, " ")
end
-- Mark a sized group whose fields read past its end; raise any other failure as it was
local function undecoded(failure, parent, expert, text)
  if not string.find(tostring(failure), "Range is out of bounds", 1, true) then
    error(failure, 0)
  end

  parent:add_proto_expert_info(expert, text)
end
-----------------------------------------------------------------------
-- Nse NseSlbm OrderEntry NnfDirect 2.7 Fields
-----------------------------------------------------------------------

-- Account Num
nse_nseslbm_orderentry_nnfdirect_v2_7.account_num = {}

-- Size: Account Num
nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.size = 10

-- Display: Account Num
nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.display = function(value)
  return "Account Num: "..value
end

-- Dissect: Account Num
nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.account_num, range, value, display)

  return offset + length, value
end

-- Account Number
nse_nseslbm_orderentry_nnfdirect_v2_7.account_number = {}

-- Size: Account Number
nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size = 10

-- Display: Account Number
nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.display = function(value)
  return "Account Number: "..value
end

-- Dissect: Account Number
nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.account_number, range, value, display)

  return offset + length, value
end

-- Action Code
nse_nseslbm_orderentry_nnfdirect_v2_7.action_code = {}

-- Size: Action Code
nse_nseslbm_orderentry_nnfdirect_v2_7.action_code.size = 3

-- Display: Action Code
nse_nseslbm_orderentry_nnfdirect_v2_7.action_code.labels = {
  ["SYS"] = "Action Code: System (SYS)",
  ["AUI"] = "Action Code: Auction Initiation (AUI)",
  ["AUC"] = "Action Code: Auction Complete (AUC)",
  ["LIS"] = "Action Code: Listing (LIS)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.action_code.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.action_code.labels[value] or "Action Code: Unknown("..value..")"
end

-- Dissect: Action Code
nse_nseslbm_orderentry_nnfdirect_v2_7.action_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.action_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.action_code, range, value, display)

  return offset + length, value
end

-- Activity Time
nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time = {}

-- Size: Activity Time
nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time.size = 4

-- Dissect: Activity Time
nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.activity_time
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.activity_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Activity Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Activity Type
nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type = {}

-- Size: Activity Type
nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.size = 2

-- Display: Activity Type
nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.labels = {
  ["B"] = "Activity Type: Buy (B)",
  ["S"] = "Activity Type: Sell (S)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.labels[value] or "Activity Type: Unknown("..value..")"
end

-- Dissect: Activity Type
nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.activity_type, range, value, display)

  return offset + length, value
end

-- Alpha Char
nse_nseslbm_orderentry_nnfdirect_v2_7.alpha_char = {}

-- Size: Alpha Char
nse_nseslbm_orderentry_nnfdirect_v2_7.alpha_char.size = 2

-- Display: Alpha Char
nse_nseslbm_orderentry_nnfdirect_v2_7.alpha_char.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Alpha Char: No Value"
  end

  return "Alpha Char: "..value
end

-- Dissect: Alpha Char
nse_nseslbm_orderentry_nnfdirect_v2_7.alpha_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.alpha_char.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.alpha_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.alpha_char, range, value, display)

  return offset + length, value
end

-- Auction
nse_nseslbm_orderentry_nnfdirect_v2_7.auction = {}

-- Size: Auction
nse_nseslbm_orderentry_nnfdirect_v2_7.auction.size = 2

-- Display: Auction
nse_nseslbm_orderentry_nnfdirect_v2_7.auction.labels = {
  [0] = "Auction: Preopen (0)",
  [1] = "Auction: Open (1)",
  [2] = "Auction: Closed (2)",
  [3] = "Auction: Preopen Ended (3)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.auction.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.auction.labels[value] or "Auction: Unknown("..value..")"
end

-- Dissect: Auction
nse_nseslbm_orderentry_nnfdirect_v2_7.auction.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.auction.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.auction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.auction, range, value, display)

  return offset + length, value
end

-- Auction Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.auction_market_status = {}

-- Size: Auction Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.auction_market_status.size = 2

-- Display: Auction Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.auction_market_status.labels = {
  [0] = "Auction Market Status: Preopen (0)",
  [1] = "Auction Market Status: Open (1)",
  [2] = "Auction Market Status: Closed (2)",
  [3] = "Auction Market Status: Preopen Ended (3)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.auction_market_status.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.auction_market_status.labels[value] or "Auction Market Status: Unknown("..value..")"
end

-- Dissect: Auction Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.auction_market_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_market_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.auction_market_status, range, value, display)

  return offset + length, value
end

-- Auction Number
nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number = {}

-- Size: Auction Number
nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size = 2

-- Display: Auction Number
nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.display = function(value)
  return "Auction Number: "..value
end

-- Dissect: Auction Number
nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.auction_number, range, value, display)

  return offset + length, value
end

-- Board Lot Quantity
nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_quantity = {}

-- Size: Board Lot Quantity
nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_quantity.size = 4

-- Display: Board Lot Quantity
nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_quantity.display = function(value)
  return "Board Lot Quantity: "..value
end

-- Dissect: Board Lot Quantity
nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.board_lot_quantity, range, value, display)

  return offset + length, value
end

-- Book Type
nse_nseslbm_orderentry_nnfdirect_v2_7.book_type = {}

-- Size: Book Type
nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size = 2

-- Display: Book Type
nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.labels = {
  [1] = "Book Type: Regular Lot Order (1)",
  [2] = "Book Type: Special Terms Order (2)",
  [3] = "Book Type: Stop Loss Order (3)",
  [4] = "Book Type: Negotiated Order (4)",
  [5] = "Book Type: Odd Lot Order (5)",
  [6] = "Book Type: Spot Order (6)",
  [7] = "Book Type: Auction Order (7)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.labels[value] or "Book Type: Unknown("..value..")"
end

-- Dissect: Book Type
nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.book_type, range, value, display)

  return offset + length, value
end

-- Box Id
nse_nseslbm_orderentry_nnfdirect_v2_7.box_id = {}

-- Size: Box Id
nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.size = 2

-- Display: Box Id
nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.display = function(value)
  return "Box Id: "..value
end

-- Dissect: Box Id
nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.box_id, range, value, display)

  return offset + length, value
end

-- Branch Id
nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id = {}

-- Size: Branch Id
nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size = 2

-- Display: Branch Id
nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.display = function(value)
  return "Branch Id: "..value
end

-- Dissect: Branch Id
nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.branch_id, range, value, display)

  return offset + length, value
end

-- Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id = {}

-- Size: Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size = 5

-- Display: Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.display = function(value)
  return "Broker Id: "..value
end

-- Dissect: Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.broker_id, range, value, display)

  return offset + length, value
end

-- Broker Name
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_name = {}

-- Size: Broker Name
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_name.size = 25

-- Display: Broker Name
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_name.display = function(value)
  return "Broker Name: "..value
end

-- Dissect: Broker Name
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.broker_name, range, value, display)

  return offset + length, value
end

-- Broker Status
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_status = {}

-- Size: Broker Status
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_status.size = 1

-- Display: Broker Status
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_status.display = function(value)
  if value == " " then
    return "Broker Status: Blank (<whitespace>)"
  end
  if value == "S" then
    return "Broker Status: Suspended (S)"
  end
  if value == "A" then
    return "Broker Status: Active (A)"
  end
  if value == "D" then
    return "Broker Status: Deactivated (D)"
  end
  if value == "C" then
    return "Broker Status: Closeout (C)"
  end

  return "Broker Status: Unknown("..value..")"
end

-- Dissect: Broker Status
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.broker_status, range, value, display)

  return offset + length, value
end

-- Buy Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id = {}

-- Size: Buy Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id.size = 5

-- Display: Buy Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id.display = function(value)
  return "Buy Broker Id: "..value
end

-- Dissect: Buy Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.buy_broker_id, range, value, display)

  return offset + length, value
end

-- Buy Participant Id
nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id = {}

-- Size: Buy Participant Id
nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id.size = 12

-- Display: Buy Participant Id
nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id.display = function(value)
  return "Buy Participant Id: "..value
end

-- Dissect: Buy Participant Id
nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.buy_participant_id, range, value, display)

  return offset + length, value
end

-- Buy Sell
nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell = {}

-- Size: Buy Sell
nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size = 2

-- Display: Buy Sell
nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.labels = {
  [1] = "Buy Sell: Buy (1)",
  [2] = "Buy Sell: Sell (2)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.labels[value] or "Buy Sell: Unknown("..value..")"
end

-- Dissect: Buy Sell
nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.buy_sell, range, value, display)

  return offset + length, value
end

-- Char Filler 3
nse_nseslbm_orderentry_nnfdirect_v2_7.char_filler_3 = {}

-- Size: Char Filler 3
nse_nseslbm_orderentry_nnfdirect_v2_7.char_filler_3.size = 1

-- Display: Char Filler 3
nse_nseslbm_orderentry_nnfdirect_v2_7.char_filler_3.display = function(value)
  return "Char Filler 3: "..value
end

-- Dissect: Char Filler 3
nse_nseslbm_orderentry_nnfdirect_v2_7.char_filler_3.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.char_filler_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.char_filler_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.char_filler_3, range, value, display)

  return offset + length, value
end

-- Checksum
nse_nseslbm_orderentry_nnfdirect_v2_7.checksum = {}

-- Size: Checksum
nse_nseslbm_orderentry_nnfdirect_v2_7.checksum.size = 16

-- Display: Checksum
nse_nseslbm_orderentry_nnfdirect_v2_7.checksum.display = function(value)
  return "Checksum: "..value
end

-- Dissect: Checksum
nse_nseslbm_orderentry_nnfdirect_v2_7.checksum.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.checksum.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.checksum.display(value, buffer, offset, packet, parent)

  local item = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.checksum, range, range:raw(), display)

  -- Verified only where the reader asks: the Md5 of the bytes covered, its own left out
  if nse_nseslbm_orderentry_nnfdirect_v2_7.verify_checksums then
    local start = offset
    local computed = digest_md5(buffer(start, buffer:len() - start), offset - start, length, false)

    if computed == value then
      item:append_text(" [correct]")
    else
      item:append_text(" [incorrect, should be "..computed.."]")
      item:add_proto_expert_info(nse_nseslbm_orderentry_nnfdirect_v2_7.experts.checksum_incorrect, "Checksum incorrect: "..value..", should be "..computed)
    end
  else
    item:append_text(" [unverified]")
  end

  return offset + length, value
end

-- Competitor Period
nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period = {}

-- Size: Competitor Period
nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size = 2

-- Display: Competitor Period
nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.display = function(value)
  return "Competitor Period: "..value
end

-- Dissect: Competitor Period
nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.competitor_period, range, value, display)

  return offset + length, value
end

-- Cryptographic Iv Initialization Vector
nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_iv_initialization_vector = {}

-- Size: Cryptographic Iv Initialization Vector
nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_iv_initialization_vector.size = 16

-- Display: Cryptographic Iv Initialization Vector
nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_iv_initialization_vector.display = function(value)
  return "Cryptographic Iv Initialization Vector: "..value
end

-- Dissect: Cryptographic Iv Initialization Vector
nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_iv_initialization_vector.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_iv_initialization_vector.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_iv_initialization_vector.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.cryptographic_iv_initialization_vector, range, value, display)

  return offset + length, value
end

-- Cryptographic Key
nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_key = {}

-- Size: Cryptographic Key
nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_key.size = 32

-- Display: Cryptographic Key
nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_key.display = function(value)
  return "Cryptographic Key: "..value
end

-- Dissect: Cryptographic Key
nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.cryptographic_key, range, value, display)

  return offset + length, value
end

-- Data
nse_nseslbm_orderentry_nnfdirect_v2_7.data = {}

-- Display: Data
nse_nseslbm_orderentry_nnfdirect_v2_7.data.display = function(value)
  return "Data: "..value
end

-- Dissect runtime sized field: Data
nse_nseslbm_orderentry_nnfdirect_v2_7.data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.data.display(value, packet, parent, size)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.data, range, value, display)

  return offset + size, value
end

-- Default Settlement Period Auction
nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_auction = {}

-- Size: Default Settlement Period Auction
nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_auction.size = 2

-- Display: Default Settlement Period Auction
nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_auction.display = function(value)
  return "Default Settlement Period Auction: "..value
end

-- Dissect: Default Settlement Period Auction
nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_auction.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_auction.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_auction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.default_settlement_period_auction, range, value, display)

  return offset + length, value
end

-- Default Settlement Period Normal
nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_normal = {}

-- Size: Default Settlement Period Normal
nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_normal.size = 2

-- Display: Default Settlement Period Normal
nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_normal.display = function(value)
  return "Default Settlement Period Normal: "..value
end

-- Dissect: Default Settlement Period Normal
nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_normal.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_normal.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_normal.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.default_settlement_period_normal, range, value, display)

  return offset + length, value
end

-- Default Settlement Period Spot
nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_spot = {}

-- Size: Default Settlement Period Spot
nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_spot.size = 2

-- Display: Default Settlement Period Spot
nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_spot.display = function(value)
  return "Default Settlement Period Spot: "..value
end

-- Dissect: Default Settlement Period Spot
nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_spot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_spot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_spot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.default_settlement_period_spot, range, value, display)

  return offset + length, value
end

-- Disclosed Quantity Percent Allowed
nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_quantity_percent_allowed = {}

-- Size: Disclosed Quantity Percent Allowed
nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_quantity_percent_allowed.size = 2

-- Display: Disclosed Quantity Percent Allowed
nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_quantity_percent_allowed.display = function(value)
  return "Disclosed Quantity Percent Allowed: "..value
end

-- Dissect: Disclosed Quantity Percent Allowed
nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_quantity_percent_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_quantity_percent_allowed.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_quantity_percent_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.disclosed_quantity_percent_allowed, range, value, display)

  return offset + length, value
end

-- Disclosed Vol
nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol = {}

-- Size: Disclosed Vol
nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size = 4

-- Display: Disclosed Vol
nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.display = function(value)
  return "Disclosed Vol: "..value
end

-- Dissect: Disclosed Vol
nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.disclosed_vol, range, value, display)

  return offset + length, value
end

-- Disclosed Vol Remaining
nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining = {}

-- Size: Disclosed Vol Remaining
nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size = 4

-- Display: Disclosed Vol Remaining
nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.display = function(value)
  return "Disclosed Vol Remaining: "..value
end

-- Dissect: Disclosed Vol Remaining
nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.disclosed_vol_remaining, range, value, display)

  return offset + length, value
end

-- End Time
nse_nseslbm_orderentry_nnfdirect_v2_7.end_time = {}

-- Size: End Time
nse_nseslbm_orderentry_nnfdirect_v2_7.end_time.size = 4

-- Dissect: End Time
nse_nseslbm_orderentry_nnfdirect_v2_7.end_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.end_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.end_time
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.end_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("End Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Entry Date Time
nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time = {}

-- Size: Entry Date Time
nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size = 4

-- Dissect: Entry Date Time
nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.entry_date_time
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.entry_date_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Entry Date Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Error Code
nse_nseslbm_orderentry_nnfdirect_v2_7.error_code = {}

-- Size: Error Code
nse_nseslbm_orderentry_nnfdirect_v2_7.error_code.size = 2

-- Display: Error Code
nse_nseslbm_orderentry_nnfdirect_v2_7.error_code.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Error Code: No Error"
  end

  return "Error Code: "..value
end

-- Dissect: Error Code
nse_nseslbm_orderentry_nnfdirect_v2_7.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.error_code, range, value, display)

  return offset + length, value
end

-- Error Message
nse_nseslbm_orderentry_nnfdirect_v2_7.error_message = {}

-- Size: Error Message
nse_nseslbm_orderentry_nnfdirect_v2_7.error_message.size = 128

-- Display: Error Message
nse_nseslbm_orderentry_nnfdirect_v2_7.error_message.display = function(value)
  return "Error Message: "..value
end

-- Dissect: Error Message
nse_nseslbm_orderentry_nnfdirect_v2_7.error_message.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.error_message.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.error_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.error_message, range, value, display)

  return offset + length, value
end

-- Exec Time Stamp
nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp = {}

-- Size: Exec Time Stamp
nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size = 8

-- Display: Exec Time Stamp
nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.display = function(value)
  return "Exec Time Stamp: "..string.format("%.0f", value)
end

-- Dissect: Exec Time Stamp
nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.exec_time_stamp, range, value, display)

  return offset + length, value
end

-- Fill Number
nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number = {}

-- Size: Fill Number
nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.size = 4

-- Display: Fill Number
nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.display = function(value)
  return "Fill Number: "..value
end

-- Dissect: Fill Number
nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.fill_number, range, value, display)

  return offset + length, value
end

-- Fill Price
nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price = {}

-- Size: Fill Price
nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.size = 4

-- Display: Fill Price
nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Translate: Fill Price
nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.translate = function(raw)
  return raw/100
end

-- Dissect: Fill Price
nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.translate(raw)
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Qty
nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty = {}

-- Size: Fill Qty
nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.size = 4

-- Display: Fill Qty
nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.display = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Filler
nse_nseslbm_orderentry_nnfdirect_v2_7.filler = {}

-- Size: Filler
nse_nseslbm_orderentry_nnfdirect_v2_7.filler.size = 1

-- Display: Filler
nse_nseslbm_orderentry_nnfdirect_v2_7.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
nse_nseslbm_orderentry_nnfdirect_v2_7.filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.filler.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.filler, range, range:raw(), display)

  return offset + length, value
end

-- Filler 9
nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9 = {}

-- Size: Filler 9
nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size = 1

-- Display: Filler 9
nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.display = function(value)
  return "Filler 9: "..value
end

-- Dissect: Filler 9
nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.filler_9, range, range:raw(), display)

  return offset + length, value
end

-- Gtd
nse_nseslbm_orderentry_nnfdirect_v2_7.gtd = {}

-- Size: Gtd
nse_nseslbm_orderentry_nnfdirect_v2_7.gtd.size = 4

-- Dissect: Gtd
nse_nseslbm_orderentry_nnfdirect_v2_7.gtd.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.gtd.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.gtd
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.gtd_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Gtd: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Header Timestamp
nse_nseslbm_orderentry_nnfdirect_v2_7.header_timestamp = {}

-- Size: Header Timestamp
nse_nseslbm_orderentry_nnfdirect_v2_7.header_timestamp.size = 8

-- Display: Header Timestamp
nse_nseslbm_orderentry_nnfdirect_v2_7.header_timestamp.display = function(value)
  return "Header Timestamp: "..value
end

-- Dissect: Header Timestamp
nse_nseslbm_orderentry_nnfdirect_v2_7.header_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.header_timestamp.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.header_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.header_timestamp, range, value, display)

  return offset + length, value
end

-- I Mkt Type
nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type = {}

-- Size: I Mkt Type
nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type.size = 2

-- Display: I Mkt Type
nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type.display = function(value)
  return "I Mkt Type: "..value
end

-- Dissect: I Mkt Type
nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.i_mkt_type, range, value, display)

  return offset + length, value
end

-- Ip Address
nse_nseslbm_orderentry_nnfdirect_v2_7.ip_address = {}

-- Size: Ip Address
nse_nseslbm_orderentry_nnfdirect_v2_7.ip_address.size = 16

-- Display: Ip Address
nse_nseslbm_orderentry_nnfdirect_v2_7.ip_address.display = function(value)
  return "Ip Address: "..value
end

-- Dissect: Ip Address
nse_nseslbm_orderentry_nnfdirect_v2_7.ip_address.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.ip_address.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.ip_address.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.ip_address, range, value, display)

  return offset + length, value
end

-- L Fill Number
nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number = {}

-- Size: L Fill Number
nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number.size = 4

-- Display: L Fill Number
nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number.display = function(value)
  return "L Fill Number: "..value
end

-- Dissect: L Fill Number
nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.l_fill_number, range, value, display)

  return offset + length, value
end

-- L Fill Price
nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price = {}

-- Size: L Fill Price
nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.size = 4

-- Display: L Fill Price
nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.display = function(value)
  return "L Fill Price: "..value
end

-- Translate: L Fill Price
nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.translate = function(raw)
  return raw/100
end

-- Dissect: L Fill Price
nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.translate(raw)
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.l_fill_price, range, value, display)

  return offset + length, value
end

-- L Fill Qty
nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty = {}

-- Size: L Fill Qty
nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty.size = 4

-- Display: L Fill Qty
nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty.display = function(value)
  return "L Fill Qty: "..value
end

-- Dissect: L Fill Qty
nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.l_fill_qty, range, value, display)

  return offset + length, value
end

-- L New Volume
nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume = {}

-- Size: L New Volume
nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume.size = 4

-- Display: L New Volume
nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume.display = function(value)
  return "L New Volume: "..value
end

-- Dissect: L New Volume
nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.l_new_volume, range, value, display)

  return offset + length, value
end

-- Last Modified
nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified = {}

-- Size: Last Modified
nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size = 4

-- Dissect: Last Modified
nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_modified
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_modified_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Modified: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Last Password Change Date
nse_nseslbm_orderentry_nnfdirect_v2_7.last_password_change_date = {}

-- Size: Last Password Change Date
nse_nseslbm_orderentry_nnfdirect_v2_7.last_password_change_date.size = 4

-- Dissect: Last Password Change Date
nse_nseslbm_orderentry_nnfdirect_v2_7.last_password_change_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.last_password_change_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_password_change_date
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_password_change_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Password Change Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Last Password Change Date Time
nse_nseslbm_orderentry_nnfdirect_v2_7.last_password_change_date_time = {}

-- Size: Last Password Change Date Time
nse_nseslbm_orderentry_nnfdirect_v2_7.last_password_change_date_time.size = 4

-- Dissect: Last Password Change Date Time
nse_nseslbm_orderentry_nnfdirect_v2_7.last_password_change_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.last_password_change_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_password_change_date_time
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_password_change_date_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Password Change Date Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Last Update Participant Time
nse_nseslbm_orderentry_nnfdirect_v2_7.last_update_participant_time = {}

-- Size: Last Update Participant Time
nse_nseslbm_orderentry_nnfdirect_v2_7.last_update_participant_time.size = 4

-- Dissect: Last Update Participant Time
nse_nseslbm_orderentry_nnfdirect_v2_7.last_update_participant_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.last_update_participant_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_update_participant_time
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_update_participant_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Update Participant Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Last Update Security Time
nse_nseslbm_orderentry_nnfdirect_v2_7.last_update_security_time = {}

-- Size: Last Update Security Time
nse_nseslbm_orderentry_nnfdirect_v2_7.last_update_security_time.size = 4

-- Dissect: Last Update Security Time
nse_nseslbm_orderentry_nnfdirect_v2_7.last_update_security_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.last_update_security_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_update_security_time
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.last_update_security_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Update Security Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Log Time
nse_nseslbm_orderentry_nnfdirect_v2_7.log_time = {}

-- Size: Log Time
nse_nseslbm_orderentry_nnfdirect_v2_7.log_time.size = 4

-- Dissect: Log Time
nse_nseslbm_orderentry_nnfdirect_v2_7.log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.log_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.log_time
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.log_time_utc end

  if value == 0 then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Log Time: No Value")
    return offset + length, value
  end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Log Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Logon Request Broker Name
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_broker_name = {}

-- Size: Logon Request Broker Name
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_broker_name.size = 26

-- Display: Logon Request Broker Name
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_broker_name.display = function(value)
  return "Logon Request Broker Name: "..value
end

-- Dissect: Logon Request Broker Name
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_broker_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_broker_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_broker_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.logon_request_broker_name, range, value, display)

  return offset + length, value
end

-- Market Index
nse_nseslbm_orderentry_nnfdirect_v2_7.market_index = {}

-- Size: Market Index
nse_nseslbm_orderentry_nnfdirect_v2_7.market_index.size = 4

-- Display: Market Index
nse_nseslbm_orderentry_nnfdirect_v2_7.market_index.display = function(value)
  return "Market Index: "..value
end

-- Dissect: Market Index
nse_nseslbm_orderentry_nnfdirect_v2_7.market_index.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.market_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.market_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.market_index, range, value, display)

  return offset + length, value
end

-- Maximum Gtc Days
nse_nseslbm_orderentry_nnfdirect_v2_7.maximum_gtc_days = {}

-- Size: Maximum Gtc Days
nse_nseslbm_orderentry_nnfdirect_v2_7.maximum_gtc_days.size = 2

-- Display: Maximum Gtc Days
nse_nseslbm_orderentry_nnfdirect_v2_7.maximum_gtc_days.display = function(value)
  return "Maximum Gtc Days: "..value
end

-- Dissect: Maximum Gtc Days
nse_nseslbm_orderentry_nnfdirect_v2_7.maximum_gtc_days.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.maximum_gtc_days.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.maximum_gtc_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.maximum_gtc_days, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nseslbm_orderentry_nnfdirect_v2_7.message_length = {}

-- Size: Message Length
nse_nseslbm_orderentry_nnfdirect_v2_7.message_length.size = 2

-- Display: Message Length
nse_nseslbm_orderentry_nnfdirect_v2_7.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nseslbm_orderentry_nnfdirect_v2_7.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.message_length, range, value, display)

  return offset + length, value
end

-- Min Fill Aon
nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon = {}

-- Size: Min Fill Aon
nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size = 4

-- Display: Min Fill Aon
nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.display = function(value)
  return "Min Fill Aon: "..value
end

-- Dissect: Min Fill Aon
nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.min_fill_aon, range, value, display)

  return offset + length, value
end

-- Mod Cxl By
nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by = {}

-- Size: Mod Cxl By
nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size = 1

-- Display: Mod Cxl By
nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.labels = {
  ["T"] = "Mod Cxl By: Trader (T)",
  ["B"] = "Mod Cxl By: Branch Manager (B)",
  ["M"] = "Mod Cxl By: Corporate Manager (M)",
  ["C"] = "Mod Cxl By: Control (C)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.labels[value] or "Mod Cxl By: Unknown("..value..")"
end

-- Dissect: Mod Cxl By
nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.mod_cxl_by, range, value, display)

  return offset + length, value
end

-- Msg
nse_nseslbm_orderentry_nnfdirect_v2_7.msg = {}

-- Size: Msg
nse_nseslbm_orderentry_nnfdirect_v2_7.msg.size = 239

-- Display: Msg
nse_nseslbm_orderentry_nnfdirect_v2_7.msg.display = function(value)
  return "Msg: "..value
end

-- Dissect: Msg
nse_nseslbm_orderentry_nnfdirect_v2_7.msg.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.msg.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.msg.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.msg, range, value, display)

  return offset + length, value
end

-- Msg Length
nse_nseslbm_orderentry_nnfdirect_v2_7.msg_length = {}

-- Size: Msg Length
nse_nseslbm_orderentry_nnfdirect_v2_7.msg_length.size = 2

-- Display: Msg Length
nse_nseslbm_orderentry_nnfdirect_v2_7.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
nse_nseslbm_orderentry_nnfdirect_v2_7.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.msg_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.msg_length, range, value, display)

  return offset + length, value
end

-- New Password
nse_nseslbm_orderentry_nnfdirect_v2_7.new_password = {}

-- Size: New Password
nse_nseslbm_orderentry_nnfdirect_v2_7.new_password.size = 8

-- Display: New Password
nse_nseslbm_orderentry_nnfdirect_v2_7.new_password.display = function(value)
  return "New Password: "..value
end

-- Dissect: New Password
nse_nseslbm_orderentry_nnfdirect_v2_7.new_password.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.new_password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.new_password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.new_password, range, value, display)

  return offset + length, value
end

-- New Volume
nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume = {}

-- Size: New Volume
nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.size = 4

-- Display: New Volume
nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.display = function(value)
  return "New Volume: "..value
end

-- Dissect: New Volume
nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.new_volume, range, value, display)

  return offset + length, value
end

-- Nnf Field
nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field = {}

-- Size: Nnf Field
nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size = 8

-- Display: Nnf Field
nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.display = function(value)
  return "Nnf Field: "..string.format("%.0f", value)
end

-- Dissect: Nnf Field
nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.nnf_field, range, value, display)

  return offset + length, value
end

-- Normal
nse_nseslbm_orderentry_nnfdirect_v2_7.normal = {}

-- Size: Normal
nse_nseslbm_orderentry_nnfdirect_v2_7.normal.size = 2

-- Display: Normal
nse_nseslbm_orderentry_nnfdirect_v2_7.normal.labels = {
  [0] = "Normal: Preopen (0)",
  [1] = "Normal: Open (1)",
  [2] = "Normal: Closed (2)",
  [3] = "Normal: Preopen Ended (3)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.normal.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.normal.labels[value] or "Normal: Unknown("..value..")"
end

-- Dissect: Normal
nse_nseslbm_orderentry_nnfdirect_v2_7.normal.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.normal.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.normal.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.normal, range, value, display)

  return offset + length, value
end

-- Normal Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.normal_market_status = {}

-- Size: Normal Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.normal_market_status.size = 2

-- Display: Normal Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.normal_market_status.labels = {
  [0] = "Normal Market Status: Preopen (0)",
  [1] = "Normal Market Status: Open (1)",
  [2] = "Normal Market Status: Closed (2)",
  [3] = "Normal Market Status: Preopen Ended (3)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.normal_market_status.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.normal_market_status.labels[value] or "Normal Market Status: Unknown("..value..")"
end

-- Dissect: Normal Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.normal_market_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.normal_market_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.normal_market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.normal_market_status, range, value, display)

  return offset + length, value
end

-- Odd Lot Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.odd_lot_market_status = {}

-- Size: Odd Lot Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.odd_lot_market_status.size = 2

-- Display: Odd Lot Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.odd_lot_market_status.labels = {
  [0] = "Odd Lot Market Status: Preopen (0)",
  [1] = "Odd Lot Market Status: Open (1)",
  [2] = "Odd Lot Market Status: Closed (2)",
  [3] = "Odd Lot Market Status: Preopen Ended (3)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.odd_lot_market_status.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.odd_lot_market_status.labels[value] or "Odd Lot Market Status: Unknown("..value..")"
end

-- Dissect: Odd Lot Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.odd_lot_market_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.odd_lot_market_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.odd_lot_market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.odd_lot_market_status, range, value, display)

  return offset + length, value
end

-- Oddlot
nse_nseslbm_orderentry_nnfdirect_v2_7.oddlot = {}

-- Size: Oddlot
nse_nseslbm_orderentry_nnfdirect_v2_7.oddlot.size = 2

-- Display: Oddlot
nse_nseslbm_orderentry_nnfdirect_v2_7.oddlot.labels = {
  [0] = "Oddlot: Preopen (0)",
  [1] = "Oddlot: Open (1)",
  [2] = "Oddlot: Closed (2)",
  [3] = "Oddlot: Preopen Ended (3)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.oddlot.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.oddlot.labels[value] or "Oddlot: Unknown("..value..")"
end

-- Dissect: Oddlot
nse_nseslbm_orderentry_nnfdirect_v2_7.oddlot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.oddlot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.oddlot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.oddlot, range, value, display)

  return offset + length, value
end

-- Oe Remarks
nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks = {}

-- Size: Oe Remarks
nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size = 21

-- Display: Oe Remarks
nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.display = function(value)
  return "Oe Remarks: "..value
end

-- Dissect: Oe Remarks
nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.oe_remarks, range, value, display)

  return offset + length, value
end

-- Op Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id = {}

-- Size: Op Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size = 5

-- Display: Op Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.display = function(value)
  return "Op Broker Id: "..value
end

-- Dissect: Op Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.op_broker_id, range, value, display)

  return offset + length, value
end

-- Op Order Number
nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number = {}

-- Size: Op Order Number
nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.size = 8

-- Display: Op Order Number
nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.display = function(value)
  return "Op Order Number: "..string.format("%.0f", value)
end

-- Dissect: Op Order Number
nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.op_order_number, range, value, display)

  return offset + length, value
end

-- Order Number
nse_nseslbm_orderentry_nnfdirect_v2_7.order_number = {}

-- Size: Order Number
nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size = 8

-- Display: Order Number
nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.display = function(value)
  return "Order Number: "..string.format("%.0f", value)
end

-- Dissect: Order Number
nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Type
nse_nseslbm_orderentry_nnfdirect_v2_7.order_type = {}

-- Size: Order Type
nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size = 2

-- Display: Order Type
nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.labels = {
  ["RC"] = "Order Type: Recall Order (RC)",
  ["RP"] = "Order Type: Repay Order (RP)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.labels[value] or "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Vol
nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol = {}

-- Size: Original Vol
nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.size = 4

-- Display: Original Vol
nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.display = function(value)
  return "Original Vol: "..value
end

-- Dissect: Original Vol
nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.original_vol, range, value, display)

  return offset + length, value
end

-- Packet Length
nse_nseslbm_orderentry_nnfdirect_v2_7.packet_length = {}

-- Size: Packet Length
nse_nseslbm_orderentry_nnfdirect_v2_7.packet_length.size = 2

-- Display: Packet Length
nse_nseslbm_orderentry_nnfdirect_v2_7.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nse_nseslbm_orderentry_nnfdirect_v2_7.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
nse_nseslbm_orderentry_nnfdirect_v2_7.packet_sequence_number = {}

-- Size: Packet Sequence Number
nse_nseslbm_orderentry_nnfdirect_v2_7.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
nse_nseslbm_orderentry_nnfdirect_v2_7.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
nse_nseslbm_orderentry_nnfdirect_v2_7.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Participant Type
nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type = {}

-- Size: Participant Type
nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size = 1

-- Display: Participant Type
nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.labels = {
  ["C"] = "Participant Type: Competitor (C)",
  ["S"] = "Participant Type: Solicitor (S)",
  ["I"] = "Participant Type: Initiator (I)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.labels[value] or "Participant Type: Unknown("..value..")"
end

-- Dissect: Participant Type
nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.participant_type, range, value, display)

  return offset + length, value
end

-- Password
nse_nseslbm_orderentry_nnfdirect_v2_7.password = {}

-- Size: Password
nse_nseslbm_orderentry_nnfdirect_v2_7.password.size = 8

-- Display: Password
nse_nseslbm_orderentry_nnfdirect_v2_7.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nse_nseslbm_orderentry_nnfdirect_v2_7.password.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.password, range, value, display)

  return offset + length, value
end

-- Port
nse_nseslbm_orderentry_nnfdirect_v2_7.port = {}

-- Size: Port
nse_nseslbm_orderentry_nnfdirect_v2_7.port.size = 4

-- Display: Port
nse_nseslbm_orderentry_nnfdirect_v2_7.port.display = function(value)
  return "Port: "..value
end

-- Dissect: Port
nse_nseslbm_orderentry_nnfdirect_v2_7.port.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.port.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.port.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.port, range, value, display)

  return offset + length, value
end

-- Price
nse_nseslbm_orderentry_nnfdirect_v2_7.price = {}

-- Size: Price
nse_nseslbm_orderentry_nnfdirect_v2_7.price.size = 4

-- Display: Price
nse_nseslbm_orderentry_nnfdirect_v2_7.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nseslbm_orderentry_nnfdirect_v2_7.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_orderentry_nnfdirect_v2_7.price.translate(raw)
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.price, range, value, display)

  return offset + length, value
end

-- Pro Client
nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client = {}

-- Size: Pro Client
nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size = 2

-- Display: Pro Client
nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.labels = {
  [1] = "Pro Client: Client (1)",
  [2] = "Pro Client: Broker (2)",
  [4] = "Pro Client: Warehousing (4)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.labels[value] or "Pro Client: Unknown("..value..")"
end

-- Dissect: Pro Client
nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.pro_client, range, value, display)

  return offset + length, value
end

-- Reason Code
nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code = {}

-- Size: Reason Code
nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size = 2

-- Display: Reason Code
nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.labels = {
  [0] = "Reason Code: Not Set (0)",
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
}

nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.labels[value] or "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Registration Checksum
nse_nseslbm_orderentry_nnfdirect_v2_7.registration_checksum = {}

-- Size: Registration Checksum
nse_nseslbm_orderentry_nnfdirect_v2_7.registration_checksum.size = 16

-- Display: Registration Checksum
nse_nseslbm_orderentry_nnfdirect_v2_7.registration_checksum.display = function(value)
  return "Registration Checksum: "..value
end

-- Dissect: Registration Checksum
nse_nseslbm_orderentry_nnfdirect_v2_7.registration_checksum.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.registration_checksum.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.registration_checksum.display(value, buffer, offset, packet, parent)

  local item = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.registration_checksum, range, range:raw(), display)

  -- Verified only where the reader asks: the Md5 of the bytes covered, its own left out
  if nse_nseslbm_orderentry_nnfdirect_v2_7.verify_checksums then
    local start = offset
    local computed = digest_md5(buffer(start, buffer:len() - start), offset - start, length, false)

    if computed == value then
      item:append_text(" [correct]")
    else
      item:append_text(" [incorrect, should be "..computed.."]")
      item:add_proto_expert_info(nse_nseslbm_orderentry_nnfdirect_v2_7.experts.registration_checksum_incorrect, "Registration Checksum incorrect: "..value..", should be "..computed)
    end
  else
    item:append_text(" [unverified]")
  end

  return offset + length, value
end

-- Remaining Vol
nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol = {}

-- Size: Remaining Vol
nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.size = 4

-- Display: Remaining Vol
nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.display = function(value)
  return "Remaining Vol: "..value
end

-- Dissect: Remaining Vol
nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.remaining_vol, range, value, display)

  return offset + length, value
end

-- Request For Open Orders
nse_nseslbm_orderentry_nnfdirect_v2_7.request_for_open_orders = {}

-- Size: Request For Open Orders
nse_nseslbm_orderentry_nnfdirect_v2_7.request_for_open_orders.size = 1

-- Display: Request For Open Orders
nse_nseslbm_orderentry_nnfdirect_v2_7.request_for_open_orders.labels = {
  ["G"] = "Request For Open Orders: Download Gtc And Gtd Orders (G)",
  ["N"] = "Request For Open Orders: No Open Orders (N)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.request_for_open_orders.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.request_for_open_orders.labels[value] or "Request For Open Orders: Unknown("..value..")"
end

-- Dissect: Request For Open Orders
nse_nseslbm_orderentry_nnfdirect_v2_7.request_for_open_orders.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.request_for_open_orders.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.request_for_open_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.request_for_open_orders, range, value, display)

  return offset + length, value
end

-- Requested By
nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by = {}

-- Size: Requested By
nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by.size = 2

-- Display: Requested By
nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by.display = function(value)
  return "Requested By: "..value
end

-- Dissect: Requested By
nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.requested_by, range, value, display)

  return offset + length, value
end

-- Reserved 1
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1 = {}

-- Size: Reserved 1
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size = 1

-- Display: Reserved 1
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 10
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_10 = {}

-- Size: Reserved 10
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_10.size = 10

-- Display: Reserved 10
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_10.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_10, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 14
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_14 = {}

-- Size: Reserved 14
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_14.size = 14

-- Display: Reserved 14
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_14.display = function(value)
  return "Reserved 14: "..value
end

-- Dissect: Reserved 14
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_14.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_14.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_14, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 2
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2 = {}

-- Size: Reserved 2
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size = 2

-- Display: Reserved 2
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_2, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 4
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4 = {}

-- Size: Reserved 4
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size = 4

-- Display: Reserved 4
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_4, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 5
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_5 = {}

-- Size: Reserved 5
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_5.size = 5

-- Display: Reserved 5
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_5, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 52
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_52 = {}

-- Size: Reserved 52
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_52.size = 52

-- Display: Reserved 52
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_52.display = function(value)
  return "Reserved 52: "..value
end

-- Dissect: Reserved 52
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_52.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_52.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_52.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_52, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 56
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_56 = {}

-- Size: Reserved 56
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_56.size = 56

-- Display: Reserved 56
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_56.display = function(value)
  return "Reserved 56: "..value
end

-- Dissect: Reserved 56
nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_56.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_56.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_56.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_56, range, range:raw(), display)

  return offset + length, value
end

-- Response Order Number
nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number = {}

-- Size: Response Order Number
nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.size = 8

-- Display: Response Order Number
nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.display = function(value)
  return "Response Order Number: "..string.format("%.0f", value)
end

-- Dissect: Response Order Number
nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.response_order_number, range, value, display)

  return offset + length, value
end

-- Reverse Leg Settl Date
nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date = {}

-- Size: Reverse Leg Settl Date
nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size = 4

-- Dissect: Reverse Leg Settl Date
nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reverse_leg_settl_date
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reverse_leg_settl_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_orderentry_nnfdirect_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Reverse Leg Settl Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_orderentry_nnfdirect_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Second Reserved 1
nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1 = {}

-- Size: Second Reserved 1
nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size = 1

-- Display: Second Reserved 1
nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.second_reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Sell Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id = {}

-- Size: Sell Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id.size = 5

-- Display: Sell Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id.display = function(value)
  return "Sell Broker Id: "..value
end

-- Dissect: Sell Broker Id
nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.sell_broker_id, range, value, display)

  return offset + length, value
end

-- Sell Participant Id
nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id = {}

-- Size: Sell Participant Id
nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id.size = 12

-- Display: Sell Participant Id
nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id.display = function(value)
  return "Sell Participant Id: "..value
end

-- Dissect: Sell Participant Id
nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.sell_participant_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
nse_nseslbm_orderentry_nnfdirect_v2_7.sequence_number = {}

-- Size: Sequence Number
nse_nseslbm_orderentry_nnfdirect_v2_7.sequence_number.size = 8

-- Display: Sequence Number
nse_nseslbm_orderentry_nnfdirect_v2_7.sequence_number.display = function(value)
  return "Sequence Number: "..string.format("%.0f", value)
end

-- Dissect: Sequence Number
nse_nseslbm_orderentry_nnfdirect_v2_7.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.sequence_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Series
nse_nseslbm_orderentry_nnfdirect_v2_7.series = {}

-- Size: Series
nse_nseslbm_orderentry_nnfdirect_v2_7.series.size = 2

-- Display: Series
nse_nseslbm_orderentry_nnfdirect_v2_7.series.display = function(value)
  return "Series: "..value
end

-- Dissect: Series
nse_nseslbm_orderentry_nnfdirect_v2_7.series.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.series, range, value, display)

  return offset + length, value
end

-- Session Key
nse_nseslbm_orderentry_nnfdirect_v2_7.session_key = {}

-- Size: Session Key
nse_nseslbm_orderentry_nnfdirect_v2_7.session_key.size = 8

-- Display: Session Key
nse_nseslbm_orderentry_nnfdirect_v2_7.session_key.display = function(value)
  return "Session Key: "..value
end

-- Dissect: Session Key
nse_nseslbm_orderentry_nnfdirect_v2_7.session_key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.session_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.session_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.session_key, range, value, display)

  return offset + length, value
end

-- Settlement Period
nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period = {}

-- Size: Settlement Period
nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size = 2

-- Display: Settlement Period
nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.display = function(value)
  return "Settlement Period: "..value
end

-- Dissect: Settlement Period
nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.settlement_period, range, value, display)

  return offset + length, value
end

-- Settlor
nse_nseslbm_orderentry_nnfdirect_v2_7.settlor = {}

-- Size: Settlor
nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size = 12

-- Display: Settlor
nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.display = function(value)
  return "Settlor: "..value
end

-- Dissect: Settlor
nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.settlor, range, value, display)

  return offset + length, value
end

-- Show Index
nse_nseslbm_orderentry_nnfdirect_v2_7.show_index = {}

-- Size: Show Index
nse_nseslbm_orderentry_nnfdirect_v2_7.show_index.size = 1

-- Display: Show Index
nse_nseslbm_orderentry_nnfdirect_v2_7.show_index.display = function(value)
  return "Show Index: "..value
end

-- Dissect: Show Index
nse_nseslbm_orderentry_nnfdirect_v2_7.show_index.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.show_index.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.show_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.show_index, range, value, display)

  return offset + length, value
end

-- Solicitor Period
nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period = {}

-- Size: Solicitor Period
nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size = 2

-- Display: Solicitor Period
nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.display = function(value)
  return "Solicitor Period: "..value
end

-- Dissect: Solicitor Period
nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.solicitor_period, range, value, display)

  return offset + length, value
end

-- Spot
nse_nseslbm_orderentry_nnfdirect_v2_7.spot = {}

-- Size: Spot
nse_nseslbm_orderentry_nnfdirect_v2_7.spot.size = 2

-- Display: Spot
nse_nseslbm_orderentry_nnfdirect_v2_7.spot.labels = {
  [0] = "Spot: Preopen (0)",
  [1] = "Spot: Open (1)",
  [2] = "Spot: Closed (2)",
  [3] = "Spot: Preopen Ended (3)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.spot.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.spot.labels[value] or "Spot: Unknown("..value..")"
end

-- Dissect: Spot
nse_nseslbm_orderentry_nnfdirect_v2_7.spot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.spot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.spot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.spot, range, value, display)

  return offset + length, value
end

-- Spot Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.spot_market_status = {}

-- Size: Spot Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.spot_market_status.size = 2

-- Display: Spot Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.spot_market_status.labels = {
  [0] = "Spot Market Status: Preopen (0)",
  [1] = "Spot Market Status: Open (1)",
  [2] = "Spot Market Status: Closed (2)",
  [3] = "Spot Market Status: Preopen Ended (3)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.spot_market_status.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.spot_market_status.labels[value] or "Spot Market Status: Unknown("..value..")"
end

-- Dissect: Spot Market Status
nse_nseslbm_orderentry_nnfdirect_v2_7.spot_market_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.spot_market_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.spot_market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.spot_market_status, range, value, display)

  return offset + length, value
end

-- Suspended
nse_nseslbm_orderentry_nnfdirect_v2_7.suspended = {}

-- Size: Suspended
nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size = 1

-- Display: Suspended
nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.display = function(value)
  return "Suspended: "..value
end

-- Dissect: Suspended
nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.suspended, range, value, display)

  return offset + length, value
end

-- Symbol
nse_nseslbm_orderentry_nnfdirect_v2_7.symbol = {}

-- Size: Symbol
nse_nseslbm_orderentry_nnfdirect_v2_7.symbol.size = 10

-- Display: Symbol
nse_nseslbm_orderentry_nnfdirect_v2_7.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nse_nseslbm_orderentry_nnfdirect_v2_7.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.symbol, range, value, display)

  return offset + length, value
end

-- Terminal Idle Time
nse_nseslbm_orderentry_nnfdirect_v2_7.terminal_idle_time = {}

-- Size: Terminal Idle Time
nse_nseslbm_orderentry_nnfdirect_v2_7.terminal_idle_time.size = 2

-- Display: Terminal Idle Time
nse_nseslbm_orderentry_nnfdirect_v2_7.terminal_idle_time.display = function(value)
  return "Terminal Idle Time: "..value
end

-- Dissect: Terminal Idle Time
nse_nseslbm_orderentry_nnfdirect_v2_7.terminal_idle_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.terminal_idle_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.terminal_idle_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.terminal_idle_time, range, value, display)

  return offset + length, value
end

-- Tick Size
nse_nseslbm_orderentry_nnfdirect_v2_7.tick_size = {}

-- Size: Tick Size
nse_nseslbm_orderentry_nnfdirect_v2_7.tick_size.size = 4

-- Display: Tick Size
nse_nseslbm_orderentry_nnfdirect_v2_7.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Translate: Tick Size
nse_nseslbm_orderentry_nnfdirect_v2_7.tick_size.translate = function(raw)
  return raw/100
end

-- Dissect: Tick Size
nse_nseslbm_orderentry_nnfdirect_v2_7.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.tick_size.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_orderentry_nnfdirect_v2_7.tick_size.translate(raw)
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Time Stamp 1
nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_1 = {}

-- Size: Time Stamp 1
nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_1.size = 8

-- Display: Time Stamp 1
nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_1.display = function(value)
  -- Check if field has value
  if value == nil or value == '' or value == "00000000" then
    return "Time Stamp 1: No Value"
  end

  return "Time Stamp 1: "..value
end

-- Dissect: Time Stamp 1
nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.time_stamp_1, range, value, display)

  return offset + length, value
end

-- Time Stamp 2
nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_2 = {}

-- Size: Time Stamp 2
nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_2.size = 8

-- Display: Time Stamp 2
nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' or value == "00000000" then
    return "Time Stamp 2: No Value"
  end

  return "Time Stamp 2: "..value
end

-- Dissect: Time Stamp 2
nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.time_stamp_2, range, value, display)

  return offset + length, value
end

-- Total Vol Remaining
nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining = {}

-- Size: Total Vol Remaining
nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size = 4

-- Display: Total Vol Remaining
nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.display = function(value)
  return "Total Vol Remaining: "..value
end

-- Dissect: Total Vol Remaining
nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.total_vol_remaining, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id = {}

-- Size: Trader Id
nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size = 4

-- Display: Trader Id
nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trader Name
nse_nseslbm_orderentry_nnfdirect_v2_7.trader_name = {}

-- Size: Trader Name
nse_nseslbm_orderentry_nnfdirect_v2_7.trader_name.size = 26

-- Display: Trader Name
nse_nseslbm_orderentry_nnfdirect_v2_7.trader_name.display = function(value)
  return "Trader Name: "..value
end

-- Dissect: Trader Name
nse_nseslbm_orderentry_nnfdirect_v2_7.trader_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trader_name, range, value, display)

  return offset + length, value
end

-- Trader Num
nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num = {}

-- Size: Trader Num
nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.size = 4

-- Display: Trader Num
nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.display = function(value)
  return "Trader Num: "..value
end

-- Dissect: Trader Num
nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trader_num, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_code = {}

-- Size: Transaction Code
nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_code.size = 2

-- Display: Transaction Code
nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_code.labels = {
  [2300] = "Transaction Code: Logon Request Message (2300)",
  [2301] = "Transaction Code: Logon Response Message (2301)",
  [1600] = "Transaction Code: System Information Request Message (1600)",
  [1601] = "Transaction Code: System Information Response Message (1601)",
  [7321] = "Transaction Code: Partial System Information Response Message (7321)",
  [7300] = "Transaction Code: Update Local Database Request Message (7300)",
  [7307] = "Transaction Code: Update Local Database Header Message (7307)",
  [7304] = "Transaction Code: Update Local Database Data Message (7304)",
  [7308] = "Transaction Code: Update Local Database Trailer Message (7308)",
  [7000] = "Transaction Code: Message Download Request Message (7000)",
  [7011] = "Transaction Code: Message Download Header Message (7011)",
  [7021] = "Transaction Code: Message Download Data Message (7021)",
  [7031] = "Transaction Code: Message Download Trailer Message (7031)",
  [2320] = "Transaction Code: Logoff Request Message (2320)",
  [2321] = "Transaction Code: Logoff Confirmation Response Message (2321)",
  [2000] = "Transaction Code: Order Entry Request Message (2000)",
  [2001] = "Transaction Code: Board Lot Out Message (2001)",
  [2073] = "Transaction Code: Order Confirmation Response Message (2073)",
  [2012] = "Transaction Code: Market Price Confirmation Response Message (2012)",
  [2170] = "Transaction Code: Order Freeze Response Message (2170)",
  [2231] = "Transaction Code: Order Error Response Message (2231)",
  [2040] = "Transaction Code: Order Modification Request Message (2040)",
  [2041] = "Transaction Code: Order Modification Response Message (2041)",
  [2074] = "Transaction Code: Order Modification Confirmation Response Message (2074)",
  [2042] = "Transaction Code: Order Modification Error Response Message (2042)",
  [2070] = "Transaction Code: Order Cancellation Request Message (2070)",
  [2071] = "Transaction Code: Order Cancellation Response Message (2071)",
  [2075] = "Transaction Code: Order Cancellation Confirmation Response Message (2075)",
  [2072] = "Transaction Code: Order Cancellation Error Response Message (2072)",
  [9002] = "Transaction Code: Cancellation Of Orders In Batch Message (9002)",
  [2009] = "Transaction Code: Negotiated Order Entered By Counter Party Message (2009)",
  [2008] = "Transaction Code: Negotiated Order To Regular Lot Message (2008)",
  [2076] = "Transaction Code: Cancel Negotiated Order Message (2076)",
  [5440] = "Transaction Code: Trade Cancellation Request Message (5440)",
  [5441] = "Transaction Code: Trade Cancellation Requested Response Message (5441)",
  [2223] = "Transaction Code: Trade Cancellation Error Message (2223)",
  [5445] = "Transaction Code: Trade Modification Request Message (5445)",
  [5446] = "Transaction Code: Trade Modification Requested Response Message (5446)",
  [2222] = "Transaction Code: Trade Confirmation Message (2222)",
  [2212] = "Transaction Code: Stop Loss Order Triggering Message (2212)",
  [2282] = "Transaction Code: Trade Cancellation Confirmation Response Message (2282)",
  [2286] = "Transaction Code: Trade Cancellation Rejection Message (2286)",
  [2287] = "Transaction Code: Trade Modification Confirmation Message (2287)",
  [2288] = "Transaction Code: Trade Modification Rejection Message (2288)",
  [5295] = "Transaction Code: Control Message To Trader Message (5295)",
  [2302] = "Transaction Code: Error Response Message (2302)",
  [2400] = "Transaction Code: Gateway Router Request Message (2400)",
  [2401] = "Transaction Code: Gateway Router Response Message (2401)",
  [23008] = "Transaction Code: Secure Box Registration Request Message (23008)",
  [23009] = "Transaction Code: Secure Box Registration Response Message (23009)",
  [23000] = "Transaction Code: Box Sign On Request Message (23000)",
  [23001] = "Transaction Code: Box Sign On Response Message (23001)",
  [23506] = "Transaction Code: Heartbeat Message (23506)",
  [20322] = "Transaction Code: Box Sign Off Message (20322)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_code.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_code.labels[value] or "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.transaction_code, range, value, display)

  return offset + length, value
end

-- Transaction Id
nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id = {}

-- Size: Transaction Id
nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size = 4

-- Display: Transaction Id
nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.display = function(value)
  return "Transaction Id: "..value
end

-- Dissect: Transaction Id
nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.transaction_id, range, value, display)

  return offset + length, value
end

-- Trigger Price
nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price = {}

-- Size: Trigger Price
nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size = 4

-- Display: Trigger Price
nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.display = function(value)
  return "Trigger Price: "..value
end

-- Translate: Trigger Price
nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.translate = function(raw)
  return raw/100
end

-- Dissect: Trigger Price
nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.translate(raw)
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trigger_price, range, value, display)

  return offset + length, value
end

-- User Id
nse_nseslbm_orderentry_nnfdirect_v2_7.user_id = {}

-- Size: User Id
nse_nseslbm_orderentry_nnfdirect_v2_7.user_id.size = 4

-- Display: User Id
nse_nseslbm_orderentry_nnfdirect_v2_7.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
nse_nseslbm_orderentry_nnfdirect_v2_7.user_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.user_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.user_id, range, value, display)

  return offset + length, value
end

-- User Type
nse_nseslbm_orderentry_nnfdirect_v2_7.user_type = {}

-- Size: User Type
nse_nseslbm_orderentry_nnfdirect_v2_7.user_type.size = 2

-- Display: User Type
nse_nseslbm_orderentry_nnfdirect_v2_7.user_type.labels = {
  [0] = "User Type: Dealer (0)",
  [4] = "User Type: Corporate Manager (4)",
  [5] = "User Type: Branch Manager (5)",
}

nse_nseslbm_orderentry_nnfdirect_v2_7.user_type.display = function(value)
  return nse_nseslbm_orderentry_nnfdirect_v2_7.user_type.labels[value] or "User Type: Unknown("..value..")"
end

-- Dissect: User Type
nse_nseslbm_orderentry_nnfdirect_v2_7.user_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.user_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.user_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.user_type, range, value, display)

  return offset + length, value
end

-- Version Number
nse_nseslbm_orderentry_nnfdirect_v2_7.version_number = {}

-- Size: Version Number
nse_nseslbm_orderentry_nnfdirect_v2_7.version_number.size = 4

-- Display: Version Number
nse_nseslbm_orderentry_nnfdirect_v2_7.version_number.display = function(value)
  return "Version Number: "..value
end

-- Dissect: Version Number
nse_nseslbm_orderentry_nnfdirect_v2_7.version_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.version_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.version_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.version_number, range, value, display)

  return offset + length, value
end

-- Vol Filled Today
nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today = {}

-- Size: Vol Filled Today
nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.size = 4

-- Display: Vol Filled Today
nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.display = function(value)
  return "Vol Filled Today: "..value
end

-- Dissect: Vol Filled Today
nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.vol_filled_today, range, value, display)

  return offset + length, value
end

-- Volume
nse_nseslbm_orderentry_nnfdirect_v2_7.volume = {}

-- Size: Volume
nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size = 4

-- Display: Volume
nse_nseslbm_orderentry_nnfdirect_v2_7.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.volume, range, value, display)

  return offset + length, value
end

-- Volume Filled Today
nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today = {}

-- Size: Volume Filled Today
nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size = 4

-- Display: Volume Filled Today
nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.display = function(value)
  return "Volume Filled Today: "..value
end

-- Dissect: Volume Filled Today
nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.volume_filled_today, range, value, display)

  return offset + length, value
end

-- Volume Freeze Percent
nse_nseslbm_orderentry_nnfdirect_v2_7.volume_freeze_percent = {}

-- Size: Volume Freeze Percent
nse_nseslbm_orderentry_nnfdirect_v2_7.volume_freeze_percent.size = 2

-- Display: Volume Freeze Percent
nse_nseslbm_orderentry_nnfdirect_v2_7.volume_freeze_percent.display = function(value)
  return "Volume Freeze Percent: "..value
end

-- Dissect: Volume Freeze Percent
nse_nseslbm_orderentry_nnfdirect_v2_7.volume_freeze_percent.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_freeze_percent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_freeze_percent.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.volume_freeze_percent, range, value, display)

  return offset + length, value
end

-- Warning Percent
nse_nseslbm_orderentry_nnfdirect_v2_7.warning_percent = {}

-- Size: Warning Percent
nse_nseslbm_orderentry_nnfdirect_v2_7.warning_percent.size = 2

-- Display: Warning Percent
nse_nseslbm_orderentry_nnfdirect_v2_7.warning_percent.display = function(value)
  return "Warning Percent: "..value
end

-- Dissect: Warning Percent
nse_nseslbm_orderentry_nnfdirect_v2_7.warning_percent.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.warning_percent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.warning_percent.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.warning_percent, range, value, display)

  return offset + length, value
end

-- Workstation Number
nse_nseslbm_orderentry_nnfdirect_v2_7.workstation_number = {}

-- Size: Workstation Number
nse_nseslbm_orderentry_nnfdirect_v2_7.workstation_number.size = 14

-- Display: Workstation Number
nse_nseslbm_orderentry_nnfdirect_v2_7.workstation_number.display = function(value)
  return "Workstation Number: "..value
end

-- Dissect: Workstation Number
nse_nseslbm_orderentry_nnfdirect_v2_7.workstation_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_orderentry_nnfdirect_v2_7.workstation_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.workstation_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.workstation_number, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseSlbm OrderEntry NnfDirect 2.7
-----------------------------------------------------------------------

-- Box Sign Off Message
nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_off_message = {}

-- Size: Box Sign Off Message
nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_off_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.size

-- Display: Box Sign Off Message
nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_off_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Box Sign Off Message
nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_off_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Box Sign Off Message
nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_off_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.box_sign_off_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_off_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_off_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_off_message.fields(buffer, offset, packet, parent)
  end
end

-- Box Sign On Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_response_message = {}

-- Size: Box Sign On Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_10.size

-- Display: Box Sign On Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Box Sign On Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.dissect(buffer, index, packet, parent)

  -- Reserved 10: CHAR
  if show.padding then
    index, reserved_10 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_10.size
  end

  return index
end

-- Dissect: Box Sign On Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.box_sign_on_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Secure Box Registration Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.secure_box_registration_response_message = {}

-- Display: Secure Box Registration Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.secure_box_registration_response_message.display = function(packet, parent, length)
  return "Secure Box Registration Response Message"
end


-- Dissect: Secure Box Registration Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.secure_box_registration_response_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.secure_box_registration_response_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Gateway Router Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_response_message = {}

-- Size: Gateway Router Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.ip_address.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.port.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.session_key.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_key.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_iv_initialization_vector.size

-- Display: Gateway Router Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Router Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  if show.padding then
    index, filler = nse_nseslbm_orderentry_nnfdirect_v2_7.filler.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler.size
  end

  -- Ip Address: CHAR
  index, ip_address = nse_nseslbm_orderentry_nnfdirect_v2_7.ip_address.dissect(buffer, index, packet, parent)

  -- Port: LONG
  index, port = nse_nseslbm_orderentry_nnfdirect_v2_7.port.dissect(buffer, index, packet, parent)

  -- Session Key: CHAR
  index, session_key = nse_nseslbm_orderentry_nnfdirect_v2_7.session_key.dissect(buffer, index, packet, parent)

  -- Cryptographic Key: CHAR
  index, cryptographic_key = nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_key.dissect(buffer, index, packet, parent)

  -- Cryptographic Iv Initialization Vector: CHAR
  index, cryptographic_iv_initialization_vector = nse_nseslbm_orderentry_nnfdirect_v2_7.cryptographic_iv_initialization_vector.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Router Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.gateway_router_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Sec Info
nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info = {}

-- Size: Sec Info
nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.symbol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.series.size

-- Display: Sec Info
nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sec Info
nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: CHAR
  index, symbol = nse_nseslbm_orderentry_nnfdirect_v2_7.symbol.dissect(buffer, index, packet, parent)

  -- Series: CHAR
  index, series = nse_nseslbm_orderentry_nnfdirect_v2_7.series.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sec Info
nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.sec_info, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.fields(buffer, offset, packet, parent)
  end
end

-- Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.error_response_message = {}

-- Size: Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.error_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.error_message.size

-- Display: Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.error_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.error_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Error Message: CHAR
  index, error_message = nse_nseslbm_orderentry_nnfdirect_v2_7.error_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.error_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.error_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.error_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.error_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.error_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message To Trader Message
nse_nseslbm_orderentry_nnfdirect_v2_7.control_message_to_trader_message = {}

-- Size: Control Message To Trader Message
nse_nseslbm_orderentry_nnfdirect_v2_7.control_message_to_trader_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.action_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.msg_length.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.msg.size

-- Display: Control Message To Trader Message
nse_nseslbm_orderentry_nnfdirect_v2_7.control_message_to_trader_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message To Trader Message
nse_nseslbm_orderentry_nnfdirect_v2_7.control_message_to_trader_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Action Code: CHAR
  index, action_code = nse_nseslbm_orderentry_nnfdirect_v2_7.action_code.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Msg Length: SHORT
  index, msg_length = nse_nseslbm_orderentry_nnfdirect_v2_7.msg_length.dissect(buffer, index, packet, parent)

  -- Msg: CHAR
  index, msg = nse_nseslbm_orderentry_nnfdirect_v2_7.msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Control Message To Trader Message
nse_nseslbm_orderentry_nnfdirect_v2_7.control_message_to_trader_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.control_message_to_trader_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.control_message_to_trader_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.control_message_to_trader_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.control_message_to_trader_message.fields(buffer, offset, packet, parent)
  end
end

-- St Order Flags
nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags = {}

-- Size: St Order Flags
nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size = 2

-- Display: St Order Flags
nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Stpc flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Stpc"
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
  -- Is Fok flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "Fok"
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
nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.bits = function(range, value, packet, parent)

  -- Order Flags Reserved One: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_flags_reserved_one, range, value)

  -- Stpc: 1 Bit Enum with 2 values
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.stpc, range, value)

  -- Order Flags Reserved Three: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_flags_reserved_three, range, value)

  -- Filler 1: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.filler_1, range, value)

  -- Frozen: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.frozen, range, value)

  -- Modified: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.modified, range, value)

  -- Traded: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.traded, range, value)

  -- Matched Ind: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.matched_ind, range, value)

  -- Mf: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.mf, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.aon, range, value)

  -- Fok: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.fok, range, value)

  -- Gtc: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.gtc, range, value)

  -- Day: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.day, range, value)

  -- On Stop: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.on_stop, range, value)

  -- Mkt: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.mkt, range, value)

  -- Ato: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.ato, range, value)
end

-- Dissect: St Order Flags
nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.st_order_flags, range, display)

  if show.structs then
    nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Modification Rejection Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_rejection_message = {}

-- Size: Trade Modification Rejection Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_rejection_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.gtd.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size

-- Display: Trade Modification Rejection Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_rejection_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Modification Rejection Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_rejection_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseslbm_orderentry_nnfdirect_v2_7.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size
  end

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- New Volume: LONG
  index, new_volume = nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Modification Rejection Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_rejection_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_modification_rejection_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_rejection_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_rejection_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_rejection_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Modification Confirmation Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_confirmation_message = {}

-- Size: Trade Modification Confirmation Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_confirmation_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.gtd.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size

-- Display: Trade Modification Confirmation Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Modification Confirmation Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseslbm_orderentry_nnfdirect_v2_7.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size
  end

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- New Volume: LONG
  index, new_volume = nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Modification Confirmation Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_modification_confirmation_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancellation Rejection Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_rejection_message = {}

-- Size: Trade Cancellation Rejection Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_rejection_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.gtd.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size

-- Display: Trade Cancellation Rejection Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_rejection_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancellation Rejection Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_rejection_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseslbm_orderentry_nnfdirect_v2_7.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size
  end

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- New Volume: LONG
  index, new_volume = nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation Rejection Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_rejection_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_cancellation_rejection_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_rejection_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_rejection_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_rejection_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancellation Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_confirmation_response_message = {}

-- Size: Trade Cancellation Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_confirmation_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.gtd.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size

-- Display: Trade Cancellation Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_confirmation_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancellation Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_confirmation_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseslbm_orderentry_nnfdirect_v2_7.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size
  end

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- New Volume: LONG
  index, new_volume = nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_confirmation_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_cancellation_confirmation_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_confirmation_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_confirmation_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_confirmation_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Stop Loss Order Triggering Message
nse_nseslbm_orderentry_nnfdirect_v2_7.stop_loss_order_triggering_message = {}

-- Size: Stop Loss Order Triggering Message
nse_nseslbm_orderentry_nnfdirect_v2_7.stop_loss_order_triggering_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.gtd.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size

-- Display: Stop Loss Order Triggering Message
nse_nseslbm_orderentry_nnfdirect_v2_7.stop_loss_order_triggering_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stop Loss Order Triggering Message
nse_nseslbm_orderentry_nnfdirect_v2_7.stop_loss_order_triggering_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseslbm_orderentry_nnfdirect_v2_7.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size
  end

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- New Volume: LONG
  index, new_volume = nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stop Loss Order Triggering Message
nse_nseslbm_orderentry_nnfdirect_v2_7.stop_loss_order_triggering_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.stop_loss_order_triggering_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.stop_loss_order_triggering_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.stop_loss_order_triggering_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.stop_loss_order_triggering_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Confirmation Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_confirmation_message = {}

-- Size: Trade Confirmation Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_confirmation_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.gtd.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size

-- Display: Trade Confirmation Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Confirmation Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.response_order_number.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseslbm_orderentry_nnfdirect_v2_7.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseslbm_orderentry_nnfdirect_v2_7.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseslbm_orderentry_nnfdirect_v2_7.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseslbm_orderentry_nnfdirect_v2_7.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseslbm_orderentry_nnfdirect_v2_7.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size
  end

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- New Volume: LONG
  index, new_volume = nse_nseslbm_orderentry_nnfdirect_v2_7.new_volume.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Confirmation Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_confirmation_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.trade_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Modification Requested Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_requested_response_message = {}

-- Size: Trade Modification Requested Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_requested_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by.size

-- Display: Trade Modification Requested Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_requested_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Modification Requested Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_requested_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- L Fill Number: LONG
  index, l_fill_number = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number.dissect(buffer, index, packet, parent)

  -- L Fill Qty: LONG
  index, l_fill_qty = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty.dissect(buffer, index, packet, parent)

  -- L Fill Price: LONG
  index, l_fill_price = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.dissect(buffer, index, packet, parent)

  -- I Mkt Type: SHORT
  index, i_mkt_type = nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type.dissect(buffer, index, packet, parent)

  -- L New Volume: LONG
  index, l_new_volume = nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume.dissect(buffer, index, packet, parent)

  -- Buy Participant Id: CHAR
  index, buy_participant_id = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id.dissect(buffer, index, packet, parent)

  -- Sell Participant Id: CHAR
  index, sell_participant_id = nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id.dissect(buffer, index, packet, parent)

  -- Buy Broker Id: CHAR
  index, buy_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id.dissect(buffer, index, packet, parent)

  -- Sell Broker Id: CHAR
  index, sell_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Requested By: SHORT
  index, requested_by = nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Modification Requested Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_requested_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_modification_requested_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_requested_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_requested_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_requested_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancellation Error Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_error_message = {}

-- Size: Trade Cancellation Error Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_error_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by.size

-- Display: Trade Cancellation Error Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancellation Error Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- L Fill Number: LONG
  index, l_fill_number = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number.dissect(buffer, index, packet, parent)

  -- L Fill Qty: LONG
  index, l_fill_qty = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty.dissect(buffer, index, packet, parent)

  -- L Fill Price: LONG
  index, l_fill_price = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.dissect(buffer, index, packet, parent)

  -- I Mkt Type: SHORT
  index, i_mkt_type = nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type.dissect(buffer, index, packet, parent)

  -- L New Volume: LONG
  index, l_new_volume = nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume.dissect(buffer, index, packet, parent)

  -- Buy Participant Id: CHAR
  index, buy_participant_id = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id.dissect(buffer, index, packet, parent)

  -- Sell Participant Id: CHAR
  index, sell_participant_id = nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id.dissect(buffer, index, packet, parent)

  -- Buy Broker Id: CHAR
  index, buy_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id.dissect(buffer, index, packet, parent)

  -- Sell Broker Id: CHAR
  index, sell_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Requested By: SHORT
  index, requested_by = nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation Error Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_cancellation_error_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancellation Requested Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_requested_response_message = {}

-- Size: Trade Cancellation Requested Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_requested_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by.size

-- Display: Trade Cancellation Requested Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_requested_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancellation Requested Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_requested_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- L Fill Number: LONG
  index, l_fill_number = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number.dissect(buffer, index, packet, parent)

  -- L Fill Qty: LONG
  index, l_fill_qty = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty.dissect(buffer, index, packet, parent)

  -- L Fill Price: LONG
  index, l_fill_price = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.dissect(buffer, index, packet, parent)

  -- I Mkt Type: SHORT
  index, i_mkt_type = nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type.dissect(buffer, index, packet, parent)

  -- L New Volume: LONG
  index, l_new_volume = nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume.dissect(buffer, index, packet, parent)

  -- Buy Participant Id: CHAR
  index, buy_participant_id = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id.dissect(buffer, index, packet, parent)

  -- Sell Participant Id: CHAR
  index, sell_participant_id = nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id.dissect(buffer, index, packet, parent)

  -- Buy Broker Id: CHAR
  index, buy_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id.dissect(buffer, index, packet, parent)

  -- Sell Broker Id: CHAR
  index, sell_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Requested By: SHORT
  index, requested_by = nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation Requested Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_requested_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_cancellation_requested_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_requested_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_requested_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_requested_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Negotiated Order Message
nse_nseslbm_orderentry_nnfdirect_v2_7.cancel_negotiated_order_message = {}

-- Size: Cancel Negotiated Order Message
nse_nseslbm_orderentry_nnfdirect_v2_7.cancel_negotiated_order_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Cancel Negotiated Order Message
nse_nseslbm_orderentry_nnfdirect_v2_7.cancel_negotiated_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Negotiated Order Message
nse_nseslbm_orderentry_nnfdirect_v2_7.cancel_negotiated_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Negotiated Order Message
nse_nseslbm_orderentry_nnfdirect_v2_7.cancel_negotiated_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.cancel_negotiated_order_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.cancel_negotiated_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.cancel_negotiated_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.cancel_negotiated_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Negotiated Order To Regular Lot Message
nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_to_regular_lot_message = {}

-- Size: Negotiated Order To Regular Lot Message
nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_to_regular_lot_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Negotiated Order To Regular Lot Message
nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_to_regular_lot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiated Order To Regular Lot Message
nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_to_regular_lot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiated Order To Regular Lot Message
nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_to_regular_lot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.negotiated_order_to_regular_lot_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_to_regular_lot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_to_regular_lot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_to_regular_lot_message.fields(buffer, offset, packet, parent)
  end
end

-- Negotiated Order Entered By Counter Party Message
nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_entered_by_counter_party_message = {}

-- Size: Negotiated Order Entered By Counter Party Message
nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_entered_by_counter_party_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Negotiated Order Entered By Counter Party Message
nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_entered_by_counter_party_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiated Order Entered By Counter Party Message
nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_entered_by_counter_party_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiated Order Entered By Counter Party Message
nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_entered_by_counter_party_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.negotiated_order_entered_by_counter_party_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_entered_by_counter_party_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_entered_by_counter_party_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_entered_by_counter_party_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancellation Of Orders In Batch Message
nse_nseslbm_orderentry_nnfdirect_v2_7.cancellation_of_orders_in_batch_message = {}

-- Size: Cancellation Of Orders In Batch Message
nse_nseslbm_orderentry_nnfdirect_v2_7.cancellation_of_orders_in_batch_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Cancellation Of Orders In Batch Message
nse_nseslbm_orderentry_nnfdirect_v2_7.cancellation_of_orders_in_batch_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancellation Of Orders In Batch Message
nse_nseslbm_orderentry_nnfdirect_v2_7.cancellation_of_orders_in_batch_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancellation Of Orders In Batch Message
nse_nseslbm_orderentry_nnfdirect_v2_7.cancellation_of_orders_in_batch_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.cancellation_of_orders_in_batch_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.cancellation_of_orders_in_batch_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.cancellation_of_orders_in_batch_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.cancellation_of_orders_in_batch_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_error_response_message = {}

-- Size: Order Cancellation Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_error_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Order Cancellation Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_error_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_error_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_error_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_cancellation_error_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_error_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_error_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_error_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_confirmation_response_message = {}

-- Size: Order Cancellation Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_confirmation_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Order Cancellation Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_confirmation_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_confirmation_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_confirmation_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_cancellation_confirmation_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_confirmation_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_confirmation_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_confirmation_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_response_message = {}

-- Size: Order Cancellation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Order Cancellation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_cancellation_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_error_response_message = {}

-- Size: Order Modification Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_error_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Order Modification Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_error_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modification Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_error_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modification Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_error_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_modification_error_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_error_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_error_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_error_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_confirmation_response_message = {}

-- Size: Order Modification Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_confirmation_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Order Modification Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_confirmation_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modification Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_confirmation_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modification Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_confirmation_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_modification_confirmation_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_confirmation_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_confirmation_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_confirmation_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_response_message = {}

-- Size: Order Modification Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Order Modification Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modification Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modification Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_modification_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_error_response_message = {}

-- Size: Order Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_error_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Order Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_error_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_error_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Error Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_error_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_error_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.order_error_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.order_error_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.order_error_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Freeze Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_freeze_response_message = {}

-- Size: Order Freeze Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_freeze_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Order Freeze Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_freeze_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Freeze Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_freeze_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Freeze Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_freeze_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_freeze_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.order_freeze_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.order_freeze_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.order_freeze_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Price Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.market_price_confirmation_response_message = {}

-- Size: Market Price Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.market_price_confirmation_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Market Price Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.market_price_confirmation_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Price Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.market_price_confirmation_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Price Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.market_price_confirmation_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.market_price_confirmation_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.market_price_confirmation_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.market_price_confirmation_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.market_price_confirmation_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_confirmation_response_message = {}

-- Size: Order Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_confirmation_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Order Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_confirmation_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_confirmation_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_confirmation_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_confirmation_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.order_confirmation_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.order_confirmation_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.order_confirmation_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Board Lot Out Message
nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_out_message = {}

-- Size: Board Lot Out Message
nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_out_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Board Lot Out Message
nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Board Lot Out Message
nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Board Lot Out Message
nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.board_lot_out_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Logoff Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logoff_confirmation_response_message = {}

-- Display: Logoff Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logoff_confirmation_response_message.display = function(packet, parent, length)
  return "Logoff Confirmation Response Message"
end


-- Dissect: Logoff Confirmation Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logoff_confirmation_response_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.logoff_confirmation_response_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Message Download Trailer Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_trailer_message = {}

-- Display: Message Download Trailer Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_trailer_message.display = function(packet, parent, length)
  return "Message Download Trailer Message"
end


-- Dissect: Message Download Trailer Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_trailer_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_trailer_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Message Download Data Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_data_message = {}

-- Read runtime size of: Message Download Data Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 2, 2):int()

  return message_length - 40
end

-- Display: Message Download Data Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Download Data Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_data_message.fields = function(buffer, offset, packet, parent, size_of_message_download_data_message)
  local index = offset

  -- Runtime Size Of: Data
  local size_of_data = offset + size_of_message_download_data_message - index

  -- Data: CHAR
  index, data = nse_nseslbm_orderentry_nnfdirect_v2_7.data.dissect(buffer, index, packet, parent, size_of_data)

  return index
end

-- Dissect: Message Download Data Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_data_message.dissect = function(buffer, offset, packet, parent, size_of_message_download_data_message)
  local size_of_message_download_data_message = nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_data_message.size(buffer, offset)
  local index = offset + size_of_message_download_data_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.message_download_data_message, buffer(offset, 0))
    local current = nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_data_message.fields(buffer, offset, packet, parent, size_of_message_download_data_message)
    parent:set_len(size_of_message_download_data_message)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_data_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_data_message.fields(buffer, offset, packet, parent, size_of_message_download_data_message)

    return index
  end
end

-- Message Download Header Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_header_message = {}

-- Display: Message Download Header Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_header_message.display = function(packet, parent, length)
  return "Message Download Header Message"
end


-- Dissect: Message Download Header Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_header_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_header_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Update Local Database Trailer Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_trailer_message = {}

-- Size: Update Local Database Trailer Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_trailer_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size

-- Display: Update Local Database Trailer Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_trailer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database Trailer Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_trailer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  return index
end

-- Dissect: Update Local Database Trailer Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_trailer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.update_local_database_trailer_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_trailer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_trailer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_trailer_message.fields(buffer, offset, packet, parent)
  end
end

-- Update Local Database Data Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_data_message = {}

-- Read runtime size of: Update Local Database Data Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 2, 2):int()

  return message_length - 40
end

-- Display: Update Local Database Data Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database Data Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_data_message.fields = function(buffer, offset, packet, parent, size_of_update_local_database_data_message)
  local index = offset

  -- Runtime Size Of: Data
  local size_of_data = offset + size_of_update_local_database_data_message - index

  -- Data: CHAR
  index, data = nse_nseslbm_orderentry_nnfdirect_v2_7.data.dissect(buffer, index, packet, parent, size_of_data)

  return index
end

-- Dissect: Update Local Database Data Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_data_message.dissect = function(buffer, offset, packet, parent, size_of_update_local_database_data_message)
  local size_of_update_local_database_data_message = nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_data_message.size(buffer, offset)
  local index = offset + size_of_update_local_database_data_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.update_local_database_data_message, buffer(offset, 0))
    local current = nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_data_message.fields(buffer, offset, packet, parent, size_of_update_local_database_data_message)
    parent:set_len(size_of_update_local_database_data_message)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_data_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_data_message.fields(buffer, offset, packet, parent, size_of_update_local_database_data_message)

    return index
  end
end

-- Update Local Database Header Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_header_message = {}

-- Size: Update Local Database Header Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_header_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size

-- Display: Update Local Database Header Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database Header Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  return index
end

-- Dissect: Update Local Database Header Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.update_local_database_header_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Eligible Indicators
nse_nseslbm_orderentry_nnfdirect_v2_7.security_eligible_indicators = {}

-- Size: Security Eligible Indicators
nse_nseslbm_orderentry_nnfdirect_v2_7.security_eligible_indicators.size = 2

-- Display: Security Eligible Indicators
nse_nseslbm_orderentry_nnfdirect_v2_7.security_eligible_indicators.display = function(range, value, packet, parent)
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

-- Dissect Bit Fields: Security Eligible Indicators
nse_nseslbm_orderentry_nnfdirect_v2_7.security_eligible_indicators.bits = function(range, value, packet, parent)

  -- Reserved 113: 13 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_113, range, value)

  -- Books Merged: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.books_merged, range, value)

  -- Minimum Fill: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.minimum_fill, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.aon, range, value)
end

-- Dissect: Security Eligible Indicators
nse_nseslbm_orderentry_nnfdirect_v2_7.security_eligible_indicators.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseslbm_orderentry_nnfdirect_v2_7.security_eligible_indicators.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.security_eligible_indicators.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.security_eligible_indicators, range, display)

  if show.structs then
    nse_nseslbm_orderentry_nnfdirect_v2_7.security_eligible_indicators.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Partial System Information Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.partial_system_information_response_message = {}

-- Size: Partial System Information Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.partial_system_information_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.normal.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oddlot.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.spot.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.market_index.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_normal.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_spot.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_auction.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.warning_percent.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_freeze_percent.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.terminal_idle_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_quantity.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.tick_size.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.maximum_gtc_days.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.security_eligible_indicators.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_quantity_percent_allowed.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size

-- Display: Partial System Information Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.partial_system_information_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partial System Information Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.partial_system_information_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Normal: SHORT
  index, normal = nse_nseslbm_orderentry_nnfdirect_v2_7.normal.dissect(buffer, index, packet, parent)

  -- Oddlot: SHORT
  index, oddlot = nse_nseslbm_orderentry_nnfdirect_v2_7.oddlot.dissect(buffer, index, packet, parent)

  -- Spot: SHORT
  index, spot = nse_nseslbm_orderentry_nnfdirect_v2_7.spot.dissect(buffer, index, packet, parent)

  -- Auction: SHORT
  index, auction = nse_nseslbm_orderentry_nnfdirect_v2_7.auction.dissect(buffer, index, packet, parent)

  -- Market Index: LONG
  index, market_index = nse_nseslbm_orderentry_nnfdirect_v2_7.market_index.dissect(buffer, index, packet, parent)

  -- Default Settlement Period Normal: SHORT
  index, default_settlement_period_normal = nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_normal.dissect(buffer, index, packet, parent)

  -- Default Settlement Period Spot: SHORT
  index, default_settlement_period_spot = nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_spot.dissect(buffer, index, packet, parent)

  -- Default Settlement Period Auction: SHORT
  index, default_settlement_period_auction = nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_auction.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Warning Percent: SHORT
  index, warning_percent = nse_nseslbm_orderentry_nnfdirect_v2_7.warning_percent.dissect(buffer, index, packet, parent)

  -- Volume Freeze Percent: SHORT
  index, volume_freeze_percent = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_freeze_percent.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Terminal Idle Time: SHORT
  index, terminal_idle_time = nse_nseslbm_orderentry_nnfdirect_v2_7.terminal_idle_time.dissect(buffer, index, packet, parent)

  -- Board Lot Quantity: LONG
  index, board_lot_quantity = nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_quantity.dissect(buffer, index, packet, parent)

  -- Tick Size: LONG
  index, tick_size = nse_nseslbm_orderentry_nnfdirect_v2_7.tick_size.dissect(buffer, index, packet, parent)

  -- Maximum Gtc Days: SHORT
  index, maximum_gtc_days = nse_nseslbm_orderentry_nnfdirect_v2_7.maximum_gtc_days.dissect(buffer, index, packet, parent)

  -- Security Eligible Indicators: Struct of 4 fields
  index, security_eligible_indicators = nse_nseslbm_orderentry_nnfdirect_v2_7.security_eligible_indicators.dissect(buffer, index, packet, parent)

  -- Disclosed Quantity Percent Allowed: SHORT
  index, disclosed_quantity_percent_allowed = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_quantity_percent_allowed.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  return index
end

-- Dissect: Partial System Information Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.partial_system_information_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.partial_system_information_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.partial_system_information_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.partial_system_information_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.partial_system_information_response_message.fields(buffer, offset, packet, parent)
  end
end

-- System Information Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.system_information_response_message = {}

-- Size: System Information Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.system_information_response_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.normal.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oddlot.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.spot.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.market_index.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_normal.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_spot.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_auction.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.warning_percent.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_freeze_percent.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.terminal_idle_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_quantity.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.tick_size.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.maximum_gtc_days.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.security_eligible_indicators.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_quantity_percent_allowed.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size

-- Display: System Information Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.system_information_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Information Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.system_information_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Normal: SHORT
  index, normal = nse_nseslbm_orderentry_nnfdirect_v2_7.normal.dissect(buffer, index, packet, parent)

  -- Oddlot: SHORT
  index, oddlot = nse_nseslbm_orderentry_nnfdirect_v2_7.oddlot.dissect(buffer, index, packet, parent)

  -- Spot: SHORT
  index, spot = nse_nseslbm_orderentry_nnfdirect_v2_7.spot.dissect(buffer, index, packet, parent)

  -- Auction: SHORT
  index, auction = nse_nseslbm_orderentry_nnfdirect_v2_7.auction.dissect(buffer, index, packet, parent)

  -- Market Index: LONG
  index, market_index = nse_nseslbm_orderentry_nnfdirect_v2_7.market_index.dissect(buffer, index, packet, parent)

  -- Default Settlement Period Normal: SHORT
  index, default_settlement_period_normal = nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_normal.dissect(buffer, index, packet, parent)

  -- Default Settlement Period Spot: SHORT
  index, default_settlement_period_spot = nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_spot.dissect(buffer, index, packet, parent)

  -- Default Settlement Period Auction: SHORT
  index, default_settlement_period_auction = nse_nseslbm_orderentry_nnfdirect_v2_7.default_settlement_period_auction.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Warning Percent: SHORT
  index, warning_percent = nse_nseslbm_orderentry_nnfdirect_v2_7.warning_percent.dissect(buffer, index, packet, parent)

  -- Volume Freeze Percent: SHORT
  index, volume_freeze_percent = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_freeze_percent.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Terminal Idle Time: SHORT
  index, terminal_idle_time = nse_nseslbm_orderentry_nnfdirect_v2_7.terminal_idle_time.dissect(buffer, index, packet, parent)

  -- Board Lot Quantity: LONG
  index, board_lot_quantity = nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_quantity.dissect(buffer, index, packet, parent)

  -- Tick Size: LONG
  index, tick_size = nse_nseslbm_orderentry_nnfdirect_v2_7.tick_size.dissect(buffer, index, packet, parent)

  -- Maximum Gtc Days: SHORT
  index, maximum_gtc_days = nse_nseslbm_orderentry_nnfdirect_v2_7.maximum_gtc_days.dissect(buffer, index, packet, parent)

  -- Security Eligible Indicators: Struct of 4 fields
  index, security_eligible_indicators = nse_nseslbm_orderentry_nnfdirect_v2_7.security_eligible_indicators.dissect(buffer, index, packet, parent)

  -- Disclosed Quantity Percent Allowed: SHORT
  index, disclosed_quantity_percent_allowed = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_quantity_percent_allowed.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  return index
end

-- Dissect: System Information Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.system_information_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.system_information_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.system_information_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.system_information_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.system_information_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Error Body
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_error_body = {}

-- Size: Logon Error Body
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_error_body.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.error_message.size

-- Display: Logon Error Body
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_error_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Error Body
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_error_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Error Message: CHAR
  index, error_message = nse_nseslbm_orderentry_nnfdirect_v2_7.error_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Error Body
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_error_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.logon_error_body, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_error_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_error_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.logon_error_body.fields(buffer, offset, packet, parent)
  end
end

-- Broker Eligibility Per Market
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_eligibility_per_market = {}

-- Size: Broker Eligibility Per Market
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_eligibility_per_market.size = 2

-- Display: Broker Eligibility Per Market
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_eligibility_per_market.display = function(range, value, packet, parent)
  local flags = {}

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
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_eligibility_per_market.bits = function(range, value, packet, parent)

  -- Reserved 112: 12 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.reserved_112, range, value)

  -- Auction Market: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.auction_market, range, value)

  -- Spot Market: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.spot_market, range, value)

  -- Oddlot Market: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.oddlot_market, range, value)

  -- Normal Market: 1 Bit
  parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.normal_market, range, value)
end

-- Dissect: Broker Eligibility Per Market
nse_nseslbm_orderentry_nnfdirect_v2_7.broker_eligibility_per_market.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_eligibility_per_market.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_eligibility_per_market.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.broker_eligibility_per_market, range, display)

  if show.structs then
    nse_nseslbm_orderentry_nnfdirect_v2_7.broker_eligibility_per_market.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Logon Confirmation Body
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_confirmation_body = {}

-- Size: Logon Confirmation Body
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_confirmation_body.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.user_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.password.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.new_password.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_name.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_password_change_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.version_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.end_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_52.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.user_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sequence_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_14.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_status.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_eligibility_per_market.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_name.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.char_filler_3.size

-- Display: Logon Confirmation Body
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_confirmation_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Confirmation Body
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_confirmation_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseslbm_orderentry_nnfdirect_v2_7.user_id.dissect(buffer, index, packet, parent)

  -- Password: CHAR
  index, password = nse_nseslbm_orderentry_nnfdirect_v2_7.password.dissect(buffer, index, packet, parent)

  -- New Password: CHAR
  index, new_password = nse_nseslbm_orderentry_nnfdirect_v2_7.new_password.dissect(buffer, index, packet, parent)

  -- Trader Name: CHAR
  index, trader_name = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_name.dissect(buffer, index, packet, parent)

  -- Last Password Change Date: LONG
  index, last_password_change_date = nse_nseslbm_orderentry_nnfdirect_v2_7.last_password_change_date.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Version Number: LONG
  index, version_number = nse_nseslbm_orderentry_nnfdirect_v2_7.version_number.dissect(buffer, index, packet, parent)

  -- End Time: LONG
  index, end_time = nse_nseslbm_orderentry_nnfdirect_v2_7.end_time.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_52.size
  end

  -- User Type: SHORT
  index, user_type = nse_nseslbm_orderentry_nnfdirect_v2_7.user_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: DOUBLE
  index, sequence_number = nse_nseslbm_orderentry_nnfdirect_v2_7.sequence_number.dissect(buffer, index, packet, parent)

  -- Reserved 14: CHAR
  if show.padding then
    index, reserved_14 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_14.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_14.size
  end

  -- Broker Status: CHAR
  index, broker_status = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_status.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.second_reserved_1.size
  end

  -- Broker Eligibility Per Market: Struct of 5 fields
  index, broker_eligibility_per_market = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_eligibility_per_market.dissect(buffer, index, packet, parent)

  -- Broker Name: CHAR
  index, broker_name = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_name.dissect(buffer, index, packet, parent)

  -- Char Filler 3: CHAR
  index, char_filler_3 = nse_nseslbm_orderentry_nnfdirect_v2_7.char_filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Confirmation Body
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_confirmation_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.logon_confirmation_body, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_confirmation_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_confirmation_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.logon_confirmation_body.fields(buffer, offset, packet, parent)
  end
end

-- Logon Response Body
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_response_body = {}

-- Dispatch: Logon Response Body
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_response_body.dispatch = {
  [212] = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_confirmation_body.dissect,
  [180] = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_error_body.dissect,
}

-- Dissect: Logon Response Body
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_response_body.dissect = function(buffer, offset, packet, parent, message_length)
  local dissect = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_response_body.dispatch[message_length]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Logon Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_response_message = {}

-- Calculate size of: Logon Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_response_message.size = function(buffer, offset)
  local index = 0

  -- Calculate runtime size of Logon Response Body field
  local logon_response_body_offset = offset + index
  local logon_response_body_type = buffer(logon_response_body_offset - 2, 2):int()
  index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.logon_response_body.size(buffer, logon_response_body_offset, logon_response_body_type)

  return index
end

-- Display: Logon Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 2, 2):int()

  -- Logon Response Body: Runtime Type with 2 branches
  index = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_response_body.dissect(buffer, index, packet, parent, message_length)

  return index
end

-- Dissect: Logon Response Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.logon_response_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    if length == 0 then
      parent:set_hidden(true)
    end
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Server Message Payload
nse_nseslbm_orderentry_nnfdirect_v2_7.server_message_payload = {}

-- Dispatch: Server Message Payload
nse_nseslbm_orderentry_nnfdirect_v2_7.server_message_payload.dispatch = {
  [2301] = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_response_message.dissect,
  [1601] = nse_nseslbm_orderentry_nnfdirect_v2_7.system_information_response_message.dissect,
  [7321] = nse_nseslbm_orderentry_nnfdirect_v2_7.partial_system_information_response_message.dissect,
  [7307] = nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_header_message.dissect,
  [7304] = nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_data_message.dissect,
  [7308] = nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_trailer_message.dissect,
  [7011] = nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_header_message.dissect,
  [7021] = nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_data_message.dissect,
  [7031] = nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_trailer_message.dissect,
  [2321] = nse_nseslbm_orderentry_nnfdirect_v2_7.logoff_confirmation_response_message.dissect,
  [2001] = nse_nseslbm_orderentry_nnfdirect_v2_7.board_lot_out_message.dissect,
  [2073] = nse_nseslbm_orderentry_nnfdirect_v2_7.order_confirmation_response_message.dissect,
  [2012] = nse_nseslbm_orderentry_nnfdirect_v2_7.market_price_confirmation_response_message.dissect,
  [2170] = nse_nseslbm_orderentry_nnfdirect_v2_7.order_freeze_response_message.dissect,
  [2231] = nse_nseslbm_orderentry_nnfdirect_v2_7.order_error_response_message.dissect,
  [2041] = nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_response_message.dissect,
  [2074] = nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_confirmation_response_message.dissect,
  [2042] = nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_error_response_message.dissect,
  [2071] = nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_response_message.dissect,
  [2075] = nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_confirmation_response_message.dissect,
  [2072] = nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_error_response_message.dissect,
  [9002] = nse_nseslbm_orderentry_nnfdirect_v2_7.cancellation_of_orders_in_batch_message.dissect,
  [2009] = nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_entered_by_counter_party_message.dissect,
  [2008] = nse_nseslbm_orderentry_nnfdirect_v2_7.negotiated_order_to_regular_lot_message.dissect,
  [2076] = nse_nseslbm_orderentry_nnfdirect_v2_7.cancel_negotiated_order_message.dissect,
  [5441] = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_requested_response_message.dissect,
  [2223] = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_error_message.dissect,
  [5446] = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_requested_response_message.dissect,
  [2222] = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_confirmation_message.dissect,
  [2212] = nse_nseslbm_orderentry_nnfdirect_v2_7.stop_loss_order_triggering_message.dissect,
  [2282] = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_confirmation_response_message.dissect,
  [2286] = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_rejection_message.dissect,
  [2287] = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_confirmation_message.dissect,
  [2288] = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_rejection_message.dissect,
  [5295] = nse_nseslbm_orderentry_nnfdirect_v2_7.control_message_to_trader_message.dissect,
  [2302] = nse_nseslbm_orderentry_nnfdirect_v2_7.error_response_message.dissect,
  [2401] = nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_response_message.dissect,
  [23009] = nse_nseslbm_orderentry_nnfdirect_v2_7.secure_box_registration_response_message.dissect,
  [23001] = nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_response_message.dissect,
  [20322] = nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_off_message.dissect,
}

-- Dissect: Server Message Payload
nse_nseslbm_orderentry_nnfdirect_v2_7.server_message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nseslbm_orderentry_nnfdirect_v2_7.server_message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nse_nseslbm_orderentry_nnfdirect_v2_7.message_header = {}

-- Size: Message Header
nse_nseslbm_orderentry_nnfdirect_v2_7.message_header.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.log_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.alpha_char.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.error_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.header_timestamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.message_length.size

-- Display: Message Header
nse_nseslbm_orderentry_nnfdirect_v2_7.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nse_nseslbm_orderentry_nnfdirect_v2_7.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_code.dissect(buffer, index, packet, parent)

  -- Log Time: LONG
  index, log_time = nse_nseslbm_orderentry_nnfdirect_v2_7.log_time.dissect(buffer, index, packet, parent)

  -- Alpha Char: CHAR
  index, alpha_char = nse_nseslbm_orderentry_nnfdirect_v2_7.alpha_char.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nseslbm_orderentry_nnfdirect_v2_7.error_code.dissect(buffer, index, packet, parent)

  -- Header Timestamp: LONG LONG
  index, header_timestamp = nse_nseslbm_orderentry_nnfdirect_v2_7.header_timestamp.dissect(buffer, index, packet, parent)

  -- Time Stamp 1: CHAR
  index, time_stamp_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_1.dissect(buffer, index, packet, parent)

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Message Length: SHORT
  index, message_length = nse_nseslbm_orderentry_nnfdirect_v2_7.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nse_nseslbm_orderentry_nnfdirect_v2_7.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.message_header, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Session Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_session_packet = {}

-- Calculate size of: Server Session Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_session_packet.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.checksum.size

  index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.message_header.size

  -- Calculate runtime size of Server Message Payload field
  local server_message_payload_offset = offset + index
  local server_message_payload_type = buffer(server_message_payload_offset - 40, 2):int()
  index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.server_message_payload.size(buffer, server_message_payload_offset, server_message_payload_type)

  return index
end

-- Display: Server Session Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_session_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Session Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_session_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Checksum: 16 Byte
  index, checksum = nse_nseslbm_orderentry_nnfdirect_v2_7.checksum.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nseslbm_orderentry_nnfdirect_v2_7.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 40, 2):int()

  -- Server Message Payload: Runtime Type with 40 branches
  index = nse_nseslbm_orderentry_nnfdirect_v2_7.server_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Server Session Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_session_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.server_session_packet, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.server_session_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.server_session_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.server_session_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Registration Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_registration_packet = {}

-- Calculate size of: Server Registration Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_registration_packet.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.registration_checksum.size

  index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.message_header.size

  -- Calculate runtime size of Server Message Payload field
  local server_message_payload_offset = offset + index
  local server_message_payload_type = buffer(server_message_payload_offset - 40, 2):int()
  index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.server_message_payload.size(buffer, server_message_payload_offset, server_message_payload_type)

  return index
end

-- Display: Server Registration Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_registration_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Registration Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_registration_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Registration Checksum: 16 Byte
  index, registration_checksum = nse_nseslbm_orderentry_nnfdirect_v2_7.registration_checksum.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nseslbm_orderentry_nnfdirect_v2_7.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 40, 2):int()

  -- Server Message Payload: Runtime Type with 40 branches
  index = nse_nseslbm_orderentry_nnfdirect_v2_7.server_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Server Registration Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_registration_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.server_registration_packet, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.server_registration_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.server_registration_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.server_registration_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Packet Body
nse_nseslbm_orderentry_nnfdirect_v2_7.server_packet_body = {}

-- Dispatch: Server Packet Body
nse_nseslbm_orderentry_nnfdirect_v2_7.server_packet_body.dispatch = {
  [23009] = nse_nseslbm_orderentry_nnfdirect_v2_7.server_registration_packet.dissect,
}

-- Dissect: Server Packet Body
nse_nseslbm_orderentry_nnfdirect_v2_7.server_packet_body.dissect = function(buffer, offset, packet, parent)
  local transaction_code = buffer(offset + 16, 2):int()
  local dissect = nse_nseslbm_orderentry_nnfdirect_v2_7.server_packet_body.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Server Session Packet
  return nse_nseslbm_orderentry_nnfdirect_v2_7.server_session_packet.dissect(buffer, offset, packet, parent)
end

-- Packet Header
nse_nseslbm_orderentry_nnfdirect_v2_7.packet_header = {}

-- Size: Packet Header
nse_nseslbm_orderentry_nnfdirect_v2_7.packet_header.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.packet_length.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.packet_sequence_number.size

-- Display: Packet Header
nse_nseslbm_orderentry_nnfdirect_v2_7.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nse_nseslbm_orderentry_nnfdirect_v2_7.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nse_nseslbm_orderentry_nnfdirect_v2_7.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = nse_nseslbm_orderentry_nnfdirect_v2_7.packet_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nse_nseslbm_orderentry_nnfdirect_v2_7.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.packet_header, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Direct Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_direct_packet = {}

-- Display: Server Direct Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_direct_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Direct Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_direct_packet.fields = function(buffer, offset, packet, parent, size_of_server_direct_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = nse_nseslbm_orderentry_nnfdirect_v2_7.packet_header.dissect(buffer, index, packet, parent)

  -- Server Packet Body: Runtime Type with 2 branches
  index = nse_nseslbm_orderentry_nnfdirect_v2_7.server_packet_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Direct Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_direct_packet.dissect = function(buffer, offset, packet, parent, size_of_server_direct_packet)
  local index = offset + size_of_server_direct_packet

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.server_direct_packet, buffer(offset, 0))
    local decoded, failure = pcall(nse_nseslbm_orderentry_nnfdirect_v2_7.server_direct_packet.fields, bounded, offset, packet, parent, size_of_server_direct_packet)
    if not decoded then
      undecoded(failure, parent, nse_nseslbm_orderentry_nnfdirect_v2_7.experts.undecoded, "Server Direct Packet does not decode within its "..size_of_server_direct_packet.." bytes")
    end
    parent:set_len(size_of_server_direct_packet)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.server_direct_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(nse_nseslbm_orderentry_nnfdirect_v2_7.server_direct_packet.fields, bounded, offset, packet, parent, size_of_server_direct_packet)
    if not decoded then
      undecoded(failure, parent, nse_nseslbm_orderentry_nnfdirect_v2_7.experts.undecoded, "Server Direct Packet does not decode within its "..size_of_server_direct_packet.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Server Direct Packet
local server_direct_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nseslbm_orderentry_nnfdirect_v2_7.packet_header.size then
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
nse_nseslbm_orderentry_nnfdirect_v2_7.server_packet = {}

-- Verify required size of Tcp packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nseslbm_orderentry_nnfdirect_v2_7.packet_header.size + 16 + nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_code.size
end

-- Dissect Server Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Direct Packet
  local end_of_payload = buffer:len()

  -- Server Direct Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_direct_packet = server_direct_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_direct_packet):tvb()
      index = nse_nseslbm_orderentry_nnfdirect_v2_7.server_direct_packet.dissect(frame, index, packet, parent, size_of_server_direct_packet)
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

-- Heartbeat Message
nse_nseslbm_orderentry_nnfdirect_v2_7.heartbeat_message = {}

-- Display: Heartbeat Message
nse_nseslbm_orderentry_nnfdirect_v2_7.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
nse_nseslbm_orderentry_nnfdirect_v2_7.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Box Sign On Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_request_message = {}

-- Size: Box Sign On Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_request_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_5.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.session_key.size

-- Display: Box Sign On Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Box Sign On Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 5: CHAR
  if show.padding then
    index, reserved_5 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_5.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_5.size
  end

  -- Session Key: CHAR
  index, session_key = nse_nseslbm_orderentry_nnfdirect_v2_7.session_key.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Box Sign On Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.box_sign_on_request_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Secure Box Registration Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.secure_box_registration_request_message = {}

-- Size: Secure Box Registration Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.secure_box_registration_request_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.size

-- Display: Secure Box Registration Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.secure_box_registration_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Secure Box Registration Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.secure_box_registration_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Secure Box Registration Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.secure_box_registration_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.secure_box_registration_request_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.secure_box_registration_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.secure_box_registration_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.secure_box_registration_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Gateway Router Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_request_message = {}

-- Size: Gateway Router Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_request_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler.size

-- Display: Gateway Router Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Router Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nseslbm_orderentry_nnfdirect_v2_7.box_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  if show.padding then
    index, filler = nse_nseslbm_orderentry_nnfdirect_v2_7.filler.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler.size
  end

  return index
end

-- Dissect: Gateway Router Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.gateway_router_request_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Modification Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_request_message = {}

-- Size: Trade Modification Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_request_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by.size

-- Display: Trade Modification Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Modification Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- L Fill Number: LONG
  index, l_fill_number = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number.dissect(buffer, index, packet, parent)

  -- L Fill Qty: LONG
  index, l_fill_qty = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty.dissect(buffer, index, packet, parent)

  -- L Fill Price: LONG
  index, l_fill_price = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.dissect(buffer, index, packet, parent)

  -- I Mkt Type: SHORT
  index, i_mkt_type = nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type.dissect(buffer, index, packet, parent)

  -- L New Volume: LONG
  index, l_new_volume = nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume.dissect(buffer, index, packet, parent)

  -- Buy Participant Id: CHAR
  index, buy_participant_id = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id.dissect(buffer, index, packet, parent)

  -- Sell Participant Id: CHAR
  index, sell_participant_id = nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id.dissect(buffer, index, packet, parent)

  -- Buy Broker Id: CHAR
  index, buy_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id.dissect(buffer, index, packet, parent)

  -- Sell Broker Id: CHAR
  index, sell_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Requested By: SHORT
  index, requested_by = nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Modification Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_modification_request_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancellation Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_request_message = {}

-- Size: Trade Cancellation Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_request_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by.size

-- Display: Trade Cancellation Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancellation Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- L Fill Number: LONG
  index, l_fill_number = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_number.dissect(buffer, index, packet, parent)

  -- L Fill Qty: LONG
  index, l_fill_qty = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_qty.dissect(buffer, index, packet, parent)

  -- L Fill Price: LONG
  index, l_fill_price = nse_nseslbm_orderentry_nnfdirect_v2_7.l_fill_price.dissect(buffer, index, packet, parent)

  -- I Mkt Type: SHORT
  index, i_mkt_type = nse_nseslbm_orderentry_nnfdirect_v2_7.i_mkt_type.dissect(buffer, index, packet, parent)

  -- L New Volume: LONG
  index, l_new_volume = nse_nseslbm_orderentry_nnfdirect_v2_7.l_new_volume.dissect(buffer, index, packet, parent)

  -- Buy Participant Id: CHAR
  index, buy_participant_id = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_participant_id.dissect(buffer, index, packet, parent)

  -- Sell Participant Id: CHAR
  index, sell_participant_id = nse_nseslbm_orderentry_nnfdirect_v2_7.sell_participant_id.dissect(buffer, index, packet, parent)

  -- Buy Broker Id: CHAR
  index, buy_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_broker_id.dissect(buffer, index, packet, parent)

  -- Sell Broker Id: CHAR
  index, sell_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.sell_broker_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Requested By: SHORT
  index, requested_by = nse_nseslbm_orderentry_nnfdirect_v2_7.requested_by.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.trade_cancellation_request_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_request_message = {}

-- Size: Order Cancellation Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_request_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Order Cancellation Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_cancellation_request_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_request_message = {}

-- Size: Order Modification Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_request_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Order Modification Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modification Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modification Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_modification_request_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Entry Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_entry_request_message = {}

-- Size: Order Entry Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_entry_request_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.size

-- Display: Order Entry Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_entry_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Entry Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_entry_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseslbm_orderentry_nnfdirect_v2_7.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_orderentry_nnfdirect_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Mod Cxl By: CHAR
  index, mod_cxl_by = nse_nseslbm_orderentry_nnfdirect_v2_7.mod_cxl_by.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.filler_9.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseslbm_orderentry_nnfdirect_v2_7.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_4.size
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_orderentry_nnfdirect_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.op_broker_id.dissect(buffer, index, packet, parent)

  -- Suspended: CHAR
  index, suspended = nse_nseslbm_orderentry_nnfdirect_v2_7.suspended.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseslbm_orderentry_nnfdirect_v2_7.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseslbm_orderentry_nnfdirect_v2_7.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_orderentry_nnfdirect_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseslbm_orderentry_nnfdirect_v2_7.buy_sell.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining: LONG
  index, total_vol_remaining = nse_nseslbm_orderentry_nnfdirect_v2_7.total_vol_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseslbm_orderentry_nnfdirect_v2_7.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseslbm_orderentry_nnfdirect_v2_7.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_orderentry_nnfdirect_v2_7.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseslbm_orderentry_nnfdirect_v2_7.trigger_price.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_orderentry_nnfdirect_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.entry_date_time.dissect(buffer, index, packet, parent)

  -- Min Fill Aon: LONG
  index, min_fill_aon = nse_nseslbm_orderentry_nnfdirect_v2_7.min_fill_aon.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseslbm_orderentry_nnfdirect_v2_7.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseslbm_orderentry_nnfdirect_v2_7.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Oe Remarks: CHAR
  index, oe_remarks = nse_nseslbm_orderentry_nnfdirect_v2_7.oe_remarks.dissect(buffer, index, packet, parent)

  -- Transaction Id: LONG
  index, transaction_id = nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_id.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseslbm_orderentry_nnfdirect_v2_7.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client: SHORT
  index, pro_client = nse_nseslbm_orderentry_nnfdirect_v2_7.pro_client.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_orderentry_nnfdirect_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseslbm_orderentry_nnfdirect_v2_7.nnf_field.dissect(buffer, index, packet, parent)

  -- Exec Time Stamp: DOUBLE
  index, exec_time_stamp = nse_nseslbm_orderentry_nnfdirect_v2_7.exec_time_stamp.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_2.size
  end

  -- Order Type: CHAR
  index, order_type = nse_nseslbm_orderentry_nnfdirect_v2_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Entry Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.order_entry_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.order_entry_request_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.order_entry_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.order_entry_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.order_entry_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Logoff Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logoff_request_message = {}

-- Display: Logoff Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logoff_request_message.display = function(packet, parent, length)
  return "Logoff Request Message"
end


-- Dissect: Logoff Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logoff_request_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.logoff_request_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Message Download Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_request_message = {}

-- Size: Message Download Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_request_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.sequence_number.size

-- Display: Message Download Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Download Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: DOUBLE
  index, sequence_number = nse_nseslbm_orderentry_nnfdirect_v2_7.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Download Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.message_download_request_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Update Local Database Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_request_message = {}

-- Size: Update Local Database Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_request_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_update_security_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_update_participant_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.request_for_open_orders.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.normal_market_status.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.odd_lot_market_status.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.spot_market_status.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.auction_market_status.size

-- Display: Update Local Database Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Security Time: LONG
  index, last_update_security_time = nse_nseslbm_orderentry_nnfdirect_v2_7.last_update_security_time.dissect(buffer, index, packet, parent)

  -- Last Update Participant Time: LONG
  index, last_update_participant_time = nse_nseslbm_orderentry_nnfdirect_v2_7.last_update_participant_time.dissect(buffer, index, packet, parent)

  -- Request For Open Orders: CHAR
  index, request_for_open_orders = nse_nseslbm_orderentry_nnfdirect_v2_7.request_for_open_orders.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Normal Market Status: SHORT
  index, normal_market_status = nse_nseslbm_orderentry_nnfdirect_v2_7.normal_market_status.dissect(buffer, index, packet, parent)

  -- Odd Lot Market Status: SHORT
  index, odd_lot_market_status = nse_nseslbm_orderentry_nnfdirect_v2_7.odd_lot_market_status.dissect(buffer, index, packet, parent)

  -- Spot Market Status: SHORT
  index, spot_market_status = nse_nseslbm_orderentry_nnfdirect_v2_7.spot_market_status.dissect(buffer, index, packet, parent)

  -- Auction Market Status: SHORT
  index, auction_market_status = nse_nseslbm_orderentry_nnfdirect_v2_7.auction_market_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Update Local Database Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.update_local_database_request_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_request_message.fields(buffer, offset, packet, parent)
  end
end

-- System Information Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.system_information_request_message = {}

-- Display: System Information Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.system_information_request_message.display = function(packet, parent, length)
  return "System Information Request Message"
end


-- Dissect: System Information Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.system_information_request_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseslbm_orderentry_nnfdirect_v2_7.system_information_request_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logon Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_message = {}

-- Size: Logon Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_message.size =
  nse_nseslbm_orderentry_nnfdirect_v2_7.user_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.password.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.new_password.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.trader_name.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.last_password_change_date_time.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.version_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_56.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.user_type.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.sequence_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.workstation_number.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_status.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.show_index.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.broker_eligibility_per_market.size + 
  nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_broker_name.size

-- Display: Logon Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseslbm_orderentry_nnfdirect_v2_7.user_id.dissect(buffer, index, packet, parent)

  -- Password: CHAR
  index, password = nse_nseslbm_orderentry_nnfdirect_v2_7.password.dissect(buffer, index, packet, parent)

  -- New Password: CHAR
  index, new_password = nse_nseslbm_orderentry_nnfdirect_v2_7.new_password.dissect(buffer, index, packet, parent)

  -- Trader Name: CHAR
  index, trader_name = nse_nseslbm_orderentry_nnfdirect_v2_7.trader_name.dissect(buffer, index, packet, parent)

  -- Last Password Change Date Time: LONG
  index, last_password_change_date_time = nse_nseslbm_orderentry_nnfdirect_v2_7.last_password_change_date_time.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_1.size
  end

  -- Branch Id: SHORT
  index, branch_id = nse_nseslbm_orderentry_nnfdirect_v2_7.branch_id.dissect(buffer, index, packet, parent)

  -- Version Number: LONG
  index, version_number = nse_nseslbm_orderentry_nnfdirect_v2_7.version_number.dissect(buffer, index, packet, parent)

  -- Reserved 56: CHAR
  if show.padding then
    index, reserved_56 = nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_56.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.reserved_56.size
  end

  -- User Type: SHORT
  index, user_type = nse_nseslbm_orderentry_nnfdirect_v2_7.user_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: DOUBLE
  index, sequence_number = nse_nseslbm_orderentry_nnfdirect_v2_7.sequence_number.dissect(buffer, index, packet, parent)

  -- Workstation Number: CHAR
  index, workstation_number = nse_nseslbm_orderentry_nnfdirect_v2_7.workstation_number.dissect(buffer, index, packet, parent)

  -- Broker Status: CHAR
  index, broker_status = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_status.dissect(buffer, index, packet, parent)

  -- Show Index: CHAR
  index, show_index = nse_nseslbm_orderentry_nnfdirect_v2_7.show_index.dissect(buffer, index, packet, parent)

  -- Broker Eligibility Per Market: Struct of 5 fields
  index, broker_eligibility_per_market = nse_nseslbm_orderentry_nnfdirect_v2_7.broker_eligibility_per_market.dissect(buffer, index, packet, parent)

  -- Logon Request Broker Name: CHAR
  index, logon_request_broker_name = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_broker_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Request Message
nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.logon_request_message, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Message Payload
nse_nseslbm_orderentry_nnfdirect_v2_7.client_message_payload = {}

-- Dispatch: Client Message Payload
nse_nseslbm_orderentry_nnfdirect_v2_7.client_message_payload.dispatch = {
  [2300] = nse_nseslbm_orderentry_nnfdirect_v2_7.logon_request_message.dissect,
  [1600] = nse_nseslbm_orderentry_nnfdirect_v2_7.system_information_request_message.dissect,
  [7300] = nse_nseslbm_orderentry_nnfdirect_v2_7.update_local_database_request_message.dissect,
  [7000] = nse_nseslbm_orderentry_nnfdirect_v2_7.message_download_request_message.dissect,
  [2320] = nse_nseslbm_orderentry_nnfdirect_v2_7.logoff_request_message.dissect,
  [2000] = nse_nseslbm_orderentry_nnfdirect_v2_7.order_entry_request_message.dissect,
  [2040] = nse_nseslbm_orderentry_nnfdirect_v2_7.order_modification_request_message.dissect,
  [2070] = nse_nseslbm_orderentry_nnfdirect_v2_7.order_cancellation_request_message.dissect,
  [5440] = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_cancellation_request_message.dissect,
  [5445] = nse_nseslbm_orderentry_nnfdirect_v2_7.trade_modification_request_message.dissect,
  [2400] = nse_nseslbm_orderentry_nnfdirect_v2_7.gateway_router_request_message.dissect,
  [23008] = nse_nseslbm_orderentry_nnfdirect_v2_7.secure_box_registration_request_message.dissect,
  [23000] = nse_nseslbm_orderentry_nnfdirect_v2_7.box_sign_on_request_message.dissect,
  [23506] = nse_nseslbm_orderentry_nnfdirect_v2_7.heartbeat_message.dissect,
}

-- Dissect: Client Message Payload
nse_nseslbm_orderentry_nnfdirect_v2_7.client_message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nseslbm_orderentry_nnfdirect_v2_7.client_message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Session Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_session_packet = {}

-- Calculate size of: Client Session Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_session_packet.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.checksum.size

  index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.message_header.size

  -- Calculate runtime size of Client Message Payload field
  local client_message_payload_offset = offset + index
  local client_message_payload_type = buffer(client_message_payload_offset - 40, 2):int()
  index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.client_message_payload.size(buffer, client_message_payload_offset, client_message_payload_type)

  return index
end

-- Display: Client Session Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_session_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Session Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_session_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Checksum: 16 Byte
  index, checksum = nse_nseslbm_orderentry_nnfdirect_v2_7.checksum.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nseslbm_orderentry_nnfdirect_v2_7.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 40, 2):int()

  -- Client Message Payload: Runtime Type with 14 branches
  index = nse_nseslbm_orderentry_nnfdirect_v2_7.client_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Client Session Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_session_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.client_session_packet, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.client_session_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.client_session_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.client_session_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Registration Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_registration_packet = {}

-- Calculate size of: Client Registration Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_registration_packet.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.registration_checksum.size

  index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.message_header.size

  -- Calculate runtime size of Client Message Payload field
  local client_message_payload_offset = offset + index
  local client_message_payload_type = buffer(client_message_payload_offset - 40, 2):int()
  index = index + nse_nseslbm_orderentry_nnfdirect_v2_7.client_message_payload.size(buffer, client_message_payload_offset, client_message_payload_type)

  return index
end

-- Display: Client Registration Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_registration_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Registration Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_registration_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Registration Checksum: 16 Byte
  index, registration_checksum = nse_nseslbm_orderentry_nnfdirect_v2_7.registration_checksum.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nseslbm_orderentry_nnfdirect_v2_7.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 40, 2):int()

  -- Client Message Payload: Runtime Type with 14 branches
  index = nse_nseslbm_orderentry_nnfdirect_v2_7.client_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Client Registration Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_registration_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.client_registration_packet, buffer(offset, 0))
    local index = nse_nseslbm_orderentry_nnfdirect_v2_7.client_registration_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.client_registration_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_orderentry_nnfdirect_v2_7.client_registration_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Packet Body
nse_nseslbm_orderentry_nnfdirect_v2_7.client_packet_body = {}

-- Dispatch: Client Packet Body
nse_nseslbm_orderentry_nnfdirect_v2_7.client_packet_body.dispatch = {
  [23008] = nse_nseslbm_orderentry_nnfdirect_v2_7.client_registration_packet.dissect,
}

-- Dissect: Client Packet Body
nse_nseslbm_orderentry_nnfdirect_v2_7.client_packet_body.dissect = function(buffer, offset, packet, parent)
  local transaction_code = buffer(offset + 16, 2):int()
  local dissect = nse_nseslbm_orderentry_nnfdirect_v2_7.client_packet_body.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Client Session Packet
  return nse_nseslbm_orderentry_nnfdirect_v2_7.client_session_packet.dissect(buffer, offset, packet, parent)
end

-- Client Direct Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_direct_packet = {}

-- Display: Client Direct Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_direct_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Direct Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_direct_packet.fields = function(buffer, offset, packet, parent, size_of_client_direct_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = nse_nseslbm_orderentry_nnfdirect_v2_7.packet_header.dissect(buffer, index, packet, parent)

  -- Client Packet Body: Runtime Type with 2 branches
  index = nse_nseslbm_orderentry_nnfdirect_v2_7.client_packet_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Direct Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_direct_packet.dissect = function(buffer, offset, packet, parent, size_of_client_direct_packet)
  local index = offset + size_of_client_direct_packet

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7.fields.client_direct_packet, buffer(offset, 0))
    local decoded, failure = pcall(nse_nseslbm_orderentry_nnfdirect_v2_7.client_direct_packet.fields, bounded, offset, packet, parent, size_of_client_direct_packet)
    if not decoded then
      undecoded(failure, parent, nse_nseslbm_orderentry_nnfdirect_v2_7.experts.undecoded, "Client Direct Packet does not decode within its "..size_of_client_direct_packet.." bytes")
    end
    parent:set_len(size_of_client_direct_packet)
    local display = nse_nseslbm_orderentry_nnfdirect_v2_7.client_direct_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(nse_nseslbm_orderentry_nnfdirect_v2_7.client_direct_packet.fields, bounded, offset, packet, parent, size_of_client_direct_packet)
    if not decoded then
      undecoded(failure, parent, nse_nseslbm_orderentry_nnfdirect_v2_7.experts.undecoded, "Client Direct Packet does not decode within its "..size_of_client_direct_packet.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Client Direct Packet
local client_direct_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nseslbm_orderentry_nnfdirect_v2_7.packet_header.size then
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
nse_nseslbm_orderentry_nnfdirect_v2_7.client_packet = {}

-- Verify required size of Tcp packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nseslbm_orderentry_nnfdirect_v2_7.packet_header.size + 16 + nse_nseslbm_orderentry_nnfdirect_v2_7.transaction_code.size
end

-- Dissect Client Packet
nse_nseslbm_orderentry_nnfdirect_v2_7.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Direct Packet
  local end_of_payload = buffer:len()

  -- Client Direct Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_direct_packet = client_direct_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_direct_packet):tvb()
      index = nse_nseslbm_orderentry_nnfdirect_v2_7.client_direct_packet.dissect(frame, index, packet, parent, size_of_client_direct_packet)
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
function omi_nse_nseslbm_orderentry_nnfdirect_v2_7.init()
end

-- Connection roles for Nse NseSlbm OrderEntry NnfDirect 2.7: Client is the initiator, Server is the acceptor
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
nse_nseslbm_orderentry_nnfdirect_v2_7.role = function(packet)
  if omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.acceptor_port

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

  if omi_nse_nseslbm_orderentry_nnfdirect_v2_7.prefs.swap_sides then
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
nse_nseslbm_orderentry_nnfdirect_v2_7.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nse NseSlbm OrderEntry NnfDirect 2.7
function omi_nse_nseslbm_orderentry_nnfdirect_v2_7.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nseslbm_orderentry_nnfdirect_v2_7.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nseslbm_orderentry_nnfdirect_v2_7, buffer(), omi_nse_nseslbm_orderentry_nnfdirect_v2_7.description, "("..buffer:len().." Bytes)")
  local role = nse_nseslbm_orderentry_nnfdirect_v2_7.role(packet)

  if role == "initiator" then
    return nse_nseslbm_orderentry_nnfdirect_v2_7.client_packet.dissect(buffer, packet, protocol)
  end

  return nse_nseslbm_orderentry_nnfdirect_v2_7.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nse_nseslbm_orderentry_nnfdirect_v2_7.client_packet.fingerprint = function(buffer)
  if buffer:len() < 24 then
    return false
  end

  local transaction_code = buffer(22, 2):int()

  -- Client Registration Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if transaction_code == 23008 then
    if buffer:len() < 24 then
      return false
    end

    local transaction_code = buffer(22, 2):int()

    -- Logon Request Message
    if transaction_code == 2300 then
      return true
    end

    -- System Information Request Message
    if transaction_code == 1600 then
      return true
    end

    -- Update Local Database Request Message
    if transaction_code == 7300 then
      return true
    end

    -- Message Download Request Message
    if transaction_code == 7000 then
      return true
    end

    -- Logoff Request Message
    if transaction_code == 2320 then
      return true
    end

    -- Order Entry Request Message
    if transaction_code == 2000 then
      return true
    end

    -- Order Modification Request Message
    if transaction_code == 2040 then
      return true
    end

    -- Order Cancellation Request Message
    if transaction_code == 2070 then
      return true
    end

    -- Trade Cancellation Request Message
    if transaction_code == 5440 then
      return true
    end

    -- Trade Modification Request Message
    if transaction_code == 5445 then
      return true
    end

    -- Gateway Router Request Message
    if transaction_code == 2400 then
      return true
    end

    -- Secure Box Registration Request Message
    if transaction_code == 23008 then
      return true
    end

    -- Box Sign On Request Message
    if transaction_code == 23000 then
      return true
    end

    -- Heartbeat Message
    if transaction_code == 23506 then
      return true
    end

    return false
  end

  -- Client Session Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if buffer:len() < 24 then
    return false
  end

  local transaction_code = buffer(22, 2):int()

  -- Logon Request Message
  if transaction_code == 2300 then
    return true
  end

  -- System Information Request Message
  if transaction_code == 1600 then
    return true
  end

  -- Update Local Database Request Message
  if transaction_code == 7300 then
    return true
  end

  -- Message Download Request Message
  if transaction_code == 7000 then
    return true
  end

  -- Logoff Request Message
  if transaction_code == 2320 then
    return true
  end

  -- Order Entry Request Message
  if transaction_code == 2000 then
    return true
  end

  -- Order Modification Request Message
  if transaction_code == 2040 then
    return true
  end

  -- Order Cancellation Request Message
  if transaction_code == 2070 then
    return true
  end

  -- Trade Cancellation Request Message
  if transaction_code == 5440 then
    return true
  end

  -- Trade Modification Request Message
  if transaction_code == 5445 then
    return true
  end

  -- Gateway Router Request Message
  if transaction_code == 2400 then
    return true
  end

  -- Secure Box Registration Request Message
  if transaction_code == 23008 then
    return true
  end

  -- Box Sign On Request Message
  if transaction_code == 23000 then
    return true
  end

  -- Heartbeat Message
  if transaction_code == 23506 then
    return true
  end


  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nse_nseslbm_orderentry_nnfdirect_v2_7.server_packet.fingerprint = function(buffer)
  if buffer:len() < 24 then
    return false
  end

  local transaction_code = buffer(22, 2):int()

  -- Server Registration Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if transaction_code == 23009 then
    if buffer:len() < 24 then
      return false
    end

    local transaction_code = buffer(22, 2):int()

    -- Logon Response Message
    if transaction_code == 2301 then
      return true
    end

    -- System Information Response Message
    if transaction_code == 1601 then
      return true
    end

    -- Partial System Information Response Message
    if transaction_code == 7321 then
      return true
    end

    -- Update Local Database Header Message
    if transaction_code == 7307 then
      return true
    end

    -- Update Local Database Data Message
    if transaction_code == 7304 then
      return true
    end

    -- Update Local Database Trailer Message
    if transaction_code == 7308 then
      return true
    end

    -- Message Download Header Message
    if transaction_code == 7011 then
      return true
    end

    -- Message Download Data Message
    if transaction_code == 7021 then
      return true
    end

    -- Message Download Trailer Message
    if transaction_code == 7031 then
      return true
    end

    -- Logoff Confirmation Response Message
    if transaction_code == 2321 then
      return true
    end

    -- Board Lot Out Message
    if transaction_code == 2001 then
      return true
    end

    -- Order Confirmation Response Message
    if transaction_code == 2073 then
      return true
    end

    -- Market Price Confirmation Response Message
    if transaction_code == 2012 then
      return true
    end

    -- Order Freeze Response Message
    if transaction_code == 2170 then
      return true
    end

    -- Order Error Response Message
    if transaction_code == 2231 then
      return true
    end

    -- Order Modification Response Message
    if transaction_code == 2041 then
      return true
    end

    -- Order Modification Confirmation Response Message
    if transaction_code == 2074 then
      return true
    end

    -- Order Modification Error Response Message
    if transaction_code == 2042 then
      return true
    end

    -- Order Cancellation Response Message
    if transaction_code == 2071 then
      return true
    end

    -- Order Cancellation Confirmation Response Message
    if transaction_code == 2075 then
      return true
    end

    -- Order Cancellation Error Response Message
    if transaction_code == 2072 then
      return true
    end

    -- Cancellation Of Orders In Batch Message
    if transaction_code == 9002 then
      return true
    end

    -- Negotiated Order Entered By Counter Party Message
    if transaction_code == 2009 then
      return true
    end

    -- Negotiated Order To Regular Lot Message
    if transaction_code == 2008 then
      return true
    end

    -- Cancel Negotiated Order Message
    if transaction_code == 2076 then
      return true
    end

    -- Trade Cancellation Requested Response Message
    if transaction_code == 5441 then
      return true
    end

    -- Trade Cancellation Error Message
    if transaction_code == 2223 then
      return true
    end

    -- Trade Modification Requested Response Message
    if transaction_code == 5446 then
      return true
    end

    -- Trade Confirmation Message
    if transaction_code == 2222 then
      return true
    end

    -- Stop Loss Order Triggering Message
    if transaction_code == 2212 then
      return true
    end

    -- Trade Cancellation Confirmation Response Message
    if transaction_code == 2282 then
      return true
    end

    -- Trade Cancellation Rejection Message
    if transaction_code == 2286 then
      return true
    end

    -- Trade Modification Confirmation Message
    if transaction_code == 2287 then
      return true
    end

    -- Trade Modification Rejection Message
    if transaction_code == 2288 then
      return true
    end

    -- Control Message To Trader Message
    if transaction_code == 5295 then
      return true
    end

    -- Error Response Message
    if transaction_code == 2302 then
      return true
    end

    -- Gateway Router Response Message
    if transaction_code == 2401 then
      return true
    end

    -- Secure Box Registration Response Message
    if transaction_code == 23009 then
      return true
    end

    -- Box Sign On Response Message
    if transaction_code == 23001 then
      return true
    end

    -- Box Sign Off Message
    if transaction_code == 20322 then
      return true
    end

    return false
  end

  -- Server Session Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if buffer:len() < 24 then
    return false
  end

  local transaction_code = buffer(22, 2):int()

  -- Logon Response Message
  if transaction_code == 2301 then
    return true
  end

  -- System Information Response Message
  if transaction_code == 1601 then
    return true
  end

  -- Partial System Information Response Message
  if transaction_code == 7321 then
    return true
  end

  -- Update Local Database Header Message
  if transaction_code == 7307 then
    return true
  end

  -- Update Local Database Data Message
  if transaction_code == 7304 then
    return true
  end

  -- Update Local Database Trailer Message
  if transaction_code == 7308 then
    return true
  end

  -- Message Download Header Message
  if transaction_code == 7011 then
    return true
  end

  -- Message Download Data Message
  if transaction_code == 7021 then
    return true
  end

  -- Message Download Trailer Message
  if transaction_code == 7031 then
    return true
  end

  -- Logoff Confirmation Response Message
  if transaction_code == 2321 then
    return true
  end

  -- Board Lot Out Message
  if transaction_code == 2001 then
    return true
  end

  -- Order Confirmation Response Message
  if transaction_code == 2073 then
    return true
  end

  -- Market Price Confirmation Response Message
  if transaction_code == 2012 then
    return true
  end

  -- Order Freeze Response Message
  if transaction_code == 2170 then
    return true
  end

  -- Order Error Response Message
  if transaction_code == 2231 then
    return true
  end

  -- Order Modification Response Message
  if transaction_code == 2041 then
    return true
  end

  -- Order Modification Confirmation Response Message
  if transaction_code == 2074 then
    return true
  end

  -- Order Modification Error Response Message
  if transaction_code == 2042 then
    return true
  end

  -- Order Cancellation Response Message
  if transaction_code == 2071 then
    return true
  end

  -- Order Cancellation Confirmation Response Message
  if transaction_code == 2075 then
    return true
  end

  -- Order Cancellation Error Response Message
  if transaction_code == 2072 then
    return true
  end

  -- Cancellation Of Orders In Batch Message
  if transaction_code == 9002 then
    return true
  end

  -- Negotiated Order Entered By Counter Party Message
  if transaction_code == 2009 then
    return true
  end

  -- Negotiated Order To Regular Lot Message
  if transaction_code == 2008 then
    return true
  end

  -- Cancel Negotiated Order Message
  if transaction_code == 2076 then
    return true
  end

  -- Trade Cancellation Requested Response Message
  if transaction_code == 5441 then
    return true
  end

  -- Trade Cancellation Error Message
  if transaction_code == 2223 then
    return true
  end

  -- Trade Modification Requested Response Message
  if transaction_code == 5446 then
    return true
  end

  -- Trade Confirmation Message
  if transaction_code == 2222 then
    return true
  end

  -- Stop Loss Order Triggering Message
  if transaction_code == 2212 then
    return true
  end

  -- Trade Cancellation Confirmation Response Message
  if transaction_code == 2282 then
    return true
  end

  -- Trade Cancellation Rejection Message
  if transaction_code == 2286 then
    return true
  end

  -- Trade Modification Confirmation Message
  if transaction_code == 2287 then
    return true
  end

  -- Trade Modification Rejection Message
  if transaction_code == 2288 then
    return true
  end

  -- Control Message To Trader Message
  if transaction_code == 5295 then
    return true
  end

  -- Error Response Message
  if transaction_code == 2302 then
    return true
  end

  -- Gateway Router Response Message
  if transaction_code == 2401 then
    return true
  end

  -- Secure Box Registration Response Message
  if transaction_code == 23009 then
    return true
  end

  -- Box Sign On Response Message
  if transaction_code == 23001 then
    return true
  end

  -- Box Sign Off Message
  if transaction_code == 20322 then
    return true
  end


  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseSlbm OrderEntry NnfDirect 2.7 (Tcp)
local function omi_nse_nseslbm_orderentry_nnfdirect_v2_7_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nseslbm_orderentry_nnfdirect_v2_7.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nse_nseslbm_orderentry_nnfdirect_v2_7.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nseslbm_orderentry_nnfdirect_v2_7
  omi_nse_nseslbm_orderentry_nnfdirect_v2_7.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseSlbm OrderEntry NnfDirect 2.7 (Tcp)
local function omi_nse_nseslbm_orderentry_nnfdirect_v2_7_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nseslbm_orderentry_nnfdirect_v2_7.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nse_nseslbm_orderentry_nnfdirect_v2_7.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nseslbm_orderentry_nnfdirect_v2_7
  omi_nse_nseslbm_orderentry_nnfdirect_v2_7.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseSlbm OrderEntry NnfDirect 2.7 (Tcp): apply the heuristic of the sender's connection role
local function omi_nse_nseslbm_orderentry_nnfdirect_v2_7_tcp_heuristic(buffer, packet, parent)
  local role = nse_nseslbm_orderentry_nnfdirect_v2_7.role(packet)
  local initiator = omi_nse_nseslbm_orderentry_nnfdirect_v2_7_tcp_initiator_heuristic
  local acceptor = omi_nse_nseslbm_orderentry_nnfdirect_v2_7_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nse_nseslbm_orderentry_nnfdirect_v2_7.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nse_nseslbm_orderentry_nnfdirect_v2_7.swap(packet)

  return false
end

-- Register Heuristics for Nse NseSlbm OrderEntry NnfDirect 2.7
omi_nse_nseslbm_orderentry_nnfdirect_v2_7:register_heuristic("tcp", omi_nse_nseslbm_orderentry_nnfdirect_v2_7_tcp_heuristic)

-- Register Nse NseSlbm OrderEntry NnfDirect 2.7 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nse_nseslbm_orderentry_nnfdirect_v2_7)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 2.7
--   Date: Sunday, November 10, 2024
--   Specification: Proto_SLBM_NNF_PROTOCOL_2.7.pdf
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
