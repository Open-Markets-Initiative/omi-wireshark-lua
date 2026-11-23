-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseIx DropCopy NnfDirect 1.6 Protocol
local omi_nse_nseix_dropcopy_nnfdirect_v1_6 = Proto("Omi.Nse.NseIx.DropCopy.NnfDirect.v1.6", "Nse NseIx DropCopy NnfDirect 1.6")

-- Protocol table
local nse_nseix_dropcopy_nnfdirect_v1_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseIx DropCopy NnfDirect 1.6 Fields
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.account_num = ProtoField.new("Account Num", "nse.nseix.dropcopy.nnfdirect.v1.6.accountnum", ftypes.STRING, nil, nil, nil, "Account number or client code")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.account_number = ProtoField.new("Account Number", "nse.nseix.dropcopy.nnfdirect.v1.6.accountnumber", ftypes.STRING, nil, nil, nil, "Trader account number when the order is entered on behalf of a trader, blank for a broker's own order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.account_number_1 = ProtoField.new("Account Number 1", "nse.nseix.dropcopy.nnfdirect.v1.6.accountnumber1", ftypes.STRING, nil, nil, nil, "Trader account number when the order is entered on behalf of a trader, blank for a broker's own order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.activity_time_utc = ProtoField.new("Activity Time", "nse.nseix.dropcopy.nnfdirect.v1.6.activitytime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the activity took place")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.activity_time = ProtoField.new("Activity Time", "nse.nseix.dropcopy.nnfdirect.v1.6.activitytime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the activity took place")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.activity_type = ProtoField.new("Activity Type", "nse.nseix.dropcopy.nnfdirect.v1.6.activitytype", ftypes.STRING, nil, nil, nil, "Type of activity being confirmed")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.additional_order_flags = ProtoField.new("Additional Order Flags", "nse.nseix.dropcopy.nnfdirect.v1.6.additionalorderflags", ftypes.STRING, nil, nil, nil, "Further attributes of the order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.additional_order_flags_reserved_1 = ProtoField.new("Additional Order Flags Reserved 1", "nse.nseix.dropcopy.nnfdirect.v1.6.additionalorderflagsreserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.additional_order_flags_reserved_3 = ProtoField.new("Additional Order Flags Reserved 3", "nse.nseix.dropcopy.nnfdirect.v1.6.additionalorderflagsreserved3", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.additional_order_flags_reserved_4 = ProtoField.new("Additional Order Flags Reserved 4", "nse.nseix.dropcopy.nnfdirect.v1.6.additionalorderflagsreserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.additional_order_flags_reserved_78 = ProtoField.new("Additional Order Flags Reserved 78", "nse.nseix.dropcopy.nnfdirect.v1.6.additionalorderflagsreserved78", ftypes.UINT8, nil, base.DEC, 0xC0, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.alpha_char = ProtoField.new("Alpha Char", "nse.nseix.dropcopy.nnfdirect.v1.6.alphachar", ftypes.STRING, nil, nil, nil, "First two characters of Symbol when the message carries one")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.aon = ProtoField.new("Aon", "nse.nseix.dropcopy.nnfdirect.v1.6.aon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100, "All or none")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.ato = ProtoField.new("Ato", "nse.nseix.dropcopy.nnfdirect.v1.6.ato", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Market order in preopen")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.book_type = ProtoField.new("Book Type", "nse.nseix.dropcopy.nnfdirect.v1.6.booktype", ftypes.INT16, nil, nil, nil, "Book the order belongs to")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.book_type_1 = ProtoField.new("Book Type 1", "nse.nseix.dropcopy.nnfdirect.v1.6.booktype1", ftypes.INT16, nil, nil, nil, "Book type, regular lot or special terms")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.branch_id = ProtoField.new("Branch Id", "nse.nseix.dropcopy.nnfdirect.v1.6.branchid", ftypes.INT16, nil, nil, nil, "Branch number the broker belongs to")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.branch_id_1 = ProtoField.new("Branch Id 1", "nse.nseix.dropcopy.nnfdirect.v1.6.branchid1", ftypes.INT16, nil, nil, nil, "Branch number the broker belongs to")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.broker_id = ProtoField.new("Broker Id", "nse.nseix.dropcopy.nnfdirect.v1.6.brokerid", ftypes.STRING, nil, nil, nil, "Trading member Id")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.broker_id_1 = ProtoField.new("Broker Id 1", "nse.nseix.dropcopy.nnfdirect.v1.6.brokerid1", ftypes.STRING, nil, nil, nil, "Trading member Id")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.buy_sell = ProtoField.new("Buy Sell", "nse.nseix.dropcopy.nnfdirect.v1.6.buysell", ftypes.INT16, nil, nil, nil, "Whether the order taking part is a buy or a sell")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.buy_sell_1 = ProtoField.new("Buy Sell 1", "nse.nseix.dropcopy.nnfdirect.v1.6.buysell1", ftypes.INT16, nil, nil, nil, "Whether the first leg is a buy or a sell")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.buy_sell_2 = ProtoField.new("Buy Sell 2", "nse.nseix.dropcopy.nnfdirect.v1.6.buysell2", ftypes.INT16, nil, nil, nil, "Whether the leg is a buy or a sell")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nse.nseix.dropcopy.nnfdirect.v1.6.buysellindicator", ftypes.INT16, nil, nil, nil, "Whether the order is a buy or a sell")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.c_ord_filler = ProtoField.new("C Ord Filler", "nse.nseix.dropcopy.nnfdirect.v1.6.cordfiller", ftypes.STRING, nil, nil, nil, "cOrdFiller")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.ca_level = ProtoField.new("Ca Level", "nse.nseix.dropcopy.nnfdirect.v1.6.calevel", ftypes.INT16, nil, nil, nil, "Corporate action level, which should be zero")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.checksum = ProtoField.new("Checksum", "nse.nseix.dropcopy.nnfdirect.v1.6.checksum", ftypes.BYTES, nil, nil, nil, "Md5 digest of the plain message data, or the Gcm authentication tag under the new encryption")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.client_registration_packet = ProtoField.new("Client Registration Packet", "nse.nseix.dropcopy.nnfdirect.v1.6.clientregistrationpacket", ftypes.STRING, nil, nil, nil, "Secure Box Registration Request, the firm's first packet on the connection, never encrypted")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.client_session_packet = ProtoField.new("Client Session Packet", "nse.nseix.dropcopy.nnfdirect.v1.6.clientsessionpacket", ftypes.STRING, nil, nil, nil, "Every packet the firm sends after its registration")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.closeout_flag = ProtoField.new("Closeout Flag", "nse.nseix.dropcopy.nnfdirect.v1.6.closeoutflag", ftypes.STRING, nil, nil, nil, "Set to blank")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.col = ProtoField.new("Col", "nse.nseix.dropcopy.nnfdirect.v1.6.col", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "Cancel on logoff")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.competitor_period = ProtoField.new("Competitor Period", "nse.nseix.dropcopy.nnfdirect.v1.6.competitorperiod", ftypes.INT16, nil, nil, nil, "Always zero")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.competitor_period_1 = ProtoField.new("Competitor Period 1", "nse.nseix.dropcopy.nnfdirect.v1.6.competitorperiod1", ftypes.INT16, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.contract_desc = ProtoField.new("Contract Desc", "nse.nseix.dropcopy.nnfdirect.v1.6.contractdesc", ftypes.STRING, nil, nil, nil, "CONTRACT_DESC")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.counter_party_broker_id = ProtoField.new("Counter Party Broker Id", "nse.nseix.dropcopy.nnfdirect.v1.6.counterpartybrokerid", ftypes.STRING, nil, nil, nil, "Counter party broker code for a negotiated trade order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.day = ProtoField.new("Day", "nse.nseix.dropcopy.nnfdirect.v1.6.day", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800, "Day order, the default attribute")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.deleted = ProtoField.new("Deleted", "nse.nseix.dropcopy.nnfdirect.v1.6.deleted", ftypes.STRING, nil, nil, nil, "The host sends N")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_vol = ProtoField.new("Disclosed Vol", "nse.nseix.dropcopy.nnfdirect.v1.6.disclosedvol", ftypes.INT32, nil, nil, nil, "Quantity to be disclosed to the market")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_vol_1 = ProtoField.new("Disclosed Vol 1", "nse.nseix.dropcopy.nnfdirect.v1.6.disclosedvol1", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_vol_2 = ProtoField.new("Disclosed Vol 2", "nse.nseix.dropcopy.nnfdirect.v1.6.disclosedvol2", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_vol_remaining = ProtoField.new("Disclosed Vol Remaining", "nse.nseix.dropcopy.nnfdirect.v1.6.disclosedvolremaining", ftypes.INT32, nil, nil, nil, "Disclosed volume remaining after the trades")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_vol_remaining_1 = ProtoField.new("Disclosed Vol Remaining 1", "nse.nseix.dropcopy.nnfdirect.v1.6.disclosedvolremaining1", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_vol_remaining_2 = ProtoField.new("Disclosed Vol Remaining 2", "nse.nseix.dropcopy.nnfdirect.v1.6.disclosedvolremaining2", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_volume = ProtoField.new("Disclosed Volume", "nse.nseix.dropcopy.nnfdirect.v1.6.disclosedvolume", ftypes.INT32, nil, nil, nil, "Quantity to be disclosed to the market")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_volume_remaining = ProtoField.new("Disclosed Volume Remaining", "nse.nseix.dropcopy.nnfdirect.v1.6.disclosedvolumeremaining", ftypes.INT32, nil, nil, nil, "Disclosed volume remaining from the original disclosed volume after trades")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.echo_back = ProtoField.new("Echo Back", "nse.nseix.dropcopy.nnfdirect.v1.6.echoback", ftypes.STRING, nil, nil, nil, "Sixteen character echo back field for members, which should carry the Algo Id issued by the exchange; blank for a non algo order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.end_alpha_1 = ProtoField.new("End Alpha 1", "nse.nseix.dropcopy.nnfdirect.v1.6.endalpha1", ftypes.STRING, nil, nil, nil, "EndAlpha1")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.entry_date_time_utc = ProtoField.new("Entry Date Time", "nse.nseix.dropcopy.nnfdirect.v1.6.entrydatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time the order entered the system")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.entry_date_time = ProtoField.new("Entry Date Time", "nse.nseix.dropcopy.nnfdirect.v1.6.entrydatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time the order entered the system")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.entry_date_time_1_utc = ProtoField.new("Entry Date Time 1", "nse.nseix.dropcopy.nnfdirect.v1.6.entrydatetime1.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the order first entered the trading system")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.entry_date_time_1 = ProtoField.new("Entry Date Time 1", "nse.nseix.dropcopy.nnfdirect.v1.6.entrydatetime1", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the order first entered the trading system")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.error_code = ProtoField.new("Error Code", "nse.nseix.dropcopy.nnfdirect.v1.6.errorcode", ftypes.INT16, nil, nil, nil, "Zero when the request succeeded, otherwise an Error Response follows")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.expiry_date_utc = ProtoField.new("Expiry Date", "nse.nseix.dropcopy.nnfdirect.v1.6.expirydate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Expiry date of the contract")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.expiry_date = ProtoField.new("Expiry Date", "nse.nseix.dropcopy.nnfdirect.v1.6.expirydate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Expiry date of the contract")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fifth_reserved_1 = ProtoField.new("Fifth Reserved 1", "nse.nseix.dropcopy.nnfdirect.v1.6.fifthreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fill_number = ProtoField.new("Fill Number", "nse.nseix.dropcopy.nnfdirect.v1.6.fillnumber", ftypes.INT32, nil, nil, nil, "Trade number")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fill_price = ProtoField.new("Fill Price", "nse.nseix.dropcopy.nnfdirect.v1.6.fillprice", ftypes.INT32, nil, nil, nil, "Price at which the order traded, to be divided by 10000 for a contract traded in USD or by 100 for a contract traded in cents to get the actual price")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fill_qty = ProtoField.new("Fill Qty", "nse.nseix.dropcopy.nnfdirect.v1.6.fillqty", ftypes.INT32, nil, nil, nil, "Traded volume")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fill_volume = ProtoField.new("Fill Volume", "nse.nseix.dropcopy.nnfdirect.v1.6.fillvolume", ftypes.INT32, nil, nil, nil, "Quantity of the contract traded")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler = ProtoField.new("Filler", "nse.nseix.dropcopy.nnfdirect.v1.6.filler", ftypes.BYTES)
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler_1 = ProtoField.new("Filler 1", "nse.nseix.dropcopy.nnfdirect.v1.6.filler1", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler_1_to_16 = ProtoField.new("Filler 1 To 16", "nse.nseix.dropcopy.nnfdirect.v1.6.filler1to16", ftypes.BYTES, nil, nil, nil, "Sixteen one bit fillers, Filler1 to Filler16, reserved for future use")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler_17 = ProtoField.new("Filler 17", "nse.nseix.dropcopy.nnfdirect.v1.6.filler17", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler_18 = ProtoField.new("Filler 18", "nse.nseix.dropcopy.nnfdirect.v1.6.filler18", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler_9 = ProtoField.new("Filler 9", "nse.nseix.dropcopy.nnfdirect.v1.6.filler9", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler_options_1 = ProtoField.new("Filler Options 1", "nse.nseix.dropcopy.nnfdirect.v1.6.filleroptions1", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler_y = ProtoField.new("Filler Y", "nse.nseix.dropcopy.nnfdirect.v1.6.fillery", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fillerx_1 = ProtoField.new("Fillerx 1", "nse.nseix.dropcopy.nnfdirect.v1.6.fillerx1", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fillerx_2 = ProtoField.new("Fillerx 2", "nse.nseix.dropcopy.nnfdirect.v1.6.fillerx2", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fillery_1 = ProtoField.new("Fillery 1", "nse.nseix.dropcopy.nnfdirect.v1.6.fillery1", ftypes.BYTES, nil, nil, nil, "Filler")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fourth_reserved_1 = ProtoField.new("Fourth Reserved 1", "nse.nseix.dropcopy.nnfdirect.v1.6.fourthreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.frozen = ProtoField.new("Frozen", "nse.nseix.dropcopy.nnfdirect.v1.6.frozen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "The order has gone for a freeze")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.give_up_trade = ProtoField.new("Give Up Trade", "nse.nseix.dropcopy.nnfdirect.v1.6.giveuptrade", ftypes.STRING, nil, nil, nil, "Whether the trade is a give up")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.giveup_flag = ProtoField.new("Giveup Flag", "nse.nseix.dropcopy.nnfdirect.v1.6.giveupflag", ftypes.STRING, nil, nil, nil, "Give up flag, A when the give up is approved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.giveup_flag_1 = ProtoField.new("Giveup Flag 1", "nse.nseix.dropcopy.nnfdirect.v1.6.giveupflag1", ftypes.STRING, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.giveup_flag_2 = ProtoField.new("Giveup Flag 2", "nse.nseix.dropcopy.nnfdirect.v1.6.giveupflag2", ftypes.STRING, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.good_till_date_utc = ProtoField.new("Good Till Date", "nse.nseix.dropcopy.nnfdirect.v1.6.goodtilldate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date until which the GTD order is retained in the system")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.good_till_date = ProtoField.new("Good Till Date", "nse.nseix.dropcopy.nnfdirect.v1.6.goodtilldate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date until which the GTD order is retained in the system")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.good_till_date_1_utc = ProtoField.new("Good Till Date 1", "nse.nseix.dropcopy.nnfdirect.v1.6.goodtilldate1.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.good_till_date_1 = ProtoField.new("Good Till Date 1", "nse.nseix.dropcopy.nnfdirect.v1.6.goodtilldate1", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.gtc = ProtoField.new("Gtc", "nse.nseix.dropcopy.nnfdirect.v1.6.gtc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400, "Good till cancel")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.gtd = ProtoField.new("Gtd", "nse.nseix.dropcopy.nnfdirect.v1.6.gtd", ftypes.INT32, nil, nil, nil, "Number of days for a GTD order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.header_timestamp = ProtoField.new("Header Timestamp", "nse.nseix.dropcopy.nnfdirect.v1.6.headertimestamp", ftypes.INT64, nil, nil, nil, "Host end field, carrying nanoseconds since midnight 01-Jan-1980 on the transaction codes listed in the appendix")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.initiated_by_control = ProtoField.new("Initiated By Control", "nse.nseix.dropcopy.nnfdirect.v1.6.initiatedbycontrol", ftypes.STRING, nil, nil, nil, "Y or N, whether the approval was initiated by Control; the host sends N")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.instrument_name = ProtoField.new("Instrument Name", "nse.nseix.dropcopy.nnfdirect.v1.6.instrumentname", ftypes.STRING, nil, nil, nil, "Instrument name of the contract")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.ioc = ProtoField.new("Ioc", "nse.nseix.dropcopy.nnfdirect.v1.6.ioc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200, "Immediate or cancel")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.last_activity_reference = ProtoField.new("Last Activity Reference", "nse.nseix.dropcopy.nnfdirect.v1.6.lastactivityreference", ftypes.INT64, nil, nil, nil, "Unique value for the activity, currently in nanoseconds")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.last_modified_utc = ProtoField.new("Last Modified", "nse.nseix.dropcopy.nnfdirect.v1.6.lastmodified.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Entry date time on an order entry, then the time the order was last modified, in seconds from midnight 1 January 1980")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.last_modified = ProtoField.new("Last Modified", "nse.nseix.dropcopy.nnfdirect.v1.6.lastmodified", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Entry date time on an order entry, then the time the order was last modified, in seconds from midnight 1 January 1980")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.last_modified_1_utc = ProtoField.new("Last Modified 1", "nse.nseix.dropcopy.nnfdirect.v1.6.lastmodified1.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the order was last modified, in seconds from midnight 1 January 1980")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.last_modified_1 = ProtoField.new("Last Modified 1", "nse.nseix.dropcopy.nnfdirect.v1.6.lastmodified1", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the order was last modified, in seconds from midnight 1 January 1980")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.last_modified_date_time_utc = ProtoField.new("Last Modified Date Time", "nse.nseix.dropcopy.nnfdirect.v1.6.lastmodifieddatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time of the last activity on the order, which could be order entry, order modification or the last trade, in seconds from midnight 1 January 1980")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.last_modified_date_time = ProtoField.new("Last Modified Date Time", "nse.nseix.dropcopy.nnfdirect.v1.6.lastmodifieddatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time of the last activity on the order, which could be order entry, order modification or the last trade, in seconds from midnight 1 January 1980")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.log_time_utc = ProtoField.new("Log Time", "nse.nseix.dropcopy.nnfdirect.v1.6.logtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the message was generated by the trading system")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.log_time = ProtoField.new("Log Time", "nse.nseix.dropcopy.nnfdirect.v1.6.logtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the message was generated by the trading system")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.market = ProtoField.new("Market", "nse.nseix.dropcopy.nnfdirect.v1.6.market", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Market order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.matched_ind = ProtoField.new("Matched Ind", "nse.nseix.dropcopy.nnfdirect.v1.6.matchedind", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040, "A negotiated trade order has found a matching order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.message_length = ProtoField.new("Message Length", "nse.nseix.dropcopy.nnfdirect.v1.6.messagelength", ftypes.INT16, nil, nil, nil, "Length of the message including the message header, twenty two less than Packet Length")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.mf = ProtoField.new("Mf", "nse.nseix.dropcopy.nnfdirect.v1.6.mf", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080, "Minimum fill")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.min_fill_aon_1 = ProtoField.new("Min Fill Aon 1", "nse.nseix.dropcopy.nnfdirect.v1.6.minfillaon1", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.min_fill_aon_2 = ProtoField.new("Min Fill Aon 2", "nse.nseix.dropcopy.nnfdirect.v1.6.minfillaon2", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.minimum_fill_aon_volume = ProtoField.new("Minimum Fill Aon Volume", "nse.nseix.dropcopy.nnfdirect.v1.6.minimumfillaonvolume", ftypes.INT32, nil, nil, nil, "Minimum fill quantity when the minimum fill attribute is set for the order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.mit = ProtoField.new("Mit", "nse.nseix.dropcopy.nnfdirect.v1.6.mit", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000, "Market if touched")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.mkt_replay = ProtoField.new("Mkt Replay", "nse.nseix.dropcopy.nnfdirect.v1.6.mktreplay", ftypes.DOUBLE, nil, nil, nil, "Set to zero")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.mod_cxl_by_1 = ProtoField.new("Mod Cxl By 1", "nse.nseix.dropcopy.nnfdirect.v1.6.modcxlby1", ftypes.STRING, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.modified = ProtoField.new("Modified", "nse.nseix.dropcopy.nnfdirect.v1.6.modified", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "The order has to be modified")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.modified_cancelled_by = ProtoField.new("Modified Cancelled By", "nse.nseix.dropcopy.nnfdirect.v1.6.modifiedcancelledby", ftypes.STRING, nil, nil, nil, "Who modified or cancelled the order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.ms_spd_leg_info_leg_2 = ProtoField.new("Ms Spd Leg Info Leg 2", "nse.nseix.dropcopy.nnfdirect.v1.6.msspdleginfoleg2", ftypes.STRING, nil, nil, nil, "MS_SPD_LEG_INFO Leg 2")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.ms_spd_leg_info_leg_3 = ProtoField.new("Ms Spd Leg Info Leg 3", "nse.nseix.dropcopy.nnfdirect.v1.6.msspdleginfoleg3", ftypes.STRING, nil, nil, nil, "MS_SPD_LEG_INFO Leg 3")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.new_volume = ProtoField.new("New Volume", "nse.nseix.dropcopy.nnfdirect.v1.6.newvolume", ftypes.INT32, nil, nil, nil, "Always zero for a trade confirmation; the modified trade quantity on a trade modification approval")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_indc = ProtoField.new("Nlt Indc", "nse.nseix.dropcopy.nnfdirect.v1.6.nltindc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "The order is an NLT order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nnf_field = ProtoField.new("Nnf Field", "nse.nseix.dropcopy.nnfdirect.v1.6.nnffield", ftypes.DOUBLE, nil, nil, nil, "Fifteen digit unique identifier")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.old_account_number = ProtoField.new("Old Account Number", "nse.nseix.dropcopy.nnfdirect.v1.6.oldaccountnumber", ftypes.STRING, nil, nil, nil, "Previous account number")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.old_open_close = ProtoField.new("Old Open Close", "nse.nseix.dropcopy.nnfdirect.v1.6.oldopenclose", ftypes.STRING, nil, nil, nil, "Previous open or close indicator, the same as Open Close for a trade confirmation")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.old_participant = ProtoField.new("Old Participant", "nse.nseix.dropcopy.nnfdirect.v1.6.oldparticipant", ftypes.STRING, nil, nil, nil, "Old participant name when an order modification changes the participant")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.op_broker_id = ProtoField.new("Op Broker Id", "nse.nseix.dropcopy.nnfdirect.v1.6.opbrokerid", ftypes.STRING, nil, nil, nil, "Trading member Id of the counter party taking part in the trade")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.op_broker_id_1 = ProtoField.new("Op Broker Id 1", "nse.nseix.dropcopy.nnfdirect.v1.6.opbrokerid1", ftypes.STRING, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.op_broker_id_2 = ProtoField.new("Op Broker Id 2", "nse.nseix.dropcopy.nnfdirect.v1.6.opbrokerid2", ftypes.STRING, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.op_order_number = ProtoField.new("Op Order Number", "nse.nseix.dropcopy.nnfdirect.v1.6.opordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number of the counter order taking part in the trade")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.open_close = ProtoField.new("Open Close", "nse.nseix.dropcopy.nnfdirect.v1.6.openclose", ftypes.STRING, nil, nil, nil, "Whether the trade opens or closes a position")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.open_close_1 = ProtoField.new("Open Close 1", "nse.nseix.dropcopy.nnfdirect.v1.6.openclose1", ftypes.STRING, nil, nil, nil, "Open or close order indicator")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.open_close_2 = ProtoField.new("Open Close 2", "nse.nseix.dropcopy.nnfdirect.v1.6.openclose2", ftypes.STRING, nil, nil, nil, "Open or close order indicator")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.option_type = ProtoField.new("Option Type", "nse.nseix.dropcopy.nnfdirect.v1.6.optiontype", ftypes.STRING, nil, nil, nil, "Option type identifier")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_number = ProtoField.new("Order Number", "nse.nseix.dropcopy.nnfdirect.v1.6.ordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number of the approved individual order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_number_1 = ProtoField.new("Order Number 1", "nse.nseix.dropcopy.nnfdirect.v1.6.ordernumber1", ftypes.DOUBLE, nil, nil, nil, "Order number assigned to the order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_sequence_number = ProtoField.new("Sequence Number", "nse.nseix.dropcopy.nnfdirect.v1.6.ordersequencenumber", ftypes.DOUBLE, nil, nil, nil, "Time the last message was received by the user, taken from Time Stamp1 of the last order confirmation's Message Header; zero to retrieve from the beginning of the trading day")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_trade_sequence_number = ProtoField.new("Sequence Number", "nse.nseix.dropcopy.nnfdirect.v1.6.ordertradesequencenumber", ftypes.DOUBLE, nil, nil, nil, "Time the last message was received by the user, taken from Time Stamp1 of the last order or trade confirmation's Message Header; zero to retrieve from the beginning of the trading day")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_type = ProtoField.new("Order Type", "nse.nseix.dropcopy.nnfdirect.v1.6.ordertype", ftypes.INT16, nil, nil, nil, "Set to blank")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_type_1 = ProtoField.new("Order Type 1", "nse.nseix.dropcopy.nnfdirect.v1.6.ordertype1", ftypes.INT16, nil, nil, nil, "Set to blank")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_type_2 = ProtoField.new("Order Type 2", "nse.nseix.dropcopy.nnfdirect.v1.6.ordertype2", ftypes.INT16, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.original_vol = ProtoField.new("Original Vol", "nse.nseix.dropcopy.nnfdirect.v1.6.originalvol", ftypes.INT32, nil, nil, nil, "Original traded volume")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.packet_length = ProtoField.new("Packet Length", "nse.nseix.dropcopy.nnfdirect.v1.6.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the entire packet including this field, capped at 1024 bytes")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "nse.nseix.dropcopy.nnfdirect.v1.6.packetsequencenumber", ftypes.UINT32, nil, nil, nil, "Starts at 1 on a fresh connection and is incremented for every packet, in sequential order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.participant = ProtoField.new("Participant", "nse.nseix.dropcopy.nnfdirect.v1.6.participant", ftypes.STRING, nil, nil, nil, "Participant name, the same as Old Participant for a trade confirmation")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.participant_type = ProtoField.new("Participant Type", "nse.nseix.dropcopy.nnfdirect.v1.6.participanttype", ftypes.STRING, nil, nil, nil, "Not applicable for regular lot orders")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.participant_type_1 = ProtoField.new("Participant Type 1", "nse.nseix.dropcopy.nnfdirect.v1.6.participanttype1", ftypes.STRING, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.password = ProtoField.new("Password", "nse.nseix.dropcopy.nnfdirect.v1.6.password", ftypes.STRING, nil, nil, nil, "Password entered by the user; alphabet, numbers and special characters are allowed")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.preclose = ProtoField.new("Preclose", "nse.nseix.dropcopy.nnfdirect.v1.6.preclose", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "Order entered or modified in the preclose session; zero for orders entered in other sessions")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.preopen = ProtoField.new("Preopen", "nse.nseix.dropcopy.nnfdirect.v1.6.preopen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "Order entered in the preopen session, or a preopen order modification response; zero for orders entered in other sessions")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.price = ProtoField.new("Price", "nse.nseix.dropcopy.nnfdirect.v1.6.price", ftypes.INT32, nil, nil, nil, "Order price")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.price_1 = ProtoField.new("Price 1", "nse.nseix.dropcopy.nnfdirect.v1.6.price1", ftypes.INT32, nil, nil, nil, "Not used for a spread order; the order price for a two or three leg order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.price_2 = ProtoField.new("Price 2", "nse.nseix.dropcopy.nnfdirect.v1.6.price2", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.price_diff = ProtoField.new("Price Diff", "nse.nseix.dropcopy.nnfdirect.v1.6.pricediff", ftypes.INT32, nil, nil, nil, "Difference between the prices at which leg two and leg one should trade, a multiple of the tick size within the price range, multiplied by 10000 for a contract traded in USD or by 100 for a contract traded in cents; spread orders only")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.pro_client_1 = ProtoField.new("Pro Client 1", "nse.nseix.dropcopy.nnfdirect.v1.6.proclient1", ftypes.INT16, nil, nil, nil, "Whether the order is entered on behalf of a client or is the broker's own")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.pro_client_indicator = ProtoField.new("Pro Client Indicator", "nse.nseix.dropcopy.nnfdirect.v1.6.proclientindicator", ftypes.INT16, nil, nil, nil, "Whether the order is entered on behalf of a client or is the broker's own")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reason_code = ProtoField.new("Reason Code", "nse.nseix.dropcopy.nnfdirect.v1.6.reasoncode", ftypes.INT16, nil, nil, nil, "Reason code for the give up packet")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reason_code_1 = ProtoField.new("Reason Code 1", "nse.nseix.dropcopy.nnfdirect.v1.6.reasoncode1", ftypes.INT16, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reference = ProtoField.new("Reference", "nse.nseix.dropcopy.nnfdirect.v1.6.reference", ftypes.STRING)
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.registration_checksum = ProtoField.new("Registration Checksum", "nse.nseix.dropcopy.nnfdirect.v1.6.registrationchecksum", ftypes.BYTES, nil, nil, nil, "Md5 digest of the registration's message data, which is never encrypted")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.remaining_vol = ProtoField.new("Remaining Vol", "nse.nseix.dropcopy.nnfdirect.v1.6.remainingvol", ftypes.INT32, nil, nil, nil, "Volume remaining after the trades")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_1 = ProtoField.new("Reserved 1", "nse.nseix.dropcopy.nnfdirect.v1.6.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_10 = ProtoField.new("Reserved 10", "nse.nseix.dropcopy.nnfdirect.v1.6.reserved10", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_119 = ProtoField.new("Reserved 119", "nse.nseix.dropcopy.nnfdirect.v1.6.reserved119", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_2 = ProtoField.new("Reserved 2", "nse.nseix.dropcopy.nnfdirect.v1.6.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_30 = ProtoField.new("Reserved 30", "nse.nseix.dropcopy.nnfdirect.v1.6.reserved30", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_4 = ProtoField.new("Reserved 4", "nse.nseix.dropcopy.nnfdirect.v1.6.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_52 = ProtoField.new("Reserved 52", "nse.nseix.dropcopy.nnfdirect.v1.6.reserved52", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_60 = ProtoField.new("Reserved 60", "nse.nseix.dropcopy.nnfdirect.v1.6.reserved60", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_8 = ProtoField.new("Reserved 8", "nse.nseix.dropcopy.nnfdirect.v1.6.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.response_order_number = ProtoField.new("Response Order Number", "nse.nseix.dropcopy.nnfdirect.v1.6.responseordernumber", ftypes.DOUBLE, nil, nil, nil, "Order number of the trader's order taking part in the trade")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "nse.nseix.dropcopy.nnfdirect.v1.6.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.sequence_number = ProtoField.new("Sequence Number", "nse.nseix.dropcopy.nnfdirect.v1.6.sequencenumber", ftypes.DOUBLE, nil, nil, nil, "Time the last message was received by the user, taken from Time Stamp1 of the last trade confirmation's Message Header; zero to retrieve from the beginning of the trading day")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.server_registration_packet = ProtoField.new("Server Registration Packet", "nse.nseix.dropcopy.nnfdirect.v1.6.serverregistrationpacket", ftypes.STRING, nil, nil, nil, "Secure Box Registration Response, the exchange's first packet on the connection, never encrypted")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.server_session_packet = ProtoField.new("Server Session Packet", "nse.nseix.dropcopy.nnfdirect.v1.6.serversessionpacket", ftypes.STRING, nil, nil, nil, "Every packet the exchange sends after its registration response")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.session_ind = ProtoField.new("Session Ind", "nse.nseix.dropcopy.nnfdirect.v1.6.sessionind", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20, "Zero for a session 1 trade, one for a session 2 trade")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.settlement_period = ProtoField.new("Settlement Period", "nse.nseix.dropcopy.nnfdirect.v1.6.settlementperiod", ftypes.INT16, nil, nil, nil, "Number of days in a settlement cycle, currently 10")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.settlement_period_1 = ProtoField.new("Settlement Period 1", "nse.nseix.dropcopy.nnfdirect.v1.6.settlementperiod1", ftypes.INT16, nil, nil, nil, "Number of days in a settlement cycle, currently 10")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.settlor = ProtoField.new("Settlor", "nse.nseix.dropcopy.nnfdirect.v1.6.settlor", ftypes.STRING, nil, nil, nil, "Id of the participant responsible for settling the trades through the custodians")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.settlor_1 = ProtoField.new("Settlor 1", "nse.nseix.dropcopy.nnfdirect.v1.6.settlor1", ftypes.STRING, nil, nil, nil, "Id of the participant responsible for settling the trades through the custodians, blank for a broker's own order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.sl = ProtoField.new("Sl", "nse.nseix.dropcopy.nnfdirect.v1.6.sl", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Stop loss")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.solicitor_period = ProtoField.new("Solicitor Period", "nse.nseix.dropcopy.nnfdirect.v1.6.solicitorperiod", ftypes.INT16, nil, nil, nil, "Always zero")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.solicitor_period_1 = ProtoField.new("Solicitor Period 1", "nse.nseix.dropcopy.nnfdirect.v1.6.solicitorperiod1", ftypes.INT16, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.spread_entry_time = ProtoField.new("Mkt Replay", "nse.nseix.dropcopy.nnfdirect.v1.6.spreadentrytime", ftypes.DOUBLE, nil, nil, nil, "Time the order entered the system, stamped at the host end")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.st_order_flags = ProtoField.new("St Order Flags", "nse.nseix.dropcopy.nnfdirect.v1.6.storderflags", ftypes.STRING, nil, nil, nil, "Attributes of the order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.start_alpha_1 = ProtoField.new("Start Alpha 1", "nse.nseix.dropcopy.nnfdirect.v1.6.startalpha1", ftypes.STRING, nil, nil, nil, "StartAlpha1")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.stpc = ProtoField.new("Stpc", "nse.nseix.dropcopy.nnfdirect.v1.6.stpc", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10, "Self trade prevention: zero cancels the order resulting in a self trade as per the exchange's default action, one cancels the active order resulting in the self trade")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.strike_price = ProtoField.new("Strike Price", "nse.nseix.dropcopy.nnfdirect.v1.6.strikeprice", ftypes.INT32, nil, nil, nil, "Valid strike for an options contract, and -1 for a futures contract")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.symbol = ProtoField.new("Symbol", "nse.nseix.dropcopy.nnfdirect.v1.6.symbol", ftypes.STRING, nil, nil, nil, "Contract name")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.third_reserved_1 = ProtoField.new("Third Reserved 1", "nse.nseix.dropcopy.nnfdirect.v1.6.thirdreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.time_stamp_1 = ProtoField.new("Time Stamp 1", "nse.nseix.dropcopy.nnfdirect.v1.6.timestamp1", ftypes.STRING, nil, nil, nil, "Time the message arrived at the trading system host, in jiffies; zero when sent to the host")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.time_stamp_2 = ProtoField.new("Time Stamp 2", "nse.nseix.dropcopy.nnfdirect.v1.6.timestamp2", ftypes.STRING, nil, nil, nil, "Stream number the packet comes from; zero when sent to the host")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.token = ProtoField.new("Token", "nse.nseix.dropcopy.nnfdirect.v1.6.token", ftypes.INT32, nil, nil, nil, "Token number of the contract")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.token_1 = ProtoField.new("Token 1", "nse.nseix.dropcopy.nnfdirect.v1.6.token1", ftypes.INT32, nil, nil, nil, "Token number of the first leg's contract, or -1 when only the contract descriptor is validated")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.token_2 = ProtoField.new("Token 2", "nse.nseix.dropcopy.nnfdirect.v1.6.token2", ftypes.INT32, nil, nil, nil, "Token number of the leg's contract, or -1 when only the contract descriptor is validated; not the same as Token1")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.token_no = ProtoField.new("Token No", "nse.nseix.dropcopy.nnfdirect.v1.6.tokenno", ftypes.INT32, nil, nil, nil, "Token number of the contract, or -1 when only the contract descriptor is validated")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.total_vol_remaining_1 = ProtoField.new("Total Vol Remaining 1", "nse.nseix.dropcopy.nnfdirect.v1.6.totalvolremaining1", ftypes.INT32, nil, nil, nil, "Total quantity remaining from the original quantity after trades")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.total_vol_remaining_2 = ProtoField.new("Total Vol Remaining 2", "nse.nseix.dropcopy.nnfdirect.v1.6.totalvolremaining2", ftypes.INT32, nil, nil, nil, "Total quantity remaining from the original quantity after trades")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.total_volume_remaining = ProtoField.new("Total Volume Remaining", "nse.nseix.dropcopy.nnfdirect.v1.6.totalvolumeremaining", ftypes.INT32, nil, nil, nil, "Total quantity remaining from the original quantity after trades")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trade_book_type = ProtoField.new("Trade Book Type", "nse.nseix.dropcopy.nnfdirect.v1.6.tradebooktype", ftypes.STRING, nil, nil, nil, "Book the order belongs to")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.traded = ProtoField.new("Traded", "nse.nseix.dropcopy.nnfdirect.v1.6.traded", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020, "The order has traded partially or fully")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trader_id = ProtoField.new("Trader Id", "nse.nseix.dropcopy.nnfdirect.v1.6.traderid", ftypes.INT32, nil, nil, nil, "User Id of the user")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trader_id_1 = ProtoField.new("Trader Id 1", "nse.nseix.dropcopy.nnfdirect.v1.6.traderid1", ftypes.INT32, nil, nil, nil, "User Id")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trader_num = ProtoField.new("Trader Num", "nse.nseix.dropcopy.nnfdirect.v1.6.tradernum", ftypes.INT32, nil, nil, nil, "Trader or user Id")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nseix.dropcopy.nnfdirect.v1.6.transactioncode", ftypes.INT16, nil, nil, nil, "Type of message sent or received")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trigger_price = ProtoField.new("Trigger Price", "nse.nseix.dropcopy.nnfdirect.v1.6.triggerprice", ftypes.INT32, nil, nil, nil, "Trigger price, applicable only for a stop loss order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trigger_price_1 = ProtoField.new("Trigger Price 1", "nse.nseix.dropcopy.nnfdirect.v1.6.triggerprice1", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trigger_price_2 = ProtoField.new("Trigger Price 2", "nse.nseix.dropcopy.nnfdirect.v1.6.triggerprice2", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.user_id = ProtoField.new("User Id", "nse.nseix.dropcopy.nnfdirect.v1.6.userid", ftypes.INT32, nil, nil, nil, "User Id of the user")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.vol_filled_today = ProtoField.new("Vol Filled Today", "nse.nseix.dropcopy.nnfdirect.v1.6.volfilledtoday", ftypes.INT32, nil, nil, nil, "Quantity traded today")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.volume = ProtoField.new("Volume", "nse.nseix.dropcopy.nnfdirect.v1.6.volume", ftypes.INT32, nil, nil, nil, "Order quantity")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.volume_1 = ProtoField.new("Volume 1", "nse.nseix.dropcopy.nnfdirect.v1.6.volume1", ftypes.INT32, nil, nil, nil, "Quantity of the order, in multiples of the regular lot")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.volume_2 = ProtoField.new("Volume 2", "nse.nseix.dropcopy.nnfdirect.v1.6.volume2", ftypes.INT32, nil, nil, nil, "Quantity of the leg, in multiples of the regular lot")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.volume_filled_today = ProtoField.new("Volume Filled Today", "nse.nseix.dropcopy.nnfdirect.v1.6.volumefilledtoday", ftypes.INT32, nil, nil, nil, "Total quantity traded in the day")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.volume_filled_today_1 = ProtoField.new("Volume Filled Today 1", "nse.nseix.dropcopy.nnfdirect.v1.6.volumefilledtoday1", ftypes.INT32, nil, nil, nil, "Not used")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.volume_filled_today_2 = ProtoField.new("Volume Filled Today 2", "nse.nseix.dropcopy.nnfdirect.v1.6.volumefilledtoday2", ftypes.INT32, nil, nil, nil, "Not used")

-- Nse NseIx DropCopy NnfDirect 1.6 Framing
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.client_direct_packet = ProtoField.new("Client Direct Packet", "nse.nseix.dropcopy.nnfdirect.v1.6.clientdirectpacket", ftypes.STRING, nil, nil, nil, "One framed interactive message sent by the firm")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.client_packet = ProtoField.new("Client Packet", "nse.nseix.dropcopy.nnfdirect.v1.6.clientpacket", ftypes.STRING, nil, nil, nil, "Nnf direct interface Tcp block of one or more packets sent by the firm")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.message_header = ProtoField.new("Message Header", "nse.nseix.dropcopy.nnfdirect.v1.6.messageheader", ftypes.STRING, nil, nil, nil, "MESSAGE_HEADER")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.packet_header = ProtoField.new("Packet Header", "nse.nseix.dropcopy.nnfdirect.v1.6.packetheader", ftypes.STRING, nil, nil, nil, "Packet Length and Sequence number, the first six bytes of the direct interface's twenty two byte packet header; its last sixteen open each packet body branch")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.server_direct_packet = ProtoField.new("Server Direct Packet", "nse.nseix.dropcopy.nnfdirect.v1.6.serverdirectpacket", ftypes.STRING, nil, nil, nil, "One framed interactive message sent by the exchange")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.server_packet = ProtoField.new("Server Packet", "nse.nseix.dropcopy.nnfdirect.v1.6.serverpacket", ftypes.STRING, nil, nil, nil, "Nnf direct interface Tcp block of one or more packets sent by the exchange")

-- Nse NseIx DropCopy 1.6 Application Messages
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.batch_order_cancel_message = ProtoField.new("Batch Order Cancel Message", "nse.nseix.dropcopy.nnfdirect.v1.6.batchordercancelmessage", ftypes.STRING, nil, nil, nil, "Batch order cancellation; Last Modified is the cancellation time, the same as Log Time")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.batch_spread_order_cancel_message = ProtoField.new("Batch Spread Order Cancel Message", "nse.nseix.dropcopy.nnfdirect.v1.6.batchspreadordercancelmessage", ftypes.STRING, nil, nil, nil, "Spread batch order cancellation; Last Modified is the cancellation time, the same as Log Time")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.board_lot_out_message = ProtoField.new("Board Lot Out Message", "nse.nseix.dropcopy.nnfdirect.v1.6.boardlotoutmessage", ftypes.STRING, nil, nil, nil, "Order entry, in the Order Confirmation structure")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.dc_download_request_message = ProtoField.new("Dc Download Request Message", "nse.nseix.dropcopy.nnfdirect.v1.6.dcdownloadrequestmessage", ftypes.STRING, nil, nil, nil, "Requests the trade download for one stream, named in the first byte of Alpha Char, from the time given in Sequence Number; only trade messages are sent")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.dc_ord_trd_request_message = ProtoField.new("Dc Ord Trd Request Message", "nse.nseix.dropcopy.nnfdirect.v1.6.dcordtrdrequestmessage", ftypes.STRING, nil, nil, nil, "Requests the order and trade download for one stream, named in the first byte of Alpha Char, from the time given in Sequence Number; orders are sent first, then trades, then live messages")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.dc_order_request_message = ProtoField.new("Dc Order Request Message", "nse.nseix.dropcopy.nnfdirect.v1.6.dcorderrequestmessage", ftypes.STRING, nil, nil, nil, "Requests the order download for one stream, named in the first byte of Alpha Char, from the time given in Sequence Number; only order messages are sent")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.freeze_to_control_message = ProtoField.new("Freeze To Control Message", "nse.nseix.dropcopy.nnfdirect.v1.6.freezetocontrolmessage", ftypes.STRING, nil, nil, nil, "The order has gone for a freeze")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.giveup_app_confirm_tm_message = ProtoField.new("Giveup App Confirm Tm Message", "nse.nseix.dropcopy.nnfdirect.v1.6.giveupappconfirmtmmessage", ftypes.STRING, nil, nil, nil, "Approves a give up")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.giveup_rej_confirm_tm_message = ProtoField.new("Giveup Rej Confirm Tm Message", "nse.nseix.dropcopy.nnfdirect.v1.6.giveuprejconfirmtmmessage", ftypes.STRING, nil, nil, nil, "Rejects a give up")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.net_order_error_message = ProtoField.new("Net Order Error Message", "nse.nseix.dropcopy.nnfdirect.v1.6.netordererrormessage", ftypes.STRING, nil, nil, nil, "Rejects an order because of an error, the error number in the Error Code of the header")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_confirmation_message = ProtoField.new("Nlt Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.nltconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an NLT order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_cxl_confirmation_message = ProtoField.new("Nlt Cxl Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.nltcxlconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an NLT order cancellation; Last Modified is the cancellation time, the same as Log Time")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_cxl_reject_message = ProtoField.new("Nlt Cxl Reject Message", "nse.nseix.dropcopy.nnfdirect.v1.6.nltcxlrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects an NLT order cancellation, the reason given by the Error Code in the header")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_mod_confirmation_message = ProtoField.new("Nlt Mod Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.nltmodconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an NLT order modification; Entry Date Time carries the user modified order time")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_mod_reject_message = ProtoField.new("Nlt Mod Reject Message", "nse.nseix.dropcopy.nnfdirect.v1.6.nltmodrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects an NLT order modification, the reason given by the Error Code in the header")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_trade_confirmation_message = ProtoField.new("Nlt Trade Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.nlttradeconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an NLT trade, in the Trade Confirmation structure")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_trd_cxl_confirmation_message = ProtoField.new("Nlt Trd Cxl Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.nlttrdcxlconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an NLT trade cancellation, in the Trade Confirmation structure")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_trd_cxl_reject_message = ProtoField.new("Nlt Trd Cxl Reject Message", "nse.nseix.dropcopy.nnfdirect.v1.6.nlttrdcxlrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects an NLT trade cancellation, in the Trade Confirmation structure")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_trd_mod_confirmation_message = ProtoField.new("Nlt Trd Mod Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.nlttrdmodconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an NLT trade modification, in the Trade Confirmation structure")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_trd_mod_reject_message = ProtoField.new("Nlt Trd Mod Reject Message", "nse.nseix.dropcopy.nnfdirect.v1.6.nlttrdmodrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects an NLT trade modification, in the Trade Confirmation structure")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_cancel_confirmation_message = ProtoField.new("Order Cancel Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.ordercancelconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an order cancellation, unsolicited when NSE IFSC Control cancels the order, and also sent for the partial cancellation of an IOC order; Last Modified is the cancellation time, the same as Log Time")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_cancel_out_message = ProtoField.new("Order Cancel Out Message", "nse.nseix.dropcopy.nnfdirect.v1.6.ordercanceloutmessage", ftypes.STRING, nil, nil, nil, "Order cancellation, in the Order Confirmation structure")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "nse.nseix.dropcopy.nnfdirect.v1.6.ordercancelrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects an order cancellation, the reason given by the Error Code in the header")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_confirmation_message = ProtoField.new("Order Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.orderconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_error_message = ProtoField.new("Order Error Message", "nse.nseix.dropcopy.nnfdirect.v1.6.ordererrormessage", ftypes.STRING, nil, nil, nil, "Rejects an order because of an error, the error number in the Error Code of the header; also the kill switch error response")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_mod_confirmation_message = ProtoField.new("Order Mod Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.ordermodconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms an order modification; Entry Date Time carries the user modified order time")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_mod_out_message = ProtoField.new("Order Mod Out Message", "nse.nseix.dropcopy.nnfdirect.v1.6.ordermodoutmessage", ftypes.STRING, nil, nil, nil, "Order modification, in the Order Confirmation structure")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_mod_reject_message = ProtoField.new("Order Mod Reject Message", "nse.nseix.dropcopy.nnfdirect.v1.6.ordermodrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects an order modification, the reason given by the Error Code in the header")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.sign_on_out_message = ProtoField.new("Sign On Out Message", "nse.nseix.dropcopy.nnfdirect.v1.6.signonoutmessage", ftypes.STRING, nil, nil, nil, "Confirms the logon. Alpha Char carries the number of streams the drop copy feed is sent from, one download request being needed per stream. On an error the same transaction code carries the Error Response layout instead, distinguished only by a non zero Error Code")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.signon_in_message = ProtoField.new("Signon In Message", "nse.nseix.dropcopy.nnfdirect.v1.6.signoninmessage", ftypes.STRING, nil, nil, nil, "Logs the user on to the drop copy feed")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.sp_net_order_error_message = ProtoField.new("Sp Net Order Error Message", "nse.nseix.dropcopy.nnfdirect.v1.6.spnetordererrormessage", ftypes.STRING, nil, nil, nil, "Rejects a spread order, in the MS_SPD_OE_REQUEST structure")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.sp_order_error_message = ProtoField.new("Sp Order Error Message", "nse.nseix.dropcopy.nnfdirect.v1.6.spordererrormessage", ftypes.STRING, nil, nil, nil, "Rejects a spread order, the error number in the Error Code of the header")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.spread_cxl_confirmation_message = ProtoField.new("Spread Cxl Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.spreadcxlconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms the cancellation of a spread order; Last Modified is the cancellation time, the same as Log Time")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.spread_cxl_reject_message = ProtoField.new("Spread Cxl Reject Message", "nse.nseix.dropcopy.nnfdirect.v1.6.spreadcxlrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects a spread order cancellation, the reason given by the Error Code in the header")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.spread_mod_confirmation_message = ProtoField.new("Spread Mod Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.spreadmodconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms a spread order modification; Last Modified is the modification time")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.spread_mod_reject_message = ProtoField.new("Spread Mod Reject Message", "nse.nseix.dropcopy.nnfdirect.v1.6.spreadmodrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects a spread order modification, the reason given by the Error Code in the header")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.spread_order_confirmation_message = ProtoField.new("Spread Order Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.spreadorderconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms a spread order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.thrl_net_order_error_message = ProtoField.new("Thrl Net Order Error Message", "nse.nseix.dropcopy.nnfdirect.v1.6.thrlnetordererrormessage", ftypes.STRING, nil, nil, nil, "Rejects a three leg order, the error number in the Error Code of the header")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.thrl_order_confirmation_message = ProtoField.new("Thrl Order Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.thrlorderconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms a three leg order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.thrl_order_cxl_confirmation_message = ProtoField.new("Thrl Order Cxl Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.thrlordercxlconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms the cancellation of a three leg order; Last Modified is the cancellation time, the same as Log Time")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.thrl_order_error_message = ProtoField.new("Thrl Order Error Message", "nse.nseix.dropcopy.nnfdirect.v1.6.thrlordererrormessage", ftypes.STRING, nil, nil, nil, "Rejects a three leg order, the error number in the Error Code of the header")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trade_cancel_confirm_message = ProtoField.new("Trade Cancel Confirm Message", "nse.nseix.dropcopy.nnfdirect.v1.6.tradecancelconfirmmessage", ftypes.STRING, nil, nil, nil, "Approval of a trade cancellation by NSE IFSC Control; Log Time holds the activity time, the latest modified time")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trade_cancel_reject_message = ProtoField.new("Trade Cancel Reject Message", "nse.nseix.dropcopy.nnfdirect.v1.6.tradecancelrejectmessage", ftypes.STRING, nil, nil, nil, "Rejection of a trade cancellation by NSE IFSC Control")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trade_confirmation_message = ProtoField.new("Trade Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.tradeconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms a trade")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trade_modify_confirm_message = ProtoField.new("Trade Modify Confirm Message", "nse.nseix.dropcopy.nnfdirect.v1.6.trademodifyconfirmmessage", ftypes.STRING, nil, nil, nil, "Confirms a trade modification and carries the new trade data; Log Time holds the activity time, the latest modified time")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trade_modify_reject_message = ProtoField.new("Trade Modify Reject Message", "nse.nseix.dropcopy.nnfdirect.v1.6.trademodifyrejectmessage", ftypes.STRING, nil, nil, nil, "Rejection of a trade modification by NSE IFSC Control")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.twol_net_order_error_message = ProtoField.new("Twol Net Order Error Message", "nse.nseix.dropcopy.nnfdirect.v1.6.twolnetordererrormessage", ftypes.STRING, nil, nil, nil, "Rejects a two leg order, the error number in the Error Code of the header")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.twol_order_confirmation_message = ProtoField.new("Twol Order Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.twolorderconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms a two leg order")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.twol_order_cxl_confirmation_message = ProtoField.new("Twol Order Cxl Confirmation Message", "nse.nseix.dropcopy.nnfdirect.v1.6.twolordercxlconfirmationmessage", ftypes.STRING, nil, nil, nil, "Confirms the cancellation of a two leg order; Last Modified is the cancellation time, the same as Log Time")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.twol_order_error_message = ProtoField.new("Twol Order Error Message", "nse.nseix.dropcopy.nnfdirect.v1.6.twolordererrormessage", ftypes.STRING, nil, nil, nil, "Rejects a two leg order, the error number in the Error Code of the header")

-- Nse NseIx DropCopy 1.6 Session Messages
omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "nse.nseix.dropcopy.nnfdirect.v1.6.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "Keeps the connection alive during periods of inactivity")

-- Nse NseIx DropCopy NnfDirect 1.6 Expert Info
nse_nseix_dropcopy_nnfdirect_v1_6.experts = {}
nse_nseix_dropcopy_nnfdirect_v1_6.experts.undecoded = ProtoExpert.new("nse.nseix.dropcopy.nnfdirect.v1.6.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
nse_nseix_dropcopy_nnfdirect_v1_6.experts.checksum_incorrect = ProtoExpert.new("nse.nseix.dropcopy.nnfdirect.v1.6.checksumincorrect", "Checksum incorrect: not the checksum of the bytes it covers", expert.group.CHECKSUM, expert.severity.ERROR)
nse_nseix_dropcopy_nnfdirect_v1_6.experts.registration_checksum_incorrect = ProtoExpert.new("nse.nseix.dropcopy.nnfdirect.v1.6.registrationchecksumincorrect", "Registration Checksum incorrect: not the checksum of the bytes it covers", expert.group.CHECKSUM, expert.severity.ERROR)
omi_nse_nseix_dropcopy_nnfdirect_v1_6.experts = { nse_nseix_dropcopy_nnfdirect_v1_6.experts.undecoded, nse_nseix_dropcopy_nnfdirect_v1_6.experts.checksum_incorrect, nse_nseix_dropcopy_nnfdirect_v1_6.experts.registration_checksum_incorrect }

-----------------------------------------------------------------------
-- Nse NseIx DropCopy NnfDirect 1.6 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "DateTime Local", 2 },
  { 2, "DateTime Utc", 3 },
  { 3, "DateTime Asia/Kolkata", 4 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format = 3

-- Offset of the source's zone from utc in seconds, as the reader states it
nse_nseix_dropcopy_nnfdirect_v1_6.zone_offset = 0

-- Checksums are verified only where the reader asks
nse_nseix_dropcopy_nnfdirect_v1_6.verify_checksums = false

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

-- Nse NseIx DropCopy NnfDirect 1.6 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.padding = false

-- Register Nse NseIx DropCopy NnfDirect 1.6 Show Options
omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")

omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)
omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.zone_offset = Pref.string("Asia/Kolkata Utc Offset", "", "Offset of Asia/Kolkata from Utc, as +HH:MM. This protocol names that zone and not its offset: stated here, a time kept on its clock reads as an instant, and an instant reads on its clock")

omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.verify_checksums = Pref.bool("Verify Checksums", false, "Compute each checksum the protocol carries and compare it with the one sent. Off by default: a capture taken on the sending host often holds checksums filled in after it was captured")

-- Handle changed preferences
function omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.show_application_messages then
    show.application_messages = omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.show_application_messages
  end
  if show.headers ~= omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.show_headers then
    show.headers = omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.show_headers
  end
  if show.padding ~= omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.show_padding then
    show.padding = omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.show_padding
  end
  if show.structs ~= omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.show_structs then
    show.structs = omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.show_structs
  end
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format ~= omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.timestamp_format then
    nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format = omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.timestamp_format
  end
  local sign, hours, minutes = string.match(omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.zone_offset, "^%s*([+-]?)(%d%d?):?(%d?%d?)%s*$")

  nse_nseix_dropcopy_nnfdirect_v1_6.zone_offset = 0

  if hours then
    nse_nseix_dropcopy_nnfdirect_v1_6.zone_offset = tonumber(hours) * 3600 + (tonumber(minutes) or 0) * 60
  end

  if sign == "-" then
    nse_nseix_dropcopy_nnfdirect_v1_6.zone_offset = -nse_nseix_dropcopy_nnfdirect_v1_6.zone_offset
  end
  if nse_nseix_dropcopy_nnfdirect_v1_6.verify_checksums ~= omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.verify_checksums then
    nse_nseix_dropcopy_nnfdirect_v1_6.verify_checksums = omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.verify_checksums
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
-- Nse NseIx DropCopy NnfDirect 1.6 Fields
-----------------------------------------------------------------------

-- Account Num
nse_nseix_dropcopy_nnfdirect_v1_6.account_num = {}

-- Size: Account Num
nse_nseix_dropcopy_nnfdirect_v1_6.account_num.size = 10

-- Display: Account Num
nse_nseix_dropcopy_nnfdirect_v1_6.account_num.display = function(value)
  return "Account Num: "..value
end

-- Dissect: Account Num
nse_nseix_dropcopy_nnfdirect_v1_6.account_num.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.account_num.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.account_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.account_num, range, value, display)

  return offset + length, value
end

-- Account Number
nse_nseix_dropcopy_nnfdirect_v1_6.account_number = {}

-- Size: Account Number
nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size = 10

-- Display: Account Number
nse_nseix_dropcopy_nnfdirect_v1_6.account_number.display = function(value)
  return "Account Number: "..value
end

-- Dissect: Account Number
nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.account_number, range, value, display)

  return offset + length, value
end

-- Account Number 1
nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1 = {}

-- Size: Account Number 1
nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size = 10

-- Display: Account Number 1
nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.display = function(value)
  return "Account Number 1: "..value
end

-- Dissect: Account Number 1
nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.account_number_1, range, value, display)

  return offset + length, value
end

-- Activity Time
nse_nseix_dropcopy_nnfdirect_v1_6.activity_time = {}

-- Size: Activity Time
nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.size = 4

-- Dissect: Activity Time
nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.activity_time
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 3 then field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.activity_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Activity Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_dropcopy_nnfdirect_v1_6.zone_offset, 0))

  return offset + length, value
end

-- Activity Type
nse_nseix_dropcopy_nnfdirect_v1_6.activity_type = {}

-- Size: Activity Type
nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.size = 2

-- Display: Activity Type
nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.labels = {
  ["B"] = "Activity Type: Buy (B)",
  ["S"] = "Activity Type: Sell (S)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.labels[value] or "Activity Type: Unknown("..value..")"
end

-- Dissect: Activity Type
nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.activity_type, range, value, display)

  return offset + length, value
end

-- Alpha Char
nse_nseix_dropcopy_nnfdirect_v1_6.alpha_char = {}

-- Size: Alpha Char
nse_nseix_dropcopy_nnfdirect_v1_6.alpha_char.size = 2

-- Display: Alpha Char
nse_nseix_dropcopy_nnfdirect_v1_6.alpha_char.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Alpha Char: No Value"
  end

  return "Alpha Char: "..value
end

-- Dissect: Alpha Char
nse_nseix_dropcopy_nnfdirect_v1_6.alpha_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.alpha_char.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.alpha_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.alpha_char, range, value, display)

  return offset + length, value
end

-- Book Type
nse_nseix_dropcopy_nnfdirect_v1_6.book_type = {}

-- Size: Book Type
nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size = 2

-- Display: Book Type
nse_nseix_dropcopy_nnfdirect_v1_6.book_type.labels = {
  [1] = "Book Type: Regular Lot Order (1)",
  [2] = "Book Type: Special Terms Order (2)",
  [3] = "Book Type: Stop Loss Mit Order (3)",
  [4] = "Book Type: Negotiated Order Not Used (4)",
  [5] = "Book Type: Odd Lot Order Not Used (5)",
  [6] = "Book Type: Spot Order Not Used (6)",
  [7] = "Book Type: Auction Order Not Used (7)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.book_type.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.book_type.labels[value] or "Book Type: Unknown("..value..")"
end

-- Dissect: Book Type
nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.book_type, range, value, display)

  return offset + length, value
end

-- Book Type 1
nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1 = {}

-- Size: Book Type 1
nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size = 2

-- Display: Book Type 1
nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.labels = {
  [1] = "Book Type 1: Regular Lot Order (1)",
  [2] = "Book Type 1: Special Terms Order (2)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.labels[value] or "Book Type 1: Unknown("..value..")"
end

-- Dissect: Book Type 1
nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.book_type_1, range, value, display)

  return offset + length, value
end

-- Branch Id
nse_nseix_dropcopy_nnfdirect_v1_6.branch_id = {}

-- Size: Branch Id
nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size = 2

-- Display: Branch Id
nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.display = function(value)
  return "Branch Id: "..value
end

-- Dissect: Branch Id
nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.branch_id, range, value, display)

  return offset + length, value
end

-- Branch Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1 = {}

-- Size: Branch Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size = 2

-- Display: Branch Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.display = function(value)
  return "Branch Id 1: "..value
end

-- Dissect: Branch Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.branch_id_1, range, value, display)

  return offset + length, value
end

-- Broker Id
nse_nseix_dropcopy_nnfdirect_v1_6.broker_id = {}

-- Size: Broker Id
nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size = 5

-- Display: Broker Id
nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.display = function(value)
  return "Broker Id: "..value
end

-- Dissect: Broker Id
nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.broker_id, range, value, display)

  return offset + length, value
end

-- Broker Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1 = {}

-- Size: Broker Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size = 5

-- Display: Broker Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.display = function(value)
  return "Broker Id 1: "..value
end

-- Dissect: Broker Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.broker_id_1, range, value, display)

  return offset + length, value
end

-- Buy Sell
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell = {}

-- Size: Buy Sell
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.size = 2

-- Display: Buy Sell
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.labels = {
  [1] = "Buy Sell: Buy Order (1)",
  [2] = "Buy Sell: Sell Order (2)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.labels[value] or "Buy Sell: Unknown("..value..")"
end

-- Dissect: Buy Sell
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.buy_sell, range, value, display)

  return offset + length, value
end

-- Buy Sell 1
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1 = {}

-- Size: Buy Sell 1
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size = 2

-- Display: Buy Sell 1
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.labels = {
  [1] = "Buy Sell 1: Buy Order (1)",
  [2] = "Buy Sell 1: Sell Order (2)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.labels[value] or "Buy Sell 1: Unknown("..value..")"
end

-- Dissect: Buy Sell 1
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.buy_sell_1, range, value, display)

  return offset + length, value
end

-- Buy Sell 2
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_2 = {}

-- Size: Buy Sell 2
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_2.size = 2

-- Display: Buy Sell 2
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_2.labels = {
  [1] = "Buy Sell 2: Buy Order (1)",
  [2] = "Buy Sell 2: Sell Order (2)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_2.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_2.labels[value] or "Buy Sell 2: Unknown("..value..")"
end

-- Dissect: Buy Sell 2
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.buy_sell_2, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size = 2

-- Display: Buy Sell Indicator
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.labels = {
  [1] = "Buy Sell Indicator: Buy Order (1)",
  [2] = "Buy Sell Indicator: Sell Order (2)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.labels[value] or "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- C Ord Filler
nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler = {}

-- Size: C Ord Filler
nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size = 24

-- Display: C Ord Filler
nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.display = function(value)
  return "C Ord Filler: "..value
end

-- Dissect: C Ord Filler
nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.c_ord_filler, range, value, display)

  return offset + length, value
end

-- Ca Level
nse_nseix_dropcopy_nnfdirect_v1_6.ca_level = {}

-- Size: Ca Level
nse_nseix_dropcopy_nnfdirect_v1_6.ca_level.size = 2

-- Display: Ca Level
nse_nseix_dropcopy_nnfdirect_v1_6.ca_level.display = function(value)
  return "Ca Level: "..value
end

-- Dissect: Ca Level
nse_nseix_dropcopy_nnfdirect_v1_6.ca_level.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.ca_level.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.ca_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.ca_level, range, value, display)

  return offset + length, value
end

-- Checksum
nse_nseix_dropcopy_nnfdirect_v1_6.checksum = {}

-- Size: Checksum
nse_nseix_dropcopy_nnfdirect_v1_6.checksum.size = 16

-- Display: Checksum
nse_nseix_dropcopy_nnfdirect_v1_6.checksum.display = function(value)
  return "Checksum: "..value
end

-- Dissect: Checksum
nse_nseix_dropcopy_nnfdirect_v1_6.checksum.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.checksum.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.checksum.display(value, buffer, offset, packet, parent)

  local item = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.checksum, range, range:raw(), display)

  -- Verified only where the reader asks: the Md5 of the bytes covered, its own left out
  if nse_nseix_dropcopy_nnfdirect_v1_6.verify_checksums then
    local start = offset
    local computed = digest_md5(buffer(start, buffer:len() - start), offset - start, length, false)

    if computed == value then
      item:append_text(" [correct]")
    else
      item:append_text(" [incorrect, should be "..computed.."]")
      item:add_proto_expert_info(nse_nseix_dropcopy_nnfdirect_v1_6.experts.checksum_incorrect, "Checksum incorrect: "..value..", should be "..computed)
    end
  else
    item:append_text(" [unverified]")
  end

  return offset + length, value
end

-- Closeout Flag
nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag = {}

-- Size: Closeout Flag
nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size = 1

-- Display: Closeout Flag
nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.display = function(value)
  return "Closeout Flag: "..value
end

-- Dissect: Closeout Flag
nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.closeout_flag, range, value, display)

  return offset + length, value
end

-- Competitor Period
nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period = {}

-- Size: Competitor Period
nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size = 2

-- Display: Competitor Period
nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.display = function(value)
  return "Competitor Period: "..value
end

-- Dissect: Competitor Period
nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.competitor_period, range, value, display)

  return offset + length, value
end

-- Competitor Period 1
nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1 = {}

-- Size: Competitor Period 1
nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size = 2

-- Display: Competitor Period 1
nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.display = function(value)
  return "Competitor Period 1: "..value
end

-- Dissect: Competitor Period 1
nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.competitor_period_1, range, value, display)

  return offset + length, value
end

-- Counter Party Broker Id
nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id = {}

-- Size: Counter Party Broker Id
nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size = 5

-- Display: Counter Party Broker Id
nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.display = function(value)
  return "Counter Party Broker Id: "..value
end

-- Dissect: Counter Party Broker Id
nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.counter_party_broker_id, range, value, display)

  return offset + length, value
end

-- Deleted
nse_nseix_dropcopy_nnfdirect_v1_6.deleted = {}

-- Size: Deleted
nse_nseix_dropcopy_nnfdirect_v1_6.deleted.size = 1

-- Display: Deleted
nse_nseix_dropcopy_nnfdirect_v1_6.deleted.display = function(value)
  return "Deleted: "..value
end

-- Dissect: Deleted
nse_nseix_dropcopy_nnfdirect_v1_6.deleted.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.deleted.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.deleted.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.deleted, range, value, display)

  return offset + length, value
end

-- Disclosed Vol
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol = {}

-- Size: Disclosed Vol
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.size = 4

-- Display: Disclosed Vol
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.display = function(value)
  return "Disclosed Vol: "..value
end

-- Dissect: Disclosed Vol
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_vol, range, value, display)

  return offset + length, value
end

-- Disclosed Vol 1
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1 = {}

-- Size: Disclosed Vol 1
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size = 4

-- Display: Disclosed Vol 1
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.display = function(value)
  return "Disclosed Vol 1: "..value
end

-- Dissect: Disclosed Vol 1
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_vol_1, range, value, display)

  return offset + length, value
end

-- Disclosed Vol 2
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_2 = {}

-- Size: Disclosed Vol 2
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_2.size = 4

-- Display: Disclosed Vol 2
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_2.display = function(value)
  return "Disclosed Vol 2: "..value
end

-- Dissect: Disclosed Vol 2
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_vol_2, range, value, display)

  return offset + length, value
end

-- Disclosed Vol Remaining
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining = {}

-- Size: Disclosed Vol Remaining
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.size = 4

-- Display: Disclosed Vol Remaining
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.display = function(value)
  return "Disclosed Vol Remaining: "..value
end

-- Dissect: Disclosed Vol Remaining
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_vol_remaining, range, value, display)

  return offset + length, value
end

-- Disclosed Vol Remaining 1
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1 = {}

-- Size: Disclosed Vol Remaining 1
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size = 4

-- Display: Disclosed Vol Remaining 1
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.display = function(value)
  return "Disclosed Vol Remaining 1: "..value
end

-- Dissect: Disclosed Vol Remaining 1
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_vol_remaining_1, range, value, display)

  return offset + length, value
end

-- Disclosed Vol Remaining 2
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_2 = {}

-- Size: Disclosed Vol Remaining 2
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_2.size = 4

-- Display: Disclosed Vol Remaining 2
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_2.display = function(value)
  return "Disclosed Vol Remaining 2: "..value
end

-- Dissect: Disclosed Vol Remaining 2
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_vol_remaining_2, range, value, display)

  return offset + length, value
end

-- Disclosed Volume
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume = {}

-- Size: Disclosed Volume
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size = 4

-- Display: Disclosed Volume
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.display = function(value)
  return "Disclosed Volume: "..value
end

-- Dissect: Disclosed Volume
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_volume, range, value, display)

  return offset + length, value
end

-- Disclosed Volume Remaining
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining = {}

-- Size: Disclosed Volume Remaining
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size = 4

-- Display: Disclosed Volume Remaining
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.display = function(value)
  return "Disclosed Volume Remaining: "..value
end

-- Dissect: Disclosed Volume Remaining
nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.disclosed_volume_remaining, range, value, display)

  return offset + length, value
end

-- Echo Back
nse_nseix_dropcopy_nnfdirect_v1_6.echo_back = {}

-- Size: Echo Back
nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size = 16

-- Display: Echo Back
nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.display = function(value)
  return "Echo Back: "..value
end

-- Dissect: Echo Back
nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.echo_back, range, value, display)

  return offset + length, value
end

-- End Alpha 1
nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1 = {}

-- Size: End Alpha 1
nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size = 2

-- Display: End Alpha 1
nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.display = function(value)
  return "End Alpha 1: "..value
end

-- Dissect: End Alpha 1
nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.end_alpha_1, range, value, display)

  return offset + length, value
end

-- Entry Date Time
nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time = {}

-- Size: Entry Date Time
nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size = 4

-- Dissect: Entry Date Time
nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.entry_date_time
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 3 then field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.entry_date_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Entry Date Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_dropcopy_nnfdirect_v1_6.zone_offset, 0))

  return offset + length, value
end

-- Entry Date Time 1
nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1 = {}

-- Size: Entry Date Time 1
nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size = 4

-- Dissect: Entry Date Time 1
nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.entry_date_time_1
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 3 then field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.entry_date_time_1_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Entry Date Time 1: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_dropcopy_nnfdirect_v1_6.zone_offset, 0))

  return offset + length, value
end

-- Error Code
nse_nseix_dropcopy_nnfdirect_v1_6.error_code = {}

-- Size: Error Code
nse_nseix_dropcopy_nnfdirect_v1_6.error_code.size = 2

-- Display: Error Code
nse_nseix_dropcopy_nnfdirect_v1_6.error_code.display = function(value)
  if value == 16001 then
    return "Error Code: Err Invalid User Type (16001)"
  end
  if value == 16004 then
    return "Error Code: Err User Already Signed On (16004)"
  end
  if value == 16006 then
    return "Error Code: Err Invalid Signon (16006)"
  end
  if value == 16007 then
    return "Error Code: Err Signon Not Possible (16007)"
  end
  if value == 16041 then
    return "Error Code: Err Invalid Broker Or Branch (16041)"
  end
  if value == 16042 then
    return "Error Code: Err User Not Found (16042)"
  end
  if value == 16056 then
    return "Error Code: Err Program Error (16056)"
  end
  if value == 16104 then
    return "Error Code: Err System Error (16104)"
  end
  if value == 16123 then
    return "Error Code: Err Cant Complete Your Request (16123)"
  end
  if value == 16134 then
    return "Error Code: Err User Is Disabled (16134)"
  end
  if value == 16148 then
    return "Error Code: Err Invalid User Id (16148)"
  end
  if value == 16154 then
    return "Error Code: Err Invalid Trader Id (16154)"
  end
  if value == 16285 then
    return "Error Code: Err Broker Not Active (16285)"
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
  if value == 16063 then
    return "Error Code: Err Invalid Status (16063)"
  end
  if value == 16070 then
    return "Error Code: Err Data Not Changed (16070)"
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
  if value == 16251 then
    return "Error Code: Oe Diff Trd Mod Vol (16251)"
  end
  if value == 16260 then
    return "Error Code: Error User Not Exists In System (16260)"
  end
  if value == 16264 then
    return "Error Code: Err Already Deleted (16264)"
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
  if value == 16444 then
    return "Error Code: Err Usr Ord Value Limit Exceeded (16444)"
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
    return "Error Code: E Not Valid Fo Security (16529)"
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
  if value == 16797 then
    return "Error Code: Msg Code Voluntary Close Out Status (16797)"
  end
  if value == 16798 then
    return "Error Code: Msg Code Suspended Status (16798)"
  end
  if value == 16807 then
    return "Error Code: E Account Debarred (16807)"
  end
  if value == 17184 then
    return "Error Code: Err User Having Null Rights (17184)"
  end
  if value == 0 then
    return "Error Code: No Error"
  end

  return "Error Code: Unknown("..value..")"
end

-- Dissect: Error Code
nse_nseix_dropcopy_nnfdirect_v1_6.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.error_code, range, value, display)

  return offset + length, value
end

-- Expiry Date
nse_nseix_dropcopy_nnfdirect_v1_6.expiry_date = {}

-- Size: Expiry Date
nse_nseix_dropcopy_nnfdirect_v1_6.expiry_date.size = 4

-- Dissect: Expiry Date
nse_nseix_dropcopy_nnfdirect_v1_6.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.expiry_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.expiry_date
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 3 then field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.expiry_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Expiry Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_dropcopy_nnfdirect_v1_6.zone_offset, 0))

  return offset + length, value
end

-- Fifth Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1 = {}

-- Size: Fifth Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size = 1

-- Display: Fifth Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.display = function(value)
  return "Fifth Reserved 1: "..value
end

-- Dissect: Fifth Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fifth_reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Fill Number
nse_nseix_dropcopy_nnfdirect_v1_6.fill_number = {}

-- Size: Fill Number
nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.size = 4

-- Display: Fill Number
nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.display = function(value)
  return "Fill Number: "..value
end

-- Dissect: Fill Number
nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fill_number, range, value, display)

  return offset + length, value
end

-- Fill Price
nse_nseix_dropcopy_nnfdirect_v1_6.fill_price = {}

-- Size: Fill Price
nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.size = 4

-- Display: Fill Price
nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Dissect: Fill Price
nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Qty
nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty = {}

-- Size: Fill Qty
nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.size = 4

-- Display: Fill Qty
nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.display = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Fill Volume
nse_nseix_dropcopy_nnfdirect_v1_6.fill_volume = {}

-- Size: Fill Volume
nse_nseix_dropcopy_nnfdirect_v1_6.fill_volume.size = 4

-- Display: Fill Volume
nse_nseix_dropcopy_nnfdirect_v1_6.fill_volume.display = function(value)
  return "Fill Volume: "..value
end

-- Dissect: Fill Volume
nse_nseix_dropcopy_nnfdirect_v1_6.fill_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.fill_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.fill_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fill_volume, range, value, display)

  return offset + length, value
end

-- Filler
nse_nseix_dropcopy_nnfdirect_v1_6.filler = {}

-- Size: Filler
nse_nseix_dropcopy_nnfdirect_v1_6.filler.size = 1

-- Display: Filler
nse_nseix_dropcopy_nnfdirect_v1_6.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
nse_nseix_dropcopy_nnfdirect_v1_6.filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.filler.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler, range, range:raw(), display)

  return offset + length, value
end

-- Filler 1
nse_nseix_dropcopy_nnfdirect_v1_6.filler_1 = {}

-- Size: Filler 1
nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size = 1

-- Display: Filler 1
nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler_1, range, range:raw(), display)

  return offset + length, value
end

-- Filler 1 To 16
nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16 = {}

-- Size: Filler 1 To 16
nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size = 2

-- Display: Filler 1 To 16
nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.display = function(value)
  return "Filler 1 To 16: "..value
end

-- Dissect: Filler 1 To 16
nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler_1_to_16, range, range:raw(), display)

  return offset + length, value
end

-- Filler 17
nse_nseix_dropcopy_nnfdirect_v1_6.filler_17 = {}

-- Size: Filler 17
nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size = 1

-- Display: Filler 17
nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.display = function(value)
  return "Filler 17: "..value
end

-- Dissect: Filler 17
nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler_17, range, range:raw(), display)

  return offset + length, value
end

-- Filler 18
nse_nseix_dropcopy_nnfdirect_v1_6.filler_18 = {}

-- Size: Filler 18
nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size = 1

-- Display: Filler 18
nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.display = function(value)
  return "Filler 18: "..value
end

-- Dissect: Filler 18
nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler_18, range, range:raw(), display)

  return offset + length, value
end

-- Filler 9
nse_nseix_dropcopy_nnfdirect_v1_6.filler_9 = {}

-- Size: Filler 9
nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size = 1

-- Display: Filler 9
nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.display = function(value)
  return "Filler 9: "..value
end

-- Dissect: Filler 9
nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler_9, range, range:raw(), display)

  return offset + length, value
end

-- Filler Options 1
nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1 = {}

-- Size: Filler Options 1
nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size = 3

-- Display: Filler Options 1
nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.display = function(value)
  return "Filler Options 1: "..value
end

-- Dissect: Filler Options 1
nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler_options_1, range, range:raw(), display)

  return offset + length, value
end

-- Filler Y
nse_nseix_dropcopy_nnfdirect_v1_6.filler_y = {}

-- Size: Filler Y
nse_nseix_dropcopy_nnfdirect_v1_6.filler_y.size = 1

-- Display: Filler Y
nse_nseix_dropcopy_nnfdirect_v1_6.filler_y.display = function(value)
  return "Filler Y: "..value
end

-- Dissect: Filler Y
nse_nseix_dropcopy_nnfdirect_v1_6.filler_y.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.filler_y.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.filler_y.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.filler_y, range, range:raw(), display)

  return offset + length, value
end

-- Fillerx 1
nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1 = {}

-- Size: Fillerx 1
nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size = 1

-- Display: Fillerx 1
nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.display = function(value)
  return "Fillerx 1: "..value
end

-- Dissect: Fillerx 1
nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fillerx_1, range, range:raw(), display)

  return offset + length, value
end

-- Fillerx 2
nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_2 = {}

-- Size: Fillerx 2
nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_2.size = 1

-- Display: Fillerx 2
nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_2.display = function(value)
  return "Fillerx 2: "..value
end

-- Dissect: Fillerx 2
nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fillerx_2, range, range:raw(), display)

  return offset + length, value
end

-- Fillery 1
nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1 = {}

-- Size: Fillery 1
nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size = 1

-- Display: Fillery 1
nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.display = function(value)
  return "Fillery 1: "..value
end

-- Dissect: Fillery 1
nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fillery_1, range, range:raw(), display)

  return offset + length, value
end

-- Fourth Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1 = {}

-- Size: Fourth Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size = 1

-- Display: Fourth Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.display = function(value)
  return "Fourth Reserved 1: "..value
end

-- Dissect: Fourth Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.fourth_reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Give Up Trade
nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade = {}

-- Size: Give Up Trade
nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.size = 1

-- Display: Give Up Trade
nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.display = function(value)
  return "Give Up Trade: "..value
end

-- Dissect: Give Up Trade
nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.give_up_trade, range, value, display)

  return offset + length, value
end

-- Giveup Flag
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag = {}

-- Size: Giveup Flag
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size = 1

-- Display: Giveup Flag
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.display = function(value)
  return "Giveup Flag: "..value
end

-- Dissect: Giveup Flag
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.giveup_flag, range, value, display)

  return offset + length, value
end

-- Giveup Flag 1
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1 = {}

-- Size: Giveup Flag 1
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size = 1

-- Display: Giveup Flag 1
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.display = function(value)
  return "Giveup Flag 1: "..value
end

-- Dissect: Giveup Flag 1
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.giveup_flag_1, range, value, display)

  return offset + length, value
end

-- Giveup Flag 2
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_2 = {}

-- Size: Giveup Flag 2
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_2.size = 1

-- Display: Giveup Flag 2
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_2.display = function(value)
  return "Giveup Flag 2: "..value
end

-- Dissect: Giveup Flag 2
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.giveup_flag_2, range, value, display)

  return offset + length, value
end

-- Good Till Date
nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date = {}

-- Size: Good Till Date
nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size = 4

-- Dissect: Good Till Date
nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.good_till_date
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 3 then field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.good_till_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Good Till Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_dropcopy_nnfdirect_v1_6.zone_offset, 0))

  return offset + length, value
end

-- Good Till Date 1
nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1 = {}

-- Size: Good Till Date 1
nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size = 4

-- Dissect: Good Till Date 1
nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.good_till_date_1
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 3 then field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.good_till_date_1_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Good Till Date 1: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_dropcopy_nnfdirect_v1_6.zone_offset, 0))

  return offset + length, value
end

-- Gtd
nse_nseix_dropcopy_nnfdirect_v1_6.gtd = {}

-- Size: Gtd
nse_nseix_dropcopy_nnfdirect_v1_6.gtd.size = 4

-- Display: Gtd
nse_nseix_dropcopy_nnfdirect_v1_6.gtd.display = function(value)
  return "Gtd: "..value
end

-- Dissect: Gtd
nse_nseix_dropcopy_nnfdirect_v1_6.gtd.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.gtd.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.gtd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.gtd, range, value, display)

  return offset + length, value
end

-- Header Timestamp
nse_nseix_dropcopy_nnfdirect_v1_6.header_timestamp = {}

-- Size: Header Timestamp
nse_nseix_dropcopy_nnfdirect_v1_6.header_timestamp.size = 8

-- Display: Header Timestamp
nse_nseix_dropcopy_nnfdirect_v1_6.header_timestamp.display = function(value)
  return "Header Timestamp: "..value
end

-- Dissect: Header Timestamp
nse_nseix_dropcopy_nnfdirect_v1_6.header_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.header_timestamp.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.header_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.header_timestamp, range, value, display)

  return offset + length, value
end

-- Initiated By Control
nse_nseix_dropcopy_nnfdirect_v1_6.initiated_by_control = {}

-- Size: Initiated By Control
nse_nseix_dropcopy_nnfdirect_v1_6.initiated_by_control.size = 1

-- Display: Initiated By Control
nse_nseix_dropcopy_nnfdirect_v1_6.initiated_by_control.labels = {
  ["Y"] = "Initiated By Control: Yes (Y)",
  ["N"] = "Initiated By Control: No (N)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.initiated_by_control.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.initiated_by_control.labels[value] or "Initiated By Control: Unknown("..value..")"
end

-- Dissect: Initiated By Control
nse_nseix_dropcopy_nnfdirect_v1_6.initiated_by_control.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.initiated_by_control.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.initiated_by_control.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.initiated_by_control, range, value, display)

  return offset + length, value
end

-- Instrument Name
nse_nseix_dropcopy_nnfdirect_v1_6.instrument_name = {}

-- Size: Instrument Name
nse_nseix_dropcopy_nnfdirect_v1_6.instrument_name.size = 6

-- Display: Instrument Name
nse_nseix_dropcopy_nnfdirect_v1_6.instrument_name.display = function(value)
  return "Instrument Name: "..value
end

-- Dissect: Instrument Name
nse_nseix_dropcopy_nnfdirect_v1_6.instrument_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.instrument_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.instrument_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.instrument_name, range, value, display)

  return offset + length, value
end

-- Last Activity Reference
nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference = {}

-- Size: Last Activity Reference
nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size = 8

-- Display: Last Activity Reference
nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.display = function(value)
  return "Last Activity Reference: "..value
end

-- Dissect: Last Activity Reference
nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.last_activity_reference, range, value, display)

  return offset + length, value
end

-- Last Modified
nse_nseix_dropcopy_nnfdirect_v1_6.last_modified = {}

-- Size: Last Modified
nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size = 4

-- Dissect: Last Modified
nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.last_modified
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 3 then field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.last_modified_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Modified: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_dropcopy_nnfdirect_v1_6.zone_offset, 0))

  return offset + length, value
end

-- Last Modified 1
nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1 = {}

-- Size: Last Modified 1
nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size = 4

-- Dissect: Last Modified 1
nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.last_modified_1
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 3 then field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.last_modified_1_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Modified 1: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_dropcopy_nnfdirect_v1_6.zone_offset, 0))

  return offset + length, value
end

-- Last Modified Date Time
nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_date_time = {}

-- Size: Last Modified Date Time
nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_date_time.size = 4

-- Dissect: Last Modified Date Time
nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.last_modified_date_time
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 3 then field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.last_modified_date_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Modified Date Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_dropcopy_nnfdirect_v1_6.zone_offset, 0))

  return offset + length, value
end

-- Log Time
nse_nseix_dropcopy_nnfdirect_v1_6.log_time = {}

-- Size: Log Time
nse_nseix_dropcopy_nnfdirect_v1_6.log_time.size = 4

-- Dissect: Log Time
nse_nseix_dropcopy_nnfdirect_v1_6.log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.log_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.log_time
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 3 then field = omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.log_time_utc end

  if value == 0 then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Log Time: No Value")
    return offset + length, value
  end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_dropcopy_nnfdirect_v1_6.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Log Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_dropcopy_nnfdirect_v1_6.zone_offset, 0))

  return offset + length, value
end

-- Message Length
nse_nseix_dropcopy_nnfdirect_v1_6.message_length = {}

-- Size: Message Length
nse_nseix_dropcopy_nnfdirect_v1_6.message_length.size = 2

-- Display: Message Length
nse_nseix_dropcopy_nnfdirect_v1_6.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nseix_dropcopy_nnfdirect_v1_6.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Min Fill Aon 1
nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1 = {}

-- Size: Min Fill Aon 1
nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size = 4

-- Display: Min Fill Aon 1
nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.display = function(value)
  return "Min Fill Aon 1: "..value
end

-- Dissect: Min Fill Aon 1
nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.min_fill_aon_1, range, value, display)

  return offset + length, value
end

-- Min Fill Aon 2
nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_2 = {}

-- Size: Min Fill Aon 2
nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_2.size = 4

-- Display: Min Fill Aon 2
nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_2.display = function(value)
  return "Min Fill Aon 2: "..value
end

-- Dissect: Min Fill Aon 2
nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.min_fill_aon_2, range, value, display)

  return offset + length, value
end

-- Minimum Fill Aon Volume
nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume = {}

-- Size: Minimum Fill Aon Volume
nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size = 4

-- Display: Minimum Fill Aon Volume
nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.display = function(value)
  return "Minimum Fill Aon Volume: "..value
end

-- Dissect: Minimum Fill Aon Volume
nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.minimum_fill_aon_volume, range, value, display)

  return offset + length, value
end

-- Mkt Replay
nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay = {}

-- Size: Mkt Replay
nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size = 8

-- Display: Mkt Replay
nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.display = function(value)
  return "Mkt Replay: "..string.format("%.0f", value)
end

-- Dissect: Mkt Replay
nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.mkt_replay, range, value, display)

  return offset + length, value
end

-- Mod Cxl By 1
nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1 = {}

-- Size: Mod Cxl By 1
nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size = 1

-- Display: Mod Cxl By 1
nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.display = function(value)
  return "Mod Cxl By 1: "..value
end

-- Dissect: Mod Cxl By 1
nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.mod_cxl_by_1, range, value, display)

  return offset + length, value
end

-- Modified Cancelled By
nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by = {}

-- Size: Modified Cancelled By
nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size = 1

-- Display: Modified Cancelled By
nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.labels = {
  ["T"] = "Modified Cancelled By: Trader (T)",
  ["B"] = "Modified Cancelled By: Branch Manager (B)",
  ["M"] = "Modified Cancelled By: Corporate Manager (M)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.labels[value] or "Modified Cancelled By: Unknown("..value..")"
end

-- Dissect: Modified Cancelled By
nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.modified_cancelled_by, range, value, display)

  return offset + length, value
end

-- New Volume
nse_nseix_dropcopy_nnfdirect_v1_6.new_volume = {}

-- Size: New Volume
nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.size = 4

-- Display: New Volume
nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.display = function(value)
  return "New Volume: "..value
end

-- Dissect: New Volume
nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.new_volume, range, value, display)

  return offset + length, value
end

-- Nnf Field
nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field = {}

-- Size: Nnf Field
nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size = 8

-- Display: Nnf Field
nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.display = function(value)
  return "Nnf Field: "..string.format("%.0f", value)
end

-- Dissect: Nnf Field
nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nnf_field, range, value, display)

  return offset + length, value
end

-- Old Account Number
nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number = {}

-- Size: Old Account Number
nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.size = 10

-- Display: Old Account Number
nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.display = function(value)
  return "Old Account Number: "..value
end

-- Dissect: Old Account Number
nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.old_account_number, range, value, display)

  return offset + length, value
end

-- Old Open Close
nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close = {}

-- Size: Old Open Close
nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.size = 1

-- Display: Old Open Close
nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.display = function(value)
  return "Old Open Close: "..value
end

-- Dissect: Old Open Close
nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.old_open_close, range, value, display)

  return offset + length, value
end

-- Old Participant
nse_nseix_dropcopy_nnfdirect_v1_6.old_participant = {}

-- Size: Old Participant
nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.size = 12

-- Display: Old Participant
nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.display = function(value)
  return "Old Participant: "..value
end

-- Dissect: Old Participant
nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.old_participant, range, value, display)

  return offset + length, value
end

-- Op Broker Id
nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id = {}

-- Size: Op Broker Id
nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.size = 5

-- Display: Op Broker Id
nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.display = function(value)
  return "Op Broker Id: "..value
end

-- Dissect: Op Broker Id
nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.op_broker_id, range, value, display)

  return offset + length, value
end

-- Op Broker Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1 = {}

-- Size: Op Broker Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size = 5

-- Display: Op Broker Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.display = function(value)
  return "Op Broker Id 1: "..value
end

-- Dissect: Op Broker Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.op_broker_id_1, range, value, display)

  return offset + length, value
end

-- Op Broker Id 2
nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_2 = {}

-- Size: Op Broker Id 2
nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_2.size = 5

-- Display: Op Broker Id 2
nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_2.display = function(value)
  return "Op Broker Id 2: "..value
end

-- Dissect: Op Broker Id 2
nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.op_broker_id_2, range, value, display)

  return offset + length, value
end

-- Op Order Number
nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number = {}

-- Size: Op Order Number
nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.size = 8

-- Display: Op Order Number
nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.display = function(value)
  return "Op Order Number: "..string.format("%.0f", value)
end

-- Dissect: Op Order Number
nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.op_order_number, range, value, display)

  return offset + length, value
end

-- Open Close
nse_nseix_dropcopy_nnfdirect_v1_6.open_close = {}

-- Size: Open Close
nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size = 1

-- Display: Open Close
nse_nseix_dropcopy_nnfdirect_v1_6.open_close.labels = {
  ["O"] = "Open Close: Open (O)",
  ["C"] = "Open Close: Close (C)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.open_close.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.open_close.labels[value] or "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.open_close, range, value, display)

  return offset + length, value
end

-- Open Close 1
nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1 = {}

-- Size: Open Close 1
nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size = 1

-- Display: Open Close 1
nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.labels = {
  ["O"] = "Open Close 1: Open (O)",
  ["C"] = "Open Close 1: Close (C)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.labels[value] or "Open Close 1: Unknown("..value..")"
end

-- Dissect: Open Close 1
nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.open_close_1, range, value, display)

  return offset + length, value
end

-- Open Close 2
nse_nseix_dropcopy_nnfdirect_v1_6.open_close_2 = {}

-- Size: Open Close 2
nse_nseix_dropcopy_nnfdirect_v1_6.open_close_2.size = 1

-- Display: Open Close 2
nse_nseix_dropcopy_nnfdirect_v1_6.open_close_2.labels = {
  ["O"] = "Open Close 2: Open (O)",
  ["C"] = "Open Close 2: Close (C)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.open_close_2.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.open_close_2.labels[value] or "Open Close 2: Unknown("..value..")"
end

-- Dissect: Open Close 2
nse_nseix_dropcopy_nnfdirect_v1_6.open_close_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.open_close_2, range, value, display)

  return offset + length, value
end

-- Option Type
nse_nseix_dropcopy_nnfdirect_v1_6.option_type = {}

-- Size: Option Type
nse_nseix_dropcopy_nnfdirect_v1_6.option_type.size = 2

-- Display: Option Type
nse_nseix_dropcopy_nnfdirect_v1_6.option_type.labels = {
  ["CE"] = "Option Type: Call Option (CE)",
  ["PE"] = "Option Type: Put Option (PE)",
  ["XX"] = "Option Type: Futures Contract (XX)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.option_type.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.option_type.labels[value] or "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nse_nseix_dropcopy_nnfdirect_v1_6.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.option_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Number
nse_nseix_dropcopy_nnfdirect_v1_6.order_number = {}

-- Size: Order Number
nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size = 8

-- Display: Order Number
nse_nseix_dropcopy_nnfdirect_v1_6.order_number.display = function(value)
  return "Order Number: "..string.format("%.0f", value)
end

-- Dissect: Order Number
nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Number 1
nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1 = {}

-- Size: Order Number 1
nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size = 8

-- Display: Order Number 1
nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.display = function(value)
  return "Order Number 1: "..string.format("%.0f", value)
end

-- Dissect: Order Number 1
nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_number_1, range, value, display)

  return offset + length, value
end

-- Order Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.order_sequence_number = {}

-- Size: Order Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.order_sequence_number.size = 8

-- Display: Order Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.order_sequence_number.display = function(value)
  return "Sequence Number: "..string.format("%.0f", value)
end

-- Dissect: Order Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.order_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.order_sequence_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.order_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_sequence_number, range, value, display)

  return offset + length, value
end

-- Order Trade Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.order_trade_sequence_number = {}

-- Size: Order Trade Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.order_trade_sequence_number.size = 8

-- Display: Order Trade Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.order_trade_sequence_number.display = function(value)
  return "Sequence Number: "..string.format("%.0f", value)
end

-- Dissect: Order Trade Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.order_trade_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.order_trade_sequence_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.order_trade_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_trade_sequence_number, range, value, display)

  return offset + length, value
end

-- Order Type
nse_nseix_dropcopy_nnfdirect_v1_6.order_type = {}

-- Size: Order Type
nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size = 2

-- Display: Order Type
nse_nseix_dropcopy_nnfdirect_v1_6.order_type.display = function(value)
  return "Order Type: "..value
end

-- Dissect: Order Type
nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_type, range, value, display)

  return offset + length, value
end

-- Order Type 1
nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1 = {}

-- Size: Order Type 1
nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size = 2

-- Display: Order Type 1
nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.display = function(value)
  return "Order Type 1: "..value
end

-- Dissect: Order Type 1
nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_type_1, range, value, display)

  return offset + length, value
end

-- Order Type 2
nse_nseix_dropcopy_nnfdirect_v1_6.order_type_2 = {}

-- Size: Order Type 2
nse_nseix_dropcopy_nnfdirect_v1_6.order_type_2.size = 2

-- Display: Order Type 2
nse_nseix_dropcopy_nnfdirect_v1_6.order_type_2.display = function(value)
  return "Order Type 2: "..value
end

-- Dissect: Order Type 2
nse_nseix_dropcopy_nnfdirect_v1_6.order_type_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_type_2, range, value, display)

  return offset + length, value
end

-- Original Vol
nse_nseix_dropcopy_nnfdirect_v1_6.original_vol = {}

-- Size: Original Vol
nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.size = 4

-- Display: Original Vol
nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.display = function(value)
  return "Original Vol: "..value
end

-- Dissect: Original Vol
nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.original_vol, range, value, display)

  return offset + length, value
end

-- Packet Length
nse_nseix_dropcopy_nnfdirect_v1_6.packet_length = {}

-- Size: Packet Length
nse_nseix_dropcopy_nnfdirect_v1_6.packet_length.size = 2

-- Display: Packet Length
nse_nseix_dropcopy_nnfdirect_v1_6.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nse_nseix_dropcopy_nnfdirect_v1_6.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.packet_sequence_number = {}

-- Size: Packet Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Participant
nse_nseix_dropcopy_nnfdirect_v1_6.participant = {}

-- Size: Participant
nse_nseix_dropcopy_nnfdirect_v1_6.participant.size = 12

-- Display: Participant
nse_nseix_dropcopy_nnfdirect_v1_6.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
nse_nseix_dropcopy_nnfdirect_v1_6.participant.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.participant, range, value, display)

  return offset + length, value
end

-- Participant Type
nse_nseix_dropcopy_nnfdirect_v1_6.participant_type = {}

-- Size: Participant Type
nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size = 1

-- Display: Participant Type
nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.display = function(value)
  return "Participant Type: "..value
end

-- Dissect: Participant Type
nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.participant_type, range, value, display)

  return offset + length, value
end

-- Participant Type 1
nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1 = {}

-- Size: Participant Type 1
nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size = 1

-- Display: Participant Type 1
nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.display = function(value)
  return "Participant Type 1: "..value
end

-- Dissect: Participant Type 1
nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.participant_type_1, range, value, display)

  return offset + length, value
end

-- Password
nse_nseix_dropcopy_nnfdirect_v1_6.password = {}

-- Size: Password
nse_nseix_dropcopy_nnfdirect_v1_6.password.size = 8

-- Display: Password
nse_nseix_dropcopy_nnfdirect_v1_6.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nse_nseix_dropcopy_nnfdirect_v1_6.password.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nse_nseix_dropcopy_nnfdirect_v1_6.price = {}

-- Size: Price
nse_nseix_dropcopy_nnfdirect_v1_6.price.size = 4

-- Display: Price
nse_nseix_dropcopy_nnfdirect_v1_6.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.price, range, value, display)

  return offset + length, value
end

-- Price 1
nse_nseix_dropcopy_nnfdirect_v1_6.price_1 = {}

-- Size: Price 1
nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size = 4

-- Display: Price 1
nse_nseix_dropcopy_nnfdirect_v1_6.price_1.display = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nse_nseix_dropcopy_nnfdirect_v1_6.price_2 = {}

-- Size: Price 2
nse_nseix_dropcopy_nnfdirect_v1_6.price_2.size = 4

-- Display: Price 2
nse_nseix_dropcopy_nnfdirect_v1_6.price_2.display = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nse_nseix_dropcopy_nnfdirect_v1_6.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.price_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Diff
nse_nseix_dropcopy_nnfdirect_v1_6.price_diff = {}

-- Size: Price Diff
nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size = 4

-- Display: Price Diff
nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.display = function(value)
  return "Price Diff: "..value
end

-- Dissect: Price Diff
nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.price_diff, range, value, display)

  return offset + length, value
end

-- Pro Client 1
nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1 = {}

-- Size: Pro Client 1
nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size = 2

-- Display: Pro Client 1
nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.labels = {
  [1] = "Pro Client 1: Clients Order (1)",
  [2] = "Pro Client 1: Brokers Order (2)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.labels[value] or "Pro Client 1: Unknown("..value..")"
end

-- Dissect: Pro Client 1
nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.pro_client_1, range, value, display)

  return offset + length, value
end

-- Pro Client Indicator
nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator = {}

-- Size: Pro Client Indicator
nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size = 2

-- Display: Pro Client Indicator
nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.labels = {
  [1] = "Pro Client Indicator: Clients Order (1)",
  [2] = "Pro Client Indicator: Brokers Order (2)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.labels[value] or "Pro Client Indicator: Unknown("..value..")"
end

-- Dissect: Pro Client Indicator
nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.pro_client_indicator, range, value, display)

  return offset + length, value
end

-- Reason Code
nse_nseix_dropcopy_nnfdirect_v1_6.reason_code = {}

-- Size: Reason Code
nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size = 2

-- Display: Reason Code
nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.labels = {
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

nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.labels[value] or "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Reason Code 1
nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1 = {}

-- Size: Reason Code 1
nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size = 2

-- Display: Reason Code 1
nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.display = function(value)
  return "Reason Code 1: "..value
end

-- Dissect: Reason Code 1
nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reason_code_1, range, value, display)

  return offset + length, value
end

-- Reference
nse_nseix_dropcopy_nnfdirect_v1_6.reference = {}

-- Size: Reference
nse_nseix_dropcopy_nnfdirect_v1_6.reference.size = 4

-- Display: Reference
nse_nseix_dropcopy_nnfdirect_v1_6.reference.display = function(value)
  return "Reference: "..value
end

-- Dissect: Reference
nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.reference.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reference, range, value, display)

  return offset + length, value
end

-- Registration Checksum
nse_nseix_dropcopy_nnfdirect_v1_6.registration_checksum = {}

-- Size: Registration Checksum
nse_nseix_dropcopy_nnfdirect_v1_6.registration_checksum.size = 16

-- Display: Registration Checksum
nse_nseix_dropcopy_nnfdirect_v1_6.registration_checksum.display = function(value)
  return "Registration Checksum: "..value
end

-- Dissect: Registration Checksum
nse_nseix_dropcopy_nnfdirect_v1_6.registration_checksum.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.registration_checksum.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.registration_checksum.display(value, buffer, offset, packet, parent)

  local item = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.registration_checksum, range, range:raw(), display)

  -- Verified only where the reader asks: the Md5 of the bytes covered, its own left out
  if nse_nseix_dropcopy_nnfdirect_v1_6.verify_checksums then
    local start = offset
    local computed = digest_md5(buffer(start, buffer:len() - start), offset - start, length, false)

    if computed == value then
      item:append_text(" [correct]")
    else
      item:append_text(" [incorrect, should be "..computed.."]")
      item:add_proto_expert_info(nse_nseix_dropcopy_nnfdirect_v1_6.experts.registration_checksum_incorrect, "Registration Checksum incorrect: "..value..", should be "..computed)
    end
  else
    item:append_text(" [unverified]")
  end

  return offset + length, value
end

-- Remaining Vol
nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol = {}

-- Size: Remaining Vol
nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.size = 4

-- Display: Remaining Vol
nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.display = function(value)
  return "Remaining Vol: "..value
end

-- Dissect: Remaining Vol
nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.remaining_vol, range, value, display)

  return offset + length, value
end

-- Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1 = {}

-- Size: Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size = 1

-- Display: Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 10
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10 = {}

-- Size: Reserved 10
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size = 10

-- Display: Reserved 10
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_10, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 119
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_119 = {}

-- Size: Reserved 119
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_119.size = 119

-- Display: Reserved 119
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_119.display = function(value)
  return "Reserved 119: "..value
end

-- Dissect: Reserved 119
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_119.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_119.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_119.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_119, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 2
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2 = {}

-- Size: Reserved 2
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size = 2

-- Display: Reserved 2
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_2, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 30
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_30 = {}

-- Size: Reserved 30
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_30.size = 30

-- Display: Reserved 30
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_30.display = function(value)
  return "Reserved 30: "..value
end

-- Dissect: Reserved 30
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_30.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_30.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_30.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_30, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 4
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4 = {}

-- Size: Reserved 4
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size = 4

-- Display: Reserved 4
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_4, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 52
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52 = {}

-- Size: Reserved 52
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size = 52

-- Display: Reserved 52
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.display = function(value)
  return "Reserved 52: "..value
end

-- Dissect: Reserved 52
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_52, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 60
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60 = {}

-- Size: Reserved 60
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size = 60

-- Display: Reserved 60
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.display = function(value)
  return "Reserved 60: "..value
end

-- Dissect: Reserved 60
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_60, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 8
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_8 = {}

-- Size: Reserved 8
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_8.size = 8

-- Display: Reserved 8
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
nse_nseix_dropcopy_nnfdirect_v1_6.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Response Order Number
nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number = {}

-- Size: Response Order Number
nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.size = 8

-- Display: Response Order Number
nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.display = function(value)
  return "Response Order Number: "..string.format("%.0f", value)
end

-- Dissect: Response Order Number
nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.response_order_number, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1 = {}

-- Size: Second Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size = 1

-- Display: Second Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.second_reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.sequence_number = {}

-- Size: Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.sequence_number.size = 8

-- Display: Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.sequence_number.display = function(value)
  return "Sequence Number: "..string.format("%.0f", value)
end

-- Dissect: Sequence Number
nse_nseix_dropcopy_nnfdirect_v1_6.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.sequence_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Settlement Period
nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period = {}

-- Size: Settlement Period
nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size = 2

-- Display: Settlement Period
nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.display = function(value)
  return "Settlement Period: "..value
end

-- Dissect: Settlement Period
nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.settlement_period, range, value, display)

  return offset + length, value
end

-- Settlement Period 1
nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1 = {}

-- Size: Settlement Period 1
nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size = 2

-- Display: Settlement Period 1
nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.display = function(value)
  return "Settlement Period 1: "..value
end

-- Dissect: Settlement Period 1
nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.settlement_period_1, range, value, display)

  return offset + length, value
end

-- Settlor
nse_nseix_dropcopy_nnfdirect_v1_6.settlor = {}

-- Size: Settlor
nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size = 12

-- Display: Settlor
nse_nseix_dropcopy_nnfdirect_v1_6.settlor.display = function(value)
  return "Settlor: "..value
end

-- Dissect: Settlor
nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.settlor, range, value, display)

  return offset + length, value
end

-- Settlor 1
nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1 = {}

-- Size: Settlor 1
nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size = 12

-- Display: Settlor 1
nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.display = function(value)
  return "Settlor 1: "..value
end

-- Dissect: Settlor 1
nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.settlor_1, range, value, display)

  return offset + length, value
end

-- Solicitor Period
nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period = {}

-- Size: Solicitor Period
nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size = 2

-- Display: Solicitor Period
nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.display = function(value)
  return "Solicitor Period: "..value
end

-- Dissect: Solicitor Period
nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.solicitor_period, range, value, display)

  return offset + length, value
end

-- Solicitor Period 1
nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1 = {}

-- Size: Solicitor Period 1
nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size = 2

-- Display: Solicitor Period 1
nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.display = function(value)
  return "Solicitor Period 1: "..value
end

-- Dissect: Solicitor Period 1
nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.solicitor_period_1, range, value, display)

  return offset + length, value
end

-- Spread Entry Time
nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time = {}

-- Size: Spread Entry Time
nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size = 8

-- Display: Spread Entry Time
nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.display = function(value)
  return "Mkt Replay: "..string.format("%.0f", value)
end

-- Dissect: Spread Entry Time
nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.spread_entry_time, range, value, display)

  return offset + length, value
end

-- Start Alpha 1
nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1 = {}

-- Size: Start Alpha 1
nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size = 2

-- Display: Start Alpha 1
nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.display = function(value)
  return "Start Alpha 1: "..value
end

-- Dissect: Start Alpha 1
nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.start_alpha_1, range, value, display)

  return offset + length, value
end

-- Strike Price
nse_nseix_dropcopy_nnfdirect_v1_6.strike_price = {}

-- Size: Strike Price
nse_nseix_dropcopy_nnfdirect_v1_6.strike_price.size = 4

-- Display: Strike Price
nse_nseix_dropcopy_nnfdirect_v1_6.strike_price.display = function(value)
  -- Check if field has value
  if value == -1 then
    return "Strike Price: Futures Contract"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
nse_nseix_dropcopy_nnfdirect_v1_6.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.strike_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
nse_nseix_dropcopy_nnfdirect_v1_6.symbol = {}

-- Size: Symbol
nse_nseix_dropcopy_nnfdirect_v1_6.symbol.size = 10

-- Display: Symbol
nse_nseix_dropcopy_nnfdirect_v1_6.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nse_nseix_dropcopy_nnfdirect_v1_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Third Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1 = {}

-- Size: Third Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size = 1

-- Display: Third Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.display = function(value)
  return "Third Reserved 1: "..value
end

-- Dissect: Third Reserved 1
nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.third_reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Time Stamp 1
nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_1 = {}

-- Size: Time Stamp 1
nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_1.size = 8

-- Display: Time Stamp 1
nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_1.display = function(value)
  -- Check if field has value
  if value == nil or value == '' or value == "00000000" then
    return "Time Stamp 1: No Value"
  end

  return "Time Stamp 1: "..value
end

-- Dissect: Time Stamp 1
nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.time_stamp_1, range, value, display)

  return offset + length, value
end

-- Time Stamp 2
nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_2 = {}

-- Size: Time Stamp 2
nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_2.size = 8

-- Display: Time Stamp 2
nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' or value == "00000000" then
    return "Time Stamp 2: No Value"
  end

  return "Time Stamp 2: "..value
end

-- Dissect: Time Stamp 2
nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.time_stamp_2, range, value, display)

  return offset + length, value
end

-- Token
nse_nseix_dropcopy_nnfdirect_v1_6.token = {}

-- Size: Token
nse_nseix_dropcopy_nnfdirect_v1_6.token.size = 4

-- Display: Token
nse_nseix_dropcopy_nnfdirect_v1_6.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nseix_dropcopy_nnfdirect_v1_6.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.token.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.token, range, value, display)

  return offset + length, value
end

-- Token 1
nse_nseix_dropcopy_nnfdirect_v1_6.token_1 = {}

-- Size: Token 1
nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size = 4

-- Display: Token 1
nse_nseix_dropcopy_nnfdirect_v1_6.token_1.display = function(value)
  return "Token 1: "..value
end

-- Dissect: Token 1
nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.token_1, range, value, display)

  return offset + length, value
end

-- Token 2
nse_nseix_dropcopy_nnfdirect_v1_6.token_2 = {}

-- Size: Token 2
nse_nseix_dropcopy_nnfdirect_v1_6.token_2.size = 4

-- Display: Token 2
nse_nseix_dropcopy_nnfdirect_v1_6.token_2.display = function(value)
  return "Token 2: "..value
end

-- Dissect: Token 2
nse_nseix_dropcopy_nnfdirect_v1_6.token_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.token_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.token_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.token_2, range, value, display)

  return offset + length, value
end

-- Token No
nse_nseix_dropcopy_nnfdirect_v1_6.token_no = {}

-- Size: Token No
nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size = 4

-- Display: Token No
nse_nseix_dropcopy_nnfdirect_v1_6.token_no.display = function(value)
  return "Token No: "..value
end

-- Dissect: Token No
nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.token_no, range, value, display)

  return offset + length, value
end

-- Total Vol Remaining 1
nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1 = {}

-- Size: Total Vol Remaining 1
nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size = 4

-- Display: Total Vol Remaining 1
nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.display = function(value)
  return "Total Vol Remaining 1: "..value
end

-- Dissect: Total Vol Remaining 1
nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.total_vol_remaining_1, range, value, display)

  return offset + length, value
end

-- Total Vol Remaining 2
nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_2 = {}

-- Size: Total Vol Remaining 2
nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_2.size = 4

-- Display: Total Vol Remaining 2
nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_2.display = function(value)
  return "Total Vol Remaining 2: "..value
end

-- Dissect: Total Vol Remaining 2
nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.total_vol_remaining_2, range, value, display)

  return offset + length, value
end

-- Total Volume Remaining
nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining = {}

-- Size: Total Volume Remaining
nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size = 4

-- Display: Total Volume Remaining
nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.display = function(value)
  return "Total Volume Remaining: "..value
end

-- Dissect: Total Volume Remaining
nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.total_volume_remaining, range, value, display)

  return offset + length, value
end

-- Trade Book Type
nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type = {}

-- Size: Trade Book Type
nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.size = 1

-- Display: Trade Book Type
nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.display = function(value)
  return "Trade Book Type: "..value
end

-- Dissect: Trade Book Type
nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trade_book_type, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nseix_dropcopy_nnfdirect_v1_6.trader_id = {}

-- Size: Trader Id
nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size = 4

-- Display: Trader Id
nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trader Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1 = {}

-- Size: Trader Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size = 4

-- Display: Trader Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.display = function(value)
  return "Trader Id 1: "..value
end

-- Dissect: Trader Id 1
nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trader_id_1, range, value, display)

  return offset + length, value
end

-- Trader Num
nse_nseix_dropcopy_nnfdirect_v1_6.trader_num = {}

-- Size: Trader Num
nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.size = 4

-- Display: Trader Num
nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.display = function(value)
  return "Trader Num: "..value
end

-- Dissect: Trader Num
nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trader_num, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nseix_dropcopy_nnfdirect_v1_6.transaction_code = {}

-- Size: Transaction Code
nse_nseix_dropcopy_nnfdirect_v1_6.transaction_code.size = 2

-- Display: Transaction Code
nse_nseix_dropcopy_nnfdirect_v1_6.transaction_code.labels = {
  [2300] = "Transaction Code: Signon In Message (2300)",
  [2301] = "Transaction Code: Sign On Out Message (2301)",
  [23506] = "Transaction Code: Heartbeat Message (23506)",
  [8000] = "Transaction Code: Dc Download Request Message (8000)",
  [8400] = "Transaction Code: Dc Order Request Message (8400)",
  [8500] = "Transaction Code: Dc Ord Trd Request Message (8500)",
  [2222] = "Transaction Code: Trade Confirmation Message (2222)",
  [2287] = "Transaction Code: Trade Modify Confirm Message (2287)",
  [2288] = "Transaction Code: Trade Modify Reject Message (2288)",
  [2282] = "Transaction Code: Trade Cancel Confirm Message (2282)",
  [2286] = "Transaction Code: Trade Cancel Reject Message (2286)",
  [2090] = "Transaction Code: Nlt Trade Confirmation Message (2090)",
  [5449] = "Transaction Code: Nlt Trd Mod Confirmation Message (5449)",
  [5450] = "Transaction Code: Nlt Trd Mod Reject Message (5450)",
  [5452] = "Transaction Code: Nlt Trd Cxl Confirmation Message (5452)",
  [5453] = "Transaction Code: Nlt Trd Cxl Reject Message (5453)",
  [4506] = "Transaction Code: Giveup App Confirm Tm Message (4506)",
  [4507] = "Transaction Code: Giveup Rej Confirm Tm Message (4507)",
  [2001] = "Transaction Code: Board Lot Out Message (2001)",
  [2041] = "Transaction Code: Order Mod Out Message (2041)",
  [2042] = "Transaction Code: Order Mod Reject Message (2042)",
  [2071] = "Transaction Code: Order Cancel Out Message (2071)",
  [2072] = "Transaction Code: Order Cancel Reject Message (2072)",
  [2073] = "Transaction Code: Order Confirmation Message (2073)",
  [2074] = "Transaction Code: Order Mod Confirmation Message (2074)",
  [2075] = "Transaction Code: Order Cancel Confirmation Message (2075)",
  [2170] = "Transaction Code: Freeze To Control Message (2170)",
  [2231] = "Transaction Code: Order Error Message (2231)",
  [9002] = "Transaction Code: Batch Order Cancel Message (9002)",
  [27100] = "Transaction Code: Net Order Error Message (27100)",
  [2083] = "Transaction Code: Nlt Confirmation Message (2083)",
  [2085] = "Transaction Code: Nlt Mod Confirmation Message (2085)",
  [2087] = "Transaction Code: Nlt Cxl Confirmation Message (2087)",
  [2088] = "Transaction Code: Nlt Mod Reject Message (2088)",
  [2089] = "Transaction Code: Nlt Cxl Reject Message (2089)",
  [2124] = "Transaction Code: Spread Order Confirmation Message (2124)",
  [2154] = "Transaction Code: Sp Order Error Message (2154)",
  [27102] = "Transaction Code: Sp Net Order Error Message (27102)",
  [2130] = "Transaction Code: Spread Cxl Confirmation Message (2130)",
  [2136] = "Transaction Code: Spread Mod Confirmation Message (2136)",
  [2133] = "Transaction Code: Spread Mod Reject Message (2133)",
  [2127] = "Transaction Code: Spread Cxl Reject Message (2127)",
  [9004] = "Transaction Code: Batch Spread Order Cancel Message (9004)",
  [2125] = "Transaction Code: Twol Order Confirmation Message (2125)",
  [2126] = "Transaction Code: Thrl Order Confirmation Message (2126)",
  [2155] = "Transaction Code: Twol Order Error Message (2155)",
  [2156] = "Transaction Code: Thrl Order Error Message (2156)",
  [27103] = "Transaction Code: Twol Net Order Error Message (27103)",
  [27104] = "Transaction Code: Thrl Net Order Error Message (27104)",
  [2131] = "Transaction Code: Twol Order Cxl Confirmation Message (2131)",
  [2132] = "Transaction Code: Thrl Order Cxl Confirmation Message (2132)",
}

nse_nseix_dropcopy_nnfdirect_v1_6.transaction_code.display = function(value)
  return nse_nseix_dropcopy_nnfdirect_v1_6.transaction_code.labels[value] or "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nseix_dropcopy_nnfdirect_v1_6.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.transaction_code, range, value, display)

  return offset + length, value
end

-- Trigger Price
nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price = {}

-- Size: Trigger Price
nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size = 4

-- Display: Trigger Price
nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.display = function(value)
  return "Trigger Price: "..value
end

-- Dissect: Trigger Price
nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trigger_price, range, value, display)

  return offset + length, value
end

-- Trigger Price 1
nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1 = {}

-- Size: Trigger Price 1
nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size = 4

-- Display: Trigger Price 1
nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.display = function(value)
  return "Trigger Price 1: "..value
end

-- Dissect: Trigger Price 1
nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trigger_price_1, range, value, display)

  return offset + length, value
end

-- Trigger Price 2
nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_2 = {}

-- Size: Trigger Price 2
nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_2.size = 4

-- Display: Trigger Price 2
nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_2.display = function(value)
  return "Trigger Price 2: "..value
end

-- Dissect: Trigger Price 2
nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trigger_price_2, range, value, display)

  return offset + length, value
end

-- User Id
nse_nseix_dropcopy_nnfdirect_v1_6.user_id = {}

-- Size: User Id
nse_nseix_dropcopy_nnfdirect_v1_6.user_id.size = 4

-- Display: User Id
nse_nseix_dropcopy_nnfdirect_v1_6.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
nse_nseix_dropcopy_nnfdirect_v1_6.user_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.user_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.user_id, range, value, display)

  return offset + length, value
end

-- Vol Filled Today
nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today = {}

-- Size: Vol Filled Today
nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.size = 4

-- Display: Vol Filled Today
nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.display = function(value)
  return "Vol Filled Today: "..value
end

-- Dissect: Vol Filled Today
nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.vol_filled_today, range, value, display)

  return offset + length, value
end

-- Volume
nse_nseix_dropcopy_nnfdirect_v1_6.volume = {}

-- Size: Volume
nse_nseix_dropcopy_nnfdirect_v1_6.volume.size = 4

-- Display: Volume
nse_nseix_dropcopy_nnfdirect_v1_6.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.volume, range, value, display)

  return offset + length, value
end

-- Volume 1
nse_nseix_dropcopy_nnfdirect_v1_6.volume_1 = {}

-- Size: Volume 1
nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size = 4

-- Display: Volume 1
nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.display = function(value)
  return "Volume 1: "..value
end

-- Dissect: Volume 1
nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.volume_1, range, value, display)

  return offset + length, value
end

-- Volume 2
nse_nseix_dropcopy_nnfdirect_v1_6.volume_2 = {}

-- Size: Volume 2
nse_nseix_dropcopy_nnfdirect_v1_6.volume_2.size = 4

-- Display: Volume 2
nse_nseix_dropcopy_nnfdirect_v1_6.volume_2.display = function(value)
  return "Volume 2: "..value
end

-- Dissect: Volume 2
nse_nseix_dropcopy_nnfdirect_v1_6.volume_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.volume_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.volume_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.volume_2, range, value, display)

  return offset + length, value
end

-- Volume Filled Today
nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today = {}

-- Size: Volume Filled Today
nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size = 4

-- Display: Volume Filled Today
nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.display = function(value)
  return "Volume Filled Today: "..value
end

-- Dissect: Volume Filled Today
nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.volume_filled_today, range, value, display)

  return offset + length, value
end

-- Volume Filled Today 1
nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1 = {}

-- Size: Volume Filled Today 1
nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size = 4

-- Display: Volume Filled Today 1
nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.display = function(value)
  return "Volume Filled Today 1: "..value
end

-- Dissect: Volume Filled Today 1
nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.volume_filled_today_1, range, value, display)

  return offset + length, value
end

-- Volume Filled Today 2
nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_2 = {}

-- Size: Volume Filled Today 2
nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_2.size = 4

-- Display: Volume Filled Today 2
nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_2.display = function(value)
  return "Volume Filled Today 2: "..value
end

-- Dissect: Volume Filled Today 2
nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.volume_filled_today_2, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseIx DropCopy NnfDirect 1.6
-----------------------------------------------------------------------

-- Additional Order Flags
nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags = {}

-- Size: Additional Order Flags
nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size = 1

-- Display: Additional Order Flags
nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.display = function(range, value, packet, parent)
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
nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.bits = function(range, value, packet, parent)

  -- Additional Order Flags Reserved 1: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.additional_order_flags_reserved_1, range, value)

  -- Col: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.col, range, value)

  -- Additional Order Flags Reserved 3: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.additional_order_flags_reserved_3, range, value)

  -- Additional Order Flags Reserved 4: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.additional_order_flags_reserved_4, range, value)

  -- Stpc: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.stpc, range, value)

  -- Session Ind: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.session_ind, range, value)

  -- Additional Order Flags Reserved 78: 2 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.additional_order_flags_reserved_78, range, value)
end

-- Dissect: Additional Order Flags
nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.additional_order_flags, range, display)

  if show.structs then
    nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- St Order Flags
nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags = {}

-- Size: St Order Flags
nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size = 2

-- Display: St Order Flags
nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Preopen flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Preopen"
  end
  -- Is Preclose flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Preclose"
  end
  -- Is Nlt Indc flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Nlt Indc"
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
nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.bits = function(range, value, packet, parent)

  -- Preopen: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.preopen, range, value)

  -- Preclose: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.preclose, range, value)

  -- Nlt Indc: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_indc, range, value)

  -- Frozen: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.frozen, range, value)

  -- Modified: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.modified, range, value)

  -- Traded: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.traded, range, value)

  -- Matched Ind: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.matched_ind, range, value)

  -- Mf: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.mf, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.aon, range, value)

  -- Ioc: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.ioc, range, value)

  -- Gtc: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.gtc, range, value)

  -- Day: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.day, range, value)

  -- Mit: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.mit, range, value)

  -- Sl: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.sl, range, value)

  -- Market: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.market, range, value)

  -- Ato: 1 Bit
  parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.ato, range, value)
end

-- Dissect: St Order Flags
nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.st_order_flags, range, display)

  if show.structs then
    nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Contract Desc
nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc = {}

-- Size: Contract Desc
nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.instrument_name.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.symbol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.expiry_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.strike_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.option_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ca_level.size

-- Display: Contract Desc
nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Desc
nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Name: CHAR
  index, instrument_name = nse_nseix_dropcopy_nnfdirect_v1_6.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nseix_dropcopy_nnfdirect_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nseix_dropcopy_nnfdirect_v1_6.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nseix_dropcopy_nnfdirect_v1_6.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nseix_dropcopy_nnfdirect_v1_6.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nseix_dropcopy_nnfdirect_v1_6.ca_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Desc
nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.contract_desc, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.fields(buffer, offset, packet, parent)
  end
end

-- Ms Spd Leg Info Leg 3
nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3 = {}

-- Size: Ms Spd Leg Info Leg 3
nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.token_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_y.size

-- Display: Ms Spd Leg Info Leg 3
nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ms Spd Leg Info Leg 3
nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 2: LONG
  index, token_2 = nse_nseix_dropcopy_nnfdirect_v1_6.token_2.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 2: CHAR
  index, op_broker_id_2 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_2.dissect(buffer, index, packet, parent)

  -- Fillerx 2: CHAR
  if show.padding then
    index, fillerx_2 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_2.size
  end

  -- Order Type 2: SHORT
  index, order_type_2 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_2.dissect(buffer, index, packet, parent)

  -- Buy Sell 2: SHORT
  index, buy_sell_2 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_2.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 2: LONG
  index, disclosed_vol_2 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_2.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 2: LONG
  index, disclosed_vol_remaining_2 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_2.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 2: LONG
  index, total_vol_remaining_2 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_2.dissect(buffer, index, packet, parent)

  -- Volume 2: LONG
  index, volume_2 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_2.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 2: LONG
  index, volume_filled_today_2 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_2.dissect(buffer, index, packet, parent)

  -- Price 2: LONG
  index, price_2 = nse_nseix_dropcopy_nnfdirect_v1_6.price_2.dissect(buffer, index, packet, parent)

  -- Trigger Price 2: LONG
  index, trigger_price_2 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_2.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 2: LONG
  index, min_fill_aon_2 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_2.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Open Close 2: CHAR
  index, open_close_2 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_2.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 2: CHAR
  index, giveup_flag_2 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_2.dissect(buffer, index, packet, parent)

  -- Filler Y: CHAR
  if show.padding then
    index, filler_y = nse_nseix_dropcopy_nnfdirect_v1_6.filler_y.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_y.size
  end

  return index
end

-- Dissect: Ms Spd Leg Info Leg 3
nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.ms_spd_leg_info_leg_3, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.fields(buffer, offset, packet, parent)
  end
end

-- Ms Spd Leg Info Leg 2
nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2 = {}

-- Size: Ms Spd Leg Info Leg 2
nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.token_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_y.size

-- Display: Ms Spd Leg Info Leg 2
nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ms Spd Leg Info Leg 2
nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 2: LONG
  index, token_2 = nse_nseix_dropcopy_nnfdirect_v1_6.token_2.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 2: CHAR
  index, op_broker_id_2 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_2.dissect(buffer, index, packet, parent)

  -- Fillerx 2: CHAR
  if show.padding then
    index, fillerx_2 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_2.size
  end

  -- Order Type 2: SHORT
  index, order_type_2 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_2.dissect(buffer, index, packet, parent)

  -- Buy Sell 2: SHORT
  index, buy_sell_2 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_2.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 2: LONG
  index, disclosed_vol_2 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_2.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 2: LONG
  index, disclosed_vol_remaining_2 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_2.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 2: LONG
  index, total_vol_remaining_2 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_2.dissect(buffer, index, packet, parent)

  -- Volume 2: LONG
  index, volume_2 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_2.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 2: LONG
  index, volume_filled_today_2 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_2.dissect(buffer, index, packet, parent)

  -- Price 2: LONG
  index, price_2 = nse_nseix_dropcopy_nnfdirect_v1_6.price_2.dissect(buffer, index, packet, parent)

  -- Trigger Price 2: LONG
  index, trigger_price_2 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_2.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 2: LONG
  index, min_fill_aon_2 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_2.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Open Close 2: CHAR
  index, open_close_2 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_2.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 2: CHAR
  index, giveup_flag_2 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_2.dissect(buffer, index, packet, parent)

  -- Filler Y: CHAR
  if show.padding then
    index, filler_y = nse_nseix_dropcopy_nnfdirect_v1_6.filler_y.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_y.size
  end

  return index
end

-- Dissect: Ms Spd Leg Info Leg 2
nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.ms_spd_leg_info_leg_2, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.fields(buffer, offset, packet, parent)
  end
end

-- Thrl Order Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_cxl_confirmation_message = {}

-- Size: Thrl Order Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_cxl_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Thrl Order Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_cxl_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Thrl Order Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_cxl_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Thrl Order Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_cxl_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.thrl_order_cxl_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_cxl_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_cxl_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_cxl_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Twol Order Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_cxl_confirmation_message = {}

-- Size: Twol Order Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_cxl_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Twol Order Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_cxl_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Twol Order Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_cxl_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Twol Order Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_cxl_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.twol_order_cxl_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_cxl_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_cxl_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_cxl_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Thrl Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_net_order_error_message = {}

-- Size: Thrl Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_net_order_error_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Thrl Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_net_order_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Thrl Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_net_order_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Thrl Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_net_order_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.thrl_net_order_error_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.thrl_net_order_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.thrl_net_order_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.thrl_net_order_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Twol Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_net_order_error_message = {}

-- Size: Twol Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_net_order_error_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Twol Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_net_order_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Twol Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_net_order_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Twol Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_net_order_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.twol_net_order_error_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.twol_net_order_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.twol_net_order_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.twol_net_order_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Thrl Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_error_message = {}

-- Size: Thrl Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_error_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Thrl Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Thrl Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Thrl Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.thrl_order_error_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Twol Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_error_message = {}

-- Size: Twol Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_error_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Twol Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Twol Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Twol Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.twol_order_error_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Thrl Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_confirmation_message = {}

-- Size: Thrl Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Thrl Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Thrl Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Thrl Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.thrl_order_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Twol Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_confirmation_message = {}

-- Size: Twol Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Twol Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Twol Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Twol Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.twol_order_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Batch Spread Order Cancel Message
nse_nseix_dropcopy_nnfdirect_v1_6.batch_spread_order_cancel_message = {}

-- Size: Batch Spread Order Cancel Message
nse_nseix_dropcopy_nnfdirect_v1_6.batch_spread_order_cancel_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Batch Spread Order Cancel Message
nse_nseix_dropcopy_nnfdirect_v1_6.batch_spread_order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Batch Spread Order Cancel Message
nse_nseix_dropcopy_nnfdirect_v1_6.batch_spread_order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Batch Spread Order Cancel Message
nse_nseix_dropcopy_nnfdirect_v1_6.batch_spread_order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.batch_spread_order_cancel_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.batch_spread_order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.batch_spread_order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.batch_spread_order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Cxl Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_reject_message = {}

-- Size: Spread Cxl Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_reject_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Spread Cxl Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Cxl Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Cxl Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.spread_cxl_reject_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_reject_message = {}

-- Size: Spread Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_reject_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Spread Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.spread_mod_reject_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_confirmation_message = {}

-- Size: Spread Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Spread Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.spread_mod_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_confirmation_message = {}

-- Size: Spread Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Spread Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.spread_cxl_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Sp Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.sp_net_order_error_message = {}

-- Size: Sp Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.sp_net_order_error_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Sp Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.sp_net_order_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sp Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.sp_net_order_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sp Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.sp_net_order_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.sp_net_order_error_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.sp_net_order_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.sp_net_order_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.sp_net_order_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Sp Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.sp_order_error_message = {}

-- Size: Sp Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.sp_order_error_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Sp Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.sp_order_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sp Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.sp_order_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sp Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.sp_order_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.sp_order_error_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.sp_order_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.sp_order_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.sp_order_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_order_confirmation_message = {}

-- Size: Spread Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_order_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.size

-- Display: Spread Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_order_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_order_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  if show.padding then
    index, filler_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1.size
  end

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nseix_dropcopy_nnfdirect_v1_6.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  if show.padding then
    index, filler_9 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_9.size
  end

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nseix_dropcopy_nnfdirect_v1_6.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nseix_dropcopy_nnfdirect_v1_6.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  if show.padding then
    index, fillerx_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillerx_1.size
  end

  -- Filler Options 1: CHAR
  if show.padding then
    index, filler_options_1 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_options_1.size
  end

  -- Fillery 1: CHAR
  if show.padding then
    index, fillery_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fillery_1.size
  end

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nseix_dropcopy_nnfdirect_v1_6.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nseix_dropcopy_nnfdirect_v1_6.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nseix_dropcopy_nnfdirect_v1_6.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nseix_dropcopy_nnfdirect_v1_6.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nseix_dropcopy_nnfdirect_v1_6.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag 1: CHAR
  index, giveup_flag_1 = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag_1.dissect(buffer, index, packet, parent)

  -- Filler 1 To 16: USHORT
  if show.padding then
    index, filler_1_to_16 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_1_to_16.size
  end

  -- Filler 17: CHAR
  if show.padding then
    index, filler_17 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_17.size
  end

  -- Filler 18: CHAR
  if show.padding then
    index, filler_18 = nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler_18.size
  end

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Spread Entry Time: DOUBLE
  index, spread_entry_time = nse_nseix_dropcopy_nnfdirect_v1_6.spread_entry_time.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  -- Price Diff: LONG
  index, price_diff = nse_nseix_dropcopy_nnfdirect_v1_6.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 2: Struct of 19 fields
  index, ms_spd_leg_info_leg_2 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_2.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info Leg 3: Struct of 19 fields
  index, ms_spd_leg_info_leg_3 = nse_nseix_dropcopy_nnfdirect_v1_6.ms_spd_leg_info_leg_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.spread_order_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.spread_order_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.spread_order_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.spread_order_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.spread_order_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Nlt Cxl Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_reject_message = {}

-- Size: Nlt Cxl Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_reject_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Nlt Cxl Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nlt Cxl Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Nlt Cxl Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_cxl_reject_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Nlt Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_reject_message = {}

-- Size: Nlt Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_reject_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Nlt Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nlt Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Nlt Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_mod_reject_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Nlt Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_confirmation_message = {}

-- Size: Nlt Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Nlt Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nlt Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Nlt Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_cxl_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Nlt Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_confirmation_message = {}

-- Size: Nlt Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Nlt Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nlt Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Nlt Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_mod_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Nlt Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_confirmation_message = {}

-- Size: Nlt Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Nlt Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nlt Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Nlt Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.nlt_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.net_order_error_message = {}

-- Size: Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.net_order_error_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.net_order_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.net_order_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Net Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.net_order_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.net_order_error_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.net_order_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.net_order_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.net_order_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Batch Order Cancel Message
nse_nseix_dropcopy_nnfdirect_v1_6.batch_order_cancel_message = {}

-- Size: Batch Order Cancel Message
nse_nseix_dropcopy_nnfdirect_v1_6.batch_order_cancel_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Batch Order Cancel Message
nse_nseix_dropcopy_nnfdirect_v1_6.batch_order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Batch Order Cancel Message
nse_nseix_dropcopy_nnfdirect_v1_6.batch_order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Batch Order Cancel Message
nse_nseix_dropcopy_nnfdirect_v1_6.batch_order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.batch_order_cancel_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.batch_order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.batch_order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.batch_order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_error_message = {}

-- Size: Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_error_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Order Error Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_error_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.order_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.order_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.order_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Freeze To Control Message
nse_nseix_dropcopy_nnfdirect_v1_6.freeze_to_control_message = {}

-- Size: Freeze To Control Message
nse_nseix_dropcopy_nnfdirect_v1_6.freeze_to_control_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Freeze To Control Message
nse_nseix_dropcopy_nnfdirect_v1_6.freeze_to_control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Freeze To Control Message
nse_nseix_dropcopy_nnfdirect_v1_6.freeze_to_control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Freeze To Control Message
nse_nseix_dropcopy_nnfdirect_v1_6.freeze_to_control_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.freeze_to_control_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.freeze_to_control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.freeze_to_control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.freeze_to_control_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_confirmation_message = {}

-- Size: Order Cancel Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Order Cancel Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Order Cancel Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_cancel_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_confirmation_message = {}

-- Size: Order Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Order Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Order Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_mod_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_confirmation_message = {}

-- Size: Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Order Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.order_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.order_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.order_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_reject_message = {}

-- Size: Order Cancel Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_reject_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Order Cancel Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Order Cancel Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_out_message = {}

-- Size: Order Cancel Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_out_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Order Cancel Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Order Cancel Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_cancel_out_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_reject_message = {}

-- Size: Order Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_reject_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Order Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Order Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_mod_reject_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mod Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_out_message = {}

-- Size: Order Mod Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_out_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Order Mod Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mod Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Order Mod Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.order_mod_out_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Board Lot Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.board_lot_out_message = {}

-- Size: Board Lot Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.board_lot_out_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token_no.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlor.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size

-- Display: Board Lot Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.board_lot_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Board Lot Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.board_lot_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nseix_dropcopy_nnfdirect_v1_6.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseix_dropcopy_nnfdirect_v1_6.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nseix_dropcopy_nnfdirect_v1_6.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_4.size
  end

  -- Token No: LONG
  index, token_no = nse_nseix_dropcopy_nnfdirect_v1_6.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_2.size
  end

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nseix_dropcopy_nnfdirect_v1_6.closeout_flag.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Order Type: SHORT
  index, order_type = nse_nseix_dropcopy_nnfdirect_v1_6.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nseix_dropcopy_nnfdirect_v1_6.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_dropcopy_nnfdirect_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nseix_dropcopy_nnfdirect_v1_6.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nseix_dropcopy_nnfdirect_v1_6.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nseix_dropcopy_nnfdirect_v1_6.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nseix_dropcopy_nnfdirect_v1_6.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nseix_dropcopy_nnfdirect_v1_6.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nseix_dropcopy_nnfdirect_v1_6.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nseix_dropcopy_nnfdirect_v1_6.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseix_dropcopy_nnfdirect_v1_6.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nseix_dropcopy_nnfdirect_v1_6.reference.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nseix_dropcopy_nnfdirect_v1_6.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: DOUBLE
  index, mkt_replay = nse_nseix_dropcopy_nnfdirect_v1_6.mkt_replay.dissect(buffer, index, packet, parent)

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nseix_dropcopy_nnfdirect_v1_6.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  if show.padding then
    index, reserved_52 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_52.size
  end

  return index
end

-- Dissect: Board Lot Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.board_lot_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.board_lot_out_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.board_lot_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.board_lot_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.board_lot_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Giveup Rej Confirm Tm Message
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_rej_confirm_tm_message = {}

-- Size: Giveup Rej Confirm Tm Message
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_rej_confirm_tm_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.instrument_name.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.symbol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.expiry_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.strike_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.option_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ca_level.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.initiated_by_control.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.deleted.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size

-- Display: Giveup Rej Confirm Tm Message
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_rej_confirm_tm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Giveup Rej Confirm Tm Message
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_rej_confirm_tm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.dissect(buffer, index, packet, parent)

  -- Instrument Name: CHAR
  index, instrument_name = nse_nseix_dropcopy_nnfdirect_v1_6.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nseix_dropcopy_nnfdirect_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nseix_dropcopy_nnfdirect_v1_6.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nseix_dropcopy_nnfdirect_v1_6.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nseix_dropcopy_nnfdirect_v1_6.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nseix_dropcopy_nnfdirect_v1_6.ca_level.dissect(buffer, index, packet, parent)

  -- Fill Volume: LONG
  index, fill_volume = nse_nseix_dropcopy_nnfdirect_v1_6.fill_volume.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  if show.padding then
    index, filler = nse_nseix_dropcopy_nnfdirect_v1_6.filler.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler.size
  end

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Last Modified Date Time: LONG
  index, last_modified_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_date_time.dissect(buffer, index, packet, parent)

  -- Initiated By Control: CHAR
  index, initiated_by_control = nse_nseix_dropcopy_nnfdirect_v1_6.initiated_by_control.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Participant: CHAR
  index, participant = nse_nseix_dropcopy_nnfdirect_v1_6.participant.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Deleted: CHAR
  index, deleted = nse_nseix_dropcopy_nnfdirect_v1_6.deleted.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  return index
end

-- Dissect: Giveup Rej Confirm Tm Message
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_rej_confirm_tm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.giveup_rej_confirm_tm_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_rej_confirm_tm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_rej_confirm_tm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.giveup_rej_confirm_tm_message.fields(buffer, offset, packet, parent)
  end
end

-- Giveup App Confirm Tm Message
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_app_confirm_tm_message = {}

-- Size: Giveup App Confirm Tm Message
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_app_confirm_tm_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.instrument_name.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.symbol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.expiry_date.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.strike_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.option_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.ca_level.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.filler.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_date_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.initiated_by_control.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.deleted.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size

-- Display: Giveup App Confirm Tm Message
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_app_confirm_tm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Giveup App Confirm Tm Message
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_app_confirm_tm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nseix_dropcopy_nnfdirect_v1_6.reason_code.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.dissect(buffer, index, packet, parent)

  -- Instrument Name: CHAR
  index, instrument_name = nse_nseix_dropcopy_nnfdirect_v1_6.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nseix_dropcopy_nnfdirect_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nseix_dropcopy_nnfdirect_v1_6.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nseix_dropcopy_nnfdirect_v1_6.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nseix_dropcopy_nnfdirect_v1_6.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nseix_dropcopy_nnfdirect_v1_6.ca_level.dissect(buffer, index, packet, parent)

  -- Fill Volume: LONG
  index, fill_volume = nse_nseix_dropcopy_nnfdirect_v1_6.fill_volume.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  if show.padding then
    index, filler = nse_nseix_dropcopy_nnfdirect_v1_6.filler.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.filler.size
  end

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_dropcopy_nnfdirect_v1_6.book_type.dissect(buffer, index, packet, parent)

  -- Last Modified Date Time: LONG
  index, last_modified_date_time = nse_nseix_dropcopy_nnfdirect_v1_6.last_modified_date_time.dissect(buffer, index, packet, parent)

  -- Initiated By Control: CHAR
  index, initiated_by_control = nse_nseix_dropcopy_nnfdirect_v1_6.initiated_by_control.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Participant: CHAR
  index, participant = nse_nseix_dropcopy_nnfdirect_v1_6.participant.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_flag.dissect(buffer, index, packet, parent)

  -- Deleted: CHAR
  index, deleted = nse_nseix_dropcopy_nnfdirect_v1_6.deleted.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  return index
end

-- Dissect: Giveup App Confirm Tm Message
nse_nseix_dropcopy_nnfdirect_v1_6.giveup_app_confirm_tm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.giveup_app_confirm_tm_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_app_confirm_tm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_app_confirm_tm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.giveup_app_confirm_tm_message.fields(buffer, offset, packet, parent)
  end
end

-- Nlt Trd Cxl Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_reject_message = {}

-- Size: Nlt Trd Cxl Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_reject_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.gtd.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size

-- Display: Nlt Trd Cxl Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nlt Trd Cxl Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseix_dropcopy_nnfdirect_v1_6.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseix_dropcopy_nnfdirect_v1_6.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Token: LONG
  index, token = nse_nseix_dropcopy_nnfdirect_v1_6.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.dissect(buffer, index, packet, parent)

  -- Trade Book Type: CHAR
  index, trade_book_type = nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- New Volume: LONG
  index, new_volume = nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nseix_dropcopy_nnfdirect_v1_6.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: CHAR
  if show.padding then
    index, fifth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size
  end

  -- Reserved 10: CHAR
  if show.padding then
    index, reserved_10 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size
  end

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Reserved 60: CHAR
  if show.padding then
    index, reserved_60 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size
  end

  return index
end

-- Dissect: Nlt Trd Cxl Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_trd_cxl_reject_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Nlt Trd Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_confirmation_message = {}

-- Size: Nlt Trd Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.gtd.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size

-- Display: Nlt Trd Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nlt Trd Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseix_dropcopy_nnfdirect_v1_6.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseix_dropcopy_nnfdirect_v1_6.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Token: LONG
  index, token = nse_nseix_dropcopy_nnfdirect_v1_6.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.dissect(buffer, index, packet, parent)

  -- Trade Book Type: CHAR
  index, trade_book_type = nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- New Volume: LONG
  index, new_volume = nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nseix_dropcopy_nnfdirect_v1_6.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: CHAR
  if show.padding then
    index, fifth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size
  end

  -- Reserved 10: CHAR
  if show.padding then
    index, reserved_10 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size
  end

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Reserved 60: CHAR
  if show.padding then
    index, reserved_60 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size
  end

  return index
end

-- Dissect: Nlt Trd Cxl Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_trd_cxl_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Nlt Trd Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_reject_message = {}

-- Size: Nlt Trd Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_reject_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.gtd.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size

-- Display: Nlt Trd Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nlt Trd Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseix_dropcopy_nnfdirect_v1_6.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseix_dropcopy_nnfdirect_v1_6.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Token: LONG
  index, token = nse_nseix_dropcopy_nnfdirect_v1_6.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.dissect(buffer, index, packet, parent)

  -- Trade Book Type: CHAR
  index, trade_book_type = nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- New Volume: LONG
  index, new_volume = nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nseix_dropcopy_nnfdirect_v1_6.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: CHAR
  if show.padding then
    index, fifth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size
  end

  -- Reserved 10: CHAR
  if show.padding then
    index, reserved_10 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size
  end

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Reserved 60: CHAR
  if show.padding then
    index, reserved_60 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size
  end

  return index
end

-- Dissect: Nlt Trd Mod Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_trd_mod_reject_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Nlt Trd Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_confirmation_message = {}

-- Size: Nlt Trd Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.gtd.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size

-- Display: Nlt Trd Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nlt Trd Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseix_dropcopy_nnfdirect_v1_6.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseix_dropcopy_nnfdirect_v1_6.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Token: LONG
  index, token = nse_nseix_dropcopy_nnfdirect_v1_6.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.dissect(buffer, index, packet, parent)

  -- Trade Book Type: CHAR
  index, trade_book_type = nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- New Volume: LONG
  index, new_volume = nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nseix_dropcopy_nnfdirect_v1_6.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: CHAR
  if show.padding then
    index, fifth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size
  end

  -- Reserved 10: CHAR
  if show.padding then
    index, reserved_10 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size
  end

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Reserved 60: CHAR
  if show.padding then
    index, reserved_60 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size
  end

  return index
end

-- Dissect: Nlt Trd Mod Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_trd_mod_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Nlt Trade Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trade_confirmation_message = {}

-- Size: Nlt Trade Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trade_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.gtd.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size

-- Display: Nlt Trade Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trade_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nlt Trade Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trade_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseix_dropcopy_nnfdirect_v1_6.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseix_dropcopy_nnfdirect_v1_6.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Token: LONG
  index, token = nse_nseix_dropcopy_nnfdirect_v1_6.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.dissect(buffer, index, packet, parent)

  -- Trade Book Type: CHAR
  index, trade_book_type = nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- New Volume: LONG
  index, new_volume = nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nseix_dropcopy_nnfdirect_v1_6.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: CHAR
  if show.padding then
    index, fifth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size
  end

  -- Reserved 10: CHAR
  if show.padding then
    index, reserved_10 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size
  end

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Reserved 60: CHAR
  if show.padding then
    index, reserved_60 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size
  end

  return index
end

-- Dissect: Nlt Trade Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trade_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.nlt_trade_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trade_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trade_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trade_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_reject_message = {}

-- Size: Trade Cancel Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_reject_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.gtd.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size

-- Display: Trade Cancel Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseix_dropcopy_nnfdirect_v1_6.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseix_dropcopy_nnfdirect_v1_6.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Token: LONG
  index, token = nse_nseix_dropcopy_nnfdirect_v1_6.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.dissect(buffer, index, packet, parent)

  -- Trade Book Type: CHAR
  index, trade_book_type = nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- New Volume: LONG
  index, new_volume = nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nseix_dropcopy_nnfdirect_v1_6.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: CHAR
  if show.padding then
    index, fifth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size
  end

  -- Reserved 10: CHAR
  if show.padding then
    index, reserved_10 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size
  end

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Reserved 60: CHAR
  if show.padding then
    index, reserved_60 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size
  end

  return index
end

-- Dissect: Trade Cancel Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trade_cancel_reject_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Confirm Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_confirm_message = {}

-- Size: Trade Cancel Confirm Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_confirm_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.gtd.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size

-- Display: Trade Cancel Confirm Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_confirm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Confirm Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_confirm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseix_dropcopy_nnfdirect_v1_6.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseix_dropcopy_nnfdirect_v1_6.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Token: LONG
  index, token = nse_nseix_dropcopy_nnfdirect_v1_6.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.dissect(buffer, index, packet, parent)

  -- Trade Book Type: CHAR
  index, trade_book_type = nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- New Volume: LONG
  index, new_volume = nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nseix_dropcopy_nnfdirect_v1_6.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: CHAR
  if show.padding then
    index, fifth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size
  end

  -- Reserved 10: CHAR
  if show.padding then
    index, reserved_10 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size
  end

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Reserved 60: CHAR
  if show.padding then
    index, reserved_60 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size
  end

  return index
end

-- Dissect: Trade Cancel Confirm Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_confirm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trade_cancel_confirm_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_confirm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_confirm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_confirm_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Modify Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_reject_message = {}

-- Size: Trade Modify Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_reject_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.gtd.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size

-- Display: Trade Modify Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Modify Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseix_dropcopy_nnfdirect_v1_6.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseix_dropcopy_nnfdirect_v1_6.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Token: LONG
  index, token = nse_nseix_dropcopy_nnfdirect_v1_6.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.dissect(buffer, index, packet, parent)

  -- Trade Book Type: CHAR
  index, trade_book_type = nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- New Volume: LONG
  index, new_volume = nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nseix_dropcopy_nnfdirect_v1_6.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: CHAR
  if show.padding then
    index, fifth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size
  end

  -- Reserved 10: CHAR
  if show.padding then
    index, reserved_10 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size
  end

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Reserved 60: CHAR
  if show.padding then
    index, reserved_60 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size
  end

  return index
end

-- Dissect: Trade Modify Reject Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trade_modify_reject_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Modify Confirm Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_confirm_message = {}

-- Size: Trade Modify Confirm Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_confirm_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.gtd.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size

-- Display: Trade Modify Confirm Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_confirm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Modify Confirm Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_confirm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseix_dropcopy_nnfdirect_v1_6.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseix_dropcopy_nnfdirect_v1_6.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Token: LONG
  index, token = nse_nseix_dropcopy_nnfdirect_v1_6.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.dissect(buffer, index, packet, parent)

  -- Trade Book Type: CHAR
  index, trade_book_type = nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- New Volume: LONG
  index, new_volume = nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nseix_dropcopy_nnfdirect_v1_6.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: CHAR
  if show.padding then
    index, fifth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size
  end

  -- Reserved 10: CHAR
  if show.padding then
    index, reserved_10 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size
  end

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Reserved 60: CHAR
  if show.padding then
    index, reserved_60 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size
  end

  return index
end

-- Dissect: Trade Modify Confirm Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_confirm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trade_modify_confirm_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_confirm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_confirm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_confirm_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_confirmation_message = {}

-- Size: Trade Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_confirmation_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.account_num.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.gtd.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.token.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size

-- Display: Trade Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_1.size
  end

  -- Trader Num: LONG
  index, trader_num = nse_nseix_dropcopy_nnfdirect_v1_6.trader_num.dissect(buffer, index, packet, parent)

  -- Account Num: CHAR
  index, account_num = nse_nseix_dropcopy_nnfdirect_v1_6.account_num.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nseix_dropcopy_nnfdirect_v1_6.buy_sell.dissect(buffer, index, packet, parent)

  -- Original Vol: LONG
  index, original_vol = nse_nseix_dropcopy_nnfdirect_v1_6.original_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol: LONG
  index, disclosed_vol = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol.dissect(buffer, index, packet, parent)

  -- Remaining Vol: LONG
  index, remaining_vol = nse_nseix_dropcopy_nnfdirect_v1_6.remaining_vol.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining: LONG
  index, disclosed_vol_remaining = nse_nseix_dropcopy_nnfdirect_v1_6.disclosed_vol_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_dropcopy_nnfdirect_v1_6.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 16 fields
  index, st_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.st_order_flags.dissect(buffer, index, packet, parent)

  -- Gtd: LONG
  index, gtd = nse_nseix_dropcopy_nnfdirect_v1_6.gtd.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nseix_dropcopy_nnfdirect_v1_6.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Qty: LONG
  index, fill_qty = nse_nseix_dropcopy_nnfdirect_v1_6.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_dropcopy_nnfdirect_v1_6.fill_price.dissect(buffer, index, packet, parent)

  -- Vol Filled Today: LONG
  index, vol_filled_today = nse_nseix_dropcopy_nnfdirect_v1_6.vol_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nseix_dropcopy_nnfdirect_v1_6.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nseix_dropcopy_nnfdirect_v1_6.activity_time.dissect(buffer, index, packet, parent)

  -- Op Order Number: DOUBLE
  index, op_order_number = nse_nseix_dropcopy_nnfdirect_v1_6.op_order_number.dissect(buffer, index, packet, parent)

  -- Op Broker Id: CHAR
  index, op_broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.op_broker_id.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.second_reserved_1.size
  end

  -- Token: LONG
  index, token = nse_nseix_dropcopy_nnfdirect_v1_6.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nseix_dropcopy_nnfdirect_v1_6.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nseix_dropcopy_nnfdirect_v1_6.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nseix_dropcopy_nnfdirect_v1_6.old_open_close.dissect(buffer, index, packet, parent)

  -- Trade Book Type: CHAR
  index, trade_book_type = nse_nseix_dropcopy_nnfdirect_v1_6.trade_book_type.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: CHAR
  if show.padding then
    index, third_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.third_reserved_1.size
  end

  -- New Volume: LONG
  index, new_volume = nse_nseix_dropcopy_nnfdirect_v1_6.new_volume.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nseix_dropcopy_nnfdirect_v1_6.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nseix_dropcopy_nnfdirect_v1_6.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nseix_dropcopy_nnfdirect_v1_6.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 7 fields
  index, additional_order_flags = nse_nseix_dropcopy_nnfdirect_v1_6.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 1: CHAR
  if show.padding then
    index, fourth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fourth_reserved_1.size
  end

  -- Give Up Trade: CHAR
  index, give_up_trade = nse_nseix_dropcopy_nnfdirect_v1_6.give_up_trade.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 1: CHAR
  if show.padding then
    index, fifth_reserved_1 = nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.fifth_reserved_1.size
  end

  -- Reserved 10: CHAR
  if show.padding then
    index, reserved_10 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_10.size
  end

  -- Echo Back: CHAR
  index, echo_back = nse_nseix_dropcopy_nnfdirect_v1_6.echo_back.dissect(buffer, index, packet, parent)

  -- Reserved 60: CHAR
  if show.padding then
    index, reserved_60 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_60.size
  end

  return index
end

-- Dissect: Trade Confirmation Message
nse_nseix_dropcopy_nnfdirect_v1_6.trade_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.trade_confirmation_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.trade_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.trade_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.trade_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Sign On Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.sign_on_out_message = {}

-- Size: Sign On Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.sign_on_out_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.user_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.password.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_8.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_30.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_119.size

-- Display: Sign On Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.sign_on_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sign On Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.sign_on_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_dropcopy_nnfdirect_v1_6.user_id.dissect(buffer, index, packet, parent)

  -- Password: CHAR
  index, password = nse_nseix_dropcopy_nnfdirect_v1_6.password.dissect(buffer, index, packet, parent)

  -- Reserved 8: CHAR
  if show.padding then
    index, reserved_8 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_8.size
  end

  -- Reserved 30: CHAR
  if show.padding then
    index, reserved_30 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_30.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_30.size
  end

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 119: CHAR
  if show.padding then
    index, reserved_119 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_119.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_119.size
  end

  return index
end

-- Dissect: Sign On Out Message
nse_nseix_dropcopy_nnfdirect_v1_6.sign_on_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.sign_on_out_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.sign_on_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.sign_on_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.sign_on_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Server Message Payload
nse_nseix_dropcopy_nnfdirect_v1_6.server_message_payload = {}

-- Dispatch: Server Message Payload
nse_nseix_dropcopy_nnfdirect_v1_6.server_message_payload.dispatch = {
  [2301] = nse_nseix_dropcopy_nnfdirect_v1_6.sign_on_out_message.dissect,
  [2222] = nse_nseix_dropcopy_nnfdirect_v1_6.trade_confirmation_message.dissect,
  [2287] = nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_confirm_message.dissect,
  [2288] = nse_nseix_dropcopy_nnfdirect_v1_6.trade_modify_reject_message.dissect,
  [2282] = nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_confirm_message.dissect,
  [2286] = nse_nseix_dropcopy_nnfdirect_v1_6.trade_cancel_reject_message.dissect,
  [2090] = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trade_confirmation_message.dissect,
  [5449] = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_confirmation_message.dissect,
  [5450] = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_mod_reject_message.dissect,
  [5452] = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_confirmation_message.dissect,
  [5453] = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_trd_cxl_reject_message.dissect,
  [4506] = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_app_confirm_tm_message.dissect,
  [4507] = nse_nseix_dropcopy_nnfdirect_v1_6.giveup_rej_confirm_tm_message.dissect,
  [2001] = nse_nseix_dropcopy_nnfdirect_v1_6.board_lot_out_message.dissect,
  [2041] = nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_out_message.dissect,
  [2042] = nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_reject_message.dissect,
  [2071] = nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_out_message.dissect,
  [2072] = nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_reject_message.dissect,
  [2073] = nse_nseix_dropcopy_nnfdirect_v1_6.order_confirmation_message.dissect,
  [2074] = nse_nseix_dropcopy_nnfdirect_v1_6.order_mod_confirmation_message.dissect,
  [2075] = nse_nseix_dropcopy_nnfdirect_v1_6.order_cancel_confirmation_message.dissect,
  [2170] = nse_nseix_dropcopy_nnfdirect_v1_6.freeze_to_control_message.dissect,
  [2231] = nse_nseix_dropcopy_nnfdirect_v1_6.order_error_message.dissect,
  [9002] = nse_nseix_dropcopy_nnfdirect_v1_6.batch_order_cancel_message.dissect,
  [27100] = nse_nseix_dropcopy_nnfdirect_v1_6.net_order_error_message.dissect,
  [2083] = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_confirmation_message.dissect,
  [2085] = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_confirmation_message.dissect,
  [2087] = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_confirmation_message.dissect,
  [2088] = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_mod_reject_message.dissect,
  [2089] = nse_nseix_dropcopy_nnfdirect_v1_6.nlt_cxl_reject_message.dissect,
  [2124] = nse_nseix_dropcopy_nnfdirect_v1_6.spread_order_confirmation_message.dissect,
  [2154] = nse_nseix_dropcopy_nnfdirect_v1_6.sp_order_error_message.dissect,
  [27102] = nse_nseix_dropcopy_nnfdirect_v1_6.sp_net_order_error_message.dissect,
  [2130] = nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_confirmation_message.dissect,
  [2136] = nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_confirmation_message.dissect,
  [2133] = nse_nseix_dropcopy_nnfdirect_v1_6.spread_mod_reject_message.dissect,
  [2127] = nse_nseix_dropcopy_nnfdirect_v1_6.spread_cxl_reject_message.dissect,
  [9004] = nse_nseix_dropcopy_nnfdirect_v1_6.batch_spread_order_cancel_message.dissect,
  [2125] = nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_confirmation_message.dissect,
  [2126] = nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_confirmation_message.dissect,
  [2155] = nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_error_message.dissect,
  [2156] = nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_error_message.dissect,
  [27103] = nse_nseix_dropcopy_nnfdirect_v1_6.twol_net_order_error_message.dissect,
  [27104] = nse_nseix_dropcopy_nnfdirect_v1_6.thrl_net_order_error_message.dissect,
  [2131] = nse_nseix_dropcopy_nnfdirect_v1_6.twol_order_cxl_confirmation_message.dissect,
  [2132] = nse_nseix_dropcopy_nnfdirect_v1_6.thrl_order_cxl_confirmation_message.dissect,
}

-- Dissect: Server Message Payload
nse_nseix_dropcopy_nnfdirect_v1_6.server_message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nseix_dropcopy_nnfdirect_v1_6.server_message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nse_nseix_dropcopy_nnfdirect_v1_6.message_header = {}

-- Size: Message Header
nse_nseix_dropcopy_nnfdirect_v1_6.message_header.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.transaction_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.log_time.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.alpha_char.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.error_code.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.header_timestamp.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_1.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_2.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.message_length.size

-- Display: Message Header
nse_nseix_dropcopy_nnfdirect_v1_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nse_nseix_dropcopy_nnfdirect_v1_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nseix_dropcopy_nnfdirect_v1_6.transaction_code.dissect(buffer, index, packet, parent)

  -- Log Time: LONG
  index, log_time = nse_nseix_dropcopy_nnfdirect_v1_6.log_time.dissect(buffer, index, packet, parent)

  -- Alpha Char: CHAR
  index, alpha_char = nse_nseix_dropcopy_nnfdirect_v1_6.alpha_char.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nseix_dropcopy_nnfdirect_v1_6.trader_id.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nseix_dropcopy_nnfdirect_v1_6.error_code.dissect(buffer, index, packet, parent)

  -- Header Timestamp: LONG LONG
  index, header_timestamp = nse_nseix_dropcopy_nnfdirect_v1_6.header_timestamp.dissect(buffer, index, packet, parent)

  -- Time Stamp 1: CHAR
  index, time_stamp_1 = nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_1.dissect(buffer, index, packet, parent)

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nseix_dropcopy_nnfdirect_v1_6.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Message Length: SHORT
  index, message_length = nse_nseix_dropcopy_nnfdirect_v1_6.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nse_nseix_dropcopy_nnfdirect_v1_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.message_header, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Session Packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_session_packet = {}

-- Calculate size of: Server Session Packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_session_packet.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseix_dropcopy_nnfdirect_v1_6.checksum.size

  index = index + nse_nseix_dropcopy_nnfdirect_v1_6.message_header.size

  -- Calculate runtime size of Server Message Payload field
  local server_message_payload_offset = offset + index
  local server_message_payload_type = buffer(server_message_payload_offset - 40, 2):int()
  index = index + nse_nseix_dropcopy_nnfdirect_v1_6.server_message_payload.size(buffer, server_message_payload_offset, server_message_payload_type)

  return index
end

-- Display: Server Session Packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_session_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Session Packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_session_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Checksum: 16 Byte
  index, checksum = nse_nseix_dropcopy_nnfdirect_v1_6.checksum.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nseix_dropcopy_nnfdirect_v1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 40, 2):int()

  -- Server Message Payload: Runtime Type with 46 branches
  index = nse_nseix_dropcopy_nnfdirect_v1_6.server_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Server Session Packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_session_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.server_session_packet, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.server_session_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.server_session_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.server_session_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Registration Packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_registration_packet = {}

-- Calculate size of: Server Registration Packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_registration_packet.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseix_dropcopy_nnfdirect_v1_6.registration_checksum.size

  index = index + nse_nseix_dropcopy_nnfdirect_v1_6.message_header.size

  -- Calculate runtime size of Server Message Payload field
  local server_message_payload_offset = offset + index
  local server_message_payload_type = buffer(server_message_payload_offset - 40, 2):int()
  index = index + nse_nseix_dropcopy_nnfdirect_v1_6.server_message_payload.size(buffer, server_message_payload_offset, server_message_payload_type)

  return index
end

-- Display: Server Registration Packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_registration_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Registration Packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_registration_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Registration Checksum: 16 Byte
  index, registration_checksum = nse_nseix_dropcopy_nnfdirect_v1_6.registration_checksum.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nseix_dropcopy_nnfdirect_v1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 40, 2):int()

  -- Server Message Payload: Runtime Type with 46 branches
  index = nse_nseix_dropcopy_nnfdirect_v1_6.server_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Server Registration Packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_registration_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.server_registration_packet, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.server_registration_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.server_registration_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.server_registration_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Packet Body
nse_nseix_dropcopy_nnfdirect_v1_6.server_packet_body = {}

-- Dispatch: Server Packet Body
nse_nseix_dropcopy_nnfdirect_v1_6.server_packet_body.dispatch = {
  [23009] = nse_nseix_dropcopy_nnfdirect_v1_6.server_registration_packet.dissect,
}

-- Dissect: Server Packet Body
nse_nseix_dropcopy_nnfdirect_v1_6.server_packet_body.dissect = function(buffer, offset, packet, parent)
  local transaction_code = buffer(offset + 16, 2):int()
  local dissect = nse_nseix_dropcopy_nnfdirect_v1_6.server_packet_body.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Server Session Packet
  return nse_nseix_dropcopy_nnfdirect_v1_6.server_session_packet.dissect(buffer, offset, packet, parent)
end

-- Packet Header
nse_nseix_dropcopy_nnfdirect_v1_6.packet_header = {}

-- Size: Packet Header
nse_nseix_dropcopy_nnfdirect_v1_6.packet_header.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.packet_length.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.packet_sequence_number.size

-- Display: Packet Header
nse_nseix_dropcopy_nnfdirect_v1_6.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nse_nseix_dropcopy_nnfdirect_v1_6.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nse_nseix_dropcopy_nnfdirect_v1_6.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = nse_nseix_dropcopy_nnfdirect_v1_6.packet_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nse_nseix_dropcopy_nnfdirect_v1_6.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.packet_header, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Direct Packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_direct_packet = {}

-- Display: Server Direct Packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_direct_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Direct Packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_direct_packet.fields = function(buffer, offset, packet, parent, size_of_server_direct_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = nse_nseix_dropcopy_nnfdirect_v1_6.packet_header.dissect(buffer, index, packet, parent)

  -- Server Packet Body: Runtime Type with 2 branches
  index = nse_nseix_dropcopy_nnfdirect_v1_6.server_packet_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Direct Packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_direct_packet.dissect = function(buffer, offset, packet, parent, size_of_server_direct_packet)
  local index = offset + size_of_server_direct_packet

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.server_direct_packet, buffer(offset, 0))
    local decoded, failure = pcall(nse_nseix_dropcopy_nnfdirect_v1_6.server_direct_packet.fields, bounded, offset, packet, parent, size_of_server_direct_packet)
    if not decoded then
      undecoded(failure, parent, nse_nseix_dropcopy_nnfdirect_v1_6.experts.undecoded, "Server Direct Packet does not decode within its "..size_of_server_direct_packet.." bytes")
    end
    parent:set_len(size_of_server_direct_packet)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.server_direct_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(nse_nseix_dropcopy_nnfdirect_v1_6.server_direct_packet.fields, bounded, offset, packet, parent, size_of_server_direct_packet)
    if not decoded then
      undecoded(failure, parent, nse_nseix_dropcopy_nnfdirect_v1_6.experts.undecoded, "Server Direct Packet does not decode within its "..size_of_server_direct_packet.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Server Direct Packet
local server_direct_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nseix_dropcopy_nnfdirect_v1_6.packet_header.size then
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
nse_nseix_dropcopy_nnfdirect_v1_6.server_packet = {}

-- Verify required size of Tcp packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nseix_dropcopy_nnfdirect_v1_6.packet_header.size + 16 + nse_nseix_dropcopy_nnfdirect_v1_6.transaction_code.size
end

-- Dissect Server Packet
nse_nseix_dropcopy_nnfdirect_v1_6.server_packet.dissect = function(buffer, packet, parent)
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
      index = nse_nseix_dropcopy_nnfdirect_v1_6.server_direct_packet.dissect(frame, index, packet, parent, size_of_server_direct_packet)
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

-- Dc Ord Trd Request Message
nse_nseix_dropcopy_nnfdirect_v1_6.dc_ord_trd_request_message = {}

-- Size: Dc Ord Trd Request Message
nse_nseix_dropcopy_nnfdirect_v1_6.dc_ord_trd_request_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.order_trade_sequence_number.size

-- Display: Dc Ord Trd Request Message
nse_nseix_dropcopy_nnfdirect_v1_6.dc_ord_trd_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Ord Trd Request Message
nse_nseix_dropcopy_nnfdirect_v1_6.dc_ord_trd_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Trade Sequence Number: DOUBLE
  index, order_trade_sequence_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_trade_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Ord Trd Request Message
nse_nseix_dropcopy_nnfdirect_v1_6.dc_ord_trd_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.dc_ord_trd_request_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.dc_ord_trd_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.dc_ord_trd_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.dc_ord_trd_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Order Request Message
nse_nseix_dropcopy_nnfdirect_v1_6.dc_order_request_message = {}

-- Size: Dc Order Request Message
nse_nseix_dropcopy_nnfdirect_v1_6.dc_order_request_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.order_sequence_number.size

-- Display: Dc Order Request Message
nse_nseix_dropcopy_nnfdirect_v1_6.dc_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Order Request Message
nse_nseix_dropcopy_nnfdirect_v1_6.dc_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Sequence Number: DOUBLE
  index, order_sequence_number = nse_nseix_dropcopy_nnfdirect_v1_6.order_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Order Request Message
nse_nseix_dropcopy_nnfdirect_v1_6.dc_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.dc_order_request_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.dc_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.dc_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.dc_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Download Request Message
nse_nseix_dropcopy_nnfdirect_v1_6.dc_download_request_message = {}

-- Size: Dc Download Request Message
nse_nseix_dropcopy_nnfdirect_v1_6.dc_download_request_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.sequence_number.size

-- Display: Dc Download Request Message
nse_nseix_dropcopy_nnfdirect_v1_6.dc_download_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Download Request Message
nse_nseix_dropcopy_nnfdirect_v1_6.dc_download_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: DOUBLE
  index, sequence_number = nse_nseix_dropcopy_nnfdirect_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Download Request Message
nse_nseix_dropcopy_nnfdirect_v1_6.dc_download_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.dc_download_request_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.dc_download_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.dc_download_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.dc_download_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
nse_nseix_dropcopy_nnfdirect_v1_6.heartbeat_message = {}

-- Display: Heartbeat Message
nse_nseix_dropcopy_nnfdirect_v1_6.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
nse_nseix_dropcopy_nnfdirect_v1_6.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseix_dropcopy_nnfdirect_v1_6.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Signon In Message
nse_nseix_dropcopy_nnfdirect_v1_6.signon_in_message = {}

-- Size: Signon In Message
nse_nseix_dropcopy_nnfdirect_v1_6.signon_in_message.size =
  nse_nseix_dropcopy_nnfdirect_v1_6.user_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.password.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_8.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_30.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.size + 
  nse_nseix_dropcopy_nnfdirect_v1_6.reserved_119.size

-- Display: Signon In Message
nse_nseix_dropcopy_nnfdirect_v1_6.signon_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Signon In Message
nse_nseix_dropcopy_nnfdirect_v1_6.signon_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nseix_dropcopy_nnfdirect_v1_6.user_id.dissect(buffer, index, packet, parent)

  -- Password: CHAR
  index, password = nse_nseix_dropcopy_nnfdirect_v1_6.password.dissect(buffer, index, packet, parent)

  -- Reserved 8: CHAR
  if show.padding then
    index, reserved_8 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_8.size
  end

  -- Reserved 30: CHAR
  if show.padding then
    index, reserved_30 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_30.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_30.size
  end

  -- Broker Id: CHAR
  index, broker_id = nse_nseix_dropcopy_nnfdirect_v1_6.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 119: CHAR
  if show.padding then
    index, reserved_119 = nse_nseix_dropcopy_nnfdirect_v1_6.reserved_119.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_dropcopy_nnfdirect_v1_6.reserved_119.size
  end

  return index
end

-- Dissect: Signon In Message
nse_nseix_dropcopy_nnfdirect_v1_6.signon_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.signon_in_message, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.signon_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.signon_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.signon_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Message Payload
nse_nseix_dropcopy_nnfdirect_v1_6.client_message_payload = {}

-- Dispatch: Client Message Payload
nse_nseix_dropcopy_nnfdirect_v1_6.client_message_payload.dispatch = {
  [2300] = nse_nseix_dropcopy_nnfdirect_v1_6.signon_in_message.dissect,
  [23506] = nse_nseix_dropcopy_nnfdirect_v1_6.heartbeat_message.dissect,
  [8000] = nse_nseix_dropcopy_nnfdirect_v1_6.dc_download_request_message.dissect,
  [8400] = nse_nseix_dropcopy_nnfdirect_v1_6.dc_order_request_message.dissect,
  [8500] = nse_nseix_dropcopy_nnfdirect_v1_6.dc_ord_trd_request_message.dissect,
}

-- Dissect: Client Message Payload
nse_nseix_dropcopy_nnfdirect_v1_6.client_message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nseix_dropcopy_nnfdirect_v1_6.client_message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Session Packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_session_packet = {}

-- Calculate size of: Client Session Packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_session_packet.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseix_dropcopy_nnfdirect_v1_6.checksum.size

  index = index + nse_nseix_dropcopy_nnfdirect_v1_6.message_header.size

  -- Calculate runtime size of Client Message Payload field
  local client_message_payload_offset = offset + index
  local client_message_payload_type = buffer(client_message_payload_offset - 40, 2):int()
  index = index + nse_nseix_dropcopy_nnfdirect_v1_6.client_message_payload.size(buffer, client_message_payload_offset, client_message_payload_type)

  return index
end

-- Display: Client Session Packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_session_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Session Packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_session_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Checksum: 16 Byte
  index, checksum = nse_nseix_dropcopy_nnfdirect_v1_6.checksum.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nseix_dropcopy_nnfdirect_v1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 40, 2):int()

  -- Client Message Payload: Runtime Type with 5 branches
  index = nse_nseix_dropcopy_nnfdirect_v1_6.client_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Client Session Packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_session_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.client_session_packet, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.client_session_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.client_session_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.client_session_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Registration Packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_registration_packet = {}

-- Calculate size of: Client Registration Packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_registration_packet.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseix_dropcopy_nnfdirect_v1_6.registration_checksum.size

  index = index + nse_nseix_dropcopy_nnfdirect_v1_6.message_header.size

  -- Calculate runtime size of Client Message Payload field
  local client_message_payload_offset = offset + index
  local client_message_payload_type = buffer(client_message_payload_offset - 40, 2):int()
  index = index + nse_nseix_dropcopy_nnfdirect_v1_6.client_message_payload.size(buffer, client_message_payload_offset, client_message_payload_type)

  return index
end

-- Display: Client Registration Packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_registration_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Registration Packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_registration_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Registration Checksum: 16 Byte
  index, registration_checksum = nse_nseix_dropcopy_nnfdirect_v1_6.registration_checksum.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nseix_dropcopy_nnfdirect_v1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 40, 2):int()

  -- Client Message Payload: Runtime Type with 5 branches
  index = nse_nseix_dropcopy_nnfdirect_v1_6.client_message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Client Registration Packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_registration_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.client_registration_packet, buffer(offset, 0))
    local index = nse_nseix_dropcopy_nnfdirect_v1_6.client_registration_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.client_registration_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_dropcopy_nnfdirect_v1_6.client_registration_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Packet Body
nse_nseix_dropcopy_nnfdirect_v1_6.client_packet_body = {}

-- Dispatch: Client Packet Body
nse_nseix_dropcopy_nnfdirect_v1_6.client_packet_body.dispatch = {
  [23008] = nse_nseix_dropcopy_nnfdirect_v1_6.client_registration_packet.dissect,
}

-- Dissect: Client Packet Body
nse_nseix_dropcopy_nnfdirect_v1_6.client_packet_body.dissect = function(buffer, offset, packet, parent)
  local transaction_code = buffer(offset + 16, 2):int()
  local dissect = nse_nseix_dropcopy_nnfdirect_v1_6.client_packet_body.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Client Session Packet
  return nse_nseix_dropcopy_nnfdirect_v1_6.client_session_packet.dissect(buffer, offset, packet, parent)
end

-- Client Direct Packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_direct_packet = {}

-- Display: Client Direct Packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_direct_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Direct Packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_direct_packet.fields = function(buffer, offset, packet, parent, size_of_client_direct_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = nse_nseix_dropcopy_nnfdirect_v1_6.packet_header.dissect(buffer, index, packet, parent)

  -- Client Packet Body: Runtime Type with 2 branches
  index = nse_nseix_dropcopy_nnfdirect_v1_6.client_packet_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Direct Packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_direct_packet.dissect = function(buffer, offset, packet, parent, size_of_client_direct_packet)
  local index = offset + size_of_client_direct_packet

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6.fields.client_direct_packet, buffer(offset, 0))
    local decoded, failure = pcall(nse_nseix_dropcopy_nnfdirect_v1_6.client_direct_packet.fields, bounded, offset, packet, parent, size_of_client_direct_packet)
    if not decoded then
      undecoded(failure, parent, nse_nseix_dropcopy_nnfdirect_v1_6.experts.undecoded, "Client Direct Packet does not decode within its "..size_of_client_direct_packet.." bytes")
    end
    parent:set_len(size_of_client_direct_packet)
    local display = nse_nseix_dropcopy_nnfdirect_v1_6.client_direct_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(nse_nseix_dropcopy_nnfdirect_v1_6.client_direct_packet.fields, bounded, offset, packet, parent, size_of_client_direct_packet)
    if not decoded then
      undecoded(failure, parent, nse_nseix_dropcopy_nnfdirect_v1_6.experts.undecoded, "Client Direct Packet does not decode within its "..size_of_client_direct_packet.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Client Direct Packet
local client_direct_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nseix_dropcopy_nnfdirect_v1_6.packet_header.size then
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
nse_nseix_dropcopy_nnfdirect_v1_6.client_packet = {}

-- Verify required size of Tcp packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nseix_dropcopy_nnfdirect_v1_6.packet_header.size + 16 + nse_nseix_dropcopy_nnfdirect_v1_6.transaction_code.size
end

-- Dissect Client Packet
nse_nseix_dropcopy_nnfdirect_v1_6.client_packet.dissect = function(buffer, packet, parent)
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
      index = nse_nseix_dropcopy_nnfdirect_v1_6.client_direct_packet.dissect(frame, index, packet, parent, size_of_client_direct_packet)
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
function omi_nse_nseix_dropcopy_nnfdirect_v1_6.init()
end

-- Connection roles for Nse NseIx DropCopy NnfDirect 1.6: Client is the initiator, Server is the acceptor
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
nse_nseix_dropcopy_nnfdirect_v1_6.role = function(packet)
  if omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.acceptor_port

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

  if omi_nse_nseix_dropcopy_nnfdirect_v1_6.prefs.swap_sides then
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
nse_nseix_dropcopy_nnfdirect_v1_6.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nse NseIx DropCopy NnfDirect 1.6
function omi_nse_nseix_dropcopy_nnfdirect_v1_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nseix_dropcopy_nnfdirect_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nseix_dropcopy_nnfdirect_v1_6, buffer(), omi_nse_nseix_dropcopy_nnfdirect_v1_6.description, "("..buffer:len().." Bytes)")
  local role = nse_nseix_dropcopy_nnfdirect_v1_6.role(packet)

  if role == "initiator" then
    return nse_nseix_dropcopy_nnfdirect_v1_6.client_packet.dissect(buffer, packet, protocol)
  end

  return nse_nseix_dropcopy_nnfdirect_v1_6.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nse_nseix_dropcopy_nnfdirect_v1_6.client_packet.fingerprint = function(buffer)
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

    -- Dc Order Request Message
    if transaction_code == 8400 then
      return true
    end

    -- Dc Ord Trd Request Message
    if transaction_code == 8500 then
      return true
    end

    return false
  end

  -- Client Session Packet: carries the application messages, which tell this protocol from others sharing the session framing
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

  -- Dc Order Request Message
  if transaction_code == 8400 then
    return true
  end

  -- Dc Ord Trd Request Message
  if transaction_code == 8500 then
    return true
  end


  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nse_nseix_dropcopy_nnfdirect_v1_6.server_packet.fingerprint = function(buffer)
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

    -- Sign On Out Message
    if transaction_code == 2301 then
      return true
    end

    -- Trade Confirmation Message
    if transaction_code == 2222 then
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

    -- Trade Cancel Confirm Message
    if transaction_code == 2282 then
      return true
    end

    -- Trade Cancel Reject Message
    if transaction_code == 2286 then
      return true
    end

    -- Nlt Trade Confirmation Message
    if transaction_code == 2090 then
      return true
    end

    -- Nlt Trd Mod Confirmation Message
    if transaction_code == 5449 then
      return true
    end

    -- Nlt Trd Mod Reject Message
    if transaction_code == 5450 then
      return true
    end

    -- Nlt Trd Cxl Confirmation Message
    if transaction_code == 5452 then
      return true
    end

    -- Nlt Trd Cxl Reject Message
    if transaction_code == 5453 then
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

    -- Board Lot Out Message
    if transaction_code == 2001 then
      return true
    end

    -- Order Mod Out Message
    if transaction_code == 2041 then
      return true
    end

    -- Order Mod Reject Message
    if transaction_code == 2042 then
      return true
    end

    -- Order Cancel Out Message
    if transaction_code == 2071 then
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

    -- Order Error Message
    if transaction_code == 2231 then
      return true
    end

    -- Batch Order Cancel Message
    if transaction_code == 9002 then
      return true
    end

    -- Net Order Error Message
    if transaction_code == 27100 then
      return true
    end

    -- Nlt Confirmation Message
    if transaction_code == 2083 then
      return true
    end

    -- Nlt Mod Confirmation Message
    if transaction_code == 2085 then
      return true
    end

    -- Nlt Cxl Confirmation Message
    if transaction_code == 2087 then
      return true
    end

    -- Nlt Mod Reject Message
    if transaction_code == 2088 then
      return true
    end

    -- Nlt Cxl Reject Message
    if transaction_code == 2089 then
      return true
    end

    -- Spread Order Confirmation Message
    if transaction_code == 2124 then
      return true
    end

    -- Sp Order Error Message
    if transaction_code == 2154 then
      return true
    end

    -- Sp Net Order Error Message
    if transaction_code == 27102 then
      return true
    end

    -- Spread Cxl Confirmation Message
    if transaction_code == 2130 then
      return true
    end

    -- Spread Mod Confirmation Message
    if transaction_code == 2136 then
      return true
    end

    -- Spread Mod Reject Message
    if transaction_code == 2133 then
      return true
    end

    -- Spread Cxl Reject Message
    if transaction_code == 2127 then
      return true
    end

    -- Batch Spread Order Cancel Message
    if transaction_code == 9004 then
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

    -- Twol Order Error Message
    if transaction_code == 2155 then
      return true
    end

    -- Thrl Order Error Message
    if transaction_code == 2156 then
      return true
    end

    -- Twol Net Order Error Message
    if transaction_code == 27103 then
      return true
    end

    -- Thrl Net Order Error Message
    if transaction_code == 27104 then
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

    return false
  end

  -- Server Session Packet: carries the application messages, which tell this protocol from others sharing the session framing
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

  -- Trade Modify Confirm Message
  if transaction_code == 2287 then
    return true
  end

  -- Trade Modify Reject Message
  if transaction_code == 2288 then
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

  -- Nlt Trade Confirmation Message
  if transaction_code == 2090 then
    return true
  end

  -- Nlt Trd Mod Confirmation Message
  if transaction_code == 5449 then
    return true
  end

  -- Nlt Trd Mod Reject Message
  if transaction_code == 5450 then
    return true
  end

  -- Nlt Trd Cxl Confirmation Message
  if transaction_code == 5452 then
    return true
  end

  -- Nlt Trd Cxl Reject Message
  if transaction_code == 5453 then
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

  -- Board Lot Out Message
  if transaction_code == 2001 then
    return true
  end

  -- Order Mod Out Message
  if transaction_code == 2041 then
    return true
  end

  -- Order Mod Reject Message
  if transaction_code == 2042 then
    return true
  end

  -- Order Cancel Out Message
  if transaction_code == 2071 then
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

  -- Order Error Message
  if transaction_code == 2231 then
    return true
  end

  -- Batch Order Cancel Message
  if transaction_code == 9002 then
    return true
  end

  -- Net Order Error Message
  if transaction_code == 27100 then
    return true
  end

  -- Nlt Confirmation Message
  if transaction_code == 2083 then
    return true
  end

  -- Nlt Mod Confirmation Message
  if transaction_code == 2085 then
    return true
  end

  -- Nlt Cxl Confirmation Message
  if transaction_code == 2087 then
    return true
  end

  -- Nlt Mod Reject Message
  if transaction_code == 2088 then
    return true
  end

  -- Nlt Cxl Reject Message
  if transaction_code == 2089 then
    return true
  end

  -- Spread Order Confirmation Message
  if transaction_code == 2124 then
    return true
  end

  -- Sp Order Error Message
  if transaction_code == 2154 then
    return true
  end

  -- Sp Net Order Error Message
  if transaction_code == 27102 then
    return true
  end

  -- Spread Cxl Confirmation Message
  if transaction_code == 2130 then
    return true
  end

  -- Spread Mod Confirmation Message
  if transaction_code == 2136 then
    return true
  end

  -- Spread Mod Reject Message
  if transaction_code == 2133 then
    return true
  end

  -- Spread Cxl Reject Message
  if transaction_code == 2127 then
    return true
  end

  -- Batch Spread Order Cancel Message
  if transaction_code == 9004 then
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

  -- Twol Order Error Message
  if transaction_code == 2155 then
    return true
  end

  -- Thrl Order Error Message
  if transaction_code == 2156 then
    return true
  end

  -- Twol Net Order Error Message
  if transaction_code == 27103 then
    return true
  end

  -- Thrl Net Order Error Message
  if transaction_code == 27104 then
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


  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseIx DropCopy NnfDirect 1.6 (Tcp)
local function omi_nse_nseix_dropcopy_nnfdirect_v1_6_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nseix_dropcopy_nnfdirect_v1_6.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nse_nseix_dropcopy_nnfdirect_v1_6.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nseix_dropcopy_nnfdirect_v1_6
  omi_nse_nseix_dropcopy_nnfdirect_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseIx DropCopy NnfDirect 1.6 (Tcp)
local function omi_nse_nseix_dropcopy_nnfdirect_v1_6_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nseix_dropcopy_nnfdirect_v1_6.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nse_nseix_dropcopy_nnfdirect_v1_6.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nseix_dropcopy_nnfdirect_v1_6
  omi_nse_nseix_dropcopy_nnfdirect_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseIx DropCopy NnfDirect 1.6 (Tcp): apply the heuristic of the sender's connection role
local function omi_nse_nseix_dropcopy_nnfdirect_v1_6_tcp_heuristic(buffer, packet, parent)
  local role = nse_nseix_dropcopy_nnfdirect_v1_6.role(packet)
  local initiator = omi_nse_nseix_dropcopy_nnfdirect_v1_6_tcp_initiator_heuristic
  local acceptor = omi_nse_nseix_dropcopy_nnfdirect_v1_6_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nse_nseix_dropcopy_nnfdirect_v1_6.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nse_nseix_dropcopy_nnfdirect_v1_6.swap(packet)

  return false
end

-- Register Heuristics for Nse NseIx DropCopy NnfDirect 1.6
omi_nse_nseix_dropcopy_nnfdirect_v1_6:register_heuristic("tcp", omi_nse_nseix_dropcopy_nnfdirect_v1_6_tcp_heuristic)

-- Register Nse NseIx DropCopy NnfDirect 1.6 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nse_nseix_dropcopy_nnfdirect_v1_6)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 1.6
--   Date: Wednesday, October 1, 2025
--   Specification: NSEIFSC_DROP_COPY_PROTOCOL_v1_6_20260324141958.pdf
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
