-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- NseKenya NairobiBonds MarketData Mits 2.14 Protocol
local omi_nsekenya_nairobibonds_marketdata_mits_v2_14 = Proto("Omi.NseKenya.NairobiBonds.MarketData.Mits.v2.14", "NseKenya NairobiBonds MarketData Mits 2.14")

-- Protocol table
local nsekenya_nairobibonds_marketdata_mits_v2_14 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- NseKenya NairobiBonds MarketData Mits 2.14 Fields
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.action = ProtoField.new("Action", "nsekenya.nairobibonds.marketdata.mits.v2.14.action", ftypes.INT32, nil, nil, nil, "Not used for request.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.admin_period_close_time = ProtoField.new("Admin Period Close Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.adminperiodclosetime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.all_or_nothing_allowed = ProtoField.new("All Or Nothing Allowed", "nsekenya.nairobibonds.marketdata.mits.v2.14.allornothingallowed", ftypes.UINT8, nil, nil, nil, "Indicates if all or nothing order type can be used on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.announcement = ProtoField.new("Announcement", "nsekenya.nairobibonds.marketdata.mits.v2.14.announcement", ftypes.STRING, nil, nil, nil, "Announcement as sent by the exchange.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.announcement_characters = ProtoField.new("Announcement Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.announcementcharacters", ftypes.STRING, nil, nil, nil, "Announcement as sent by the exchange.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.announcement_date = ProtoField.new("Announcement Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.announcementdate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.announcement_length_byte = ProtoField.new("Announcement Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.announcementlengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Announcement")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.announcement_sequence = ProtoField.new("Announcement Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.announcementsequence", ftypes.INT32, nil, nil, nil, "Sequence number of the exchange announcement record.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.announcement_time = ProtoField.new("Announcement Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.announcementtime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.another_set_to_come = ProtoField.new("Another Set To Come", "nsekenya.nairobibonds.marketdata.mits.v2.14.anothersettocome", ftypes.UINT8, nil, nil, nil, "Indicates if there is another set of data to come.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.at_best_orders_allowed = ProtoField.new("At Best Orders Allowed", "nsekenya.nairobibonds.marketdata.mits.v2.14.atbestordersallowed", ftypes.UINT8, nil, nil, nil, "Indicates if at best order type can be used on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.at_close_orders_allowed = ProtoField.new("At Close Orders Allowed", "nsekenya.nairobibonds.marketdata.mits.v2.14.atcloseordersallowed", ftypes.UINT8, nil, nil, nil, "Indicates if at close orders can be used on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.auction = ProtoField.new("Auction", "nsekenya.nairobibonds.marketdata.mits.v2.14.auction", ftypes.UINT8, nil, nil, nil, "Indicates if this contract is in auction.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.balance = ProtoField.new("Balance", "nsekenya.nairobibonds.marketdata.mits.v2.14.balance", ftypes.DOUBLE, nil, nil, nil, "Indicates the current number of shares in issue.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.big_depth = ProtoField.new("Big Depth", "nsekenya.nairobibonds.marketdata.mits.v2.14.bigdepth", ftypes.UINT8, nil, nil, nil, "Indicates the maximum depth available to view on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.bond_formula_decimal_places = ProtoField.new("Bond Formula Decimal Places", "nsekenya.nairobibonds.marketdata.mits.v2.14.bondformuladecimalplaces", ftypes.INT32, nil, nil, nil, "Indicates the number of decimal places the bond pricing calculation should use for rounding.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.books_close_date = ProtoField.new("Books Close Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.booksclosedate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_order_id = ProtoField.new("Buy Order Id", "nsekenya.nairobibonds.marketdata.mits.v2.14.buyorderid", ftypes.INT32, nil, nil, nil, "Active Order ID.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_order_type = ProtoField.new("Buy Order Type", "nsekenya.nairobibonds.marketdata.mits.v2.14.buyordertype", ftypes.INT32, nil, nil, nil, "Order Type (Table 8.3.3).")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_price = ProtoField.new("Buy Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.buyprice", ftypes.DOUBLE, nil, nil, nil, "Price of bid.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_quantity = ProtoField.new("Buy Quantity", "nsekenya.nairobibonds.marketdata.mits.v2.14.buyquantity", ftypes.INT32, nil, nil, nil, "Quantity of bid.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_side_phantom = ProtoField.new("Buy Side Phantom", "nsekenya.nairobibonds.marketdata.mits.v2.14.buysidephantom", ftypes.UINT8, nil, nil, nil, "Indicates if this buy element is a phantom.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_who_characters = ProtoField.new("Buy Who Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.buywhocharacters", ftypes.STRING, nil, nil, nil, "Member bidding.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_who_length_byte = ProtoField.new("Buy Who Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.buywholengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Buy Who")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_who_member = ProtoField.new("Buy Who Member", "nsekenya.nairobibonds.marketdata.mits.v2.14.buywhomember", ftypes.STRING, nil, nil, nil, "Member bidding")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_who_unique_member = ProtoField.new("Buy Who Unique Member", "nsekenya.nairobibonds.marketdata.mits.v2.14.buywhouniquemember", ftypes.STRING, nil, nil, nil, "Anonymous contract: length byte 0, then the unique member number")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.call_or_put = ProtoField.new("Call Or Put", "nsekenya.nairobibonds.marketdata.mits.v2.14.callorput", ftypes.STRING, nil, nil, nil, "Indicates if this is a Call or Put option strike.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.call_put_b_1 = ProtoField.new("Call Put B 1", "nsekenya.nairobibonds.marketdata.mits.v2.14.callputb1", ftypes.UINT8, nil, nil, nil, "Call (C) or Put (P) indicator for an option contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.call_put_c_1 = ProtoField.new("Call Put C 1", "nsekenya.nairobibonds.marketdata.mits.v2.14.callputc1", ftypes.STRING, nil, nil, nil, "For option contracts, indicates if this is a Call or Put option contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.can_trade_onscreen = ProtoField.new("Can Trade Onscreen", "nsekenya.nairobibonds.marketdata.mits.v2.14.cantradeonscreen", ftypes.UINT8, nil, nil, nil, "Indicates if this contract can be traded onscreen.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.can_trade_options_onscreen = ProtoField.new("Can Trade Options Onscreen", "nsekenya.nairobibonds.marketdata.mits.v2.14.cantradeoptionsonscreen", ftypes.UINT8, nil, nil, nil, "Indicates if options can be traded onscreen on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.can_trade_options_report_only = ProtoField.new("Can Trade Options Report Only", "nsekenya.nairobibonds.marketdata.mits.v2.14.cantradeoptionsreportonly", ftypes.UINT8, nil, nil, nil, "Indicates if options can be traded report only on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.can_trade_report_only = ProtoField.new("Can Trade Report Only", "nsekenya.nairobibonds.marketdata.mits.v2.14.cantradereportonly", ftypes.UINT8, nil, nil, nil, "Indicates if this contract can be traded report only.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.challenge = ProtoField.new("Challenge", "nsekenya.nairobibonds.marketdata.mits.v2.14.challenge", ftypes.BYTES, nil, nil, nil, "The session challenge message.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.change = ProtoField.new("Change", "nsekenya.nairobibonds.marketdata.mits.v2.14.change", ftypes.DOUBLE, nil, nil, nil, "Change In Percentage From Previous day Closing Price.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.classification = ProtoField.new("Classification", "nsekenya.nairobibonds.marketdata.mits.v2.14.classification", ftypes.STRING, nil, nil, nil, "This field defines the instrument classification to which the bonds belongs to.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.classification_characters = ProtoField.new("Classification Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.classificationcharacters", ftypes.STRING, nil, nil, nil, "This field defines the instrument classification to which the bonds belongs to.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.classification_length_byte = ProtoField.new("Classification Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.classificationlengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Classification")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearance_date = ProtoField.new("Clearance Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.clearancedate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_code = ProtoField.new("Clearing Member Code", "nsekenya.nairobibonds.marketdata.mits.v2.14.clearingmembercode", ftypes.STRING, nil, nil, nil, "This is the code used for the clearing member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_code_characters = ProtoField.new("Clearing Member Code Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.clearingmembercodecharacters", ftypes.STRING, nil, nil, nil, "This is the code used for the clearing member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_code_length_byte = ProtoField.new("Clearing Member Code Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.clearingmembercodelengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Clearing Member Code")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_data = ProtoField.new("Clearing Member Data", "nsekenya.nairobibonds.marketdata.mits.v2.14.clearingmemberdata", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_description = ProtoField.new("Clearing Member Description", "nsekenya.nairobibonds.marketdata.mits.v2.14.clearingmemberdescription", ftypes.STRING, nil, nil, nil, "This is the Description of the clearing member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_description_characters = ProtoField.new("Clearing Member Description Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.clearingmemberdescriptioncharacters", ftypes.STRING, nil, nil, nil, "This is the Description of the clearing member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_description_length_byte = ProtoField.new("Clearing Member Description Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.clearingmemberdescriptionlengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Clearing Member Description")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_sequence = ProtoField.new("Clearing Member Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.clearingmembersequence", ftypes.INT32, nil, nil, nil, "Clearing member sequence of this members clearing member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.client_message_type = ProtoField.new("Client Message Type", "nsekenya.nairobibonds.marketdata.mits.v2.14.clientmessagetype", ftypes.UINT8, nil, nil, nil, "Message number of a message sent by the user")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.closing_auction_close_time = ProtoField.new("Closing Auction Close Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.closingauctionclosetime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.closing_auction_start_time = ProtoField.new("Closing Auction Start Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.closingauctionstarttime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.closing_price = ProtoField.new("Closing Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.closingprice", ftypes.DOUBLE, nil, nil, nil, "Last traded price at the end of day when the market closes.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contract = ProtoField.new("Contract", "nsekenya.nairobibonds.marketdata.mits.v2.14.contract", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contract_close_time = ProtoField.new("Contract Close Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.contractclosetime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contract_date_sequence = ProtoField.new("Contract Date Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.contractdatesequence", ftypes.INT32, nil, nil, nil, "Contract Date Sequence Number.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contract_dates = ProtoField.new("Contract Dates", "nsekenya.nairobibonds.marketdata.mits.v2.14.contractdates", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contract_name = ProtoField.new("Contract Name", "nsekenya.nairobibonds.marketdata.mits.v2.14.contractname", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contract_open_time = ProtoField.new("Contract Open Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.contractopentime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contract_status = ProtoField.new("Contract Status", "nsekenya.nairobibonds.marketdata.mits.v2.14.contractstatus", ftypes.UINT8, nil, nil, nil, "Please see table below for descriptions.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contracts_requested_for_display = ProtoField.new("Contracts Requested For Display", "nsekenya.nairobibonds.marketdata.mits.v2.14.contractsrequestedfordisplay", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contracts_to_unsubscribe = ProtoField.new("Contracts To Unsubscribe", "nsekenya.nairobibonds.marketdata.mits.v2.14.contractstounsubscribe", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.country_code = ProtoField.new("Country Code", "nsekenya.nairobibonds.marketdata.mits.v2.14.countrycode", ftypes.STRING, nil, nil, nil, "Indicates the exchanges country code.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.country_code_characters = ProtoField.new("Country Code Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.countrycodecharacters", ftypes.STRING, nil, nil, nil, "Indicates the exchanges country code.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.country_code_length_byte = ProtoField.new("Country Code Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.countrycodelengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Country Code")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.coupon_date = ProtoField.new("Coupon Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.coupondate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.coupon_information = ProtoField.new("Coupon Information", "nsekenya.nairobibonds.marketdata.mits.v2.14.couponinformation", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.coupon_rate = ProtoField.new("Coupon Rate", "nsekenya.nairobibonds.marketdata.mits.v2.14.couponrate", ftypes.DOUBLE, nil, nil, nil, "Coupon rate paid for this bond.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.coupon_sequence = ProtoField.new("Coupon Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.couponsequence", ftypes.INT32, nil, nil, nil, "Indicates the sequence number for this record.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.current_value = ProtoField.new("Current Value", "nsekenya.nairobibonds.marketdata.mits.v2.14.currentvalue", ftypes.DOUBLE, nil, nil, nil, "Indicates the current value of the shares in issue based on yesterday's closing price.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.daily_trend_data = ProtoField.new("Daily Trend Data", "nsekenya.nairobibonds.marketdata.mits.v2.14.dailytrenddata", ftypes.STRING, nil, nil, nil, "The decompressed layout of 8.6")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.data_type = ProtoField.new("Data Type", "nsekenya.nairobibonds.marketdata.mits.v2.14.datatype", ftypes.UINT8, nil, nil, nil, "File identifier requested.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.date = ProtoField.new("Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.date", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.date_sequence = ProtoField.new("Date Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.datesequence", ftypes.INT32, nil, nil, nil, "Date Sequence of contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.day = ProtoField.new("Day", "nsekenya.nairobibonds.marketdata.mits.v2.14.day", ftypes.INT32)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.day_volume = ProtoField.new("Day Volume", "nsekenya.nairobibonds.marketdata.mits.v2.14.dayvolume", ftypes.DOUBLE, nil, nil, nil, "Total trades that have occurred.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.days_closing_price = ProtoField.new("Days Closing Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.daysclosingprice", ftypes.DOUBLE, nil, nil, nil, "Closing Mark-to-market price.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.days_closing_rate = ProtoField.new("Days Closing Rate", "nsekenya.nairobibonds.marketdata.mits.v2.14.daysclosingrate", ftypes.DOUBLE, nil, nil, nil, "Closing Mark-to-market rate (this would apply to rate traded products such as Spot Bonds, Bond Futures).")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.days_volume_d_8 = ProtoField.new("Days Volume D 8", "nsekenya.nairobibonds.marketdata.mits.v2.14.daysvolumed8", ftypes.DOUBLE, nil, nil, nil, "Total volume traded on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.days_volume_i_8 = ProtoField.new("Days Volume I 8", "nsekenya.nairobibonds.marketdata.mits.v2.14.daysvolumei8", ftypes.INT64, nil, nil, nil, "Total volume traded on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.deal_volume = ProtoField.new("Deal Volume", "nsekenya.nairobibonds.marketdata.mits.v2.14.dealvolume", ftypes.INT64, nil, nil, nil, "Last volume traded on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.delivery_fee_sequence = ProtoField.new("Delivery Fee Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.deliveryfeesequence", ftypes.INT32, nil, nil, nil, "Fee Sequence Number which defines the fee structure for deliveries on this instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.deltas = ProtoField.new("Deltas", "nsekenya.nairobibonds.marketdata.mits.v2.14.deltas", ftypes.UINT8, nil, nil, nil, "Indicates if this is a delta option strike.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.deltas_allowed = ProtoField.new("Deltas Allowed", "nsekenya.nairobibonds.marketdata.mits.v2.14.deltasallowed", ftypes.UINT8, nil, nil, nil, "Indicates if delta options are traded on this contract or not.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.depth_data = ProtoField.new("Depth Data", "nsekenya.nairobibonds.marketdata.mits.v2.14.depthdata", ftypes.STRING, nil, nil, nil, "Display Update Message - Message Type 59\\99 Depth Data")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.description_p_50 = ProtoField.new("Description P 50", "nsekenya.nairobibonds.marketdata.mits.v2.14.descriptionp50", ftypes.STRING, nil, nil, nil, "Name or Description of this member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.description_p_50_characters = ProtoField.new("Description P 50 Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.descriptionp50characters", ftypes.STRING, nil, nil, nil, "Name or Description of this member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.description_p_50_length_byte = ProtoField.new("Description P 50 Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.descriptionp50lengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Description P 50")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.description_p_62 = ProtoField.new("Description P 62", "nsekenya.nairobibonds.marketdata.mits.v2.14.descriptionp62", ftypes.STRING, nil, nil, nil, "A Description of the instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.description_p_62_characters = ProtoField.new("Description P 62 Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.descriptionp62characters", ftypes.STRING, nil, nil, nil, "A Description of the instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.description_p_62_length_byte = ProtoField.new("Description P 62 Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.descriptionp62lengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Description P 62")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display = ProtoField.new("Display", "nsekenya.nairobibonds.marketdata.mits.v2.14.display", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_data = ProtoField.new("Display data", "nsekenya.nairobibonds.marketdata.mits.v2.14.displaydata", ftypes.STRING, nil, nil, nil, "Compressed Display and Depth Data")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_name = ProtoField.new("Display Name", "nsekenya.nairobibonds.marketdata.mits.v2.14.displayname", ftypes.STRING, nil, nil, nil, "This field allows the exchange to indicate how an instrument should be presented.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_name_characters = ProtoField.new("Display Name Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.displaynamecharacters", ftypes.STRING, nil, nil, nil, "This field allows the exchange to indicate how an instrument should be presented.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_name_length_byte = ProtoField.new("Display Name Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.displaynamelengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Display Name")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_record = ProtoField.new("Display Record", "nsekenya.nairobibonds.marketdata.mits.v2.14.displayrecord", ftypes.STRING, nil, nil, nil, "A Display and its Number of depth Depth Data")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_records = ProtoField.new("Display Records", "nsekenya.nairobibonds.marketdata.mits.v2.14.displayrecords", ftypes.STRING, nil, nil, nil, "Decompressed Display entries")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_sequence = ProtoField.new("Display Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.displaysequence", ftypes.INT32, nil, nil, nil, "Display sequence number of this record.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.download_data = ProtoField.new("Download Data", "nsekenya.nairobibonds.marketdata.mits.v2.14.downloaddata", ftypes.STRING, nil, nil, nil, "Compressed data returned")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.download_date = ProtoField.new("Download Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.downloaddate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.encrypted_password = ProtoField.new("Encrypted Password", "nsekenya.nairobibonds.marketdata.mits.v2.14.encryptedpassword", ftypes.BYTES, nil, nil, nil, "Length of the encrypted password in the first 4 bytes, then the password encrypted with the session public key.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.error_number = ProtoField.new("Error Number", "nsekenya.nairobibonds.marketdata.mits.v2.14.errornumber", ftypes.INT32, nil, nil, nil, "This is the error number of the associated error message.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.exchange_announcements = ProtoField.new("Exchange Announcements", "nsekenya.nairobibonds.marketdata.mits.v2.14.exchangeannouncements", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.expiry_date = ProtoField.new("Expiry Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.expirydate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.failure_notice_identifier = ProtoField.new("Failure Notice Identifier", "nsekenya.nairobibonds.marketdata.mits.v2.14.failurenoticeidentifier", ftypes.INT32, nil, nil, nil, "Identifier to identify if a market shard has failed or recovered.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.first_trade_reference = ProtoField.new("First Trade Reference", "nsekenya.nairobibonds.marketdata.mits.v2.14.firsttradereference", ftypes.STRING, nil, nil, nil, "Indicates the reference number of the first trade on this instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.first_trade_reference_characters = ProtoField.new("First Trade Reference Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.firsttradereferencecharacters", ftypes.STRING, nil, nil, nil, "Indicates the reference number of the first trade on this instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.first_trade_reference_length_byte = ProtoField.new("First Trade Reference Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.firsttradereferencelengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in First Trade Reference")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.from_sequence = ProtoField.new("From Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.fromsequence", ftypes.INT32, nil, nil, nil, "From this sequence number.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.future_anonymous = ProtoField.new("Future Anonymous", "nsekenya.nairobibonds.marketdata.mits.v2.14.futureanonymous", ftypes.UINT8, nil, nil, nil, "Indicates if the futures on this contract are anonymously traded.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.future_fee_sequence = ProtoField.new("Future Fee Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.futurefeesequence", ftypes.INT32, nil, nil, nil, "Fee Sequence Number which defines the fee structure for future deals on this instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.good_till_cancelled_allowed = ProtoField.new("Good Till Cancelled Allowed", "nsekenya.nairobibonds.marketdata.mits.v2.14.goodtillcancelledallowed", ftypes.UINT8, nil, nil, nil, "Indicates whether Good Till Cancelled (GTC) order instructions are allowed.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.group_description = ProtoField.new("Group Description", "nsekenya.nairobibonds.marketdata.mits.v2.14.groupdescription", ftypes.STRING, nil, nil, nil, "Indicates the group make up for this instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.group_description_characters = ProtoField.new("Group Description Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.groupdescriptioncharacters", ftypes.STRING, nil, nil, nil, "Indicates the group make up for this instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.group_description_length_byte = ProtoField.new("Group Description Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.groupdescriptionlengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Group Description")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.group_margin = ProtoField.new("Group Margin", "nsekenya.nairobibonds.marketdata.mits.v2.14.groupmargin", ftypes.DOUBLE, nil, nil, nil, "Indicates the group margin applicable for this instrument when part of a group.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.high = ProtoField.new("High", "nsekenya.nairobibonds.marketdata.mits.v2.14.high", ftypes.DOUBLE, nil, nil, nil, "High price for security.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.high_price = ProtoField.new("High Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.highprice", ftypes.DOUBLE, nil, nil, nil, "The high for the day on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.history_suffix = ProtoField.new("History Suffix", "nsekenya.nairobibonds.marketdata.mits.v2.14.historysuffix", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.hold_over_orders_allowed = ProtoField.new("Hold Over Orders Allowed", "nsekenya.nairobibonds.marketdata.mits.v2.14.holdoverordersallowed", ftypes.UINT8, nil, nil, nil, "Indicates if hold over orders can be used on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.holiday_data = ProtoField.new("Holiday Data", "nsekenya.nairobibonds.marketdata.mits.v2.14.holidaydata", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.holiday_date = ProtoField.new("Holiday Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.holidaydate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.holiday_sequence = ProtoField.new("Holiday Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.holidaysequence", ftypes.INT32, nil, nil, nil, "Holiday sequence number.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.hours = ProtoField.new("Hours", "nsekenya.nairobibonds.marketdata.mits.v2.14.hours", ftypes.UINT8)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.ice_berg_orders_allowed = ProtoField.new("Ice Berg Orders Allowed", "nsekenya.nairobibonds.marketdata.mits.v2.14.icebergordersallowed", ftypes.UINT8, nil, nil, nil, "Indicates if ice berg orders can be used on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.id_market = ProtoField.new("Id Market", "nsekenya.nairobibonds.marketdata.mits.v2.14.idmarket", ftypes.INT32, nil, nil, nil, "Identifier of the market.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.identifier_prefix_b_4 = ProtoField.new("Identifier Prefix B 4", "nsekenya.nairobibonds.marketdata.mits.v2.14.identifierprefixb4", ftypes.BYTES, nil, nil, nil, "Identifies the type of the contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.identifier_prefix_c_1 = ProtoField.new("Identifier Prefix C 1", "nsekenya.nairobibonds.marketdata.mits.v2.14.identifierprefixc1", ftypes.STRING, nil, nil, nil, "Indicates the identifier prefix to use on contract definitions.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.identifier_prefix_i_4 = ProtoField.new("Identifier Prefix I 4", "nsekenya.nairobibonds.marketdata.mits.v2.14.identifierprefixi4", ftypes.INT32, nil, nil, nil, "Defines the asset class of the contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_constituents_data = ProtoField.new("Index Constituents Data", "nsekenya.nairobibonds.marketdata.mits.v2.14.indexconstituentsdata", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_data = ProtoField.new("Index Data", "nsekenya.nairobibonds.marketdata.mits.v2.14.indexdata", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_data_sequence = ProtoField.new("Index Data Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.indexdatasequence", ftypes.INT32, nil, nil, nil, "Indicates the sequence number for this record.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_instrument_sequence = ProtoField.new("Index Instrument Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.indexinstrumentsequence", ftypes.INT32, nil, nil, nil, "Indicates the sequence number for this record.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_price = ProtoField.new("Index Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.indexprice", ftypes.DOUBLE, nil, nil, nil, "Indicates the current price of the index.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_sequence_number = ProtoField.new("Index Sequence Number", "nsekenya.nairobibonds.marketdata.mits.v2.14.indexsequencenumber", ftypes.STRING, nil, nil, nil, "Indicates the sequence number of the index.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_sequence_number_characters = ProtoField.new("Index Sequence Number Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.indexsequencenumbercharacters", ftypes.STRING, nil, nil, nil, "Indicates the sequence number of the index.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_sequence_number_length_byte = ProtoField.new("Index Sequence Number Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.indexsequencenumberlengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Index Sequence Number")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_value = ProtoField.new("Index Value", "nsekenya.nairobibonds.marketdata.mits.v2.14.indexvalue", ftypes.DOUBLE, nil, nil, nil, "Indicates the value of the index at the indicated date.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_code = ProtoField.new("Indices Code", "nsekenya.nairobibonds.marketdata.mits.v2.14.indicescode", ftypes.STRING, nil, nil, nil, "Indicates the short code for this index.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_code_characters = ProtoField.new("Indices Code Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.indicescodecharacters", ftypes.STRING, nil, nil, nil, "Indicates the short code for this index.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_code_length_byte = ProtoField.new("Indices Code Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.indicescodelengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Indices Code")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_data = ProtoField.new("Indices Data", "nsekenya.nairobibonds.marketdata.mits.v2.14.indicesdata", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_description = ProtoField.new("Indices Description", "nsekenya.nairobibonds.marketdata.mits.v2.14.indicesdescription", ftypes.STRING, nil, nil, nil, "Provides a description for the index.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_description_characters = ProtoField.new("Indices Description Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.indicesdescriptioncharacters", ftypes.STRING, nil, nil, nil, "Provides a description for the index.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_description_length_byte = ProtoField.new("Indices Description Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.indicesdescriptionlengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Indices Description")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_price_data = ProtoField.new("Indices Price Data", "nsekenya.nairobibonds.marketdata.mits.v2.14.indicespricedata", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_sequence = ProtoField.new("Indices Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.indicessequence", ftypes.INT32, nil, nil, nil, "Indicates the index sequence number for this record.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.information_or_error_indicator = ProtoField.new("Information Or Error Indicator", "nsekenya.nairobibonds.marketdata.mits.v2.14.informationorerrorindicator", ftypes.UINT8, nil, nil, nil, "0 - information message, 1 - error message.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.initial_margin = ProtoField.new("Initial Margin", "nsekenya.nairobibonds.marketdata.mits.v2.14.initialmargin", ftypes.DOUBLE, nil, nil, nil, "Indicates the initial margin requirement for this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_group_sequence = ProtoField.new("Instrument Group Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumentgroupsequence", ftypes.INT32, nil, nil, nil, "Group Sequence Number to which this instrument belongs to.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_name_b_5 = ProtoField.new("Instrument Name B 5", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumentnameb5", ftypes.BYTES, nil, nil, nil, "The short name of the instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_name_p_5 = ProtoField.new("Instrument Name P 5", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumentnamep5", ftypes.STRING, nil, nil, nil, "Defines the instrument which represents this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_name_p_5_characters = ProtoField.new("Instrument Name P 5 Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumentnamep5characters", ftypes.STRING, nil, nil, nil, "Defines the instrument which represents this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_name_p_5_length_byte = ProtoField.new("Instrument Name P 5 Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumentnamep5lengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Instrument Name P 5")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_sequence = ProtoField.new("Instrument Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumentsequence", ftypes.INT32, nil, nil, nil, "Instrument sequence number.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_code = ProtoField.new("Instrument Type Code", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumenttypecode", ftypes.STRING, nil, nil, nil, "Indicates the instrument type code.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_code_characters = ProtoField.new("Instrument Type Code Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumenttypecodecharacters", ftypes.STRING, nil, nil, nil, "Indicates the instrument type code.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_code_length_byte = ProtoField.new("Instrument Type Code Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumenttypecodelengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Instrument Type Code")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_name = ProtoField.new("Instrument Type Name", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumenttypename", ftypes.STRING, nil, nil, nil, "A description of the instrument type.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_name_characters = ProtoField.new("Instrument Type Name Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumenttypenamecharacters", ftypes.STRING, nil, nil, nil, "A description of the instrument type.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_name_length_byte = ProtoField.new("Instrument Type Name Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumenttypenamelengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Instrument Type Name")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_number_c_1 = ProtoField.new("Instrument Type Number C 1", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumenttypenumberc1", ftypes.STRING, nil, nil, nil, "Instrument type number which defines the class of instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_number_i_4 = ProtoField.new("Instrument Type Number I 4", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumenttypenumberi4", ftypes.INT32, nil, nil, nil, "A unique number for this instrument type.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_sequence = ProtoField.new("Instrument Type Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumenttypesequence", ftypes.INT32, nil, nil, nil, "Sequence number for this record.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_types = ProtoField.new("Instrument Types", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumenttypes", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instruments_data = ProtoField.new("Instruments Data", "nsekenya.nairobibonds.marketdata.mits.v2.14.instrumentsdata", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.intraday_auction_one_auction_close_time = ProtoField.new("Intraday Auction One Auction Close Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.intradayauctiononeauctionclosetime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.intraday_auction_one_start_time = ProtoField.new("Intraday Auction One Start Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.intradayauctiononestarttime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.intraday_auction_three_auction_close_time = ProtoField.new("Intraday Auction Three Auction Close Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.intradayauctionthreeauctionclosetime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.intraday_auction_three_start_time = ProtoField.new("Intraday Auction Three Start Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.intradayauctionthreestarttime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.intraday_auction_two_auction_close_time = ProtoField.new("Intraday Auction Two Auction Close Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.intradayauctiontwoauctionclosetime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.intraday_auction_two_start_time = ProtoField.new("Intraday Auction Two Start Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.intradayauctiontwostarttime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.is_delta_option = ProtoField.new("Is Delta Option", "nsekenya.nairobibonds.marketdata.mits.v2.14.isdeltaoption", ftypes.UINT8, nil, nil, nil, "For option contracts, indicates if this is a Delta Neutral Option strategy.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.is_early_close = ProtoField.new("Is Early Close", "nsekenya.nairobibonds.marketdata.mits.v2.14.isearlyclose", ftypes.UINT8, nil, nil, nil, "Indicates if this day is when the market will close early.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.is_futures_close_out = ProtoField.new("Is Futures Close Out", "nsekenya.nairobibonds.marketdata.mits.v2.14.isfuturescloseout", ftypes.UINT8, nil, nil, nil, "Indicates if this day is a futures close out day.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.is_successful = ProtoField.new("Is Successful", "nsekenya.nairobibonds.marketdata.mits.v2.14.issuccessful", ftypes.UINT8, nil, nil, nil, "Indicates if the login was successful or not.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.isin_code = ProtoField.new("Isin Code", "nsekenya.nairobibonds.marketdata.mits.v2.14.isincode", ftypes.STRING, nil, nil, nil, "ISIN number of the instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.isin_code_characters = ProtoField.new("Isin Code Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.isincodecharacters", ftypes.STRING, nil, nil, nil, "ISIN number of the instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.isin_code_length_byte = ProtoField.new("Isin Code Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.isincodelengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Isin Code")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.issue_date = ProtoField.new("Issue Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.issuedate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_chunk = ProtoField.new("Last Chunk", "nsekenya.nairobibonds.marketdata.mits.v2.14.lastchunk", ftypes.UINT8, nil, nil, nil, "Indicates if this 99 message contains the last chunk of compressed data.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_dealt_price = ProtoField.new("Last Dealt Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.lastdealtprice", ftypes.DOUBLE, nil, nil, nil, "Last traded price for this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_dealt_time = ProtoField.new("Last Dealt Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.lastdealttime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_order_buy_sell = ProtoField.new("Last Order Buy Sell", "nsekenya.nairobibonds.marketdata.mits.v2.14.lastorderbuysell", ftypes.STRING, nil, nil, nil, "Last action on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_order_price = ProtoField.new("Last Order Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.lastorderprice", ftypes.DOUBLE, nil, nil, nil, "Last price bid on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_order_qty = ProtoField.new("Last Order Qty", "nsekenya.nairobibonds.marketdata.mits.v2.14.lastorderqty", ftypes.INT32, nil, nil, nil, "Last quantity bid on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_piece_of_chunk = ProtoField.new("Last Piece Of Chunk", "nsekenya.nairobibonds.marketdata.mits.v2.14.lastpieceofchunk", ftypes.UINT8, nil, nil, nil, "Not used for request.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_traded_quantity = ProtoField.new("Last Traded Quantity", "nsekenya.nairobibonds.marketdata.mits.v2.14.lasttradedquantity", ftypes.INT64, nil, nil, nil, "Last traded quantity.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.length_check = ProtoField.new("Length Check", "nsekenya.nairobibonds.marketdata.mits.v2.14.lengthcheck", ftypes.UINT8, nil, nil, nil, "XOR of bytes 2 and 3")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.linked_to_floating_rate = ProtoField.new("Linked To Floating Rate", "nsekenya.nairobibonds.marketdata.mits.v2.14.linkedtofloatingrate", ftypes.STRING, nil, nil, nil, "Indicates if this bond is linked to a floating rate.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.lot_size = ProtoField.new("Lot Size", "nsekenya.nairobibonds.marketdata.mits.v2.14.lotsize", ftypes.INT32, nil, nil, nil, "Indicates if a full lot size is applicable to this contract, otherwise 1.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.low = ProtoField.new("Low", "nsekenya.nairobibonds.marketdata.mits.v2.14.low", ftypes.DOUBLE, nil, nil, nil, "Low price for a security.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.low_price = ProtoField.new("Low Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.lowprice", ftypes.DOUBLE, nil, nil, nil, "The low for the day on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_capitalisation = ProtoField.new("Market Capitalisation", "nsekenya.nairobibonds.marketdata.mits.v2.14.marketcapitalisation", ftypes.DOUBLE, nil, nil, nil, "Indicates the total market cap for this index.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_capitalization = ProtoField.new("Market Capitalization", "nsekenya.nairobibonds.marketdata.mits.v2.14.marketcapitalization", ftypes.DOUBLE, nil, nil, nil, "Indicates the market capitalization of the index at the indicated date.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_display_data = ProtoField.new("Market Display Data", "nsekenya.nairobibonds.marketdata.mits.v2.14.marketdisplaydata", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_number_c_1 = ProtoField.new("Market Number C 1", "nsekenya.nairobibonds.marketdata.mits.v2.14.marketnumberc1", ftypes.STRING, nil, nil, nil, "Market Number on which this instrument trades.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_number_i_4 = ProtoField.new("Market Number I 4", "nsekenya.nairobibonds.marketdata.mits.v2.14.marketnumberi4", ftypes.INT32, nil, nil, nil, "Indicates the market number on which an announcement was generated.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_shard_global_sequence_number = ProtoField.new("Market Shard Global Sequence Number", "nsekenya.nairobibonds.marketdata.mits.v2.14.marketshardglobalsequencenumber", ftypes.INT32, nil, nil, nil, "Global sequence number for re-request message.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_shard_number_c_1 = ProtoField.new("Market Shard Number C 1", "nsekenya.nairobibonds.marketdata.mits.v2.14.marketshardnumberc1", ftypes.STRING, nil, nil, nil, "Indicates the market subset on which this instrument is listed.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_shard_number_i_4 = ProtoField.new("Market Shard Number I 4", "nsekenya.nairobibonds.marketdata.mits.v2.14.marketshardnumberi4", ftypes.INT32, nil, nil, nil, "Indicates the market shard number on which you would like to re-request data from.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.master_member_sequence = ProtoField.new("Master Member Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.mastermembersequence", ftypes.INT32, nil, nil, nil, "Member sequence of the master member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.maturity_date = ProtoField.new("Maturity Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.maturitydate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.max_change = ProtoField.new("Max Change", "nsekenya.nairobibonds.marketdata.mits.v2.14.maxchange", ftypes.DOUBLE, nil, nil, nil, "Percentage of the maximum change from the last traded price allowed.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.max_days_move = ProtoField.new("Max Days Move", "nsekenya.nairobibonds.marketdata.mits.v2.14.maxdaysmove", ftypes.DOUBLE, nil, nil, nil, "Value of the maximum change from the opening price allowed.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.max_gap = ProtoField.new("Max Gap", "nsekenya.nairobibonds.marketdata.mits.v2.14.maxgap", ftypes.DOUBLE, nil, nil, nil, "Maximum gap between the current value and upper and lower bound as a percentage.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_code_p_5 = ProtoField.new("Member Code P 5", "nsekenya.nairobibonds.marketdata.mits.v2.14.membercodep5", ftypes.STRING, nil, nil, nil, "Member code for this member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_code_p_5_characters = ProtoField.new("Member Code P 5 Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.membercodep5characters", ftypes.STRING, nil, nil, nil, "Member code for this member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_code_p_5_length_byte = ProtoField.new("Member Code P 5 Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.membercodep5lengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Member Code P 5")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_code_p_6 = ProtoField.new("Member Code P 6", "nsekenya.nairobibonds.marketdata.mits.v2.14.membercodep6", ftypes.STRING, nil, nil, nil, "Member code of affiliated member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_code_p_6_characters = ProtoField.new("Member Code P 6 Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.membercodep6characters", ftypes.STRING, nil, nil, nil, "Member code of affiliated member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_code_p_6_length_byte = ProtoField.new("Member Code P 6 Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.membercodep6lengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Member Code P 6")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_data = ProtoField.new("Member Data", "nsekenya.nairobibonds.marketdata.mits.v2.14.memberdata", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_sequence = ProtoField.new("Member Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.membersequence", ftypes.INT32, nil, nil, nil, "Member sequence of this record.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_category_type = ProtoField.new("Message Category Type", "nsekenya.nairobibonds.marketdata.mits.v2.14.messagecategorytype", ftypes.INT16, nil, nil, nil, "Indicates the filter for this news message.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_category_value = ProtoField.new("Message Category Value", "nsekenya.nairobibonds.marketdata.mits.v2.14.messagecategoryvalue", ftypes.STRING, nil, nil, nil, "Indicates the value which is associated with the category type.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_category_value_characters = ProtoField.new("Message Category Value Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.messagecategoryvaluecharacters", ftypes.STRING, nil, nil, nil, "Indicates the value which is associated with the category type.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_category_value_length_byte = ProtoField.new("Message Category Value Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.messagecategoryvaluelengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Message Category Value")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_length = ProtoField.new("Message Length", "nsekenya.nairobibonds.marketdata.mits.v2.14.messagelength", ftypes.UINT16, nil, nil, nil, "Message length, not including the 4 byte transport header")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_p_250 = ProtoField.new("Message P 250", "nsekenya.nairobibonds.marketdata.mits.v2.14.messagep250", ftypes.STRING, nil, nil, nil, "A Description of the error.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_p_250_characters = ProtoField.new("Message P 250 Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.messagep250characters", ftypes.STRING, nil, nil, nil, "A Description of the error.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_p_250_length_byte = ProtoField.new("Message P 250 Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.messagep250lengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Message P 250")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_p_255 = ProtoField.new("Message P 255", "nsekenya.nairobibonds.marketdata.mits.v2.14.messagep255", ftypes.STRING, nil, nil, nil, "Indicates the text for this segment of the news message.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_p_255_characters = ProtoField.new("Message P 255 Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.messagep255characters", ftypes.STRING, nil, nil, nil, "Indicates the text for this segment of the news message.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_p_255_length_byte = ProtoField.new("Message P 255 Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.messagep255lengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Message P 255")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.mid_price = ProtoField.new("Mid Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.midprice", ftypes.DOUBLE, nil, nil, nil, "Mid price for this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minimum_all_or_nothing_quantity = ProtoField.new("Minimum All Or Nothing Quantity", "nsekenya.nairobibonds.marketdata.mits.v2.14.minimumallornothingquantity", ftypes.INT64, nil, nil, nil, "Indicates the minimum quantity allowed for all or nothing orders.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minimum_iceberg_quantity = ProtoField.new("Minimum Iceberg Quantity", "nsekenya.nairobibonds.marketdata.mits.v2.14.minimumicebergquantity", ftypes.INT64, nil, nil, nil, "Indicates the minimum quantity for iceberg orders.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minimum_initiation_fee = ProtoField.new("Minimum Initiation Fee", "nsekenya.nairobibonds.marketdata.mits.v2.14.minimuminitiationfee", ftypes.DOUBLE, nil, nil, nil, "Fee applied for the first trade on this instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minimum_valid_bid_volume_off_screen = ProtoField.new("Minimum Valid Bid Volume Off Screen", "nsekenya.nairobibonds.marketdata.mits.v2.14.minimumvalidbidvolumeoffscreen", ftypes.INT32, nil, nil, nil, "Indicates the minimum unmatched trade quantity which can be submitted off screen.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minimum_valid_bid_volume_off_screen_options = ProtoField.new("Minimum Valid Bid Volume Off Screen Options", "nsekenya.nairobibonds.marketdata.mits.v2.14.minimumvalidbidvolumeoffscreenoptions", ftypes.INT32, nil, nil, nil, "Indicates the minimum unmatched trade quantity which can be submitted off screen for options.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minimum_valid_bid_volume_on_screen = ProtoField.new("Minimum Valid Bid Volume On Screen", "nsekenya.nairobibonds.marketdata.mits.v2.14.minimumvalidbidvolumeonscreen", ftypes.INT32, nil, nil, nil, "Indicates the minimum order quantity which can be submitted on screen.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minimum_valid_bid_volume_on_screen_options = ProtoField.new("Minimum Valid Bid Volume On Screen Options", "nsekenya.nairobibonds.marketdata.mits.v2.14.minimumvalidbidvolumeonscreenoptions", ftypes.INT32, nil, nil, nil, "Indicates the minimum order quantity which can be submitted on screen for options.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minutes = ProtoField.new("Minutes", "nsekenya.nairobibonds.marketdata.mits.v2.14.minutes", ftypes.UINT8)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.month = ProtoField.new("Month", "nsekenya.nairobibonds.marketdata.mits.v2.14.month", ftypes.INT32)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.mtm_data = ProtoField.new("Mtm Data", "nsekenya.nairobibonds.marketdata.mits.v2.14.mtmdata", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.new_password = ProtoField.new("New Password", "nsekenya.nairobibonds.marketdata.mits.v2.14.newpassword", ftypes.BYTES, nil, nil, nil, "New password if the user requires to change their password.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.news_number = ProtoField.new("News Number", "nsekenya.nairobibonds.marketdata.mits.v2.14.newsnumber", ftypes.INT16, nil, nil, nil, "Indicates the number associated to this News message.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.news_service = ProtoField.new("News Service", "nsekenya.nairobibonds.marketdata.mits.v2.14.newsservice", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.nominal = ProtoField.new("Nominal", "nsekenya.nairobibonds.marketdata.mits.v2.14.nominal", ftypes.DOUBLE, nil, nil, nil, "Nominal in which this instrument is issued.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.nominal_divisor = ProtoField.new("Nominal Divisor", "nsekenya.nairobibonds.marketdata.mits.v2.14.nominaldivisor", ftypes.INT32, nil, nil, nil, "For bond instruments, indicates what divisor should be applied when representing a quantity as nominal.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.number_of_days_in_a_year = ProtoField.new("Number Of Days In A Year", "nsekenya.nairobibonds.marketdata.mits.v2.14.numberofdaysinayear", ftypes.INT32, nil, nil, nil, "Indicates the number of days in a year to be used in pricing.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.number_of_depth = ProtoField.new("Number Of Depth", "nsekenya.nairobibonds.marketdata.mits.v2.14.numberofdepth", ftypes.UINT8, nil, nil, nil, "Number of depth available on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.number_of_unique_members = ProtoField.new("Number Of Unique Members", "nsekenya.nairobibonds.marketdata.mits.v2.14.numberofuniquemembers", ftypes.INT32, nil, nil, nil, "The number of member codes that is affiliated with this member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.odd_lot = ProtoField.new("Odd Lot", "nsekenya.nairobibonds.marketdata.mits.v2.14.oddlot", ftypes.UINT8, nil, nil, nil, "Indicates if there is an odd lot depth available on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.on_screen = ProtoField.new("On Screen", "nsekenya.nairobibonds.marketdata.mits.v2.14.onscreen", ftypes.UINT8, nil, nil, nil, "Indicates if this instrument is tradable or not.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.open_interest = ProtoField.new("Open Interest", "nsekenya.nairobibonds.marketdata.mits.v2.14.openinterest", ftypes.DOUBLE, nil, nil, nil, "Market capitalization per security.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.open_price = ProtoField.new("Open Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.openprice", ftypes.DOUBLE, nil, nil, nil, "Trade price when the market opens.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.opening_auction_close_time = ProtoField.new("Opening Auction Close Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.openingauctionclosetime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.opening_auction_start_time = ProtoField.new("Opening Auction Start Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.openingauctionstarttime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.opening_price = ProtoField.new("Opening Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.openingprice", ftypes.DOUBLE, nil, nil, nil, "Indicates the opening price of the index.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.option_anonymous = ProtoField.new("Option Anonymous", "nsekenya.nairobibonds.marketdata.mits.v2.14.optionanonymous", ftypes.UINT8, nil, nil, nil, "Indicates if the options on this contract are anonymously traded.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.option_fee_sequence = ProtoField.new("Option Fee Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.optionfeesequence", ftypes.INT32, nil, nil, nil, "Fee Sequence Number which defines the fee structure for option deals on this instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.option_lot_size = ProtoField.new("Option Lot Size", "nsekenya.nairobibonds.marketdata.mits.v2.14.optionlotsize", ftypes.INT32, nil, nil, nil, "Indicates if a full lot size is applicable to option contracts, otherwise 1.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.option_premium_format_decimal_places = ProtoField.new("Option Premium Format Decimal Places", "nsekenya.nairobibonds.marketdata.mits.v2.14.optionpremiumformatdecimalplaces", ftypes.INT32, nil, nil, nil, "Indicates the format of the premiums at which option deals are recorded at.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.options_allowed = ProtoField.new("Options Allowed", "nsekenya.nairobibonds.marketdata.mits.v2.14.optionsallowed", ftypes.UINT8, nil, nil, nil, "Indicates if options are traded on this contract or not.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.options_exercise_cost = ProtoField.new("Options Exercise Cost", "nsekenya.nairobibonds.marketdata.mits.v2.14.optionsexercisecost", ftypes.DOUBLE, nil, nil, nil, "Indicates either the percentage or amount which an option will be considered in the money.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.options_exercise_is_percentage = ProtoField.new("Options Exercise Is Percentage", "nsekenya.nairobibonds.marketdata.mits.v2.14.optionsexerciseispercentage", ftypes.UINT8, nil, nil, nil, "Indicates of this instrument uses a percentage based option exercise points system or not.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.order_contract = ProtoField.new("Order Contract", "nsekenya.nairobibonds.marketdata.mits.v2.14.ordercontract", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.overnight_admin_close_time = ProtoField.new("Overnight Admin Close Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.overnightadminclosetime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.overnight_admin_open_time = ProtoField.new("Overnight Admin Open Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.overnightadminopentime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.pair_member_codes_with_unique_number = ProtoField.new("Pair Member Codes With Unique Number", "nsekenya.nairobibonds.marketdata.mits.v2.14.pairmembercodeswithuniquenumber", ftypes.STRING, nil, nil, nil, "The structure for the Member Unique Numbers send with the login reply message")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.physical_settlement = ProtoField.new("Physical Settlement", "nsekenya.nairobibonds.marketdata.mits.v2.14.physicalsettlement", ftypes.UINT8, nil, nil, nil, "Indicates if this instrument is physically settled, or not.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.pre_open_order_entry_close_time = ProtoField.new("Pre Open Order Entry Close Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.preopenorderentryclosetime", ftypes.STRING, nil, nil, nil, "Pre-open order entry Close Time")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.pre_open_order_entry_open_time = ProtoField.new("Pre Open Order Entry Open Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.preopenorderentryopentime", ftypes.STRING, nil, nil, nil, "Pre-open order entry Open Time")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.previous_balance = ProtoField.new("Previous Balance", "nsekenya.nairobibonds.marketdata.mits.v2.14.previousbalance", ftypes.DOUBLE, nil, nil, nil, "Indicates the previous days shares in issue.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.previous_business_day = ProtoField.new("Previous Business Day", "nsekenya.nairobibonds.marketdata.mits.v2.14.previousbusinessday", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.previous_close_price = ProtoField.new("Previous Close Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.previouscloseprice", ftypes.DOUBLE, nil, nil, nil, "The previous business days closing price for the security.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.previous_closing_price = ProtoField.new("Previous Closing Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.previousclosingprice", ftypes.DOUBLE, nil, nil, nil, "Previous day closing price.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.previous_value = ProtoField.new("Previous Value", "nsekenya.nairobibonds.marketdata.mits.v2.14.previousvalue", ftypes.DOUBLE, nil, nil, nil, "Indicates the previous value of the shares in issue.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.price = ProtoField.new("Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.price", ftypes.DOUBLE, nil, nil, nil, "Price of on the traded order.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.price_format_decimal_places = ProtoField.new("Price Format Decimal Places", "nsekenya.nairobibonds.marketdata.mits.v2.14.priceformatdecimalplaces", ftypes.INT32, nil, nil, nil, "Indicates the format of the price at which deals are recorded at.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.price_interval = ProtoField.new("Price Interval", "nsekenya.nairobibonds.marketdata.mits.v2.14.priceinterval", ftypes.DOUBLE, nil, nil, nil, "Indicates in what intervals prices can be quoted.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.price_multiplier = ProtoField.new("Price Multiplier", "nsekenya.nairobibonds.marketdata.mits.v2.14.pricemultiplier", ftypes.INT16, nil, nil, nil, "Indicates the unit size for bonds when calculating the consideration.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.price_rate = ProtoField.new("Price Rate", "nsekenya.nairobibonds.marketdata.mits.v2.14.pricerate", ftypes.STRING, nil, nil, nil, "'P' for Price or 'R' for Rate.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.proprietary_trading_allowed = ProtoField.new("Proprietary Trading Allowed", "nsekenya.nairobibonds.marketdata.mits.v2.14.proprietarytradingallowed", ftypes.UINT8, nil, nil, nil, "Indicates if the instrument allows orders to be placed directly on the brokers code.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.quantity_d_8 = ProtoField.new("Quantity D 8", "nsekenya.nairobibonds.marketdata.mits.v2.14.quantityd8", ftypes.DOUBLE, nil, nil, nil, "The quantity on the traded order.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.quantity_i_2 = ProtoField.new("Quantity I 2", "nsekenya.nairobibonds.marketdata.mits.v2.14.quantityi2", ftypes.INT16, nil, nil, nil, "Number of contracts to unsubscribe from.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.quantity_i_8 = ProtoField.new("Quantity I 8", "nsekenya.nairobibonds.marketdata.mits.v2.14.quantityi8", ftypes.INT64, nil, nil, nil, "Quantity of instrument at time.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.quantity_tick_size = ProtoField.new("Quantity Tick Size", "nsekenya.nairobibonds.marketdata.mits.v2.14.quantityticksize", ftypes.INT32, nil, nil, nil, "Indicates the interval in which quantities are allowed to be submitted.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.quote_format_decimal_places = ProtoField.new("Quote Format Decimal Places", "nsekenya.nairobibonds.marketdata.mits.v2.14.quoteformatdecimalplaces", ftypes.INT32, nil, nil, nil, "Indicates the format of the prices quoted on screen for live trading.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.re_request = ProtoField.new("Re Request", "nsekenya.nairobibonds.marketdata.mits.v2.14.rerequest", ftypes.UINT8, nil, nil, nil, "Indicates if this is a re-request for data.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.records = ProtoField.new("Records", "nsekenya.nairobibonds.marketdata.mits.v2.14.records", ftypes.STRING, nil, nil, nil, "Decompressed records, a multiple of the size of the Data Type's structure")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.redemption_value = ProtoField.new("Redemption Value", "nsekenya.nairobibonds.marketdata.mits.v2.14.redemptionvalue", ftypes.DOUBLE, nil, nil, nil, "Indicates the percentage of the bond which is redeemed on this date.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.reference_inflation_rate = ProtoField.new("Reference Inflation Rate", "nsekenya.nairobibonds.marketdata.mits.v2.14.referenceinflationrate", ftypes.DOUBLE, nil, nil, nil, "Used to specify a reference inflation rate.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.reference_message_type = ProtoField.new("Reference Message Type", "nsekenya.nairobibonds.marketdata.mits.v2.14.referencemessagetype", ftypes.STRING, nil, nil, nil, "Indicates the message type of the incoming message this reject is in response to.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.reference_message_type_characters = ProtoField.new("Reference Message Type Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.referencemessagetypecharacters", ftypes.STRING, nil, nil, nil, "Indicates the message type of the incoming message this reject is in response to.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.reference_message_type_length_byte = ProtoField.new("Reference Message Type Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.referencemessagetypelengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Reference Message Type")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.reference_sequence_number = ProtoField.new("Reference Sequence Number", "nsekenya.nairobibonds.marketdata.mits.v2.14.referencesequencenumber", ftypes.INT32, nil, nil, nil, "Indicates the sequence number of the failed message to which this reject is in response to.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.reminder_only = ProtoField.new("Reminder Only", "nsekenya.nairobibonds.marketdata.mits.v2.14.reminderonly", ftypes.UINT8, nil, nil, nil, "Indicates if this item is only a reminder.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.reserved_1 = ProtoField.new("Reserved 1", "nsekenya.nairobibonds.marketdata.mits.v2.14.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved for internal use.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.rfq_allowed = ProtoField.new("Rfq Allowed", "nsekenya.nairobibonds.marketdata.mits.v2.14.rfqallowed", ftypes.UINT8, nil, nil, nil, "Indicates if RFQs can be processed on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.rpve = ProtoField.new("Rpve", "nsekenya.nairobibonds.marketdata.mits.v2.14.rpve", ftypes.DOUBLE, nil, nil, nil, "Range Price Volatility Effect for this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.second_date_sequence = ProtoField.new("Second Date Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.seconddatesequence", ftypes.INT32, nil, nil, nil, "Secondary dates sequence number for spread instruments.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.second_instrument_sequence = ProtoField.new("Second Instrument Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.secondinstrumentsequence", ftypes.INT32, nil, nil, nil, "Secondary instrument sequence number for split / switch instruments.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.second_unused_4 = ProtoField.new("Second Unused 4", "nsekenya.nairobibonds.marketdata.mits.v2.14.secondunused4", ftypes.BYTES, nil, nil, nil, "Unused")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.second_unused_8 = ProtoField.new("Second Unused 8", "nsekenya.nairobibonds.marketdata.mits.v2.14.secondunused8", ftypes.BYTES, nil, nil, nil, "Unused")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.secondary_contract_date_sequence = ProtoField.new("Secondary Contract Date Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.secondarycontractdatesequence", ftypes.INT32, nil, nil, nil, "Secondary Date Sequence of contract if contract is spread or split.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.secondary_date = ProtoField.new("Secondary Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.secondarydate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.secondary_expiry_date = ProtoField.new("Secondary Expiry Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.secondaryexpirydate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.secondary_instrument_name_b_5 = ProtoField.new("Secondary Instrument Name B 5", "nsekenya.nairobibonds.marketdata.mits.v2.14.secondaryinstrumentnameb5", ftypes.BYTES, nil, nil, nil, "The Short Name of the second instrument traded for split contracts.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.secondary_instrument_name_p_5 = ProtoField.new("Secondary Instrument Name P 5", "nsekenya.nairobibonds.marketdata.mits.v2.14.secondaryinstrumentnamep5", ftypes.STRING, nil, nil, nil, "For strategy type products such as Product spreads, represents the instrument name of the second leg of the contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.secondary_instrument_name_p_5_characters = ProtoField.new("Secondary Instrument Name P 5 Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.secondaryinstrumentnamep5characters", ftypes.STRING, nil, nil, nil, "For strategy type products such as Product spreads, represents the instrument name of the second leg of the contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.secondary_instrument_name_p_5_length_byte = ProtoField.new("Secondary Instrument Name P 5 Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.secondaryinstrumentnamep5lengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Secondary Instrument Name P 5")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.seconds = ProtoField.new("Seconds", "nsekenya.nairobibonds.marketdata.mits.v2.14.seconds", ftypes.UINT8)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sector = ProtoField.new("Sector", "nsekenya.nairobibonds.marketdata.mits.v2.14.sector", ftypes.STRING, nil, nil, nil, "Describes a market sector for a security.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sector_characters = ProtoField.new("Sector Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.sectorcharacters", ftypes.STRING, nil, nil, nil, "Describes a market sector for a security.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sector_length_byte = ProtoField.new("Sector Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.sectorlengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Sector")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.security_type = ProtoField.new("Security Type", "nsekenya.nairobibonds.marketdata.mits.v2.14.securitytype", ftypes.STRING, nil, nil, nil, "Categorizes securities into their various types.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.security_type_characters = ProtoField.new("Security Type Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.securitytypecharacters", ftypes.STRING, nil, nil, nil, "Categorizes securities into their various types.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.security_type_length_byte = ProtoField.new("Security Type Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.securitytypelengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Security Type")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.segment_number = ProtoField.new("Segment Number", "nsekenya.nairobibonds.marketdata.mits.v2.14.segmentnumber", ftypes.INT16, nil, nil, nil, "Indicates the number of this segment.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_order_id = ProtoField.new("Sell Order Id", "nsekenya.nairobibonds.marketdata.mits.v2.14.sellorderid", ftypes.INT32, nil, nil, nil, "Active Order ID.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_order_type = ProtoField.new("Sell Order Type", "nsekenya.nairobibonds.marketdata.mits.v2.14.sellordertype", ftypes.INT32, nil, nil, nil, "Order Type (Table 8.3.3).")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_price = ProtoField.new("Sell Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.sellprice", ftypes.DOUBLE, nil, nil, nil, "Price of ask.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_quantity = ProtoField.new("Sell Quantity", "nsekenya.nairobibonds.marketdata.mits.v2.14.sellquantity", ftypes.INT32, nil, nil, nil, "Quantity of ask.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_side_phantom = ProtoField.new("Sell Side Phantom", "nsekenya.nairobibonds.marketdata.mits.v2.14.sellsidephantom", ftypes.UINT8, nil, nil, nil, "Indicates if this sell element is a phantom.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_who_characters = ProtoField.new("Sell Who Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.sellwhocharacters", ftypes.STRING, nil, nil, nil, "Member asking.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_who_length_byte = ProtoField.new("Sell Who Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.sellwholengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Sell Who")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_who_member = ProtoField.new("Sell Who Member", "nsekenya.nairobibonds.marketdata.mits.v2.14.sellwhomember", ftypes.STRING, nil, nil, nil, "Member asking")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_who_unique_member = ProtoField.new("Sell Who Unique Member", "nsekenya.nairobibonds.marketdata.mits.v2.14.sellwhouniquemember", ftypes.STRING, nil, nil, nil, "Anonymous contract: length byte 0, then the unique member number")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sequence_number = ProtoField.new("Sequence Number", "nsekenya.nairobibonds.marketdata.mits.v2.14.sequencenumber", ftypes.INT32)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.server_message_type = ProtoField.new("Server Message Type", "nsekenya.nairobibonds.marketdata.mits.v2.14.servermessagetype", ftypes.UINT8, nil, nil, nil, "Message number of a message sent by the exchange")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.settlement_days = ProtoField.new("Settlement Days", "nsekenya.nairobibonds.marketdata.mits.v2.14.settlementdays", ftypes.INT32, nil, nil, nil, "Indicates the settlement days applied for the settlement cycle on this instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.settlement_margin = ProtoField.new("Settlement Margin", "nsekenya.nairobibonds.marketdata.mits.v2.14.settlementmargin", ftypes.DOUBLE, nil, nil, nil, "The settlement margin used for agricultural derivative instruments.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.share_holding_percentage_limit = ProtoField.new("Share Holding Percentage Limit", "nsekenya.nairobibonds.marketdata.mits.v2.14.shareholdingpercentagelimit", ftypes.DOUBLE, nil, nil, nil, "The allowed share holding percentage any one account can hold.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.shares_in_issue = ProtoField.new("Shares In Issue", "nsekenya.nairobibonds.marketdata.mits.v2.14.sharesinissue", ftypes.DOUBLE, nil, nil, nil, "Indicate the shares in issue.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.shares_in_issue_data = ProtoField.new("Shares In Issue Data", "nsekenya.nairobibonds.marketdata.mits.v2.14.sharesinissuedata", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.shares_in_issue_sequence = ProtoField.new("Shares In Issue Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.sharesinissuesequence", ftypes.INT32, nil, nil, nil, "Indicates the sequence number for this record.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sor_account = ProtoField.new("Sor Account", "nsekenya.nairobibonds.marketdata.mits.v2.14.soraccount", ftypes.STRING, nil, nil, nil, "SOR Account Number for the Member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sor_account_characters = ProtoField.new("Sor Account Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.soraccountcharacters", ftypes.STRING, nil, nil, nil, "SOR Account Number for the Member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sor_account_length_byte = ProtoField.new("Sor Account Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.soraccountlengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Sor Account")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.specific_record = ProtoField.new("Specific Record", "nsekenya.nairobibonds.marketdata.mits.v2.14.specificrecord", ftypes.INT32, nil, nil, nil, "Allows the download of a specific record sequence number and onwards.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.spot_price = ProtoField.new("Spot Price", "nsekenya.nairobibonds.marketdata.mits.v2.14.spotprice", ftypes.DOUBLE, nil, nil, nil, "Spot price for this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.spread_margin = ProtoField.new("Spread Margin", "nsekenya.nairobibonds.marketdata.mits.v2.14.spreadmargin", ftypes.DOUBLE, nil, nil, nil, "Indicates the spread margin applicable for this expiry in a group.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.spreads_allowed = ProtoField.new("Spreads Allowed", "nsekenya.nairobibonds.marketdata.mits.v2.14.spreadsallowed", ftypes.UINT8, nil, nil, nil, "Indicates if spreads are traded on this contract or not.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.stack_sequence_number = ProtoField.new("Stack Sequence Number", "nsekenya.nairobibonds.marketdata.mits.v2.14.stacksequencenumber", ftypes.INT32, nil, nil, nil, "Sequence number of this message for a particular contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.start_byte = ProtoField.new("Start Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.startbyte", ftypes.UINT8, nil, nil, nil, "255 or FF")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.stop_orders_allowed = ProtoField.new("Stop Orders Allowed", "nsekenya.nairobibonds.marketdata.mits.v2.14.stopordersallowed", ftypes.UINT8, nil, nil, nil, "Indicates if stop orders can be used on this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.strike = ProtoField.new("Strike", "nsekenya.nairobibonds.marketdata.mits.v2.14.strike", ftypes.DOUBLE, nil, nil, nil, "For option contracts, indicates the strike price.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.strike_data = ProtoField.new("Strike Data", "nsekenya.nairobibonds.marketdata.mits.v2.14.strikedata", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.strike_expiry_date = ProtoField.new("Strike Expiry Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.strikeexpirydate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.strike_interval = ProtoField.new("Strike Interval", "nsekenya.nairobibonds.marketdata.mits.v2.14.strikeinterval", ftypes.DOUBLE, nil, nil, nil, "Interval in which new strikes can be loaded.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.strike_interval_off_screen = ProtoField.new("Strike Interval Off Screen", "nsekenya.nairobibonds.marketdata.mits.v2.14.strikeintervaloffscreen", ftypes.DOUBLE, nil, nil, nil, "Interval in which new strikes can be loaded when trading report only.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.strike_sequence = ProtoField.new("Strike Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.strikesequence", ftypes.INT32, nil, nil, nil, "Strike Sequence of contract if contract is an option.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.strike_sequence_number = ProtoField.new("Strike Sequence Number", "nsekenya.nairobibonds.marketdata.mits.v2.14.strikesequencenumber", ftypes.INT32, nil, nil, nil, "The strike sequence number of this record.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.subscribe = ProtoField.new("Subscribe", "nsekenya.nairobibonds.marketdata.mits.v2.14.subscribe", ftypes.UINT8, nil, nil, nil, "Indicates if the user would like to subscribe or unsubscribe from the service.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.text_p_250 = ProtoField.new("Text P 250", "nsekenya.nairobibonds.marketdata.mits.v2.14.textp250", ftypes.STRING, nil, nil, nil, "The text of the rejection message.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.text_p_250_characters = ProtoField.new("Text P 250 Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.textp250characters", ftypes.STRING, nil, nil, nil, "The text of the rejection message.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.text_p_250_length_byte = ProtoField.new("Text P 250 Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.textp250lengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Text P 250")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.text_p_50 = ProtoField.new("Text P 50", "nsekenya.nairobibonds.marketdata.mits.v2.14.textp50", ftypes.STRING, nil, nil, nil, "Indicates further detail on logon failures and success.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.text_p_50_characters = ProtoField.new("Text P 50 Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.textp50characters", ftypes.STRING, nil, nil, nil, "Indicates further detail on logon failures and success.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.text_p_50_length_byte = ProtoField.new("Text P 50 Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.textp50lengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Text P 50")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.third_unused_4 = ProtoField.new("Third Unused 4", "nsekenya.nairobibonds.marketdata.mits.v2.14.thirdunused4", ftypes.BYTES, nil, nil, nil, "Unused")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.time = ProtoField.new("Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.time", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.to_sequence = ProtoField.new("To Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.tosequence", ftypes.INT32, nil, nil, nil, "To this sequence number.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.today_date = ProtoField.new("Today Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.todaydate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.total_number_of_segments = ProtoField.new("Total Number Of Segments", "nsekenya.nairobibonds.marketdata.mits.v2.14.totalnumberofsegments", ftypes.INT16, nil, nil, nil, "Indicates the number of segments that make up the full news message.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trade_date = ProtoField.new("Trade Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.tradedate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trade_type = ProtoField.new("Trade Type", "nsekenya.nairobibonds.marketdata.mits.v2.14.tradetype", ftypes.INT32, nil, nil, nil, "Specifies the type of trade that took place.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trading_anonymous = ProtoField.new("Trading Anonymous", "nsekenya.nairobibonds.marketdata.mits.v2.14.tradinganonymous", ftypes.UINT8, nil, nil, nil, "Indicates if the contract is anonymous or not.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trading_session_name = ProtoField.new("Trading Session Name", "nsekenya.nairobibonds.marketdata.mits.v2.14.tradingsessionname", ftypes.STRING, nil, nil, nil, "Indicates the name of the trading session.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trading_session_name_characters = ProtoField.new("Trading Session Name Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.tradingsessionnamecharacters", ftypes.STRING, nil, nil, nil, "Indicates the name of the trading session.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trading_session_name_length_byte = ProtoField.new("Trading Session Name Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.tradingsessionnamelengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Trading Session Name")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trading_session_sequence = ProtoField.new("Trading Session Sequence", "nsekenya.nairobibonds.marketdata.mits.v2.14.tradingsessionsequence", ftypes.INT32, nil, nil, nil, "Sequence number of the trading session linked to this instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trading_sessions = ProtoField.new("Trading Sessions", "nsekenya.nairobibonds.marketdata.mits.v2.14.tradingsessions", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.uncompressed_length = ProtoField.new("Uncompressed Length", "nsekenya.nairobibonds.marketdata.mits.v2.14.uncompressedlength", ftypes.INT32, nil, nil, nil, "Length of the decompressed data, ahead of the gzip stream (5.6)")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.underlying = ProtoField.new("Underlying", "nsekenya.nairobibonds.marketdata.mits.v2.14.underlying", ftypes.INT32, nil, nil, nil, "Instrument sequence of underlying instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unique_member_number = ProtoField.new("Unique Member Number", "nsekenya.nairobibonds.marketdata.mits.v2.14.uniquemembernumber", ftypes.INT32, nil, nil, nil, "Unique member number of affiliated member.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unused_1 = ProtoField.new("Unused 1", "nsekenya.nairobibonds.marketdata.mits.v2.14.unused1", ftypes.BYTES, nil, nil, nil, "Unused")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unused_12 = ProtoField.new("Unused 12", "nsekenya.nairobibonds.marketdata.mits.v2.14.unused12", ftypes.BYTES, nil, nil, nil, "Unused")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unused_17 = ProtoField.new("Unused 17", "nsekenya.nairobibonds.marketdata.mits.v2.14.unused17", ftypes.BYTES, nil, nil, nil, "Unused")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unused_21 = ProtoField.new("Unused 21", "nsekenya.nairobibonds.marketdata.mits.v2.14.unused21", ftypes.BYTES, nil, nil, nil, "Unused")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unused_4 = ProtoField.new("Unused 4", "nsekenya.nairobibonds.marketdata.mits.v2.14.unused4", ftypes.BYTES, nil, nil, nil, "Unused")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unused_5 = ProtoField.new("Unused 5", "nsekenya.nairobibonds.marketdata.mits.v2.14.unused5", ftypes.BYTES, nil, nil, nil, "Unused")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unused_8 = ProtoField.new("Unused 8", "nsekenya.nairobibonds.marketdata.mits.v2.14.unused8", ftypes.BYTES, nil, nil, nil, "Unused")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.update_date = ProtoField.new("Update Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.updatedate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.update_time = ProtoField.new("Update Time", "nsekenya.nairobibonds.marketdata.mits.v2.14.updatetime", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.user_name = ProtoField.new("User Name", "nsekenya.nairobibonds.marketdata.mits.v2.14.username", ftypes.STRING, nil, nil, nil, "User name as assigned by the exchange")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.user_name_characters = ProtoField.new("User Name Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.usernamecharacters", ftypes.STRING, nil, nil, nil, "User name as assigned by the exchange")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.user_name_length_byte = ProtoField.new("User Name Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.usernamelengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in User Name")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.user_number = ProtoField.new("User Number", "nsekenya.nairobibonds.marketdata.mits.v2.14.usernumber", ftypes.INT32, nil, nil, nil, "Any user integer, kept by the system and returned unchanged")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.validated_at_csd = ProtoField.new("Validated At Csd", "nsekenya.nairobibonds.marketdata.mits.v2.14.validatedatcsd", ftypes.UINT8, nil, nil, nil, "Indicates if a balance for trading is validated at the CSD for this instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.valuation_date = ProtoField.new("Valuation Date", "nsekenya.nairobibonds.marketdata.mits.v2.14.valuationdate", ftypes.STRING)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vat = ProtoField.new("Vat", "nsekenya.nairobibonds.marketdata.mits.v2.14.vat", ftypes.UINT8, nil, nil, nil, "Indicates if VAT is applicable on this instrument or not.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vetting_agent_contact = ProtoField.new("Vetting Agent Contact", "nsekenya.nairobibonds.marketdata.mits.v2.14.vettingagentcontact", ftypes.STRING, nil, nil, nil, "Contact information for the vetting agent.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vetting_agent_contact_characters = ProtoField.new("Vetting Agent Contact Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.vettingagentcontactcharacters", ftypes.STRING, nil, nil, nil, "Contact information for the vetting agent.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vetting_agent_contact_length_byte = ProtoField.new("Vetting Agent Contact Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.vettingagentcontactlengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Vetting Agent Contact")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vetting_agent_name = ProtoField.new("Vetting Agent Name", "nsekenya.nairobibonds.marketdata.mits.v2.14.vettingagentname", ftypes.STRING, nil, nil, nil, "The name of any vetting agent for this instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vetting_agent_name_characters = ProtoField.new("Vetting Agent Name Characters", "nsekenya.nairobibonds.marketdata.mits.v2.14.vettingagentnamecharacters", ftypes.STRING, nil, nil, nil, "The name of any vetting agent for this instrument.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vetting_agent_name_length_byte = ProtoField.new("Vetting Agent Name Length Byte", "nsekenya.nairobibonds.marketdata.mits.v2.14.vettingagentnamelengthbyte", ftypes.UINT8, nil, nil, nil, "Count of characters in Vetting Agent Name")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.volatility = ProtoField.new("Volatility", "nsekenya.nairobibonds.marketdata.mits.v2.14.volatility", ftypes.DOUBLE, nil, nil, nil, "Future or Option Volatility for this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.volatility_rounding_places = ProtoField.new("Volatility Rounding Places", "nsekenya.nairobibonds.marketdata.mits.v2.14.volatilityroundingplaces", ftypes.INT32, nil, nil, nil, "Indicates the number of decimal places volatilities are rounded to for options.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vsr = ProtoField.new("Vsr", "nsekenya.nairobibonds.marketdata.mits.v2.14.vsr", ftypes.DOUBLE, nil, nil, nil, "Volatility Scanning Range for this contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vwap = ProtoField.new("Vwap", "nsekenya.nairobibonds.marketdata.mits.v2.14.vwap", ftypes.DOUBLE, nil, nil, nil, "Total price divided by total volume.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.year = ProtoField.new("Year", "nsekenya.nairobibonds.marketdata.mits.v2.14.year", ftypes.INT32)

-- NseKenya NairobiBonds MarketData Mits 2.14 Framing
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.client_message = ProtoField.new("Client Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.clientmessage", ftypes.STRING, nil, nil, nil, "Mits message packet sent by the user")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.client_message_header = ProtoField.new("Client Message Header", "nsekenya.nairobibonds.marketdata.mits.v2.14.clientmessageheader", ftypes.STRING, nil, nil, nil, "Table 2: Message Header")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.client_packet = ProtoField.new("Client Packet", "nsekenya.nairobibonds.marketdata.mits.v2.14.clientpacket", ftypes.STRING, nil, nil, nil, "Mits Tcp block of one or more messages sent by the user")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.server_message = ProtoField.new("Server Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.servermessage", ftypes.STRING, nil, nil, nil, "Mits message packet sent by the exchange")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.server_message_header = ProtoField.new("Server Message Header", "nsekenya.nairobibonds.marketdata.mits.v2.14.servermessageheader", ftypes.STRING, nil, nil, nil, "Table 2: Message Header")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.server_packet = ProtoField.new("Server Packet", "nsekenya.nairobibonds.marketdata.mits.v2.14.serverpacket", ftypes.STRING, nil, nil, nil, "Mits Tcp block of one or more messages sent by the exchange")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.transport_header = ProtoField.new("Transport Header", "nsekenya.nairobibonds.marketdata.mits.v2.14.transportheader", ftypes.STRING, nil, nil, nil, "Table 1: Transport Header")

-- NseKenya NairobiBonds MarketData 2.14 Application Messages
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.business_message_reject_message = ProtoField.new("Business Message Reject Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.businessmessagerejectmessage", ftypes.STRING, nil, nil, nil, "Returned in response to an incoming message to indicate a failure to process this message for some business validation failure.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.completed_trade_message = ProtoField.new("Completed Trade Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.completedtrademessage", ftypes.STRING, nil, nil, nil, "Sent when an order has been matched or trading has occurred between two parties.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.daily_trend_reply_message = ProtoField.new("Daily Trend Reply Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.dailytrendreplymessage", ftypes.STRING, nil, nil, nil, "On screen trade activity recorded on a particular contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.data_update_message = ProtoField.new("Data Update Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.dataupdatemessage", ftypes.STRING, nil, nil, nil, "Updates or inserts received intra-session, which always contains only one record.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_update_message = ProtoField.new("Display Update Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.displayupdatemessage", ftypes.STRING, nil, nil, nil, "Returned whenever on screen activity is recorded on a particular contract.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.download_data_response_message = ProtoField.new("Download Data Response Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.downloaddataresponsemessage", ftypes.STRING, nil, nil, nil, "Request Data Header and the compressed data returned.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.exchange_announcements_message = ProtoField.new("Exchange Announcements Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.exchangeannouncementsmessage", ftypes.STRING, nil, nil, nil, "Error and information messages.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.future_contract_subscription_message = ProtoField.new("Future Contract Subscription Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.futurecontractsubscriptionmessage", ftypes.STRING, nil, nil, nil, "Subscribe to Display Updates on up to 40 contracts.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.heart_beat_message = ProtoField.new("Heart Beat Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "A heartbeat message sent to the logged in member as simply a blank header.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.heart_beats_message = ProtoField.new("Heart Beats Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.heartbeatsmessage", ftypes.BYTES, nil, nil, nil, "This message contains only a header with message type 84.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_message = ProtoField.new("Indices Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.indicesmessage", ftypes.STRING, nil, nil, nil, "Each Index will be sent in this format.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.log_in_message = ProtoField.new("Log In Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.loginmessage", ftypes.STRING, nil, nil, nil, "Log in message.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.log_out_message = ProtoField.new("Log Out Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.logoutmessage", ftypes.BYTES, nil, nil, nil, "This message does not contain any details.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.notification_of_failure_message = ProtoField.new("Notification Of Failure Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.notificationoffailuremessage", ftypes.STRING, nil, nil, nil, "Sent on the failure or the recovery of the exchange trading system.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.option_contract_subscription_message = ProtoField.new("Option Contract Subscription Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.optioncontractsubscriptionmessage", ftypes.STRING, nil, nil, nil, "Subscribe to Display Updates on the contracts listed.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.option_statistics_request_message = ProtoField.new("Option Statistics Request Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.optionstatisticsrequestmessage", ftypes.STRING, nil, nil, nil, "Request a Display Update with information for all option contracts traded since the beginning of the trading session.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.price_update_message = ProtoField.new("Price Update Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.priceupdatemessage", ftypes.STRING, nil, nil, nil, "A 99 message is received in reply to a 99 message.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.re_request_message = ProtoField.new("Re Request Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.rerequestmessage", ftypes.STRING, nil, nil, nil, "Re-Request of 59 messages.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.request_daily_trend_message = ProtoField.new("Request Daily Trend Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.requestdailytrendmessage", ftypes.STRING, nil, nil, nil, "Request the on screen trade history for a contract for the current trading session.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.request_data_retrieval_message = ProtoField.new("Request Data Retrieval Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.requestdataretrievalmessage", ftypes.STRING, nil, nil, nil, "Allows users to request data from the system.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.session_key_challenge_message = ProtoField.new("Session Key Challenge Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.sessionkeychallengemessage", ftypes.STRING, nil, nil, nil, "Returned to a user when a successful TCP socket connection is established to the system.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.subscribing_to_indices_service_message = ProtoField.new("Subscribing To Indices Service Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.subscribingtoindicesservicemessage", ftypes.STRING, nil, nil, nil, "Subscribe or unsubscribe from the indices service.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.successful_log_in_response_message = ProtoField.new("Successful Log In Response Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.successfulloginresponsemessage", ftypes.STRING, nil, nil, nil, "Returned to users when the user successfully authenticates to the system.")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unsubscribe_contract_message = ProtoField.new("Unsubscribe Contract Message", "nsekenya.nairobibonds.marketdata.mits.v2.14.unsubscribecontractmessage", ftypes.STRING, nil, nil, nil, "Unsubscribe from Display Updates on up to 40 contracts.")

-- NseKenya NairobiBonds MarketData Mits 2.14 Generated Fields
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contracts_requested_for_display_index = ProtoField.new("Contracts Requested For Display Index", "nsekenya.nairobibonds.marketdata.mits.v2.14.contractsrequestedfordisplayindex", ftypes.UINT16)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contracts_to_unsubscribe_index = ProtoField.new("Contracts To Unsubscribe Index", "nsekenya.nairobibonds.marketdata.mits.v2.14.contractstounsubscribeindex", ftypes.UINT16)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.depth_data_index = ProtoField.new("Depth Data Index", "nsekenya.nairobibonds.marketdata.mits.v2.14.depthdataindex", ftypes.UINT16)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.pair_member_codes_with_unique_number_index = ProtoField.new("Pair Member Codes With Unique Number Index", "nsekenya.nairobibonds.marketdata.mits.v2.14.pairmembercodeswithuniquenumberindex", ftypes.UINT16)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_data_part = ProtoField.new("Display data Part", "nsekenya.nairobibonds.marketdata.mits.v2.14.displaydatapart", ftypes.BYTES)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.download_data_part = ProtoField.new("Download Data Part", "nsekenya.nairobibonds.marketdata.mits.v2.14.downloaddatapart", ftypes.BYTES)

-- NseKenya NairobiBonds MarketData Mits 2.14 Expert Info
nsekenya_nairobibonds_marketdata_mits_v2_14.experts = {}
nsekenya_nairobibonds_marketdata_mits_v2_14.experts.display_data_divided = ProtoExpert.new("nsekenya.nairobibonds.marketdata.mits.v2.14.displaydatadivided", "Display data divided across messages: read once its last part arrives", expert.group.REASSEMBLE, expert.severity.NOTE)
nsekenya_nairobibonds_marketdata_mits_v2_14.experts.download_data_divided = ProtoExpert.new("nsekenya.nairobibonds.marketdata.mits.v2.14.downloaddatadivided", "Download Data divided across messages: read once its last part arrives", expert.group.REASSEMBLE, expert.severity.NOTE)
nsekenya_nairobibonds_marketdata_mits_v2_14.experts.display_data_too_large = ProtoExpert.new("nsekenya.nairobibonds.marketdata.mits.v2.14.displaydatatoolarge", "Display data joined past the 1048576 bytes it may hold, so it is not read", expert.group.UNDECODED, expert.severity.WARN)
nsekenya_nairobibonds_marketdata_mits_v2_14.experts.download_data_too_large = ProtoExpert.new("nsekenya.nairobibonds.marketdata.mits.v2.14.downloaddatatoolarge", "Download Data joined past the 1048576 bytes it may hold, so it is not read", expert.group.UNDECODED, expert.severity.WARN)
nsekenya_nairobibonds_marketdata_mits_v2_14.experts.undecoded = ProtoExpert.new("nsekenya.nairobibonds.marketdata.mits.v2.14.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.experts = { nsekenya_nairobibonds_marketdata_mits_v2_14.experts.display_data_divided, nsekenya_nairobibonds_marketdata_mits_v2_14.experts.download_data_divided, nsekenya_nairobibonds_marketdata_mits_v2_14.experts.display_data_too_large, nsekenya_nairobibonds_marketdata_mits_v2_14.experts.download_data_too_large, nsekenya_nairobibonds_marketdata_mits_v2_14.experts.undecoded }

-----------------------------------------------------------------------
-- NseKenya NairobiBonds MarketData Mits 2.14 Formatting
-----------------------------------------------------------------------

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

-- NseKenya NairobiBonds MarketData Mits 2.14 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.repeating_groups = true
show.padding = false
show.indexes = true

-- Register NseKenya NairobiBonds MarketData Mits 2.14 Show Options
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")
omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_application_messages then
    show.application_messages = omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_application_messages
  end
  if show.headers ~= omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_headers then
    show.headers = omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_headers
  end
  if show.padding ~= omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_padding then
    show.padding = omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_padding
  end
  if show.repeating_groups ~= omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_repeating_groups then
    show.repeating_groups = omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_repeating_groups
  end
  if show.structs ~= omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_structs then
    show.structs = omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_structs
  end
  if show.indexes ~= omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_indexes then
    show.indexes = omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nsekenya_nairobibonds_marketdata_mits_v2_14.conversation = {}
nsekenya_nairobibonds_marketdata_mits_v2_14.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
nsekenya_nairobibonds_marketdata_mits_v2_14.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nsekenya_nairobibonds_marketdata_mits_v2_14.conversation.data = function(packet)
  local key = nsekenya_nairobibonds_marketdata_mits_v2_14.conversation.key(packet)
  local data = nsekenya_nairobibonds_marketdata_mits_v2_14.conversation.flows[key]
  if data == nil then
    data = { chunks = { pending = {}, frames = {} } }
    nsekenya_nairobibonds_marketdata_mits_v2_14.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nsekenya_nairobibonds_marketdata_mits_v2_14.conversation.current = nil

-- Chunks: parts of a buffer the sender divided across messages, joined in arrival order,
-- with the revisit replay cursor: which frame is being re-dissected and which part within it is next
nsekenya_nairobibonds_marketdata_mits_v2_14.chunks = {}
nsekenya_nairobibonds_marketdata_mits_v2_14.chunks.frame = nil
nsekenya_nairobibonds_marketdata_mits_v2_14.chunks.occurrence = 0

-- Join a part to the parts before it: the joined buffer once the last part arrives, else nil
nsekenya_nairobibonds_marketdata_mits_v2_14.chunks.join = function(packet, parent, buffer, key, range, last, maximum, field, part, overflow)
  local data = nsekenya_nairobibonds_marketdata_mits_v2_14.conversation.data(packet)
  local outcome = nil

  if not packet.visited then
    local id = buffer .. "|" .. key
    local pending = data.chunks.pending[id]
    if pending == nil then
      pending = { bytes = ByteArray.new(), parts = 0, first = packet.number, overflow = false }
      data.chunks.pending[id] = pending
    end

    pending.parts = pending.parts + 1
    if pending.bytes:len() + range:len() > maximum then
      pending.overflow = true
    elseif not pending.overflow then
      pending.bytes:append(range:bytes())
    end

    outcome = { parts = pending.parts, first = pending.first, overflow = pending.overflow, last = last }
    if last then
      data.chunks.pending[id] = nil
      outcome.bytes = pending.bytes
    end

    local memo = data.chunks.frames[packet.number]
    if memo == nil then
      memo = {}
      data.chunks.frames[packet.number] = memo
    end
    memo[#memo + 1] = outcome
  else
    local memo = data.chunks.frames[packet.number]
    if memo ~= nil and #memo > 0 then
      if nsekenya_nairobibonds_marketdata_mits_v2_14.chunks.frame ~= packet.number or nsekenya_nairobibonds_marketdata_mits_v2_14.chunks.occurrence >= #memo then
        nsekenya_nairobibonds_marketdata_mits_v2_14.chunks.frame = packet.number
        nsekenya_nairobibonds_marketdata_mits_v2_14.chunks.occurrence = 0
      end
      nsekenya_nairobibonds_marketdata_mits_v2_14.chunks.occurrence = nsekenya_nairobibonds_marketdata_mits_v2_14.chunks.occurrence + 1
      outcome = memo[nsekenya_nairobibonds_marketdata_mits_v2_14.chunks.occurrence]
    end
  end

  if outcome == nil then
    return nil
  end

  if outcome.overflow then
    local item = parent:add(field, range)
    item:add_proto_expert_info(overflow)
    return nil
  end

  if not outcome.last then
    local item = parent:add(field, range)
    item:append_text(" (part " .. outcome.parts .. ", first in frame " .. outcome.first .. ")")
    item:add_proto_expert_info(part)
    return nil
  end

  if outcome.parts == 1 then
    return range:tvb()
  end

  local item = parent:add(field, range)
  item:append_text(" (last of " .. outcome.parts .. " parts, first in frame " .. outcome.first .. ")")
  return outcome.bytes:tvb("Joined " .. outcome.parts .. " Parts")
end



-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------


-- Zlib decompression: wireshark built in inflate (uncompress_zlib from 4.4, uncompress before)
local function zlib_decompress(range)
  local ok, decompressed = pcall(function() return range:uncompress_zlib("Decompressed") end)

  if ok then
    return decompressed
  end

  return range:uncompress("Decompressed")
end
-- Mark a sized group whose fields read past its end; raise any other failure as it was
local function undecoded(failure, parent, expert, text)
  if not string.find(tostring(failure), "Range is out of bounds", 1, true) then
    error(failure, 0)
  end

  parent:add_proto_expert_info(expert, text)
end
-----------------------------------------------------------------------
-- NseKenya NairobiBonds MarketData Mits 2.14 Fields
-----------------------------------------------------------------------

-- Action
nsekenya_nairobibonds_marketdata_mits_v2_14.action = {}

-- Size: Action
nsekenya_nairobibonds_marketdata_mits_v2_14.action.size = 4

-- Display: Action
nsekenya_nairobibonds_marketdata_mits_v2_14.action.labels = {
  [0] = "Action: File Download (0)",
  [1] = "Action: Delete (1)",
  [2] = "Action: Insert (2)",
  [3] = "Action: Update (3)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.action.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.action.labels[value] or "Action: Unknown("..value..")"
end

-- Dissect: Action
nsekenya_nairobibonds_marketdata_mits_v2_14.action.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.action.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.action, range, value, display)

  return offset + length, value
end

-- All Or Nothing Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.all_or_nothing_allowed = {}

-- Size: All Or Nothing Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.all_or_nothing_allowed.size = 1

-- Display: All Or Nothing Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.all_or_nothing_allowed.display = function(value)
  return "All Or Nothing Allowed: "..value
end

-- Dissect: All Or Nothing Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.all_or_nothing_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.all_or_nothing_allowed.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.all_or_nothing_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.all_or_nothing_allowed, range, value, display)

  return offset + length, value
end

-- Announcement Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_characters = {}

-- Size: Announcement Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_characters.size = 254

-- Display: Announcement Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Announcement Characters: No Value"
  end

  return "Announcement Characters: "..value
end

-- Dissect: Announcement Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.announcement_characters, range, value, display)

  return offset + length, value
end

-- Announcement Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_length_byte = {}

-- Size: Announcement Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_length_byte.size = 1

-- Display: Announcement Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_length_byte.display = function(value)
  return "Announcement Length Byte: "..value
end

-- Dissect: Announcement Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.announcement_length_byte, range, value, display)

  return offset + length, value
end

-- Announcement Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_sequence = {}

-- Size: Announcement Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_sequence.size = 4

-- Display: Announcement Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_sequence.display = function(value)
  return "Announcement Sequence: "..value
end

-- Dissect: Announcement Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.announcement_sequence, range, value, display)

  return offset + length, value
end

-- Another Set To Come
nsekenya_nairobibonds_marketdata_mits_v2_14.another_set_to_come = {}

-- Size: Another Set To Come
nsekenya_nairobibonds_marketdata_mits_v2_14.another_set_to_come.size = 1

-- Display: Another Set To Come
nsekenya_nairobibonds_marketdata_mits_v2_14.another_set_to_come.display = function(value)
  return "Another Set To Come: "..value
end

-- Dissect: Another Set To Come
nsekenya_nairobibonds_marketdata_mits_v2_14.another_set_to_come.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.another_set_to_come.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.another_set_to_come.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.another_set_to_come, range, value, display)

  return offset + length, value
end

-- At Best Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.at_best_orders_allowed = {}

-- Size: At Best Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.at_best_orders_allowed.size = 1

-- Display: At Best Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.at_best_orders_allowed.display = function(value)
  return "At Best Orders Allowed: "..value
end

-- Dissect: At Best Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.at_best_orders_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.at_best_orders_allowed.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.at_best_orders_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.at_best_orders_allowed, range, value, display)

  return offset + length, value
end

-- At Close Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.at_close_orders_allowed = {}

-- Size: At Close Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.at_close_orders_allowed.size = 1

-- Display: At Close Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.at_close_orders_allowed.display = function(value)
  return "At Close Orders Allowed: "..value
end

-- Dissect: At Close Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.at_close_orders_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.at_close_orders_allowed.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.at_close_orders_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.at_close_orders_allowed, range, value, display)

  return offset + length, value
end

-- Auction
nsekenya_nairobibonds_marketdata_mits_v2_14.auction = {}

-- Size: Auction
nsekenya_nairobibonds_marketdata_mits_v2_14.auction.size = 1

-- Display: Auction
nsekenya_nairobibonds_marketdata_mits_v2_14.auction.labels = {
  [0] = "Auction: Contract Is Open (0)",
  [1] = "Auction: Contract Is In Auction (1)",
  [2] = "Auction: Contract Is Closed (2)",
  [3] = "Auction: Contract Is Suspended (3)",
  [4] = "Auction: Contract In Open Order Period (4)",
  [5] = "Auction: Contract Is After Open Period (5)",
  [6] = "Auction: Contract Instrument Has Been Halted (6)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.auction.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.auction.labels[value] or "Auction: Unknown("..value..")"
end

-- Dissect: Auction
nsekenya_nairobibonds_marketdata_mits_v2_14.auction.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.auction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.auction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.auction, range, value, display)

  return offset + length, value
end

-- Balance
nsekenya_nairobibonds_marketdata_mits_v2_14.balance = {}

-- Size: Balance
nsekenya_nairobibonds_marketdata_mits_v2_14.balance.size = 8

-- Display: Balance
nsekenya_nairobibonds_marketdata_mits_v2_14.balance.display = function(value)
  return "Balance: "..value
end

-- Dissect: Balance
nsekenya_nairobibonds_marketdata_mits_v2_14.balance.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.balance.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.balance.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.balance, range, value, display)

  return offset + length, value
end

-- Big Depth
nsekenya_nairobibonds_marketdata_mits_v2_14.big_depth = {}

-- Size: Big Depth
nsekenya_nairobibonds_marketdata_mits_v2_14.big_depth.size = 1

-- Display: Big Depth
nsekenya_nairobibonds_marketdata_mits_v2_14.big_depth.display = function(value)
  return "Big Depth: "..value
end

-- Dissect: Big Depth
nsekenya_nairobibonds_marketdata_mits_v2_14.big_depth.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.big_depth.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.big_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.big_depth, range, value, display)

  return offset + length, value
end

-- Bond Formula Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.bond_formula_decimal_places = {}

-- Size: Bond Formula Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.bond_formula_decimal_places.size = 4

-- Display: Bond Formula Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.bond_formula_decimal_places.display = function(value)
  return "Bond Formula Decimal Places: "..value
end

-- Dissect: Bond Formula Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.bond_formula_decimal_places.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.bond_formula_decimal_places.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.bond_formula_decimal_places.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.bond_formula_decimal_places, range, value, display)

  return offset + length, value
end

-- Buy Order Id
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_id = {}

-- Size: Buy Order Id
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_id.size = 4

-- Display: Buy Order Id
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_id.display = function(value)
  return "Buy Order Id: "..value
end

-- Dissect: Buy Order Id
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Buy Order Type
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_type = {}

-- Size: Buy Order Type
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_type.size = 4

-- Display: Buy Order Type
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_type.labels = {
  [0] = "Buy Order Type: Normal (0)",
  [1] = "Buy Order Type: Take Or Kill (1)",
  [2] = "Buy Order Type: Fill Or Kill (2)",
  [4] = "Buy Order Type: Iceberg (4)",
  [8] = "Buy Order Type: Stop Order (8)",
  [16] = "Buy Order Type: At Best (16)",
  [32] = "Buy Order Type: All Or Nothing (32)",
  [64] = "Buy Order Type: Rebid (64)",
  [128] = "Buy Order Type: Close Order (128)",
  [256] = "Buy Order Type: Reverse Take Or Kill (256)",
  [512] = "Buy Order Type: Market Order Fill Or Kill (512)",
  [1024] = "Buy Order Type: Run Order (1024)",
  [2048] = "Buy Order Type: Cover Order (2048)",
  [4096] = "Buy Order Type: Market Order Take Or Kill (4096)",
  [16384] = "Buy Order Type: Suspend Order (16384)",
  [32768] = "Buy Order Type: Good Till Cancelled Order (32768)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_type.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_type.labels[value] or "Buy Order Type: Unknown("..value..")"
end

-- Dissect: Buy Order Type
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_type.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_order_type, range, value, display)

  return offset + length, value
end

-- Buy Price
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_price = {}

-- Size: Buy Price
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_price.size = 8

-- Display: Buy Price
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_price.display = function(value)
  return "Buy Price: "..value
end

-- Dissect: Buy Price
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_price, range, value, display)

  return offset + length, value
end

-- Buy Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_quantity = {}

-- Size: Buy Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_quantity.size = 4

-- Display: Buy Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_quantity.display = function(value)
  return "Buy Quantity: "..value
end

-- Dissect: Buy Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_quantity, range, value, display)

  return offset + length, value
end

-- Buy Side Phantom
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_side_phantom = {}

-- Size: Buy Side Phantom
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_side_phantom.size = 1

-- Display: Buy Side Phantom
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_side_phantom.display = function(value)
  return "Buy Side Phantom: "..value
end

-- Dissect: Buy Side Phantom
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_side_phantom.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_side_phantom.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_side_phantom.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_side_phantom, range, value, display)

  return offset + length, value
end

-- Buy Who Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_characters = {}

-- Size: Buy Who Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_characters.size = 5

-- Display: Buy Who Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Buy Who Characters: No Value"
  end

  return "Buy Who Characters: "..value
end

-- Dissect: Buy Who Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_who_characters, range, value, display)

  return offset + length, value
end

-- Buy Who Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_length_byte = {}

-- Size: Buy Who Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_length_byte.size = 1

-- Display: Buy Who Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_length_byte.display = function(value)
  return "Buy Who Length Byte: "..value
end

-- Dissect: Buy Who Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_who_length_byte, range, value, display)

  return offset + length, value
end

-- Call Or Put
nsekenya_nairobibonds_marketdata_mits_v2_14.call_or_put = {}

-- Size: Call Or Put
nsekenya_nairobibonds_marketdata_mits_v2_14.call_or_put.size = 1

-- Display: Call Or Put
nsekenya_nairobibonds_marketdata_mits_v2_14.call_or_put.labels = {
  ["C"] = "Call Or Put: Call (C)",
  ["P"] = "Call Or Put: Put (P)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.call_or_put.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.call_or_put.labels[value] or "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
nsekenya_nairobibonds_marketdata_mits_v2_14.call_or_put.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.call_or_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.call_or_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Call Put B 1
nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_b_1 = {}

-- Size: Call Put B 1
nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_b_1.size = 1

-- Display: Call Put B 1
nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_b_1.display = function(value)
  return "Call Put B 1: "..value
end

-- Dissect: Call Put B 1
nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_b_1.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_b_1.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_b_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.call_put_b_1, range, value, display)

  return offset + length, value
end

-- Call Put C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_c_1 = {}

-- Size: Call Put C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_c_1.size = 1

-- Display: Call Put C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_c_1.display = function(value)
  return "Call Put C 1: "..value
end

-- Dissect: Call Put C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_c_1.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_c_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_c_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.call_put_c_1, range, value, display)

  return offset + length, value
end

-- Can Trade Onscreen
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_onscreen = {}

-- Size: Can Trade Onscreen
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_onscreen.size = 1

-- Display: Can Trade Onscreen
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_onscreen.display = function(value)
  return "Can Trade Onscreen: "..value
end

-- Dissect: Can Trade Onscreen
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_onscreen.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_onscreen.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_onscreen.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.can_trade_onscreen, range, value, display)

  return offset + length, value
end

-- Can Trade Options Onscreen
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_onscreen = {}

-- Size: Can Trade Options Onscreen
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_onscreen.size = 1

-- Display: Can Trade Options Onscreen
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_onscreen.display = function(value)
  return "Can Trade Options Onscreen: "..value
end

-- Dissect: Can Trade Options Onscreen
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_onscreen.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_onscreen.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_onscreen.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.can_trade_options_onscreen, range, value, display)

  return offset + length, value
end

-- Can Trade Options Report Only
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_report_only = {}

-- Size: Can Trade Options Report Only
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_report_only.size = 1

-- Display: Can Trade Options Report Only
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_report_only.display = function(value)
  return "Can Trade Options Report Only: "..value
end

-- Dissect: Can Trade Options Report Only
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_report_only.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_report_only.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_report_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.can_trade_options_report_only, range, value, display)

  return offset + length, value
end

-- Can Trade Report Only
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_report_only = {}

-- Size: Can Trade Report Only
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_report_only.size = 1

-- Display: Can Trade Report Only
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_report_only.display = function(value)
  return "Can Trade Report Only: "..value
end

-- Dissect: Can Trade Report Only
nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_report_only.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_report_only.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_report_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.can_trade_report_only, range, value, display)

  return offset + length, value
end

-- Challenge
nsekenya_nairobibonds_marketdata_mits_v2_14.challenge = {}

-- Size: Challenge
nsekenya_nairobibonds_marketdata_mits_v2_14.challenge.size = 243

-- Display: Challenge
nsekenya_nairobibonds_marketdata_mits_v2_14.challenge.display = function(value)
  return "Challenge: "..value
end

-- Dissect: Challenge
nsekenya_nairobibonds_marketdata_mits_v2_14.challenge.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.challenge.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.challenge.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.challenge, range, range:raw(), display)

  return offset + length, value
end

-- Change
nsekenya_nairobibonds_marketdata_mits_v2_14.change = {}

-- Size: Change
nsekenya_nairobibonds_marketdata_mits_v2_14.change.size = 8

-- Display: Change
nsekenya_nairobibonds_marketdata_mits_v2_14.change.display = function(value)
  return "Change: "..value
end

-- Dissect: Change
nsekenya_nairobibonds_marketdata_mits_v2_14.change.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.change.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.change.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.change, range, value, display)

  return offset + length, value
end

-- Classification Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.classification_characters = {}

-- Size: Classification Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.classification_characters.size = 29

-- Display: Classification Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.classification_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Classification Characters: No Value"
  end

  return "Classification Characters: "..value
end

-- Dissect: Classification Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.classification_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.classification_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.classification_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.classification_characters, range, value, display)

  return offset + length, value
end

-- Classification Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.classification_length_byte = {}

-- Size: Classification Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.classification_length_byte.size = 1

-- Display: Classification Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.classification_length_byte.display = function(value)
  return "Classification Length Byte: "..value
end

-- Dissect: Classification Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.classification_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.classification_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.classification_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.classification_length_byte, range, value, display)

  return offset + length, value
end

-- Clearing Member Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_characters = {}

-- Size: Clearing Member Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_characters.size = 5

-- Display: Clearing Member Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Member Code Characters: No Value"
  end

  return "Clearing Member Code Characters: "..value
end

-- Dissect: Clearing Member Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_code_characters, range, value, display)

  return offset + length, value
end

-- Clearing Member Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_length_byte = {}

-- Size: Clearing Member Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_length_byte.size = 1

-- Display: Clearing Member Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_length_byte.display = function(value)
  return "Clearing Member Code Length Byte: "..value
end

-- Dissect: Clearing Member Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_code_length_byte, range, value, display)

  return offset + length, value
end

-- Clearing Member Description Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_characters = {}

-- Size: Clearing Member Description Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_characters.size = 49

-- Display: Clearing Member Description Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Member Description Characters: No Value"
  end

  return "Clearing Member Description Characters: "..value
end

-- Dissect: Clearing Member Description Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_description_characters, range, value, display)

  return offset + length, value
end

-- Clearing Member Description Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_length_byte = {}

-- Size: Clearing Member Description Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_length_byte.size = 1

-- Display: Clearing Member Description Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_length_byte.display = function(value)
  return "Clearing Member Description Length Byte: "..value
end

-- Dissect: Clearing Member Description Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_description_length_byte, range, value, display)

  return offset + length, value
end

-- Clearing Member Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_sequence = {}

-- Size: Clearing Member Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_sequence.size = 4

-- Display: Clearing Member Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_sequence.display = function(value)
  return "Clearing Member Sequence: "..value
end

-- Dissect: Clearing Member Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_sequence, range, value, display)

  return offset + length, value
end

-- Client Message Type
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_type = {}

-- Size: Client Message Type
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_type.size = 1

-- Display: Client Message Type
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_type.labels = {
  [0] = "Client Message Type: Log In Message (0)",
  [3] = "Client Message Type: Re Request Message (3)",
  [4] = "Client Message Type: Log Out Message (4)",
  [36] = "Client Message Type: Request Data Retrieval Message (36)",
  [37] = "Client Message Type: Request Data Retrieval Message (37)",
  [42] = "Client Message Type: Unsubscribe Contract Message (42)",
  [61] = "Client Message Type: Request Daily Trend Message (61)",
  [67] = "Client Message Type: Option Contract Subscription Message (67)",
  [84] = "Client Message Type: Heart Beats Message (84)",
  [98] = "Client Message Type: Subscribing To Indices Service Message (98)",
  [99] = "Client Message Type: Future Contract Subscription Message (99)",
  [135] = "Client Message Type: Option Statistics Request Message (135)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_type.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_type.labels[value] or "Client Message Type: Unknown("..value..")"
end

-- Dissect: Client Message Type
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.client_message_type, range, value, display)

  return offset + length, value
end

-- Closing Price
nsekenya_nairobibonds_marketdata_mits_v2_14.closing_price = {}

-- Size: Closing Price
nsekenya_nairobibonds_marketdata_mits_v2_14.closing_price.size = 8

-- Display: Closing Price
nsekenya_nairobibonds_marketdata_mits_v2_14.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
nsekenya_nairobibonds_marketdata_mits_v2_14.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.closing_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Contract Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_date_sequence = {}

-- Size: Contract Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_date_sequence.size = 4

-- Display: Contract Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_date_sequence.display = function(value)
  return "Contract Date Sequence: "..value
end

-- Dissect: Contract Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_date_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_date_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_date_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contract_date_sequence, range, value, display)

  return offset + length, value
end

-- Contract Status
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_status = {}

-- Size: Contract Status
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_status.size = 1

-- Display: Contract Status
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_status.labels = {
  [0] = "Contract Status: Bid Or Offer Activity With No Change To Best Bid Or Offer (0)",
  [1] = "Contract Status: Bid Activity Which Has Changed The Best Bid On This Contract (1)",
  [2] = "Contract Status: Offer Activity Which Has Changed The Best Offer On This Contract (2)",
  [3] = "Contract Status: Bid Or Offer Activity Which Has Changed Both The Best Bid And Offer On This Contract (3)",
  [4] = "Contract Status: Trade Activity Has Been Recorded On This Contract With No Change To The Best Bid Or Offer Indicates That The Close Price Has Updated (4)",
  [5] = "Contract Status: Trade Activity Which Has Changed The Best Bid On This Contract (5)",
  [6] = "Contract Status: Trade Activity Which Has Changed The Best Offer On This Contract (6)",
  [7] = "Contract Status: Trade Activity Which Has Changed The Best Bid And Offer On This Contract (7)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.contract_status.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.contract_status.labels[value] or "Contract Status: Unknown("..value..")"
end

-- Dissect: Contract Status
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_status.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contract_status, range, value, display)

  return offset + length, value
end

-- Country Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_characters = {}

-- Size: Country Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_characters.size = 3

-- Display: Country Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Country Code Characters: No Value"
  end

  return "Country Code Characters: "..value
end

-- Dissect: Country Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.country_code_characters, range, value, display)

  return offset + length, value
end

-- Country Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_length_byte = {}

-- Size: Country Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_length_byte.size = 1

-- Display: Country Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_length_byte.display = function(value)
  return "Country Code Length Byte: "..value
end

-- Dissect: Country Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.country_code_length_byte, range, value, display)

  return offset + length, value
end

-- Coupon Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_rate = {}

-- Size: Coupon Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_rate.size = 8

-- Display: Coupon Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_rate.display = function(value)
  return "Coupon Rate: "..value
end

-- Dissect: Coupon Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_rate.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_rate.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Coupon Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_sequence = {}

-- Size: Coupon Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_sequence.size = 4

-- Display: Coupon Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_sequence.display = function(value)
  return "Coupon Sequence: "..value
end

-- Dissect: Coupon Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.coupon_sequence, range, value, display)

  return offset + length, value
end

-- Current Value
nsekenya_nairobibonds_marketdata_mits_v2_14.current_value = {}

-- Size: Current Value
nsekenya_nairobibonds_marketdata_mits_v2_14.current_value.size = 8

-- Display: Current Value
nsekenya_nairobibonds_marketdata_mits_v2_14.current_value.display = function(value)
  return "Current Value: "..value
end

-- Dissect: Current Value
nsekenya_nairobibonds_marketdata_mits_v2_14.current_value.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.current_value.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.current_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.current_value, range, value, display)

  return offset + length, value
end

-- Data Type
nsekenya_nairobibonds_marketdata_mits_v2_14.data_type = {}

-- Size: Data Type
nsekenya_nairobibonds_marketdata_mits_v2_14.data_type.size = 1

-- Display: Data Type
nsekenya_nairobibonds_marketdata_mits_v2_14.data_type.labels = {
  [1] = "Data Type: Market Display Data (1)",
  [2] = "Data Type: Instruments Data (2)",
  [3] = "Data Type: Contract Dates (3)",
  [4] = "Data Type: Strike Data (4)",
  [15] = "Data Type: Member Data (15)",
  [16] = "Data Type: Mtm Data (16)",
  [18] = "Data Type: Holiday (18)",
  [65] = "Data Type: Clearing Member Data (65)",
  [89] = "Data Type: Exchange Announcements (89)",
  [129] = "Data Type: News (129)",
  [131] = "Data Type: Coupon Information (131)",
  [136] = "Data Type: Trading Sessions (136)",
  [138] = "Data Type: Indices (138)",
  [139] = "Data Type: Indices Data (139)",
  [39] = "Data Type: Instrument Types (39)",
  [137] = "Data Type: Indices Price Data (137)",
  [141] = "Data Type: Shares In Issue Data (141)",
  [146] = "Data Type: Index Data (146)",
  [147] = "Data Type: Index Constituents Data (147)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.data_type.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.data_type.labels[value] or "Data Type: Unknown("..value..")"
end

-- Dissect: Data Type
nsekenya_nairobibonds_marketdata_mits_v2_14.data_type.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.data_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.data_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.data_type, range, value, display)

  return offset + length, value
end

-- Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.date_sequence = {}

-- Size: Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.date_sequence.size = 4

-- Display: Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.date_sequence.display = function(value)
  return "Date Sequence: "..value
end

-- Dissect: Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.date_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.date_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.date_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.date_sequence, range, value, display)

  return offset + length, value
end

-- Day
nsekenya_nairobibonds_marketdata_mits_v2_14.day = {}

-- Size: Day
nsekenya_nairobibonds_marketdata_mits_v2_14.day.size = 4

-- Display: Day
nsekenya_nairobibonds_marketdata_mits_v2_14.day.display = function(value)
  return "Day: "..value
end

-- Dissect: Day
nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.day.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.day, range, value, display)

  return offset + length, value
end

-- Day Volume
nsekenya_nairobibonds_marketdata_mits_v2_14.day_volume = {}

-- Size: Day Volume
nsekenya_nairobibonds_marketdata_mits_v2_14.day_volume.size = 8

-- Display: Day Volume
nsekenya_nairobibonds_marketdata_mits_v2_14.day_volume.display = function(value)
  return "Day Volume: "..value
end

-- Dissect: Day Volume
nsekenya_nairobibonds_marketdata_mits_v2_14.day_volume.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.day_volume.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.day_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.day_volume, range, value, display)

  return offset + length, value
end

-- Days Closing Price
nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_price = {}

-- Size: Days Closing Price
nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_price.size = 8

-- Display: Days Closing Price
nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_price.display = function(value)
  return "Days Closing Price: "..value
end

-- Dissect: Days Closing Price
nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.days_closing_price, range, value, display)

  return offset + length, value
end

-- Days Closing Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_rate = {}

-- Size: Days Closing Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_rate.size = 8

-- Display: Days Closing Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_rate.display = function(value)
  return "Days Closing Rate: "..value
end

-- Dissect: Days Closing Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_rate.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_rate.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.days_closing_rate, range, value, display)

  return offset + length, value
end

-- Days Volume D 8
nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_d_8 = {}

-- Size: Days Volume D 8
nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_d_8.size = 8

-- Display: Days Volume D 8
nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_d_8.display = function(value)
  return "Days Volume D 8: "..value
end

-- Dissect: Days Volume D 8
nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_d_8.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_d_8.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_d_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.days_volume_d_8, range, value, display)

  return offset + length, value
end

-- Days Volume I 8
nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_i_8 = {}

-- Size: Days Volume I 8
nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_i_8.size = 8

-- Display: Days Volume I 8
nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_i_8.display = function(value)
  return "Days Volume I 8: "..value
end

-- Dissect: Days Volume I 8
nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_i_8.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_i_8.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_i_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.days_volume_i_8, range, value, display)

  return offset + length, value
end

-- Deal Volume
nsekenya_nairobibonds_marketdata_mits_v2_14.deal_volume = {}

-- Size: Deal Volume
nsekenya_nairobibonds_marketdata_mits_v2_14.deal_volume.size = 8

-- Display: Deal Volume
nsekenya_nairobibonds_marketdata_mits_v2_14.deal_volume.display = function(value)
  return "Deal Volume: "..value
end

-- Dissect: Deal Volume
nsekenya_nairobibonds_marketdata_mits_v2_14.deal_volume.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.deal_volume.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.deal_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.deal_volume, range, value, display)

  return offset + length, value
end

-- Delivery Fee Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.delivery_fee_sequence = {}

-- Size: Delivery Fee Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.delivery_fee_sequence.size = 4

-- Display: Delivery Fee Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.delivery_fee_sequence.display = function(value)
  return "Delivery Fee Sequence: "..value
end

-- Dissect: Delivery Fee Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.delivery_fee_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.delivery_fee_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.delivery_fee_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.delivery_fee_sequence, range, value, display)

  return offset + length, value
end

-- Deltas
nsekenya_nairobibonds_marketdata_mits_v2_14.deltas = {}

-- Size: Deltas
nsekenya_nairobibonds_marketdata_mits_v2_14.deltas.size = 1

-- Display: Deltas
nsekenya_nairobibonds_marketdata_mits_v2_14.deltas.display = function(value)
  return "Deltas: "..value
end

-- Dissect: Deltas
nsekenya_nairobibonds_marketdata_mits_v2_14.deltas.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.deltas.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.deltas.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.deltas, range, value, display)

  return offset + length, value
end

-- Deltas Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.deltas_allowed = {}

-- Size: Deltas Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.deltas_allowed.size = 1

-- Display: Deltas Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.deltas_allowed.display = function(value)
  return "Deltas Allowed: "..value
end

-- Dissect: Deltas Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.deltas_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.deltas_allowed.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.deltas_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.deltas_allowed, range, value, display)

  return offset + length, value
end

-- Description P 50 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_characters = {}

-- Size: Description P 50 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_characters.size = 49

-- Display: Description P 50 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Description P 50 Characters: No Value"
  end

  return "Description P 50 Characters: "..value
end

-- Dissect: Description P 50 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.description_p_50_characters, range, value, display)

  return offset + length, value
end

-- Description P 50 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_length_byte = {}

-- Size: Description P 50 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_length_byte.size = 1

-- Display: Description P 50 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_length_byte.display = function(value)
  return "Description P 50 Length Byte: "..value
end

-- Dissect: Description P 50 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.description_p_50_length_byte, range, value, display)

  return offset + length, value
end

-- Description P 62 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_characters = {}

-- Size: Description P 62 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_characters.size = 61

-- Display: Description P 62 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Description P 62 Characters: No Value"
  end

  return "Description P 62 Characters: "..value
end

-- Dissect: Description P 62 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.description_p_62_characters, range, value, display)

  return offset + length, value
end

-- Description P 62 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_length_byte = {}

-- Size: Description P 62 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_length_byte.size = 1

-- Display: Description P 62 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_length_byte.display = function(value)
  return "Description P 62 Length Byte: "..value
end

-- Dissect: Description P 62 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.description_p_62_length_byte, range, value, display)

  return offset + length, value
end

-- Display Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_characters = {}

-- Size: Display Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_characters.size = 29

-- Display: Display Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Display Name Characters: No Value"
  end

  return "Display Name Characters: "..value
end

-- Dissect: Display Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_name_characters, range, value, display)

  return offset + length, value
end

-- Display Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_length_byte = {}

-- Size: Display Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_length_byte.size = 1

-- Display: Display Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_length_byte.display = function(value)
  return "Display Name Length Byte: "..value
end

-- Dissect: Display Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_name_length_byte, range, value, display)

  return offset + length, value
end

-- Display Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.display_sequence = {}

-- Size: Display Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.display_sequence.size = 4

-- Display: Display Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.display_sequence.display = function(value)
  return "Display Sequence: "..value
end

-- Dissect: Display Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.display_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.display_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.display_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_sequence, range, value, display)

  return offset + length, value
end

-- Encrypted Password
nsekenya_nairobibonds_marketdata_mits_v2_14.encrypted_password = {}

-- Size: Encrypted Password
nsekenya_nairobibonds_marketdata_mits_v2_14.encrypted_password.size = 312

-- Display: Encrypted Password
nsekenya_nairobibonds_marketdata_mits_v2_14.encrypted_password.display = function(value)
  return "Encrypted Password: "..value
end

-- Dissect: Encrypted Password
nsekenya_nairobibonds_marketdata_mits_v2_14.encrypted_password.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.encrypted_password.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.encrypted_password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.encrypted_password, range, range:raw(), display)

  return offset + length, value
end

-- Error Number
nsekenya_nairobibonds_marketdata_mits_v2_14.error_number = {}

-- Size: Error Number
nsekenya_nairobibonds_marketdata_mits_v2_14.error_number.size = 4

-- Display: Error Number
nsekenya_nairobibonds_marketdata_mits_v2_14.error_number.labels = {
  [100] = "Error Number: Password Changed Successfully (100)",
  [102] = "Error Number: Market Announcement (102)",
  [108] = "Error Number: Generic Market Interaction Message (108)",
  [116] = "Error Number: Successful Client Loaded (116)",
  [120] = "Error Number: Your Password Expires In X Days (120)",
  [123] = "Error Number: Mark To Market Rates Is Ready For Download (123)",
  [124] = "Error Number: Daily Rates Is Ready For Download (124)",
  [126] = "Error Number: The Re Request Service Is Currently Un Available Please Try Again Later (126)",
  [127] = "Error Number: Early Valuations Are Ready For Download (127)",
  [2] = "Error Number: Order Quantity Below Minimum (2)",
  [3] = "Error Number: Bid On Contract Was Not A Multiple Of The Lotsize (3)",
  [7] = "Error Number: Trading On This Contract Is Only Allowed Between X And X (7)",
  [8] = "Error Number: Your Bid Initial Margin Exceeds Your Limit (8)",
  [12] = "Error Number: Invalid Data In Bid Message Number Of Orders Exceeds Limit (12)",
  [13] = "Error Number: Invalid Data In Bid Message Incorrect Contract Name Or Contract Doesnt Exist (13)",
  [18] = "Error Number: Could Not Find Index For Contract X (18)",
  [19] = "Error Number: Could Not Create Strike (19)",
  [20] = "Error Number: Not A Buy Sell Order (20)",
  [21] = "Error Number: Invalid Order Type (21)",
  [22] = "Error Number: Bid Outside Market Limits (22)",
  [24] = "Error Number: Member Does Not Exist (24)",
  [25] = "Error Number: Order Type Not Allowed (25)",
  [26] = "Error Number: Invalid Client Code (26)",
  [27] = "Error Number: Not A Valid Member Code (27)",
  [28] = "Error Number: Not A Valid Clearing Member Code (28)",
  [29] = "Error Number: Invalid Front End Version (29)",
  [30] = "Error Number: Invalid Front End Version (30)",
  [31] = "Error Number: Dealer Does Not Belong To Member (31)",
  [32] = "Error Number: Cannot Book Deals For Other Members (32)",
  [33] = "Error Number: Invalid Principal (33)",
  [34] = "Error Number: Member Does Not Belong To Clearing Member (34)",
  [35] = "Error Number: Cannot Book Deals For Other Clearing Members (35)",
  [36] = "Error Number: X Is Not A Client Of Member (36)",
  [37] = "Error Number: Invalid Counterparty (37)",
  [39] = "Error Number: Dealer Not Found (39)",
  [40] = "Error Number: Invalid Cancel Flag (40)",
  [41] = "Error Number: Invalid Reference Number (41)",
  [42] = "Error Number: Instrument Not Found (42)",
  [43] = "Error Number: Contract Date Not Found (43)",
  [44] = "Error Number: Strike Not Found (44)",
  [46] = "Error Number: Dealer Not A Master Dealer (46)",
  [47] = "Error Number: Foktok Order Cannot Be Satisfied (47)",
  [48] = "Error Number: All Or Nothing Not Allowed (48)",
  [49] = "Error Number: Trading On This Contract Is Closed (49)",
  [50] = "Error Number: Order Quantity Below Minimum (50)",
  [51] = "Error Number: Bid On Contract Was Not A Multiple Of The Lotsize (51)",
  [52] = "Error Number: Invalid Spread (52)",
  [53] = "Error Number: Odd Lots Not Allowed When Underlying In Auction (53)",
  [54] = "Error Number: Not Allowed To Change Subscription (54)",
  [60] = "Error Number: Limits Specified Must Be Positive (60)",
  [62] = "Error Number: Principal Agency Indicator Is Invalid (62)",
  [63] = "Error Number: Cannot Suspend An Order 1 Minute Before The End Of Open Order Period (63)",
  [64] = "Error Number: Spreads Not Allowed With Underlying In Auction (64)",
  [66] = "Error Number: Contract Is Suspended (66)",
  [67] = "Error Number: Dealer Code Is Empty (67)",
  [68] = "Error Number: Incorrect Price Format (68)",
  [69] = "Error Number: Strike Cannot Be Loaded (69)",
  [70] = "Error Number: Price Cannot Be Less Than Zero (70)",
  [71] = "Error Number: Quantity Cannot Be Less Or Equal To Zero (71)",
  [72] = "Error Number: Must Be A Master Dealer To Perform This Action (72)",
  [73] = "Error Number: Contract Not A Valid Contract (73)",
  [74] = "Error Number: The Active Order Selected Cannot Be Found (74)",
  [76] = "Error Number: Cannot Reduce An Order 1 Minute Before End Of Open Order Period (76)",
  [77] = "Error Number: Cannot Resubmit An Order 1 Minute Before End Of Open Order Period (77)",
  [78] = "Error Number: Cannot Suspend This Order Until Market Opens (78)",
  [80] = "Error Number: This Order Type Has Not Been Enabled On This Contract (80)",
  [81] = "Error Number: Order Quantity X Is Less Than 1 On Contract X (81)",
  [82] = "Error Number: Price Cannot Be Less Than Or Equal To 0 (82)",
  [83] = "Error Number: This Order Cannot Be Deleted As It Is Currently Active Please Use Message 8 (83)",
  [84] = "Error Number: The From Sequence Cannot Be Larger Than The To Sequence (84)",
  [87] = "Error Number: Order Sequence X Cannot Be Found (87)",
  [101] = "Error Number: Invalid Password Or Incorrect Date (101)",
  [103] = "Error Number: Invalid Old Password (103)",
  [104] = "Error Number: Submitted On Screen Limit Invalid (104)",
  [105] = "Error Number: Submitted Option Limit Invalid (105)",
  [106] = "Error Number: Submitted Report Only Limit Invalid (106)",
  [109] = "Error Number: Member Does Not Have Position On This Contract (109)",
  [110] = "Error Number: Can Only Give Notice For Delivery On A Short Position (110)",
  [111] = "Error Number: Cannot Give Notice On Certificate Because The Certificate Is Not The Same Instrument As The Delivery Notice (111)",
  [112] = "Error Number: Number Of Contracts In Notice Exceeds Total Position (112)",
  [113] = "Error Number: Silo Certificate Number Is Not Within The Valid Range For This Silo (113)",
  [114] = "Error Number: Invalid Multiplication Factor (114)",
  [115] = "Error Number: Contact Details Error (115)",
  [117] = "Error Number: Market Period Rule Error (117)",
  [118] = "Error Number: You Have No Rights To Perform This Operation (118)",
  [119] = "Error Number: Auction Notifications (119)",
  [121] = "Error Number: Cannot Delete A Certificate Which Is Ready For Delivery Or Delivered (121)",
  [1000] = "Error Number: Generic Exception (1000)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.error_number.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.error_number.labels[value] or "Error Number: Unknown("..value..")"
end

-- Dissect: Error Number
nsekenya_nairobibonds_marketdata_mits_v2_14.error_number.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.error_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.error_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.error_number, range, value, display)

  return offset + length, value
end

-- Failure Notice Identifier
nsekenya_nairobibonds_marketdata_mits_v2_14.failure_notice_identifier = {}

-- Size: Failure Notice Identifier
nsekenya_nairobibonds_marketdata_mits_v2_14.failure_notice_identifier.size = 4

-- Display: Failure Notice Identifier
nsekenya_nairobibonds_marketdata_mits_v2_14.failure_notice_identifier.labels = {
  [1] = "Failure Notice Identifier: Market Shard Has Failed (1)",
  [2] = "Failure Notice Identifier: Market Shard Has Recovered (2)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.failure_notice_identifier.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.failure_notice_identifier.labels[value] or "Failure Notice Identifier: Unknown("..value..")"
end

-- Dissect: Failure Notice Identifier
nsekenya_nairobibonds_marketdata_mits_v2_14.failure_notice_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.failure_notice_identifier.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.failure_notice_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.failure_notice_identifier, range, value, display)

  return offset + length, value
end

-- First Trade Reference Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_characters = {}

-- Size: First Trade Reference Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_characters.size = 9

-- Display: First Trade Reference Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "First Trade Reference Characters: No Value"
  end

  return "First Trade Reference Characters: "..value
end

-- Dissect: First Trade Reference Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.first_trade_reference_characters, range, value, display)

  return offset + length, value
end

-- First Trade Reference Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_length_byte = {}

-- Size: First Trade Reference Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_length_byte.size = 1

-- Display: First Trade Reference Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_length_byte.display = function(value)
  return "First Trade Reference Length Byte: "..value
end

-- Dissect: First Trade Reference Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.first_trade_reference_length_byte, range, value, display)

  return offset + length, value
end

-- From Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.from_sequence = {}

-- Size: From Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.from_sequence.size = 4

-- Display: From Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.from_sequence.display = function(value)
  return "From Sequence: "..value
end

-- Dissect: From Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.from_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.from_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.from_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.from_sequence, range, value, display)

  return offset + length, value
end

-- Future Anonymous
nsekenya_nairobibonds_marketdata_mits_v2_14.future_anonymous = {}

-- Size: Future Anonymous
nsekenya_nairobibonds_marketdata_mits_v2_14.future_anonymous.size = 1

-- Display: Future Anonymous
nsekenya_nairobibonds_marketdata_mits_v2_14.future_anonymous.display = function(value)
  return "Future Anonymous: "..value
end

-- Dissect: Future Anonymous
nsekenya_nairobibonds_marketdata_mits_v2_14.future_anonymous.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.future_anonymous.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.future_anonymous.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.future_anonymous, range, value, display)

  return offset + length, value
end

-- Future Fee Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.future_fee_sequence = {}

-- Size: Future Fee Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.future_fee_sequence.size = 4

-- Display: Future Fee Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.future_fee_sequence.display = function(value)
  return "Future Fee Sequence: "..value
end

-- Dissect: Future Fee Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.future_fee_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.future_fee_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.future_fee_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.future_fee_sequence, range, value, display)

  return offset + length, value
end

-- Good Till Cancelled Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.good_till_cancelled_allowed = {}

-- Size: Good Till Cancelled Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.good_till_cancelled_allowed.size = 1

-- Display: Good Till Cancelled Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.good_till_cancelled_allowed.display = function(value)
  return "Good Till Cancelled Allowed: "..value
end

-- Dissect: Good Till Cancelled Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.good_till_cancelled_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.good_till_cancelled_allowed.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.good_till_cancelled_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.good_till_cancelled_allowed, range, value, display)

  return offset + length, value
end

-- Group Description Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_characters = {}

-- Size: Group Description Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_characters.size = 59

-- Display: Group Description Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Group Description Characters: No Value"
  end

  return "Group Description Characters: "..value
end

-- Dissect: Group Description Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.group_description_characters, range, value, display)

  return offset + length, value
end

-- Group Description Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_length_byte = {}

-- Size: Group Description Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_length_byte.size = 1

-- Display: Group Description Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_length_byte.display = function(value)
  return "Group Description Length Byte: "..value
end

-- Dissect: Group Description Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.group_description_length_byte, range, value, display)

  return offset + length, value
end

-- Group Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.group_margin = {}

-- Size: Group Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.group_margin.size = 8

-- Display: Group Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.group_margin.display = function(value)
  return "Group Margin: "..value
end

-- Dissect: Group Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.group_margin.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.group_margin.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.group_margin.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.group_margin, range, value, display)

  return offset + length, value
end

-- High
nsekenya_nairobibonds_marketdata_mits_v2_14.high = {}

-- Size: High
nsekenya_nairobibonds_marketdata_mits_v2_14.high.size = 8

-- Display: High
nsekenya_nairobibonds_marketdata_mits_v2_14.high.display = function(value)
  return "High: "..value
end

-- Dissect: High
nsekenya_nairobibonds_marketdata_mits_v2_14.high.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.high.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.high.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.high, range, value, display)

  return offset + length, value
end

-- High Price
nsekenya_nairobibonds_marketdata_mits_v2_14.high_price = {}

-- Size: High Price
nsekenya_nairobibonds_marketdata_mits_v2_14.high_price.size = 8

-- Display: High Price
nsekenya_nairobibonds_marketdata_mits_v2_14.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nsekenya_nairobibonds_marketdata_mits_v2_14.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.high_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.high_price, range, value, display)

  return offset + length, value
end

-- Hold Over Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.hold_over_orders_allowed = {}

-- Size: Hold Over Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.hold_over_orders_allowed.size = 1

-- Display: Hold Over Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.hold_over_orders_allowed.display = function(value)
  return "Hold Over Orders Allowed: "..value
end

-- Dissect: Hold Over Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.hold_over_orders_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.hold_over_orders_allowed.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.hold_over_orders_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.hold_over_orders_allowed, range, value, display)

  return offset + length, value
end

-- Holiday Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_sequence = {}

-- Size: Holiday Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_sequence.size = 4

-- Display: Holiday Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_sequence.display = function(value)
  return "Holiday Sequence: "..value
end

-- Dissect: Holiday Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.holiday_sequence, range, value, display)

  return offset + length, value
end

-- Hours
nsekenya_nairobibonds_marketdata_mits_v2_14.hours = {}

-- Size: Hours
nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size = 1

-- Display: Hours
nsekenya_nairobibonds_marketdata_mits_v2_14.hours.display = function(value)
  return "Hours: "..value
end

-- Dissect: Hours
nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.hours, range, value, display)

  return offset + length, value
end

-- Ice Berg Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.ice_berg_orders_allowed = {}

-- Size: Ice Berg Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.ice_berg_orders_allowed.size = 1

-- Display: Ice Berg Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.ice_berg_orders_allowed.display = function(value)
  return "Ice Berg Orders Allowed: "..value
end

-- Dissect: Ice Berg Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.ice_berg_orders_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.ice_berg_orders_allowed.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.ice_berg_orders_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.ice_berg_orders_allowed, range, value, display)

  return offset + length, value
end

-- Id Market
nsekenya_nairobibonds_marketdata_mits_v2_14.id_market = {}

-- Size: Id Market
nsekenya_nairobibonds_marketdata_mits_v2_14.id_market.size = 4

-- Display: Id Market
nsekenya_nairobibonds_marketdata_mits_v2_14.id_market.display = function(value)
  return "Id Market: "..value
end

-- Dissect: Id Market
nsekenya_nairobibonds_marketdata_mits_v2_14.id_market.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.id_market.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.id_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.id_market, range, value, display)

  return offset + length, value
end

-- Identifier Prefix B 4
nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_b_4 = {}

-- Size: Identifier Prefix B 4
nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_b_4.size = 4

-- Display: Identifier Prefix B 4
nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_b_4.display = function(value)
  return "Identifier Prefix B 4: "..value
end

-- Dissect: Identifier Prefix B 4
nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_b_4.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_b_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_b_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.identifier_prefix_b_4, range, range:raw(), display)

  return offset + length, value
end

-- Identifier Prefix C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_c_1 = {}

-- Size: Identifier Prefix C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_c_1.size = 1

-- Display: Identifier Prefix C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_c_1.display = function(value)
  return "Identifier Prefix C 1: "..value
end

-- Dissect: Identifier Prefix C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_c_1.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_c_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_c_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.identifier_prefix_c_1, range, value, display)

  return offset + length, value
end

-- Identifier Prefix I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_i_4 = {}

-- Size: Identifier Prefix I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_i_4.size = 4

-- Display: Identifier Prefix I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_i_4.display = function(value)
  return "Identifier Prefix I 4: "..value
end

-- Dissect: Identifier Prefix I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_i_4.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_i_4.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_i_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.identifier_prefix_i_4, range, value, display)

  return offset + length, value
end

-- Index Data Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.index_data_sequence = {}

-- Size: Index Data Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.index_data_sequence.size = 4

-- Display: Index Data Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.index_data_sequence.display = function(value)
  return "Index Data Sequence: "..value
end

-- Dissect: Index Data Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.index_data_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.index_data_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.index_data_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_data_sequence, range, value, display)

  return offset + length, value
end

-- Index Instrument Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.index_instrument_sequence = {}

-- Size: Index Instrument Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.index_instrument_sequence.size = 4

-- Display: Index Instrument Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.index_instrument_sequence.display = function(value)
  return "Index Instrument Sequence: "..value
end

-- Dissect: Index Instrument Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.index_instrument_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.index_instrument_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.index_instrument_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_instrument_sequence, range, value, display)

  return offset + length, value
end

-- Index Price
nsekenya_nairobibonds_marketdata_mits_v2_14.index_price = {}

-- Size: Index Price
nsekenya_nairobibonds_marketdata_mits_v2_14.index_price.size = 8

-- Display: Index Price
nsekenya_nairobibonds_marketdata_mits_v2_14.index_price.display = function(value)
  return "Index Price: "..value
end

-- Dissect: Index Price
nsekenya_nairobibonds_marketdata_mits_v2_14.index_price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.index_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.index_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_price, range, value, display)

  return offset + length, value
end

-- Index Sequence Number Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_characters = {}

-- Size: Index Sequence Number Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_characters.size = 3

-- Display: Index Sequence Number Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Index Sequence Number Characters: No Value"
  end

  return "Index Sequence Number Characters: "..value
end

-- Dissect: Index Sequence Number Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_sequence_number_characters, range, value, display)

  return offset + length, value
end

-- Index Sequence Number Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_length_byte = {}

-- Size: Index Sequence Number Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_length_byte.size = 1

-- Display: Index Sequence Number Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_length_byte.display = function(value)
  return "Index Sequence Number Length Byte: "..value
end

-- Dissect: Index Sequence Number Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_sequence_number_length_byte, range, value, display)

  return offset + length, value
end

-- Index Value
nsekenya_nairobibonds_marketdata_mits_v2_14.index_value = {}

-- Size: Index Value
nsekenya_nairobibonds_marketdata_mits_v2_14.index_value.size = 8

-- Display: Index Value
nsekenya_nairobibonds_marketdata_mits_v2_14.index_value.display = function(value)
  return "Index Value: "..value
end

-- Dissect: Index Value
nsekenya_nairobibonds_marketdata_mits_v2_14.index_value.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.index_value.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_value, range, value, display)

  return offset + length, value
end

-- Indices Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_characters = {}

-- Size: Indices Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_characters.size = 19

-- Display: Indices Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Indices Code Characters: No Value"
  end

  return "Indices Code Characters: "..value
end

-- Dissect: Indices Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_code_characters, range, value, display)

  return offset + length, value
end

-- Indices Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_length_byte = {}

-- Size: Indices Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_length_byte.size = 1

-- Display: Indices Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_length_byte.display = function(value)
  return "Indices Code Length Byte: "..value
end

-- Dissect: Indices Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_code_length_byte, range, value, display)

  return offset + length, value
end

-- Indices Description Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_characters = {}

-- Size: Indices Description Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_characters.size = 49

-- Display: Indices Description Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Indices Description Characters: No Value"
  end

  return "Indices Description Characters: "..value
end

-- Dissect: Indices Description Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_description_characters, range, value, display)

  return offset + length, value
end

-- Indices Description Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_length_byte = {}

-- Size: Indices Description Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_length_byte.size = 1

-- Display: Indices Description Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_length_byte.display = function(value)
  return "Indices Description Length Byte: "..value
end

-- Dissect: Indices Description Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_description_length_byte, range, value, display)

  return offset + length, value
end

-- Indices Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_sequence = {}

-- Size: Indices Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_sequence.size = 4

-- Display: Indices Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_sequence.display = function(value)
  return "Indices Sequence: "..value
end

-- Dissect: Indices Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_sequence, range, value, display)

  return offset + length, value
end

-- Information Or Error Indicator
nsekenya_nairobibonds_marketdata_mits_v2_14.information_or_error_indicator = {}

-- Size: Information Or Error Indicator
nsekenya_nairobibonds_marketdata_mits_v2_14.information_or_error_indicator.size = 1

-- Display: Information Or Error Indicator
nsekenya_nairobibonds_marketdata_mits_v2_14.information_or_error_indicator.labels = {
  [0] = "Information Or Error Indicator: Information Message (0)",
  [1] = "Information Or Error Indicator: Error Message (1)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.information_or_error_indicator.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.information_or_error_indicator.labels[value] or "Information Or Error Indicator: Unknown("..value..")"
end

-- Dissect: Information Or Error Indicator
nsekenya_nairobibonds_marketdata_mits_v2_14.information_or_error_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.information_or_error_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.information_or_error_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.information_or_error_indicator, range, value, display)

  return offset + length, value
end

-- Initial Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.initial_margin = {}

-- Size: Initial Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.initial_margin.size = 8

-- Display: Initial Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.initial_margin.display = function(value)
  return "Initial Margin: "..value
end

-- Dissect: Initial Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.initial_margin.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.initial_margin.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.initial_margin.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.initial_margin, range, value, display)

  return offset + length, value
end

-- Instrument Group Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_group_sequence = {}

-- Size: Instrument Group Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_group_sequence.size = 4

-- Display: Instrument Group Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_group_sequence.display = function(value)
  return "Instrument Group Sequence: "..value
end

-- Dissect: Instrument Group Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_group_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_group_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_group_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_group_sequence, range, value, display)

  return offset + length, value
end

-- Instrument Name B 5
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_b_5 = {}

-- Size: Instrument Name B 5
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_b_5.size = 5

-- Display: Instrument Name B 5
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_b_5.display = function(value)
  return "Instrument Name B 5: "..value
end

-- Dissect: Instrument Name B 5
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_b_5.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_b_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_b_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_name_b_5, range, range:raw(), display)

  return offset + length, value
end

-- Instrument Name P 5 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_characters = {}

-- Size: Instrument Name P 5 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_characters.size = 4

-- Display: Instrument Name P 5 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Name P 5 Characters: No Value"
  end

  return "Instrument Name P 5 Characters: "..value
end

-- Dissect: Instrument Name P 5 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_name_p_5_characters, range, value, display)

  return offset + length, value
end

-- Instrument Name P 5 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_length_byte = {}

-- Size: Instrument Name P 5 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_length_byte.size = 1

-- Display: Instrument Name P 5 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_length_byte.display = function(value)
  return "Instrument Name P 5 Length Byte: "..value
end

-- Dissect: Instrument Name P 5 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_name_p_5_length_byte, range, value, display)

  return offset + length, value
end

-- Instrument Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence = {}

-- Size: Instrument Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.size = 4

-- Display: Instrument Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.display = function(value)
  return "Instrument Sequence: "..value
end

-- Dissect: Instrument Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_sequence, range, value, display)

  return offset + length, value
end

-- Instrument Type Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_characters = {}

-- Size: Instrument Type Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_characters.size = 9

-- Display: Instrument Type Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Type Code Characters: No Value"
  end

  return "Instrument Type Code Characters: "..value
end

-- Dissect: Instrument Type Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_code_characters, range, value, display)

  return offset + length, value
end

-- Instrument Type Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_length_byte = {}

-- Size: Instrument Type Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_length_byte.size = 1

-- Display: Instrument Type Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_length_byte.display = function(value)
  return "Instrument Type Code Length Byte: "..value
end

-- Dissect: Instrument Type Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_code_length_byte, range, value, display)

  return offset + length, value
end

-- Instrument Type Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_characters = {}

-- Size: Instrument Type Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_characters.size = 24

-- Display: Instrument Type Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Type Name Characters: No Value"
  end

  return "Instrument Type Name Characters: "..value
end

-- Dissect: Instrument Type Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_name_characters, range, value, display)

  return offset + length, value
end

-- Instrument Type Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_length_byte = {}

-- Size: Instrument Type Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_length_byte.size = 1

-- Display: Instrument Type Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_length_byte.display = function(value)
  return "Instrument Type Name Length Byte: "..value
end

-- Dissect: Instrument Type Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_name_length_byte, range, value, display)

  return offset + length, value
end

-- Instrument Type Number C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_c_1 = {}

-- Size: Instrument Type Number C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_c_1.size = 1

-- Display: Instrument Type Number C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_c_1.display = function(value)
  return "Instrument Type Number C 1: "..value
end

-- Dissect: Instrument Type Number C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_c_1.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_c_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_c_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_number_c_1, range, value, display)

  return offset + length, value
end

-- Instrument Type Number I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_i_4 = {}

-- Size: Instrument Type Number I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_i_4.size = 4

-- Display: Instrument Type Number I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_i_4.display = function(value)
  return "Instrument Type Number I 4: "..value
end

-- Dissect: Instrument Type Number I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_i_4.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_i_4.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_i_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_number_i_4, range, value, display)

  return offset + length, value
end

-- Instrument Type Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_sequence = {}

-- Size: Instrument Type Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_sequence.size = 4

-- Display: Instrument Type Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_sequence.display = function(value)
  return "Instrument Type Sequence: "..value
end

-- Dissect: Instrument Type Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_sequence, range, value, display)

  return offset + length, value
end

-- Is Delta Option
nsekenya_nairobibonds_marketdata_mits_v2_14.is_delta_option = {}

-- Size: Is Delta Option
nsekenya_nairobibonds_marketdata_mits_v2_14.is_delta_option.size = 1

-- Display: Is Delta Option
nsekenya_nairobibonds_marketdata_mits_v2_14.is_delta_option.display = function(value)
  return "Is Delta Option: "..value
end

-- Dissect: Is Delta Option
nsekenya_nairobibonds_marketdata_mits_v2_14.is_delta_option.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.is_delta_option.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.is_delta_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.is_delta_option, range, value, display)

  return offset + length, value
end

-- Is Early Close
nsekenya_nairobibonds_marketdata_mits_v2_14.is_early_close = {}

-- Size: Is Early Close
nsekenya_nairobibonds_marketdata_mits_v2_14.is_early_close.size = 1

-- Display: Is Early Close
nsekenya_nairobibonds_marketdata_mits_v2_14.is_early_close.display = function(value)
  return "Is Early Close: "..value
end

-- Dissect: Is Early Close
nsekenya_nairobibonds_marketdata_mits_v2_14.is_early_close.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.is_early_close.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.is_early_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.is_early_close, range, value, display)

  return offset + length, value
end

-- Is Futures Close Out
nsekenya_nairobibonds_marketdata_mits_v2_14.is_futures_close_out = {}

-- Size: Is Futures Close Out
nsekenya_nairobibonds_marketdata_mits_v2_14.is_futures_close_out.size = 1

-- Display: Is Futures Close Out
nsekenya_nairobibonds_marketdata_mits_v2_14.is_futures_close_out.display = function(value)
  return "Is Futures Close Out: "..value
end

-- Dissect: Is Futures Close Out
nsekenya_nairobibonds_marketdata_mits_v2_14.is_futures_close_out.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.is_futures_close_out.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.is_futures_close_out.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.is_futures_close_out, range, value, display)

  return offset + length, value
end

-- Is Successful
nsekenya_nairobibonds_marketdata_mits_v2_14.is_successful = {}

-- Size: Is Successful
nsekenya_nairobibonds_marketdata_mits_v2_14.is_successful.size = 1

-- Display: Is Successful
nsekenya_nairobibonds_marketdata_mits_v2_14.is_successful.display = function(value)
  return "Is Successful: "..value
end

-- Dissect: Is Successful
nsekenya_nairobibonds_marketdata_mits_v2_14.is_successful.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.is_successful.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.is_successful.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.is_successful, range, value, display)

  return offset + length, value
end

-- Isin Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_characters = {}

-- Size: Isin Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_characters.size = 12

-- Display: Isin Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin Code Characters: No Value"
  end

  return "Isin Code Characters: "..value
end

-- Dissect: Isin Code Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.isin_code_characters, range, value, display)

  return offset + length, value
end

-- Isin Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_length_byte = {}

-- Size: Isin Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_length_byte.size = 1

-- Display: Isin Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_length_byte.display = function(value)
  return "Isin Code Length Byte: "..value
end

-- Dissect: Isin Code Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.isin_code_length_byte, range, value, display)

  return offset + length, value
end

-- Last Chunk
nsekenya_nairobibonds_marketdata_mits_v2_14.last_chunk = {}

-- Size: Last Chunk
nsekenya_nairobibonds_marketdata_mits_v2_14.last_chunk.size = 1

-- Display: Last Chunk
nsekenya_nairobibonds_marketdata_mits_v2_14.last_chunk.display = function(value)
  return "Last Chunk: "..value
end

-- Dissect: Last Chunk
nsekenya_nairobibonds_marketdata_mits_v2_14.last_chunk.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.last_chunk.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.last_chunk.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_chunk, range, value, display)

  return offset + length, value
end

-- Last Dealt Price
nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_price = {}

-- Size: Last Dealt Price
nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_price.size = 8

-- Display: Last Dealt Price
nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_price.display = function(value)
  return "Last Dealt Price: "..value
end

-- Dissect: Last Dealt Price
nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_dealt_price, range, value, display)

  return offset + length, value
end

-- Last Order Buy Sell
nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_buy_sell = {}

-- Size: Last Order Buy Sell
nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_buy_sell.size = 1

-- Display: Last Order Buy Sell
nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_buy_sell.display = function(value)
  return "Last Order Buy Sell: "..value
end

-- Dissect: Last Order Buy Sell
nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_buy_sell.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_order_buy_sell, range, value, display)

  return offset + length, value
end

-- Last Order Price
nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_price = {}

-- Size: Last Order Price
nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_price.size = 8

-- Display: Last Order Price
nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_price.display = function(value)
  return "Last Order Price: "..value
end

-- Dissect: Last Order Price
nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_order_price, range, value, display)

  return offset + length, value
end

-- Last Order Qty
nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_qty = {}

-- Size: Last Order Qty
nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_qty.size = 4

-- Display: Last Order Qty
nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_qty.display = function(value)
  return "Last Order Qty: "..value
end

-- Dissect: Last Order Qty
nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_qty.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_order_qty, range, value, display)

  return offset + length, value
end

-- Last Piece Of Chunk
nsekenya_nairobibonds_marketdata_mits_v2_14.last_piece_of_chunk = {}

-- Size: Last Piece Of Chunk
nsekenya_nairobibonds_marketdata_mits_v2_14.last_piece_of_chunk.size = 1

-- Display: Last Piece Of Chunk
nsekenya_nairobibonds_marketdata_mits_v2_14.last_piece_of_chunk.display = function(value)
  return "Last Piece Of Chunk: "..value
end

-- Dissect: Last Piece Of Chunk
nsekenya_nairobibonds_marketdata_mits_v2_14.last_piece_of_chunk.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.last_piece_of_chunk.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.last_piece_of_chunk.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_piece_of_chunk, range, value, display)

  return offset + length, value
end

-- Last Traded Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.last_traded_quantity = {}

-- Size: Last Traded Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.last_traded_quantity.size = 8

-- Display: Last Traded Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.last_traded_quantity.display = function(value)
  return "Last Traded Quantity: "..value
end

-- Dissect: Last Traded Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.last_traded_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.last_traded_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.last_traded_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_traded_quantity, range, value, display)

  return offset + length, value
end

-- Length Check
nsekenya_nairobibonds_marketdata_mits_v2_14.length_check = {}

-- Size: Length Check
nsekenya_nairobibonds_marketdata_mits_v2_14.length_check.size = 1

-- Display: Length Check
nsekenya_nairobibonds_marketdata_mits_v2_14.length_check.display = function(value)
  return "Length Check: "..value
end

-- Dissect: Length Check
nsekenya_nairobibonds_marketdata_mits_v2_14.length_check.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.length_check.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.length_check.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.length_check, range, value, display)

  return offset + length, value
end

-- Linked To Floating Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.linked_to_floating_rate = {}

-- Size: Linked To Floating Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.linked_to_floating_rate.size = 1

-- Display: Linked To Floating Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.linked_to_floating_rate.labels = {
  ["N"] = "Linked To Floating Rate: None (N)",
  ["C"] = "Linked To Floating Rate: Cpi Index (C)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.linked_to_floating_rate.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.linked_to_floating_rate.labels[value] or "Linked To Floating Rate: Unknown("..value..")"
end

-- Dissect: Linked To Floating Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.linked_to_floating_rate.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.linked_to_floating_rate.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.linked_to_floating_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.linked_to_floating_rate, range, value, display)

  return offset + length, value
end

-- Lot Size
nsekenya_nairobibonds_marketdata_mits_v2_14.lot_size = {}

-- Size: Lot Size
nsekenya_nairobibonds_marketdata_mits_v2_14.lot_size.size = 4

-- Display: Lot Size
nsekenya_nairobibonds_marketdata_mits_v2_14.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nsekenya_nairobibonds_marketdata_mits_v2_14.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Low
nsekenya_nairobibonds_marketdata_mits_v2_14.low = {}

-- Size: Low
nsekenya_nairobibonds_marketdata_mits_v2_14.low.size = 8

-- Display: Low
nsekenya_nairobibonds_marketdata_mits_v2_14.low.display = function(value)
  return "Low: "..value
end

-- Dissect: Low
nsekenya_nairobibonds_marketdata_mits_v2_14.low.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.low.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.low.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.low, range, value, display)

  return offset + length, value
end

-- Low Price
nsekenya_nairobibonds_marketdata_mits_v2_14.low_price = {}

-- Size: Low Price
nsekenya_nairobibonds_marketdata_mits_v2_14.low_price.size = 8

-- Display: Low Price
nsekenya_nairobibonds_marketdata_mits_v2_14.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nsekenya_nairobibonds_marketdata_mits_v2_14.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.low_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.low_price, range, value, display)

  return offset + length, value
end

-- Market Capitalisation
nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalisation = {}

-- Size: Market Capitalisation
nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalisation.size = 8

-- Display: Market Capitalisation
nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalisation.display = function(value)
  return "Market Capitalisation: "..value
end

-- Dissect: Market Capitalisation
nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalisation.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalisation.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalisation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_capitalisation, range, value, display)

  return offset + length, value
end

-- Market Capitalization
nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalization = {}

-- Size: Market Capitalization
nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalization.size = 8

-- Display: Market Capitalization
nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalization.display = function(value)
  return "Market Capitalization: "..value
end

-- Dissect: Market Capitalization
nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalization.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalization.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalization.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_capitalization, range, value, display)

  return offset + length, value
end

-- Market Number C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_c_1 = {}

-- Size: Market Number C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_c_1.size = 1

-- Display: Market Number C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_c_1.display = function(value)
  return "Market Number C 1: "..value
end

-- Dissect: Market Number C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_c_1.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_c_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_c_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_number_c_1, range, value, display)

  return offset + length, value
end

-- Market Number I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_i_4 = {}

-- Size: Market Number I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_i_4.size = 4

-- Display: Market Number I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_i_4.display = function(value)
  return "Market Number I 4: "..value
end

-- Dissect: Market Number I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_i_4.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_i_4.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_i_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_number_i_4, range, value, display)

  return offset + length, value
end

-- Market Shard Global Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_global_sequence_number = {}

-- Size: Market Shard Global Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_global_sequence_number.size = 4

-- Display: Market Shard Global Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_global_sequence_number.display = function(value)
  return "Market Shard Global Sequence Number: "..value
end

-- Dissect: Market Shard Global Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_global_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_global_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_global_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_shard_global_sequence_number, range, value, display)

  return offset + length, value
end

-- Market Shard Number C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_c_1 = {}

-- Size: Market Shard Number C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_c_1.size = 1

-- Display: Market Shard Number C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_c_1.display = function(value)
  return "Market Shard Number C 1: "..value
end

-- Dissect: Market Shard Number C 1
nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_c_1.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_c_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_c_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_shard_number_c_1, range, value, display)

  return offset + length, value
end

-- Market Shard Number I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_i_4 = {}

-- Size: Market Shard Number I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_i_4.size = 4

-- Display: Market Shard Number I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_i_4.display = function(value)
  return "Market Shard Number I 4: "..value
end

-- Dissect: Market Shard Number I 4
nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_i_4.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_i_4.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_i_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_shard_number_i_4, range, value, display)

  return offset + length, value
end

-- Master Member Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.master_member_sequence = {}

-- Size: Master Member Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.master_member_sequence.size = 4

-- Display: Master Member Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.master_member_sequence.display = function(value)
  return "Master Member Sequence: "..value
end

-- Dissect: Master Member Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.master_member_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.master_member_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.master_member_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.master_member_sequence, range, value, display)

  return offset + length, value
end

-- Max Change
nsekenya_nairobibonds_marketdata_mits_v2_14.max_change = {}

-- Size: Max Change
nsekenya_nairobibonds_marketdata_mits_v2_14.max_change.size = 8

-- Display: Max Change
nsekenya_nairobibonds_marketdata_mits_v2_14.max_change.display = function(value)
  return "Max Change: "..value
end

-- Dissect: Max Change
nsekenya_nairobibonds_marketdata_mits_v2_14.max_change.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.max_change.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.max_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.max_change, range, value, display)

  return offset + length, value
end

-- Max Days Move
nsekenya_nairobibonds_marketdata_mits_v2_14.max_days_move = {}

-- Size: Max Days Move
nsekenya_nairobibonds_marketdata_mits_v2_14.max_days_move.size = 8

-- Display: Max Days Move
nsekenya_nairobibonds_marketdata_mits_v2_14.max_days_move.display = function(value)
  return "Max Days Move: "..value
end

-- Dissect: Max Days Move
nsekenya_nairobibonds_marketdata_mits_v2_14.max_days_move.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.max_days_move.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.max_days_move.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.max_days_move, range, value, display)

  return offset + length, value
end

-- Max Gap
nsekenya_nairobibonds_marketdata_mits_v2_14.max_gap = {}

-- Size: Max Gap
nsekenya_nairobibonds_marketdata_mits_v2_14.max_gap.size = 8

-- Display: Max Gap
nsekenya_nairobibonds_marketdata_mits_v2_14.max_gap.display = function(value)
  return "Max Gap: "..value
end

-- Dissect: Max Gap
nsekenya_nairobibonds_marketdata_mits_v2_14.max_gap.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.max_gap.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.max_gap.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.max_gap, range, value, display)

  return offset + length, value
end

-- Member Code P 5 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_characters = {}

-- Size: Member Code P 5 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_characters.size = 4

-- Display: Member Code P 5 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Member Code P 5 Characters: No Value"
  end

  return "Member Code P 5 Characters: "..value
end

-- Dissect: Member Code P 5 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_code_p_5_characters, range, value, display)

  return offset + length, value
end

-- Member Code P 5 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_length_byte = {}

-- Size: Member Code P 5 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_length_byte.size = 1

-- Display: Member Code P 5 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_length_byte.display = function(value)
  return "Member Code P 5 Length Byte: "..value
end

-- Dissect: Member Code P 5 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_code_p_5_length_byte, range, value, display)

  return offset + length, value
end

-- Member Code P 6 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_characters = {}

-- Size: Member Code P 6 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_characters.size = 5

-- Display: Member Code P 6 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Member Code P 6 Characters: No Value"
  end

  return "Member Code P 6 Characters: "..value
end

-- Dissect: Member Code P 6 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_code_p_6_characters, range, value, display)

  return offset + length, value
end

-- Member Code P 6 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_length_byte = {}

-- Size: Member Code P 6 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_length_byte.size = 1

-- Display: Member Code P 6 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_length_byte.display = function(value)
  return "Member Code P 6 Length Byte: "..value
end

-- Dissect: Member Code P 6 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_code_p_6_length_byte, range, value, display)

  return offset + length, value
end

-- Member Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.member_sequence = {}

-- Size: Member Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.member_sequence.size = 4

-- Display: Member Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.member_sequence.display = function(value)
  return "Member Sequence: "..value
end

-- Dissect: Member Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.member_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.member_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.member_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_sequence, range, value, display)

  return offset + length, value
end

-- Message Category Type
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_type = {}

-- Size: Message Category Type
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_type.size = 2

-- Display: Message Category Type
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_type.labels = {
  [1] = "Message Category Type: General (1)",
  [2] = "Message Category Type: Instrument (2)",
  [3] = "Message Category Type: Sector (3)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_type.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_type.labels[value] or "Message Category Type: Unknown("..value..")"
end

-- Dissect: Message Category Type
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_type.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_category_type, range, value, display)

  return offset + length, value
end

-- Message Category Value Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_characters = {}

-- Size: Message Category Value Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_characters.size = 49

-- Display: Message Category Value Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Message Category Value Characters: No Value"
  end

  return "Message Category Value Characters: "..value
end

-- Dissect: Message Category Value Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_category_value_characters, range, value, display)

  return offset + length, value
end

-- Message Category Value Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_length_byte = {}

-- Size: Message Category Value Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_length_byte.size = 1

-- Display: Message Category Value Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_length_byte.display = function(value)
  return "Message Category Value Length Byte: "..value
end

-- Dissect: Message Category Value Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_category_value_length_byte, range, value, display)

  return offset + length, value
end

-- Message Length
nsekenya_nairobibonds_marketdata_mits_v2_14.message_length = {}

-- Size: Message Length
nsekenya_nairobibonds_marketdata_mits_v2_14.message_length.size = 2

-- Display: Message Length
nsekenya_nairobibonds_marketdata_mits_v2_14.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nsekenya_nairobibonds_marketdata_mits_v2_14.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message P 250 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_characters = {}

-- Size: Message P 250 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_characters.size = 249

-- Display: Message P 250 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Message P 250 Characters: No Value"
  end

  return "Message P 250 Characters: "..value
end

-- Dissect: Message P 250 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_p_250_characters, range, value, display)

  return offset + length, value
end

-- Message P 250 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_length_byte = {}

-- Size: Message P 250 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_length_byte.size = 1

-- Display: Message P 250 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_length_byte.display = function(value)
  return "Message P 250 Length Byte: "..value
end

-- Dissect: Message P 250 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_p_250_length_byte, range, value, display)

  return offset + length, value
end

-- Message P 255 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_characters = {}

-- Size: Message P 255 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_characters.size = 254

-- Display: Message P 255 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Message P 255 Characters: No Value"
  end

  return "Message P 255 Characters: "..value
end

-- Dissect: Message P 255 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_p_255_characters, range, value, display)

  return offset + length, value
end

-- Message P 255 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_length_byte = {}

-- Size: Message P 255 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_length_byte.size = 1

-- Display: Message P 255 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_length_byte.display = function(value)
  return "Message P 255 Length Byte: "..value
end

-- Dissect: Message P 255 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_p_255_length_byte, range, value, display)

  return offset + length, value
end

-- Mid Price
nsekenya_nairobibonds_marketdata_mits_v2_14.mid_price = {}

-- Size: Mid Price
nsekenya_nairobibonds_marketdata_mits_v2_14.mid_price.size = 8

-- Display: Mid Price
nsekenya_nairobibonds_marketdata_mits_v2_14.mid_price.display = function(value)
  return "Mid Price: "..value
end

-- Dissect: Mid Price
nsekenya_nairobibonds_marketdata_mits_v2_14.mid_price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.mid_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.mid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.mid_price, range, value, display)

  return offset + length, value
end

-- Minimum All Or Nothing Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_all_or_nothing_quantity = {}

-- Size: Minimum All Or Nothing Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_all_or_nothing_quantity.size = 8

-- Display: Minimum All Or Nothing Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_all_or_nothing_quantity.display = function(value)
  return "Minimum All Or Nothing Quantity: "..value
end

-- Dissect: Minimum All Or Nothing Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_all_or_nothing_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_all_or_nothing_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_all_or_nothing_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minimum_all_or_nothing_quantity, range, value, display)

  return offset + length, value
end

-- Minimum Iceberg Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_iceberg_quantity = {}

-- Size: Minimum Iceberg Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_iceberg_quantity.size = 8

-- Display: Minimum Iceberg Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_iceberg_quantity.display = function(value)
  return "Minimum Iceberg Quantity: "..value
end

-- Dissect: Minimum Iceberg Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_iceberg_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_iceberg_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_iceberg_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minimum_iceberg_quantity, range, value, display)

  return offset + length, value
end

-- Minimum Initiation Fee
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_initiation_fee = {}

-- Size: Minimum Initiation Fee
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_initiation_fee.size = 8

-- Display: Minimum Initiation Fee
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_initiation_fee.display = function(value)
  return "Minimum Initiation Fee: "..value
end

-- Dissect: Minimum Initiation Fee
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_initiation_fee.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_initiation_fee.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_initiation_fee.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minimum_initiation_fee, range, value, display)

  return offset + length, value
end

-- Minimum Valid Bid Volume Off Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen = {}

-- Size: Minimum Valid Bid Volume Off Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen.size = 4

-- Display: Minimum Valid Bid Volume Off Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen.display = function(value)
  return "Minimum Valid Bid Volume Off Screen: "..value
end

-- Dissect: Minimum Valid Bid Volume Off Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minimum_valid_bid_volume_off_screen, range, value, display)

  return offset + length, value
end

-- Minimum Valid Bid Volume Off Screen Options
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen_options = {}

-- Size: Minimum Valid Bid Volume Off Screen Options
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen_options.size = 4

-- Display: Minimum Valid Bid Volume Off Screen Options
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen_options.display = function(value)
  return "Minimum Valid Bid Volume Off Screen Options: "..value
end

-- Dissect: Minimum Valid Bid Volume Off Screen Options
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen_options.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen_options.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen_options.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minimum_valid_bid_volume_off_screen_options, range, value, display)

  return offset + length, value
end

-- Minimum Valid Bid Volume On Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen = {}

-- Size: Minimum Valid Bid Volume On Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen.size = 4

-- Display: Minimum Valid Bid Volume On Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen.display = function(value)
  return "Minimum Valid Bid Volume On Screen: "..value
end

-- Dissect: Minimum Valid Bid Volume On Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minimum_valid_bid_volume_on_screen, range, value, display)

  return offset + length, value
end

-- Minimum Valid Bid Volume On Screen Options
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen_options = {}

-- Size: Minimum Valid Bid Volume On Screen Options
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen_options.size = 4

-- Display: Minimum Valid Bid Volume On Screen Options
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen_options.display = function(value)
  return "Minimum Valid Bid Volume On Screen Options: "..value
end

-- Dissect: Minimum Valid Bid Volume On Screen Options
nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen_options.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen_options.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen_options.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minimum_valid_bid_volume_on_screen_options, range, value, display)

  return offset + length, value
end

-- Minutes
nsekenya_nairobibonds_marketdata_mits_v2_14.minutes = {}

-- Size: Minutes
nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size = 1

-- Display: Minutes
nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.display = function(value)
  return "Minutes: "..value
end

-- Dissect: Minutes
nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.minutes, range, value, display)

  return offset + length, value
end

-- Month
nsekenya_nairobibonds_marketdata_mits_v2_14.month = {}

-- Size: Month
nsekenya_nairobibonds_marketdata_mits_v2_14.month.size = 4

-- Display: Month
nsekenya_nairobibonds_marketdata_mits_v2_14.month.display = function(value)
  return "Month: "..value
end

-- Dissect: Month
nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.month.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.month, range, value, display)

  return offset + length, value
end

-- New Password
nsekenya_nairobibonds_marketdata_mits_v2_14.new_password = {}

-- Size: New Password
nsekenya_nairobibonds_marketdata_mits_v2_14.new_password.size = 312

-- Display: New Password
nsekenya_nairobibonds_marketdata_mits_v2_14.new_password.display = function(value)
  return "New Password: "..value
end

-- Dissect: New Password
nsekenya_nairobibonds_marketdata_mits_v2_14.new_password.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.new_password.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.new_password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.new_password, range, range:raw(), display)

  return offset + length, value
end

-- News Number
nsekenya_nairobibonds_marketdata_mits_v2_14.news_number = {}

-- Size: News Number
nsekenya_nairobibonds_marketdata_mits_v2_14.news_number.size = 2

-- Display: News Number
nsekenya_nairobibonds_marketdata_mits_v2_14.news_number.display = function(value)
  return "News Number: "..value
end

-- Dissect: News Number
nsekenya_nairobibonds_marketdata_mits_v2_14.news_number.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.news_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.news_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.news_number, range, value, display)

  return offset + length, value
end

-- Nominal
nsekenya_nairobibonds_marketdata_mits_v2_14.nominal = {}

-- Size: Nominal
nsekenya_nairobibonds_marketdata_mits_v2_14.nominal.size = 8

-- Display: Nominal
nsekenya_nairobibonds_marketdata_mits_v2_14.nominal.display = function(value)
  return "Nominal: "..value
end

-- Dissect: Nominal
nsekenya_nairobibonds_marketdata_mits_v2_14.nominal.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.nominal.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.nominal.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.nominal, range, value, display)

  return offset + length, value
end

-- Nominal Divisor
nsekenya_nairobibonds_marketdata_mits_v2_14.nominal_divisor = {}

-- Size: Nominal Divisor
nsekenya_nairobibonds_marketdata_mits_v2_14.nominal_divisor.size = 4

-- Display: Nominal Divisor
nsekenya_nairobibonds_marketdata_mits_v2_14.nominal_divisor.display = function(value)
  return "Nominal Divisor: "..value
end

-- Dissect: Nominal Divisor
nsekenya_nairobibonds_marketdata_mits_v2_14.nominal_divisor.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.nominal_divisor.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.nominal_divisor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.nominal_divisor, range, value, display)

  return offset + length, value
end

-- Number Of Days In A Year
nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_days_in_a_year = {}

-- Size: Number Of Days In A Year
nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_days_in_a_year.size = 4

-- Display: Number Of Days In A Year
nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_days_in_a_year.display = function(value)
  return "Number Of Days In A Year: "..value
end

-- Dissect: Number Of Days In A Year
nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_days_in_a_year.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_days_in_a_year.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_days_in_a_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.number_of_days_in_a_year, range, value, display)

  return offset + length, value
end

-- Number Of Depth
nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_depth = {}

-- Size: Number Of Depth
nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_depth.size = 1

-- Display: Number Of Depth
nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_depth.display = function(value)
  return "Number Of Depth: "..value
end

-- Dissect: Number Of Depth
nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_depth.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_depth.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.number_of_depth, range, value, display)

  return offset + length, value
end

-- Number Of Unique Members
nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_unique_members = {}

-- Size: Number Of Unique Members
nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_unique_members.size = 4

-- Display: Number Of Unique Members
nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_unique_members.display = function(value)
  return "Number Of Unique Members: "..value
end

-- Dissect: Number Of Unique Members
nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_unique_members.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_unique_members.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_unique_members.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.number_of_unique_members, range, value, display)

  return offset + length, value
end

-- Odd Lot
nsekenya_nairobibonds_marketdata_mits_v2_14.odd_lot = {}

-- Size: Odd Lot
nsekenya_nairobibonds_marketdata_mits_v2_14.odd_lot.size = 1

-- Display: Odd Lot
nsekenya_nairobibonds_marketdata_mits_v2_14.odd_lot.display = function(value)
  return "Odd Lot: "..value
end

-- Dissect: Odd Lot
nsekenya_nairobibonds_marketdata_mits_v2_14.odd_lot.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.odd_lot.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.odd_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.odd_lot, range, value, display)

  return offset + length, value
end

-- On Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.on_screen = {}

-- Size: On Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.on_screen.size = 1

-- Display: On Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.on_screen.display = function(value)
  return "On Screen: "..value
end

-- Dissect: On Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.on_screen.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.on_screen.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.on_screen.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.on_screen, range, value, display)

  return offset + length, value
end

-- Open Interest
nsekenya_nairobibonds_marketdata_mits_v2_14.open_interest = {}

-- Size: Open Interest
nsekenya_nairobibonds_marketdata_mits_v2_14.open_interest.size = 8

-- Display: Open Interest
nsekenya_nairobibonds_marketdata_mits_v2_14.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
nsekenya_nairobibonds_marketdata_mits_v2_14.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.open_interest.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Open Price
nsekenya_nairobibonds_marketdata_mits_v2_14.open_price = {}

-- Size: Open Price
nsekenya_nairobibonds_marketdata_mits_v2_14.open_price.size = 8

-- Display: Open Price
nsekenya_nairobibonds_marketdata_mits_v2_14.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
nsekenya_nairobibonds_marketdata_mits_v2_14.open_price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.open_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.open_price, range, value, display)

  return offset + length, value
end

-- Opening Price
nsekenya_nairobibonds_marketdata_mits_v2_14.opening_price = {}

-- Size: Opening Price
nsekenya_nairobibonds_marketdata_mits_v2_14.opening_price.size = 8

-- Display: Opening Price
nsekenya_nairobibonds_marketdata_mits_v2_14.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
nsekenya_nairobibonds_marketdata_mits_v2_14.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.opening_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Option Anonymous
nsekenya_nairobibonds_marketdata_mits_v2_14.option_anonymous = {}

-- Size: Option Anonymous
nsekenya_nairobibonds_marketdata_mits_v2_14.option_anonymous.size = 1

-- Display: Option Anonymous
nsekenya_nairobibonds_marketdata_mits_v2_14.option_anonymous.display = function(value)
  return "Option Anonymous: "..value
end

-- Dissect: Option Anonymous
nsekenya_nairobibonds_marketdata_mits_v2_14.option_anonymous.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.option_anonymous.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.option_anonymous.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.option_anonymous, range, value, display)

  return offset + length, value
end

-- Option Fee Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.option_fee_sequence = {}

-- Size: Option Fee Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.option_fee_sequence.size = 4

-- Display: Option Fee Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.option_fee_sequence.display = function(value)
  return "Option Fee Sequence: "..value
end

-- Dissect: Option Fee Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.option_fee_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.option_fee_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.option_fee_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.option_fee_sequence, range, value, display)

  return offset + length, value
end

-- Option Lot Size
nsekenya_nairobibonds_marketdata_mits_v2_14.option_lot_size = {}

-- Size: Option Lot Size
nsekenya_nairobibonds_marketdata_mits_v2_14.option_lot_size.size = 4

-- Display: Option Lot Size
nsekenya_nairobibonds_marketdata_mits_v2_14.option_lot_size.display = function(value)
  return "Option Lot Size: "..value
end

-- Dissect: Option Lot Size
nsekenya_nairobibonds_marketdata_mits_v2_14.option_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.option_lot_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.option_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.option_lot_size, range, value, display)

  return offset + length, value
end

-- Option Premium Format Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.option_premium_format_decimal_places = {}

-- Size: Option Premium Format Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.option_premium_format_decimal_places.size = 4

-- Display: Option Premium Format Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.option_premium_format_decimal_places.display = function(value)
  return "Option Premium Format Decimal Places: "..value
end

-- Dissect: Option Premium Format Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.option_premium_format_decimal_places.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.option_premium_format_decimal_places.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.option_premium_format_decimal_places.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.option_premium_format_decimal_places, range, value, display)

  return offset + length, value
end

-- Options Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.options_allowed = {}

-- Size: Options Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.options_allowed.size = 1

-- Display: Options Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.options_allowed.display = function(value)
  return "Options Allowed: "..value
end

-- Dissect: Options Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.options_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.options_allowed.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.options_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.options_allowed, range, value, display)

  return offset + length, value
end

-- Options Exercise Cost
nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_cost = {}

-- Size: Options Exercise Cost
nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_cost.size = 8

-- Display: Options Exercise Cost
nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_cost.display = function(value)
  return "Options Exercise Cost: "..value
end

-- Dissect: Options Exercise Cost
nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_cost.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_cost.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_cost.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.options_exercise_cost, range, value, display)

  return offset + length, value
end

-- Options Exercise Is Percentage
nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_is_percentage = {}

-- Size: Options Exercise Is Percentage
nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_is_percentage.size = 1

-- Display: Options Exercise Is Percentage
nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_is_percentage.display = function(value)
  return "Options Exercise Is Percentage: "..value
end

-- Dissect: Options Exercise Is Percentage
nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_is_percentage.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_is_percentage.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_is_percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.options_exercise_is_percentage, range, value, display)

  return offset + length, value
end

-- Physical Settlement
nsekenya_nairobibonds_marketdata_mits_v2_14.physical_settlement = {}

-- Size: Physical Settlement
nsekenya_nairobibonds_marketdata_mits_v2_14.physical_settlement.size = 1

-- Display: Physical Settlement
nsekenya_nairobibonds_marketdata_mits_v2_14.physical_settlement.display = function(value)
  return "Physical Settlement: "..value
end

-- Dissect: Physical Settlement
nsekenya_nairobibonds_marketdata_mits_v2_14.physical_settlement.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.physical_settlement.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.physical_settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.physical_settlement, range, value, display)

  return offset + length, value
end

-- Previous Balance
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_balance = {}

-- Size: Previous Balance
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_balance.size = 8

-- Display: Previous Balance
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_balance.display = function(value)
  return "Previous Balance: "..value
end

-- Dissect: Previous Balance
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_balance.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.previous_balance.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.previous_balance.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.previous_balance, range, value, display)

  return offset + length, value
end

-- Previous Close Price
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_close_price = {}

-- Size: Previous Close Price
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_close_price.size = 8

-- Display: Previous Close Price
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_close_price.display = function(value)
  return "Previous Close Price: "..value
end

-- Dissect: Previous Close Price
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.previous_close_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.previous_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.previous_close_price, range, value, display)

  return offset + length, value
end

-- Previous Closing Price
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_closing_price = {}

-- Size: Previous Closing Price
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_closing_price.size = 8

-- Display: Previous Closing Price
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_closing_price.display = function(value)
  return "Previous Closing Price: "..value
end

-- Dissect: Previous Closing Price
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.previous_closing_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.previous_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.previous_closing_price, range, value, display)

  return offset + length, value
end

-- Previous Value
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_value = {}

-- Size: Previous Value
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_value.size = 8

-- Display: Previous Value
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_value.display = function(value)
  return "Previous Value: "..value
end

-- Dissect: Previous Value
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_value.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.previous_value.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.previous_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.previous_value, range, value, display)

  return offset + length, value
end

-- Price
nsekenya_nairobibonds_marketdata_mits_v2_14.price = {}

-- Size: Price
nsekenya_nairobibonds_marketdata_mits_v2_14.price.size = 8

-- Display: Price
nsekenya_nairobibonds_marketdata_mits_v2_14.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nsekenya_nairobibonds_marketdata_mits_v2_14.price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.price, range, value, display)

  return offset + length, value
end

-- Price Format Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.price_format_decimal_places = {}

-- Size: Price Format Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.price_format_decimal_places.size = 4

-- Display: Price Format Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.price_format_decimal_places.display = function(value)
  return "Price Format Decimal Places: "..value
end

-- Dissect: Price Format Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.price_format_decimal_places.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.price_format_decimal_places.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.price_format_decimal_places.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.price_format_decimal_places, range, value, display)

  return offset + length, value
end

-- Price Interval
nsekenya_nairobibonds_marketdata_mits_v2_14.price_interval = {}

-- Size: Price Interval
nsekenya_nairobibonds_marketdata_mits_v2_14.price_interval.size = 8

-- Display: Price Interval
nsekenya_nairobibonds_marketdata_mits_v2_14.price_interval.display = function(value)
  return "Price Interval: "..value
end

-- Dissect: Price Interval
nsekenya_nairobibonds_marketdata_mits_v2_14.price_interval.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.price_interval.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.price_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.price_interval, range, value, display)

  return offset + length, value
end

-- Price Multiplier
nsekenya_nairobibonds_marketdata_mits_v2_14.price_multiplier = {}

-- Size: Price Multiplier
nsekenya_nairobibonds_marketdata_mits_v2_14.price_multiplier.size = 2

-- Display: Price Multiplier
nsekenya_nairobibonds_marketdata_mits_v2_14.price_multiplier.display = function(value)
  return "Price Multiplier: "..value
end

-- Dissect: Price Multiplier
nsekenya_nairobibonds_marketdata_mits_v2_14.price_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.price_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.price_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.price_multiplier, range, value, display)

  return offset + length, value
end

-- Price Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.price_rate = {}

-- Size: Price Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.price_rate.size = 1

-- Display: Price Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.price_rate.labels = {
  ["P"] = "Price Rate: Price (P)",
  ["R"] = "Price Rate: Rate (R)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.price_rate.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.price_rate.labels[value] or "Price Rate: Unknown("..value..")"
end

-- Dissect: Price Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.price_rate.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.price_rate.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.price_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.price_rate, range, value, display)

  return offset + length, value
end

-- Proprietary Trading Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.proprietary_trading_allowed = {}

-- Size: Proprietary Trading Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.proprietary_trading_allowed.size = 1

-- Display: Proprietary Trading Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.proprietary_trading_allowed.display = function(value)
  return "Proprietary Trading Allowed: "..value
end

-- Dissect: Proprietary Trading Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.proprietary_trading_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.proprietary_trading_allowed.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.proprietary_trading_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.proprietary_trading_allowed, range, value, display)

  return offset + length, value
end

-- Quantity D 8
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_d_8 = {}

-- Size: Quantity D 8
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_d_8.size = 8

-- Display: Quantity D 8
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_d_8.display = function(value)
  return "Quantity D 8: "..value
end

-- Dissect: Quantity D 8
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_d_8.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_d_8.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_d_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.quantity_d_8, range, value, display)

  return offset + length, value
end

-- Quantity I 2
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_2 = {}

-- Size: Quantity I 2
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_2.size = 2

-- Display: Quantity I 2
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_2.display = function(value)
  return "Quantity I 2: "..value
end

-- Dissect: Quantity I 2
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_2.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_2.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.quantity_i_2, range, value, display)

  return offset + length, value
end

-- Quantity I 8
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_8 = {}

-- Size: Quantity I 8
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_8.size = 8

-- Display: Quantity I 8
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_8.display = function(value)
  return "Quantity I 8: "..value
end

-- Dissect: Quantity I 8
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_8.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_8.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.quantity_i_8, range, value, display)

  return offset + length, value
end

-- Quantity Tick Size
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_tick_size = {}

-- Size: Quantity Tick Size
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_tick_size.size = 4

-- Display: Quantity Tick Size
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_tick_size.display = function(value)
  return "Quantity Tick Size: "..value
end

-- Dissect: Quantity Tick Size
nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_tick_size.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_tick_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.quantity_tick_size, range, value, display)

  return offset + length, value
end

-- Quote Format Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.quote_format_decimal_places = {}

-- Size: Quote Format Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.quote_format_decimal_places.size = 4

-- Display: Quote Format Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.quote_format_decimal_places.display = function(value)
  return "Quote Format Decimal Places: "..value
end

-- Dissect: Quote Format Decimal Places
nsekenya_nairobibonds_marketdata_mits_v2_14.quote_format_decimal_places.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.quote_format_decimal_places.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.quote_format_decimal_places.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.quote_format_decimal_places, range, value, display)

  return offset + length, value
end

-- Re Request
nsekenya_nairobibonds_marketdata_mits_v2_14.re_request = {}

-- Size: Re Request
nsekenya_nairobibonds_marketdata_mits_v2_14.re_request.size = 1

-- Display: Re Request
nsekenya_nairobibonds_marketdata_mits_v2_14.re_request.display = function(value)
  return "Re Request: "..value
end

-- Dissect: Re Request
nsekenya_nairobibonds_marketdata_mits_v2_14.re_request.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.re_request.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.re_request.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.re_request, range, value, display)

  return offset + length, value
end

-- Redemption Value
nsekenya_nairobibonds_marketdata_mits_v2_14.redemption_value = {}

-- Size: Redemption Value
nsekenya_nairobibonds_marketdata_mits_v2_14.redemption_value.size = 8

-- Display: Redemption Value
nsekenya_nairobibonds_marketdata_mits_v2_14.redemption_value.display = function(value)
  return "Redemption Value: "..value
end

-- Dissect: Redemption Value
nsekenya_nairobibonds_marketdata_mits_v2_14.redemption_value.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.redemption_value.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.redemption_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.redemption_value, range, value, display)

  return offset + length, value
end

-- Reference Inflation Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_inflation_rate = {}

-- Size: Reference Inflation Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_inflation_rate.size = 8

-- Display: Reference Inflation Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_inflation_rate.display = function(value)
  return "Reference Inflation Rate: "..value
end

-- Dissect: Reference Inflation Rate
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_inflation_rate.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.reference_inflation_rate.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.reference_inflation_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.reference_inflation_rate, range, value, display)

  return offset + length, value
end

-- Reference Message Type Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_characters = {}

-- Size: Reference Message Type Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_characters.size = 2

-- Display: Reference Message Type Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reference Message Type Characters: No Value"
  end

  return "Reference Message Type Characters: "..value
end

-- Dissect: Reference Message Type Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.reference_message_type_characters, range, value, display)

  return offset + length, value
end

-- Reference Message Type Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_length_byte = {}

-- Size: Reference Message Type Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_length_byte.size = 1

-- Display: Reference Message Type Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_length_byte.display = function(value)
  return "Reference Message Type Length Byte: "..value
end

-- Dissect: Reference Message Type Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.reference_message_type_length_byte, range, value, display)

  return offset + length, value
end

-- Reference Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_sequence_number = {}

-- Size: Reference Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_sequence_number.size = 4

-- Display: Reference Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_sequence_number.display = function(value)
  return "Reference Sequence Number: "..value
end

-- Dissect: Reference Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.reference_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.reference_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.reference_sequence_number, range, value, display)

  return offset + length, value
end

-- Reminder Only
nsekenya_nairobibonds_marketdata_mits_v2_14.reminder_only = {}

-- Size: Reminder Only
nsekenya_nairobibonds_marketdata_mits_v2_14.reminder_only.size = 1

-- Display: Reminder Only
nsekenya_nairobibonds_marketdata_mits_v2_14.reminder_only.display = function(value)
  return "Reminder Only: "..value
end

-- Dissect: Reminder Only
nsekenya_nairobibonds_marketdata_mits_v2_14.reminder_only.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.reminder_only.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.reminder_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.reminder_only, range, value, display)

  return offset + length, value
end

-- Reserved 1
nsekenya_nairobibonds_marketdata_mits_v2_14.reserved_1 = {}

-- Size: Reserved 1
nsekenya_nairobibonds_marketdata_mits_v2_14.reserved_1.size = 1

-- Display: Reserved 1
nsekenya_nairobibonds_marketdata_mits_v2_14.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nsekenya_nairobibonds_marketdata_mits_v2_14.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Rfq Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.rfq_allowed = {}

-- Size: Rfq Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.rfq_allowed.size = 1

-- Display: Rfq Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.rfq_allowed.display = function(value)
  return "Rfq Allowed: "..value
end

-- Dissect: Rfq Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.rfq_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.rfq_allowed.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.rfq_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.rfq_allowed, range, value, display)

  return offset + length, value
end

-- Rpve
nsekenya_nairobibonds_marketdata_mits_v2_14.rpve = {}

-- Size: Rpve
nsekenya_nairobibonds_marketdata_mits_v2_14.rpve.size = 8

-- Display: Rpve
nsekenya_nairobibonds_marketdata_mits_v2_14.rpve.display = function(value)
  return "Rpve: "..value
end

-- Dissect: Rpve
nsekenya_nairobibonds_marketdata_mits_v2_14.rpve.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.rpve.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.rpve.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.rpve, range, value, display)

  return offset + length, value
end

-- Second Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.second_date_sequence = {}

-- Size: Second Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.second_date_sequence.size = 4

-- Display: Second Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.second_date_sequence.display = function(value)
  return "Second Date Sequence: "..value
end

-- Dissect: Second Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.second_date_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.second_date_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.second_date_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.second_date_sequence, range, value, display)

  return offset + length, value
end

-- Second Instrument Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.second_instrument_sequence = {}

-- Size: Second Instrument Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.second_instrument_sequence.size = 4

-- Display: Second Instrument Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.second_instrument_sequence.display = function(value)
  return "Second Instrument Sequence: "..value
end

-- Dissect: Second Instrument Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.second_instrument_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.second_instrument_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.second_instrument_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.second_instrument_sequence, range, value, display)

  return offset + length, value
end

-- Second Unused 4
nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_4 = {}

-- Size: Second Unused 4
nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_4.size = 4

-- Display: Second Unused 4
nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_4.display = function(value)
  return "Second Unused 4: "..value
end

-- Dissect: Second Unused 4
nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_4.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.second_unused_4, range, range:raw(), display)

  return offset + length, value
end

-- Second Unused 8
nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_8 = {}

-- Size: Second Unused 8
nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_8.size = 8

-- Display: Second Unused 8
nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_8.display = function(value)
  return "Second Unused 8: "..value
end

-- Dissect: Second Unused 8
nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_8.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.second_unused_8, range, range:raw(), display)

  return offset + length, value
end

-- Secondary Contract Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_contract_date_sequence = {}

-- Size: Secondary Contract Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_contract_date_sequence.size = 4

-- Display: Secondary Contract Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_contract_date_sequence.display = function(value)
  return "Secondary Contract Date Sequence: "..value
end

-- Dissect: Secondary Contract Date Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_contract_date_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_contract_date_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_contract_date_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.secondary_contract_date_sequence, range, value, display)

  return offset + length, value
end

-- Secondary Instrument Name B 5
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_b_5 = {}

-- Size: Secondary Instrument Name B 5
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_b_5.size = 5

-- Display: Secondary Instrument Name B 5
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_b_5.display = function(value)
  return "Secondary Instrument Name B 5: "..value
end

-- Dissect: Secondary Instrument Name B 5
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_b_5.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_b_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_b_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.secondary_instrument_name_b_5, range, range:raw(), display)

  return offset + length, value
end

-- Secondary Instrument Name P 5 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_characters = {}

-- Size: Secondary Instrument Name P 5 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_characters.size = 4

-- Display: Secondary Instrument Name P 5 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Secondary Instrument Name P 5 Characters: No Value"
  end

  return "Secondary Instrument Name P 5 Characters: "..value
end

-- Dissect: Secondary Instrument Name P 5 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.secondary_instrument_name_p_5_characters, range, value, display)

  return offset + length, value
end

-- Secondary Instrument Name P 5 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_length_byte = {}

-- Size: Secondary Instrument Name P 5 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_length_byte.size = 1

-- Display: Secondary Instrument Name P 5 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_length_byte.display = function(value)
  return "Secondary Instrument Name P 5 Length Byte: "..value
end

-- Dissect: Secondary Instrument Name P 5 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.secondary_instrument_name_p_5_length_byte, range, value, display)

  return offset + length, value
end

-- Seconds
nsekenya_nairobibonds_marketdata_mits_v2_14.seconds = {}

-- Size: Seconds
nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size = 1

-- Display: Seconds
nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.seconds, range, value, display)

  return offset + length, value
end

-- Sector Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.sector_characters = {}

-- Size: Sector Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.sector_characters.size = 29

-- Display: Sector Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.sector_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sector Characters: No Value"
  end

  return "Sector Characters: "..value
end

-- Dissect: Sector Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.sector_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.sector_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sector_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sector_characters, range, value, display)

  return offset + length, value
end

-- Sector Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.sector_length_byte = {}

-- Size: Sector Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.sector_length_byte.size = 1

-- Display: Sector Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.sector_length_byte.display = function(value)
  return "Sector Length Byte: "..value
end

-- Dissect: Sector Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.sector_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.sector_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sector_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sector_length_byte, range, value, display)

  return offset + length, value
end

-- Security Type Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_characters = {}

-- Size: Security Type Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_characters.size = 29

-- Display: Security Type Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type Characters: No Value"
  end

  return "Security Type Characters: "..value
end

-- Dissect: Security Type Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.security_type_characters, range, value, display)

  return offset + length, value
end

-- Security Type Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_length_byte = {}

-- Size: Security Type Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_length_byte.size = 1

-- Display: Security Type Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_length_byte.display = function(value)
  return "Security Type Length Byte: "..value
end

-- Dissect: Security Type Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.security_type_length_byte, range, value, display)

  return offset + length, value
end

-- Segment Number
nsekenya_nairobibonds_marketdata_mits_v2_14.segment_number = {}

-- Size: Segment Number
nsekenya_nairobibonds_marketdata_mits_v2_14.segment_number.size = 2

-- Display: Segment Number
nsekenya_nairobibonds_marketdata_mits_v2_14.segment_number.display = function(value)
  return "Segment Number: "..value
end

-- Dissect: Segment Number
nsekenya_nairobibonds_marketdata_mits_v2_14.segment_number.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.segment_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.segment_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.segment_number, range, value, display)

  return offset + length, value
end

-- Sell Order Id
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_id = {}

-- Size: Sell Order Id
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_id.size = 4

-- Display: Sell Order Id
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_id.display = function(value)
  return "Sell Order Id: "..value
end

-- Dissect: Sell Order Id
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Sell Order Type
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_type = {}

-- Size: Sell Order Type
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_type.size = 4

-- Display: Sell Order Type
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_type.labels = {
  [0] = "Sell Order Type: Normal (0)",
  [1] = "Sell Order Type: Take Or Kill (1)",
  [2] = "Sell Order Type: Fill Or Kill (2)",
  [4] = "Sell Order Type: Iceberg (4)",
  [8] = "Sell Order Type: Stop Order (8)",
  [16] = "Sell Order Type: At Best (16)",
  [32] = "Sell Order Type: All Or Nothing (32)",
  [64] = "Sell Order Type: Rebid (64)",
  [128] = "Sell Order Type: Close Order (128)",
  [256] = "Sell Order Type: Reverse Take Or Kill (256)",
  [512] = "Sell Order Type: Market Order Fill Or Kill (512)",
  [1024] = "Sell Order Type: Run Order (1024)",
  [2048] = "Sell Order Type: Cover Order (2048)",
  [4096] = "Sell Order Type: Market Order Take Or Kill (4096)",
  [16384] = "Sell Order Type: Suspend Order (16384)",
  [32768] = "Sell Order Type: Good Till Cancelled Order (32768)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_type.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_type.labels[value] or "Sell Order Type: Unknown("..value..")"
end

-- Dissect: Sell Order Type
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_type.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_order_type, range, value, display)

  return offset + length, value
end

-- Sell Price
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_price = {}

-- Size: Sell Price
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_price.size = 8

-- Display: Sell Price
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_price.display = function(value)
  return "Sell Price: "..value
end

-- Dissect: Sell Price
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_price, range, value, display)

  return offset + length, value
end

-- Sell Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_quantity = {}

-- Size: Sell Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_quantity.size = 4

-- Display: Sell Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_quantity.display = function(value)
  return "Sell Quantity: "..value
end

-- Dissect: Sell Quantity
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_quantity, range, value, display)

  return offset + length, value
end

-- Sell Side Phantom
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_side_phantom = {}

-- Size: Sell Side Phantom
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_side_phantom.size = 1

-- Display: Sell Side Phantom
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_side_phantom.display = function(value)
  return "Sell Side Phantom: "..value
end

-- Dissect: Sell Side Phantom
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_side_phantom.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_side_phantom.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_side_phantom.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_side_phantom, range, value, display)

  return offset + length, value
end

-- Sell Who Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_characters = {}

-- Size: Sell Who Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_characters.size = 5

-- Display: Sell Who Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sell Who Characters: No Value"
  end

  return "Sell Who Characters: "..value
end

-- Dissect: Sell Who Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_who_characters, range, value, display)

  return offset + length, value
end

-- Sell Who Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_length_byte = {}

-- Size: Sell Who Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_length_byte.size = 1

-- Display: Sell Who Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_length_byte.display = function(value)
  return "Sell Who Length Byte: "..value
end

-- Dissect: Sell Who Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_who_length_byte, range, value, display)

  return offset + length, value
end

-- Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.sequence_number = {}

-- Size: Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.sequence_number.size = 4

-- Display: Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Server Message Type
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_type = {}

-- Size: Server Message Type
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_type.size = 1

-- Display: Server Message Type
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_type.labels = {
  [1] = "Server Message Type: Successful Log In Response Message (1)",
  [10] = "Server Message Type: Heart Beat Message (10)",
  [16] = "Server Message Type: Session Key Challenge Message (16)",
  [36] = "Server Message Type: Download Data Response Message (36)",
  [37] = "Server Message Type: Download Data Response Message (37)",
  [58] = "Server Message Type: Completed Trade Message (58)",
  [59] = "Server Message Type: Display Update Message (59)",
  [60] = "Server Message Type: Indices Message (60)",
  [61] = "Server Message Type: Daily Trend Reply Message (61)",
  [99] = "Server Message Type: Price Update Message (99)",
  [123] = "Server Message Type: Data Update Message (123)",
  [125] = "Server Message Type: Exchange Announcements Message (125)",
  [127] = "Server Message Type: Notification Of Failure Message (127)",
  [132] = "Server Message Type: Business Message Reject Message (132)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_type.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_type.labels[value] or "Server Message Type: Unknown("..value..")"
end

-- Dissect: Server Message Type
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.server_message_type, range, value, display)

  return offset + length, value
end

-- Settlement Days
nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_days = {}

-- Size: Settlement Days
nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_days.size = 4

-- Display: Settlement Days
nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_days.display = function(value)
  return "Settlement Days: "..value
end

-- Dissect: Settlement Days
nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_days.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_days.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.settlement_days, range, value, display)

  return offset + length, value
end

-- Settlement Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_margin = {}

-- Size: Settlement Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_margin.size = 8

-- Display: Settlement Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_margin.display = function(value)
  return "Settlement Margin: "..value
end

-- Dissect: Settlement Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_margin.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_margin.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_margin.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.settlement_margin, range, value, display)

  return offset + length, value
end

-- Share Holding Percentage Limit
nsekenya_nairobibonds_marketdata_mits_v2_14.share_holding_percentage_limit = {}

-- Size: Share Holding Percentage Limit
nsekenya_nairobibonds_marketdata_mits_v2_14.share_holding_percentage_limit.size = 8

-- Display: Share Holding Percentage Limit
nsekenya_nairobibonds_marketdata_mits_v2_14.share_holding_percentage_limit.display = function(value)
  return "Share Holding Percentage Limit: "..value
end

-- Dissect: Share Holding Percentage Limit
nsekenya_nairobibonds_marketdata_mits_v2_14.share_holding_percentage_limit.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.share_holding_percentage_limit.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.share_holding_percentage_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.share_holding_percentage_limit, range, value, display)

  return offset + length, value
end

-- Shares In Issue
nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue = {}

-- Size: Shares In Issue
nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue.size = 8

-- Display: Shares In Issue
nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue.display = function(value)
  return "Shares In Issue: "..value
end

-- Dissect: Shares In Issue
nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.shares_in_issue, range, value, display)

  return offset + length, value
end

-- Shares In Issue Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_sequence = {}

-- Size: Shares In Issue Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_sequence.size = 4

-- Display: Shares In Issue Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_sequence.display = function(value)
  return "Shares In Issue Sequence: "..value
end

-- Dissect: Shares In Issue Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.shares_in_issue_sequence, range, value, display)

  return offset + length, value
end

-- Sor Account Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_characters = {}

-- Size: Sor Account Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_characters.size = 16

-- Display: Sor Account Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sor Account Characters: No Value"
  end

  return "Sor Account Characters: "..value
end

-- Dissect: Sor Account Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sor_account_characters, range, value, display)

  return offset + length, value
end

-- Sor Account Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_length_byte = {}

-- Size: Sor Account Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_length_byte.size = 1

-- Display: Sor Account Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_length_byte.display = function(value)
  return "Sor Account Length Byte: "..value
end

-- Dissect: Sor Account Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sor_account_length_byte, range, value, display)

  return offset + length, value
end

-- Specific Record
nsekenya_nairobibonds_marketdata_mits_v2_14.specific_record = {}

-- Size: Specific Record
nsekenya_nairobibonds_marketdata_mits_v2_14.specific_record.size = 4

-- Display: Specific Record
nsekenya_nairobibonds_marketdata_mits_v2_14.specific_record.display = function(value)
  return "Specific Record: "..value
end

-- Dissect: Specific Record
nsekenya_nairobibonds_marketdata_mits_v2_14.specific_record.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.specific_record.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.specific_record.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.specific_record, range, value, display)

  return offset + length, value
end

-- Spot Price
nsekenya_nairobibonds_marketdata_mits_v2_14.spot_price = {}

-- Size: Spot Price
nsekenya_nairobibonds_marketdata_mits_v2_14.spot_price.size = 8

-- Display: Spot Price
nsekenya_nairobibonds_marketdata_mits_v2_14.spot_price.display = function(value)
  return "Spot Price: "..value
end

-- Dissect: Spot Price
nsekenya_nairobibonds_marketdata_mits_v2_14.spot_price.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.spot_price.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.spot_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.spot_price, range, value, display)

  return offset + length, value
end

-- Spread Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.spread_margin = {}

-- Size: Spread Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.spread_margin.size = 8

-- Display: Spread Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.spread_margin.display = function(value)
  return "Spread Margin: "..value
end

-- Dissect: Spread Margin
nsekenya_nairobibonds_marketdata_mits_v2_14.spread_margin.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.spread_margin.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.spread_margin.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.spread_margin, range, value, display)

  return offset + length, value
end

-- Spreads Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.spreads_allowed = {}

-- Size: Spreads Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.spreads_allowed.size = 1

-- Display: Spreads Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.spreads_allowed.display = function(value)
  return "Spreads Allowed: "..value
end

-- Dissect: Spreads Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.spreads_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.spreads_allowed.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.spreads_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.spreads_allowed, range, value, display)

  return offset + length, value
end

-- Stack Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.stack_sequence_number = {}

-- Size: Stack Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.stack_sequence_number.size = 4

-- Display: Stack Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.stack_sequence_number.display = function(value)
  return "Stack Sequence Number: "..value
end

-- Dissect: Stack Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.stack_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.stack_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.stack_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.stack_sequence_number, range, value, display)

  return offset + length, value
end

-- Start Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.start_byte = {}

-- Size: Start Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.start_byte.size = 1

-- Display: Start Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.start_byte.display = function(value)
  return "Start Byte: "..value
end

-- Dissect: Start Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.start_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.start_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.start_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.start_byte, range, value, display)

  return offset + length, value
end

-- Stop Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.stop_orders_allowed = {}

-- Size: Stop Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.stop_orders_allowed.size = 1

-- Display: Stop Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.stop_orders_allowed.display = function(value)
  return "Stop Orders Allowed: "..value
end

-- Dissect: Stop Orders Allowed
nsekenya_nairobibonds_marketdata_mits_v2_14.stop_orders_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.stop_orders_allowed.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.stop_orders_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.stop_orders_allowed, range, value, display)

  return offset + length, value
end

-- Strike
nsekenya_nairobibonds_marketdata_mits_v2_14.strike = {}

-- Size: Strike
nsekenya_nairobibonds_marketdata_mits_v2_14.strike.size = 8

-- Display: Strike
nsekenya_nairobibonds_marketdata_mits_v2_14.strike.display = function(value)
  return "Strike: "..value
end

-- Dissect: Strike
nsekenya_nairobibonds_marketdata_mits_v2_14.strike.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.strike.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.strike.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.strike, range, value, display)

  return offset + length, value
end

-- Strike Interval
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval = {}

-- Size: Strike Interval
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval.size = 8

-- Display: Strike Interval
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval.display = function(value)
  return "Strike Interval: "..value
end

-- Dissect: Strike Interval
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.strike_interval, range, value, display)

  return offset + length, value
end

-- Strike Interval Off Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval_off_screen = {}

-- Size: Strike Interval Off Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval_off_screen.size = 8

-- Display: Strike Interval Off Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval_off_screen.display = function(value)
  return "Strike Interval Off Screen: "..value
end

-- Dissect: Strike Interval Off Screen
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval_off_screen.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval_off_screen.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval_off_screen.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.strike_interval_off_screen, range, value, display)

  return offset + length, value
end

-- Strike Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence = {}

-- Size: Strike Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence.size = 4

-- Display: Strike Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence.display = function(value)
  return "Strike Sequence: "..value
end

-- Dissect: Strike Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.strike_sequence, range, value, display)

  return offset + length, value
end

-- Strike Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence_number = {}

-- Size: Strike Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence_number.size = 4

-- Display: Strike Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence_number.display = function(value)
  return "Strike Sequence Number: "..value
end

-- Dissect: Strike Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.strike_sequence_number, range, value, display)

  return offset + length, value
end

-- Subscribe
nsekenya_nairobibonds_marketdata_mits_v2_14.subscribe = {}

-- Size: Subscribe
nsekenya_nairobibonds_marketdata_mits_v2_14.subscribe.size = 1

-- Display: Subscribe
nsekenya_nairobibonds_marketdata_mits_v2_14.subscribe.display = function(value)
  return "Subscribe: "..value
end

-- Dissect: Subscribe
nsekenya_nairobibonds_marketdata_mits_v2_14.subscribe.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.subscribe.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.subscribe.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.subscribe, range, value, display)

  return offset + length, value
end

-- Text P 250 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_characters = {}

-- Size: Text P 250 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_characters.size = 249

-- Display: Text P 250 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text P 250 Characters: No Value"
  end

  return "Text P 250 Characters: "..value
end

-- Dissect: Text P 250 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.text_p_250_characters, range, value, display)

  return offset + length, value
end

-- Text P 250 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_length_byte = {}

-- Size: Text P 250 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_length_byte.size = 1

-- Display: Text P 250 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_length_byte.display = function(value)
  return "Text P 250 Length Byte: "..value
end

-- Dissect: Text P 250 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.text_p_250_length_byte, range, value, display)

  return offset + length, value
end

-- Text P 50 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_characters = {}

-- Size: Text P 50 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_characters.size = 49

-- Display: Text P 50 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text P 50 Characters: No Value"
  end

  return "Text P 50 Characters: "..value
end

-- Dissect: Text P 50 Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.text_p_50_characters, range, value, display)

  return offset + length, value
end

-- Text P 50 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_length_byte = {}

-- Size: Text P 50 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_length_byte.size = 1

-- Display: Text P 50 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_length_byte.display = function(value)
  return "Text P 50 Length Byte: "..value
end

-- Dissect: Text P 50 Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.text_p_50_length_byte, range, value, display)

  return offset + length, value
end

-- Third Unused 4
nsekenya_nairobibonds_marketdata_mits_v2_14.third_unused_4 = {}

-- Size: Third Unused 4
nsekenya_nairobibonds_marketdata_mits_v2_14.third_unused_4.size = 4

-- Display: Third Unused 4
nsekenya_nairobibonds_marketdata_mits_v2_14.third_unused_4.display = function(value)
  return "Third Unused 4: "..value
end

-- Dissect: Third Unused 4
nsekenya_nairobibonds_marketdata_mits_v2_14.third_unused_4.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.third_unused_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.third_unused_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.third_unused_4, range, range:raw(), display)

  return offset + length, value
end

-- To Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.to_sequence = {}

-- Size: To Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.to_sequence.size = 4

-- Display: To Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.to_sequence.display = function(value)
  return "To Sequence: "..value
end

-- Dissect: To Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.to_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.to_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.to_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.to_sequence, range, value, display)

  return offset + length, value
end

-- Total Number Of Segments
nsekenya_nairobibonds_marketdata_mits_v2_14.total_number_of_segments = {}

-- Size: Total Number Of Segments
nsekenya_nairobibonds_marketdata_mits_v2_14.total_number_of_segments.size = 2

-- Display: Total Number Of Segments
nsekenya_nairobibonds_marketdata_mits_v2_14.total_number_of_segments.display = function(value)
  return "Total Number Of Segments: "..value
end

-- Dissect: Total Number Of Segments
nsekenya_nairobibonds_marketdata_mits_v2_14.total_number_of_segments.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.total_number_of_segments.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.total_number_of_segments.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.total_number_of_segments, range, value, display)

  return offset + length, value
end

-- Trade Type
nsekenya_nairobibonds_marketdata_mits_v2_14.trade_type = {}

-- Size: Trade Type
nsekenya_nairobibonds_marketdata_mits_v2_14.trade_type.size = 4

-- Display: Trade Type
nsekenya_nairobibonds_marketdata_mits_v2_14.trade_type.labels = {
  [0] = "Trade Type: Normal (0)",
  [1] = "Trade Type: Odd (1)",
}

nsekenya_nairobibonds_marketdata_mits_v2_14.trade_type.display = function(value)
  return nsekenya_nairobibonds_marketdata_mits_v2_14.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
nsekenya_nairobibonds_marketdata_mits_v2_14.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Anonymous
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_anonymous = {}

-- Size: Trading Anonymous
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_anonymous.size = 1

-- Display: Trading Anonymous
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_anonymous.display = function(value)
  return "Trading Anonymous: "..value
end

-- Dissect: Trading Anonymous
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_anonymous.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_anonymous.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_anonymous.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trading_anonymous, range, value, display)

  return offset + length, value
end

-- Trading Session Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_characters = {}

-- Size: Trading Session Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_characters.size = 55

-- Display: Trading Session Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading Session Name Characters: No Value"
  end

  return "Trading Session Name Characters: "..value
end

-- Dissect: Trading Session Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trading_session_name_characters, range, value, display)

  return offset + length, value
end

-- Trading Session Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_length_byte = {}

-- Size: Trading Session Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_length_byte.size = 1

-- Display: Trading Session Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_length_byte.display = function(value)
  return "Trading Session Name Length Byte: "..value
end

-- Dissect: Trading Session Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trading_session_name_length_byte, range, value, display)

  return offset + length, value
end

-- Trading Session Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_sequence = {}

-- Size: Trading Session Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_sequence.size = 4

-- Display: Trading Session Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_sequence.display = function(value)
  return "Trading Session Sequence: "..value
end

-- Dissect: Trading Session Sequence
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trading_session_sequence, range, value, display)

  return offset + length, value
end

-- Uncompressed Length
nsekenya_nairobibonds_marketdata_mits_v2_14.uncompressed_length = {}

-- Size: Uncompressed Length
nsekenya_nairobibonds_marketdata_mits_v2_14.uncompressed_length.size = 4

-- Display: Uncompressed Length
nsekenya_nairobibonds_marketdata_mits_v2_14.uncompressed_length.display = function(value)
  return "Uncompressed Length: "..value
end

-- Dissect: Uncompressed Length
nsekenya_nairobibonds_marketdata_mits_v2_14.uncompressed_length.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.uncompressed_length.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.uncompressed_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.uncompressed_length, range, value, display)

  return offset + length, value
end

-- Underlying
nsekenya_nairobibonds_marketdata_mits_v2_14.underlying = {}

-- Size: Underlying
nsekenya_nairobibonds_marketdata_mits_v2_14.underlying.size = 4

-- Display: Underlying
nsekenya_nairobibonds_marketdata_mits_v2_14.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
nsekenya_nairobibonds_marketdata_mits_v2_14.underlying.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.underlying.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unique Member Number
nsekenya_nairobibonds_marketdata_mits_v2_14.unique_member_number = {}

-- Size: Unique Member Number
nsekenya_nairobibonds_marketdata_mits_v2_14.unique_member_number.size = 4

-- Display: Unique Member Number
nsekenya_nairobibonds_marketdata_mits_v2_14.unique_member_number.display = function(value)
  return "Unique Member Number: "..value
end

-- Dissect: Unique Member Number
nsekenya_nairobibonds_marketdata_mits_v2_14.unique_member_number.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.unique_member_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.unique_member_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unique_member_number, range, value, display)

  return offset + length, value
end

-- Unused 1
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1 = {}

-- Size: Unused 1
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size = 1

-- Display: Unused 1
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.display = function(value)
  return "Unused 1: "..value
end

-- Dissect: Unused 1
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unused_1, range, range:raw(), display)

  return offset + length, value
end

-- Unused 12
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_12 = {}

-- Size: Unused 12
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_12.size = 12

-- Display: Unused 12
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_12.display = function(value)
  return "Unused 12: "..value
end

-- Dissect: Unused 12
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_12.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unused_12, range, range:raw(), display)

  return offset + length, value
end

-- Unused 17
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_17 = {}

-- Size: Unused 17
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_17.size = 17

-- Display: Unused 17
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_17.display = function(value)
  return "Unused 17: "..value
end

-- Dissect: Unused 17
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_17.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_17.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_17.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unused_17, range, range:raw(), display)

  return offset + length, value
end

-- Unused 21
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_21 = {}

-- Size: Unused 21
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_21.size = 21

-- Display: Unused 21
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_21.display = function(value)
  return "Unused 21: "..value
end

-- Dissect: Unused 21
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_21.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_21.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_21.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unused_21, range, range:raw(), display)

  return offset + length, value
end

-- Unused 4
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_4 = {}

-- Size: Unused 4
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_4.size = 4

-- Display: Unused 4
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_4.display = function(value)
  return "Unused 4: "..value
end

-- Dissect: Unused 4
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_4.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unused_4, range, range:raw(), display)

  return offset + length, value
end

-- Unused 5
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_5 = {}

-- Size: Unused 5
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_5.size = 5

-- Display: Unused 5
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_5.display = function(value)
  return "Unused 5: "..value
end

-- Dissect: Unused 5
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_5.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unused_5, range, range:raw(), display)

  return offset + length, value
end

-- Unused 8
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_8 = {}

-- Size: Unused 8
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_8.size = 8

-- Display: Unused 8
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_8.display = function(value)
  return "Unused 8: "..value
end

-- Dissect: Unused 8
nsekenya_nairobibonds_marketdata_mits_v2_14.unused_8.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unused_8, range, range:raw(), display)

  return offset + length, value
end

-- User Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_characters = {}

-- Size: User Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_characters.size = 15

-- Display: User Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User Name Characters: No Value"
  end

  return "User Name Characters: "..value
end

-- Dissect: User Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.user_name_characters, range, value, display)

  return offset + length, value
end

-- User Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_length_byte = {}

-- Size: User Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_length_byte.size = 1

-- Display: User Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_length_byte.display = function(value)
  return "User Name Length Byte: "..value
end

-- Dissect: User Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.user_name_length_byte, range, value, display)

  return offset + length, value
end

-- User Number
nsekenya_nairobibonds_marketdata_mits_v2_14.user_number = {}

-- Size: User Number
nsekenya_nairobibonds_marketdata_mits_v2_14.user_number.size = 4

-- Display: User Number
nsekenya_nairobibonds_marketdata_mits_v2_14.user_number.display = function(value)
  return "User Number: "..value
end

-- Dissect: User Number
nsekenya_nairobibonds_marketdata_mits_v2_14.user_number.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.user_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.user_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.user_number, range, value, display)

  return offset + length, value
end

-- Validated At Csd
nsekenya_nairobibonds_marketdata_mits_v2_14.validated_at_csd = {}

-- Size: Validated At Csd
nsekenya_nairobibonds_marketdata_mits_v2_14.validated_at_csd.size = 1

-- Display: Validated At Csd
nsekenya_nairobibonds_marketdata_mits_v2_14.validated_at_csd.display = function(value)
  return "Validated At Csd: "..value
end

-- Dissect: Validated At Csd
nsekenya_nairobibonds_marketdata_mits_v2_14.validated_at_csd.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.validated_at_csd.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.validated_at_csd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.validated_at_csd, range, value, display)

  return offset + length, value
end

-- Vat
nsekenya_nairobibonds_marketdata_mits_v2_14.vat = {}

-- Size: Vat
nsekenya_nairobibonds_marketdata_mits_v2_14.vat.size = 1

-- Display: Vat
nsekenya_nairobibonds_marketdata_mits_v2_14.vat.display = function(value)
  return "Vat: "..value
end

-- Dissect: Vat
nsekenya_nairobibonds_marketdata_mits_v2_14.vat.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.vat.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.vat.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vat, range, value, display)

  return offset + length, value
end

-- Vetting Agent Contact Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_characters = {}

-- Size: Vetting Agent Contact Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_characters.size = 29

-- Display: Vetting Agent Contact Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Vetting Agent Contact Characters: No Value"
  end

  return "Vetting Agent Contact Characters: "..value
end

-- Dissect: Vetting Agent Contact Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vetting_agent_contact_characters, range, value, display)

  return offset + length, value
end

-- Vetting Agent Contact Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_length_byte = {}

-- Size: Vetting Agent Contact Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_length_byte.size = 1

-- Display: Vetting Agent Contact Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_length_byte.display = function(value)
  return "Vetting Agent Contact Length Byte: "..value
end

-- Dissect: Vetting Agent Contact Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vetting_agent_contact_length_byte, range, value, display)

  return offset + length, value
end

-- Vetting Agent Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_characters = {}

-- Size: Vetting Agent Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_characters.size = 29

-- Display: Vetting Agent Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_characters.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Vetting Agent Name Characters: No Value"
  end

  return "Vetting Agent Name Characters: "..value
end

-- Dissect: Vetting Agent Name Characters
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_characters.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_characters.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_characters.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vetting_agent_name_characters, range, value, display)

  return offset + length, value
end

-- Vetting Agent Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_length_byte = {}

-- Size: Vetting Agent Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_length_byte.size = 1

-- Display: Vetting Agent Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_length_byte.display = function(value)
  return "Vetting Agent Name Length Byte: "..value
end

-- Dissect: Vetting Agent Name Length Byte
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_length_byte.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_length_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_length_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vetting_agent_name_length_byte, range, value, display)

  return offset + length, value
end

-- Volatility
nsekenya_nairobibonds_marketdata_mits_v2_14.volatility = {}

-- Size: Volatility
nsekenya_nairobibonds_marketdata_mits_v2_14.volatility.size = 8

-- Display: Volatility
nsekenya_nairobibonds_marketdata_mits_v2_14.volatility.display = function(value)
  return "Volatility: "..value
end

-- Dissect: Volatility
nsekenya_nairobibonds_marketdata_mits_v2_14.volatility.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.volatility.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.volatility, range, value, display)

  return offset + length, value
end

-- Volatility Rounding Places
nsekenya_nairobibonds_marketdata_mits_v2_14.volatility_rounding_places = {}

-- Size: Volatility Rounding Places
nsekenya_nairobibonds_marketdata_mits_v2_14.volatility_rounding_places.size = 4

-- Display: Volatility Rounding Places
nsekenya_nairobibonds_marketdata_mits_v2_14.volatility_rounding_places.display = function(value)
  return "Volatility Rounding Places: "..value
end

-- Dissect: Volatility Rounding Places
nsekenya_nairobibonds_marketdata_mits_v2_14.volatility_rounding_places.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.volatility_rounding_places.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.volatility_rounding_places.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.volatility_rounding_places, range, value, display)

  return offset + length, value
end

-- Vsr
nsekenya_nairobibonds_marketdata_mits_v2_14.vsr = {}

-- Size: Vsr
nsekenya_nairobibonds_marketdata_mits_v2_14.vsr.size = 8

-- Display: Vsr
nsekenya_nairobibonds_marketdata_mits_v2_14.vsr.display = function(value)
  return "Vsr: "..value
end

-- Dissect: Vsr
nsekenya_nairobibonds_marketdata_mits_v2_14.vsr.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.vsr.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.vsr.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vsr, range, value, display)

  return offset + length, value
end

-- Vwap
nsekenya_nairobibonds_marketdata_mits_v2_14.vwap = {}

-- Size: Vwap
nsekenya_nairobibonds_marketdata_mits_v2_14.vwap.size = 8

-- Display: Vwap
nsekenya_nairobibonds_marketdata_mits_v2_14.vwap.display = function(value)
  return "Vwap: "..value
end

-- Dissect: Vwap
nsekenya_nairobibonds_marketdata_mits_v2_14.vwap.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.vwap.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vwap, range, value, display)

  return offset + length, value
end

-- Year
nsekenya_nairobibonds_marketdata_mits_v2_14.year = {}

-- Size: Year
nsekenya_nairobibonds_marketdata_mits_v2_14.year.size = 4

-- Display: Year
nsekenya_nairobibonds_marketdata_mits_v2_14.year.display = function(value)
  return "Year: "..value
end

-- Dissect: Year
nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect = function(buffer, offset, packet, parent)
  local length = nsekenya_nairobibonds_marketdata_mits_v2_14.year.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.year, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect NseKenya NairobiBonds MarketData Mits 2.14
-----------------------------------------------------------------------

-- Text P 250
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250 = {}

-- Size: Text P 250
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_characters.size

-- Display: Text P 250
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Text P 250
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text P 250 Length Byte: P
  index, text_p_250_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_length_byte.dissect(buffer, index, packet, parent)

  -- Text P 250 Characters: P
  index, text_p_250_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Text P 250
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.text_p_250, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250.fields(buffer, offset, packet, parent)
  end
end

-- Reference Message Type
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type = {}

-- Size: Reference Message Type
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_characters.size

-- Display: Reference Message Type
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Message Type
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reference Message Type Length Byte: P
  index, reference_message_type_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_length_byte.dissect(buffer, index, packet, parent)

  -- Reference Message Type Characters: P
  index, reference_message_type_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Message Type
nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.reference_message_type, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type.fields(buffer, offset, packet, parent)
  end
end

-- Business Message Reject Message
nsekenya_nairobibonds_marketdata_mits_v2_14.business_message_reject_message = {}

-- Size: Business Message Reject Message
nsekenya_nairobibonds_marketdata_mits_v2_14.business_message_reject_message.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.reference_sequence_number.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250.size

-- Display: Business Message Reject Message
nsekenya_nairobibonds_marketdata_mits_v2_14.business_message_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Message Reject Message
nsekenya_nairobibonds_marketdata_mits_v2_14.business_message_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reference Sequence Number: I
  index, reference_sequence_number = nsekenya_nairobibonds_marketdata_mits_v2_14.reference_sequence_number.dissect(buffer, index, packet, parent)

  -- Reference Message Type: Struct of 2 fields
  index, reference_message_type = nsekenya_nairobibonds_marketdata_mits_v2_14.reference_message_type.dissect(buffer, index, packet, parent)

  -- Text P 250: Struct of 2 fields
  index, text_p_250 = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_250.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Message Reject Message
nsekenya_nairobibonds_marketdata_mits_v2_14.business_message_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.business_message_reject_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.business_message_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.business_message_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.business_message_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Notification Of Failure Message
nsekenya_nairobibonds_marketdata_mits_v2_14.notification_of_failure_message = {}

-- Size: Notification Of Failure Message
nsekenya_nairobibonds_marketdata_mits_v2_14.notification_of_failure_message.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.failure_notice_identifier.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_i_4.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_i_4.size

-- Display: Notification Of Failure Message
nsekenya_nairobibonds_marketdata_mits_v2_14.notification_of_failure_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Notification Of Failure Message
nsekenya_nairobibonds_marketdata_mits_v2_14.notification_of_failure_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Failure Notice Identifier: I
  index, failure_notice_identifier = nsekenya_nairobibonds_marketdata_mits_v2_14.failure_notice_identifier.dissect(buffer, index, packet, parent)

  -- Market Number I 4: I
  index, market_number_i_4 = nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_i_4.dissect(buffer, index, packet, parent)

  -- Market Shard Number I 4: I
  index, market_shard_number_i_4 = nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_i_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Notification Of Failure Message
nsekenya_nairobibonds_marketdata_mits_v2_14.notification_of_failure_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.notification_of_failure_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.notification_of_failure_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.notification_of_failure_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.notification_of_failure_message.fields(buffer, offset, packet, parent)
  end
end

-- Message P 250
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250 = {}

-- Size: Message P 250
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_characters.size

-- Display: Message P 250
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message P 250
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message P 250 Length Byte: P
  index, message_p_250_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_length_byte.dissect(buffer, index, packet, parent)

  -- Message P 250 Characters: P
  index, message_p_250_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message P 250
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_p_250, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Announcements Message
nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements_message = {}

-- Size: Exchange Announcements Message
nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements_message.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_i_4.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_i_4.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.error_number.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.information_or_error_indicator.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250.size

-- Display: Exchange Announcements Message
nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exchange Announcements Message
nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Number I 4: I
  index, market_number_i_4 = nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_i_4.dissect(buffer, index, packet, parent)

  -- Market Shard Number I 4: I
  index, market_shard_number_i_4 = nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_i_4.dissect(buffer, index, packet, parent)

  -- Error Number: I
  index, error_number = nsekenya_nairobibonds_marketdata_mits_v2_14.error_number.dissect(buffer, index, packet, parent)

  -- Information Or Error Indicator: B
  index, information_or_error_indicator = nsekenya_nairobibonds_marketdata_mits_v2_14.information_or_error_indicator.dissect(buffer, index, packet, parent)

  -- Message P 250: Struct of 2 fields
  index, message_p_250 = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_250.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Exchange Announcements Message
nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.exchange_announcements_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Constituents Data
nsekenya_nairobibonds_marketdata_mits_v2_14.index_constituents_data = {}

-- Size: Index Constituents Data
nsekenya_nairobibonds_marketdata_mits_v2_14.index_constituents_data.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.index_instrument_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.indices_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.size

-- Display: Index Constituents Data
nsekenya_nairobibonds_marketdata_mits_v2_14.index_constituents_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Constituents Data
nsekenya_nairobibonds_marketdata_mits_v2_14.index_constituents_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Instrument Sequence: I
  index, index_instrument_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.index_instrument_sequence.dissect(buffer, index, packet, parent)

  -- Indices Sequence: I
  index, indices_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_sequence.dissect(buffer, index, packet, parent)

  -- Instrument Sequence: I
  index, instrument_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Constituents Data
nsekenya_nairobibonds_marketdata_mits_v2_14.index_constituents_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_constituents_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.index_constituents_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.index_constituents_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.index_constituents_data.fields(buffer, offset, packet, parent)
  end
end

-- Trade Date
nsekenya_nairobibonds_marketdata_mits_v2_14.trade_date = {}

-- Size: Trade Date
nsekenya_nairobibonds_marketdata_mits_v2_14.trade_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Trade Date
nsekenya_nairobibonds_marketdata_mits_v2_14.trade_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Date
nsekenya_nairobibonds_marketdata_mits_v2_14.trade_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Date
nsekenya_nairobibonds_marketdata_mits_v2_14.trade_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trade_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.trade_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.trade_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.trade_date.fields(buffer, offset, packet, parent)
  end
end

-- Index Data
nsekenya_nairobibonds_marketdata_mits_v2_14.index_data = {}

-- Size: Index Data
nsekenya_nairobibonds_marketdata_mits_v2_14.index_data.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.index_data_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.indices_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.trade_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.index_value.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalization.size

-- Display: Index Data
nsekenya_nairobibonds_marketdata_mits_v2_14.index_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Data
nsekenya_nairobibonds_marketdata_mits_v2_14.index_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Data Sequence: I
  index, index_data_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.index_data_sequence.dissect(buffer, index, packet, parent)

  -- Indices Sequence: I
  index, indices_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_sequence.dissect(buffer, index, packet, parent)

  -- Trade Date: Struct of 3 fields
  index, trade_date = nsekenya_nairobibonds_marketdata_mits_v2_14.trade_date.dissect(buffer, index, packet, parent)

  -- Index Value: D
  index, index_value = nsekenya_nairobibonds_marketdata_mits_v2_14.index_value.dissect(buffer, index, packet, parent)

  -- Market Capitalization: D
  index, market_capitalization = nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalization.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Data
nsekenya_nairobibonds_marketdata_mits_v2_14.index_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.index_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.index_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.index_data.fields(buffer, offset, packet, parent)
  end
end

-- Shares In Issue Data
nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_data = {}

-- Size: Shares In Issue Data
nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_data.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.balance.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.current_value.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.previous_balance.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.previous_value.size

-- Display: Shares In Issue Data
nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Shares In Issue Data
nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Shares In Issue Sequence: I
  index, shares_in_issue_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_sequence.dissect(buffer, index, packet, parent)

  -- Instrument Sequence: I
  index, instrument_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.dissect(buffer, index, packet, parent)

  -- Balance: D
  index, balance = nsekenya_nairobibonds_marketdata_mits_v2_14.balance.dissect(buffer, index, packet, parent)

  -- Current Value: D
  index, current_value = nsekenya_nairobibonds_marketdata_mits_v2_14.current_value.dissect(buffer, index, packet, parent)

  -- Previous Balance: D
  index, previous_balance = nsekenya_nairobibonds_marketdata_mits_v2_14.previous_balance.dissect(buffer, index, packet, parent)

  -- Previous Value: D
  index, previous_value = nsekenya_nairobibonds_marketdata_mits_v2_14.previous_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Shares In Issue Data
nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.shares_in_issue_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_data.fields(buffer, offset, packet, parent)
  end
end

-- Classification
nsekenya_nairobibonds_marketdata_mits_v2_14.classification = {}

-- Size: Classification
nsekenya_nairobibonds_marketdata_mits_v2_14.classification.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.classification_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.classification_characters.size

-- Display: Classification
nsekenya_nairobibonds_marketdata_mits_v2_14.classification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Classification
nsekenya_nairobibonds_marketdata_mits_v2_14.classification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Classification Length Byte: P
  index, classification_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.classification_length_byte.dissect(buffer, index, packet, parent)

  -- Classification Characters: P
  index, classification_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.classification_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Classification
nsekenya_nairobibonds_marketdata_mits_v2_14.classification.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.classification, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.classification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.classification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.classification.fields(buffer, offset, packet, parent)
  end
end

-- Indices Description
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description = {}

-- Size: Indices Description
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_characters.size

-- Display: Indices Description
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indices Description
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Indices Description Length Byte: P
  index, indices_description_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_length_byte.dissect(buffer, index, packet, parent)

  -- Indices Description Characters: P
  index, indices_description_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indices Description
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_description, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description.fields(buffer, offset, packet, parent)
  end
end

-- Indices Code
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code = {}

-- Size: Indices Code
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_characters.size

-- Display: Indices Code
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indices Code
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Indices Code Length Byte: P
  index, indices_code_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_length_byte.dissect(buffer, index, packet, parent)

  -- Indices Code Characters: P
  index, indices_code_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indices Code
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_code, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code.fields(buffer, offset, packet, parent)
  end
end

-- Indices Data
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_data = {}

-- Size: Indices Data
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_data.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.indices_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.classification.size

-- Display: Indices Data
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indices Data
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Indices Sequence: I
  index, indices_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_sequence.dissect(buffer, index, packet, parent)

  -- Indices Code: Struct of 2 fields
  index, indices_code = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_code.dissect(buffer, index, packet, parent)

  -- Indices Description: Struct of 2 fields
  index, indices_description = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_description.dissect(buffer, index, packet, parent)

  -- Classification: Struct of 2 fields
  index, classification = nsekenya_nairobibonds_marketdata_mits_v2_14.classification.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indices Data
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.indices_data.fields(buffer, offset, packet, parent)
  end
end

-- Update Date
nsekenya_nairobibonds_marketdata_mits_v2_14.update_date = {}

-- Size: Update Date
nsekenya_nairobibonds_marketdata_mits_v2_14.update_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Update Date
nsekenya_nairobibonds_marketdata_mits_v2_14.update_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Date
nsekenya_nairobibonds_marketdata_mits_v2_14.update_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Update Date
nsekenya_nairobibonds_marketdata_mits_v2_14.update_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.update_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.update_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.update_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.update_date.fields(buffer, offset, packet, parent)
  end
end

-- Update Time
nsekenya_nairobibonds_marketdata_mits_v2_14.update_time = {}

-- Size: Update Time
nsekenya_nairobibonds_marketdata_mits_v2_14.update_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Update Time
nsekenya_nairobibonds_marketdata_mits_v2_14.update_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Time
nsekenya_nairobibonds_marketdata_mits_v2_14.update_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Update Time
nsekenya_nairobibonds_marketdata_mits_v2_14.update_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.update_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.update_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.update_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.update_time.fields(buffer, offset, packet, parent)
  end
end

-- Indices Price Data
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_price_data = {}

-- Size: Indices Price Data
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_price_data.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.indices_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.opening_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.index_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.update_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.update_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalisation.size

-- Display: Indices Price Data
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_price_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indices Price Data
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_price_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Indices Sequence: I
  index, indices_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_sequence.dissect(buffer, index, packet, parent)

  -- Opening Price: D
  index, opening_price = nsekenya_nairobibonds_marketdata_mits_v2_14.opening_price.dissect(buffer, index, packet, parent)

  -- Index Price: D
  index, index_price = nsekenya_nairobibonds_marketdata_mits_v2_14.index_price.dissect(buffer, index, packet, parent)

  -- Update Time: Struct of 4 fields
  index, update_time = nsekenya_nairobibonds_marketdata_mits_v2_14.update_time.dissect(buffer, index, packet, parent)

  -- Update Date: Struct of 3 fields
  index, update_date = nsekenya_nairobibonds_marketdata_mits_v2_14.update_date.dissect(buffer, index, packet, parent)

  -- Market Capitalisation: D
  index, market_capitalisation = nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalisation.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indices Price Data
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_price_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_price_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_price_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_price_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.indices_price_data.fields(buffer, offset, packet, parent)
  end
end

-- Pre Open Order Entry Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_close_time = {}

-- Size: Pre Open Order Entry Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_close_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Pre Open Order Entry Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_close_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pre Open Order Entry Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_close_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Pre Open Order Entry Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_close_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.pre_open_order_entry_close_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_close_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_close_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_close_time.fields(buffer, offset, packet, parent)
  end
end

-- Pre Open Order Entry Open Time
nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_open_time = {}

-- Size: Pre Open Order Entry Open Time
nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_open_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Pre Open Order Entry Open Time
nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_open_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pre Open Order Entry Open Time
nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_open_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Pre Open Order Entry Open Time
nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_open_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.pre_open_order_entry_open_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_open_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_open_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_open_time.fields(buffer, offset, packet, parent)
  end
end

-- Admin Period Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.admin_period_close_time = {}

-- Size: Admin Period Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.admin_period_close_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Admin Period Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.admin_period_close_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Admin Period Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.admin_period_close_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Admin Period Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.admin_period_close_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.admin_period_close_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.admin_period_close_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.admin_period_close_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.admin_period_close_time.fields(buffer, offset, packet, parent)
  end
end

-- Overnight Admin Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_close_time = {}

-- Size: Overnight Admin Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_close_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Overnight Admin Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_close_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Overnight Admin Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_close_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Overnight Admin Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_close_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.overnight_admin_close_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_close_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_close_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_close_time.fields(buffer, offset, packet, parent)
  end
end

-- Overnight Admin Open Time
nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_open_time = {}

-- Size: Overnight Admin Open Time
nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_open_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Overnight Admin Open Time
nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_open_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Overnight Admin Open Time
nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_open_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Overnight Admin Open Time
nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_open_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.overnight_admin_open_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_open_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_open_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_open_time.fields(buffer, offset, packet, parent)
  end
end

-- Intraday Auction Three Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_auction_close_time = {}

-- Size: Intraday Auction Three Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_auction_close_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Intraday Auction Three Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_auction_close_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Intraday Auction Three Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_auction_close_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Intraday Auction Three Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_auction_close_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.intraday_auction_three_auction_close_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_auction_close_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_auction_close_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_auction_close_time.fields(buffer, offset, packet, parent)
  end
end

-- Intraday Auction Three Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_start_time = {}

-- Size: Intraday Auction Three Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_start_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Intraday Auction Three Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_start_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Intraday Auction Three Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_start_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Intraday Auction Three Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_start_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.intraday_auction_three_start_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_start_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_start_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_start_time.fields(buffer, offset, packet, parent)
  end
end

-- Intraday Auction Two Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_auction_close_time = {}

-- Size: Intraday Auction Two Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_auction_close_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Intraday Auction Two Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_auction_close_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Intraday Auction Two Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_auction_close_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Intraday Auction Two Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_auction_close_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.intraday_auction_two_auction_close_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_auction_close_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_auction_close_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_auction_close_time.fields(buffer, offset, packet, parent)
  end
end

-- Intraday Auction Two Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_start_time = {}

-- Size: Intraday Auction Two Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_start_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Intraday Auction Two Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_start_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Intraday Auction Two Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_start_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Intraday Auction Two Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_start_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.intraday_auction_two_start_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_start_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_start_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_start_time.fields(buffer, offset, packet, parent)
  end
end

-- Intraday Auction One Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_auction_close_time = {}

-- Size: Intraday Auction One Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_auction_close_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Intraday Auction One Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_auction_close_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Intraday Auction One Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_auction_close_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Intraday Auction One Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_auction_close_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.intraday_auction_one_auction_close_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_auction_close_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_auction_close_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_auction_close_time.fields(buffer, offset, packet, parent)
  end
end

-- Intraday Auction One Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_start_time = {}

-- Size: Intraday Auction One Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_start_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Intraday Auction One Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_start_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Intraday Auction One Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_start_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Intraday Auction One Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_start_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.intraday_auction_one_start_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_start_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_start_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_start_time.fields(buffer, offset, packet, parent)
  end
end

-- Contract Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_close_time = {}

-- Size: Contract Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_close_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Contract Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_close_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_close_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Contract Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_close_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contract_close_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_close_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_close_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.contract_close_time.fields(buffer, offset, packet, parent)
  end
end

-- Contract Open Time
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_open_time = {}

-- Size: Contract Open Time
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_open_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Contract Open Time
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_open_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Open Time
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_open_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Contract Open Time
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_open_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contract_open_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_open_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_open_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.contract_open_time.fields(buffer, offset, packet, parent)
  end
end

-- Closing Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_close_time = {}

-- Size: Closing Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_close_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Closing Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_close_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_close_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Closing Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_close_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.closing_auction_close_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_close_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_close_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_close_time.fields(buffer, offset, packet, parent)
  end
end

-- Closing Auction Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_start_time = {}

-- Size: Closing Auction Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_start_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Closing Auction Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_start_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Auction Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_start_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Closing Auction Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_start_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.closing_auction_start_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_start_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_start_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_start_time.fields(buffer, offset, packet, parent)
  end
end

-- Opening Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_close_time = {}

-- Size: Opening Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_close_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Opening Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_close_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Opening Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_close_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Opening Auction Close Time
nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_close_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.opening_auction_close_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_close_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_close_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_close_time.fields(buffer, offset, packet, parent)
  end
end

-- Opening Auction Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_start_time = {}

-- Size: Opening Auction Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_start_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Opening Auction Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_start_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Opening Auction Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_start_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Opening Auction Start Time
nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_start_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.opening_auction_start_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_start_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_start_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_start_time.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Name
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name = {}

-- Size: Trading Session Name
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_characters.size

-- Display: Trading Session Name
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Name
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Session Name Length Byte: P
  index, trading_session_name_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_length_byte.dissect(buffer, index, packet, parent)

  -- Trading Session Name Characters: P
  index, trading_session_name_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Name
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trading_session_name, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name.fields(buffer, offset, packet, parent)
  end
end

-- Trading Sessions
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_sessions = {}

-- Size: Trading Sessions
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_sessions.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_start_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_close_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_start_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_close_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.contract_open_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.contract_close_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_start_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_auction_close_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_start_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_auction_close_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_start_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_auction_close_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_open_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_close_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.admin_period_close_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_8.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_open_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_close_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_8.size

-- Display: Trading Sessions
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_sessions.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Sessions
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_sessions.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Session Sequence: I
  index, trading_session_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_sequence.dissect(buffer, index, packet, parent)

  -- Trading Session Name: Struct of 2 fields
  index, trading_session_name = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_name.dissect(buffer, index, packet, parent)

  -- Opening Auction Start Time: Struct of 4 fields
  index, opening_auction_start_time = nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_start_time.dissect(buffer, index, packet, parent)

  -- Opening Auction Close Time: Struct of 4 fields
  index, opening_auction_close_time = nsekenya_nairobibonds_marketdata_mits_v2_14.opening_auction_close_time.dissect(buffer, index, packet, parent)

  -- Closing Auction Start Time: Struct of 4 fields
  index, closing_auction_start_time = nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_start_time.dissect(buffer, index, packet, parent)

  -- Closing Auction Close Time: Struct of 4 fields
  index, closing_auction_close_time = nsekenya_nairobibonds_marketdata_mits_v2_14.closing_auction_close_time.dissect(buffer, index, packet, parent)

  -- Contract Open Time: Struct of 4 fields
  index, contract_open_time = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_open_time.dissect(buffer, index, packet, parent)

  -- Contract Close Time: Struct of 4 fields
  index, contract_close_time = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_close_time.dissect(buffer, index, packet, parent)

  -- Intraday Auction One Start Time: Struct of 4 fields
  index, intraday_auction_one_start_time = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_start_time.dissect(buffer, index, packet, parent)

  -- Intraday Auction One Auction Close Time: Struct of 4 fields
  index, intraday_auction_one_auction_close_time = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_one_auction_close_time.dissect(buffer, index, packet, parent)

  -- Intraday Auction Two Start Time: Struct of 4 fields
  index, intraday_auction_two_start_time = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_start_time.dissect(buffer, index, packet, parent)

  -- Intraday Auction Two Auction Close Time: Struct of 4 fields
  index, intraday_auction_two_auction_close_time = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_two_auction_close_time.dissect(buffer, index, packet, parent)

  -- Intraday Auction Three Start Time: Struct of 4 fields
  index, intraday_auction_three_start_time = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_start_time.dissect(buffer, index, packet, parent)

  -- Intraday Auction Three Auction Close Time: Struct of 4 fields
  index, intraday_auction_three_auction_close_time = nsekenya_nairobibonds_marketdata_mits_v2_14.intraday_auction_three_auction_close_time.dissect(buffer, index, packet, parent)

  -- Overnight Admin Open Time: Struct of 4 fields
  index, overnight_admin_open_time = nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_open_time.dissect(buffer, index, packet, parent)

  -- Overnight Admin Close Time: Struct of 4 fields
  index, overnight_admin_close_time = nsekenya_nairobibonds_marketdata_mits_v2_14.overnight_admin_close_time.dissect(buffer, index, packet, parent)

  -- Admin Period Close Time: Struct of 4 fields
  index, admin_period_close_time = nsekenya_nairobibonds_marketdata_mits_v2_14.admin_period_close_time.dissect(buffer, index, packet, parent)

  -- Unused 8: B
  if show.padding then
    index, unused_8 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_8.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_8.size
  end

  -- Pre Open Order Entry Open Time: Struct of 4 fields
  index, pre_open_order_entry_open_time = nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_open_time.dissect(buffer, index, packet, parent)

  -- Pre Open Order Entry Close Time: Struct of 4 fields
  index, pre_open_order_entry_close_time = nsekenya_nairobibonds_marketdata_mits_v2_14.pre_open_order_entry_close_time.dissect(buffer, index, packet, parent)

  -- Second Unused 8: B
  if show.padding then
    index, second_unused_8 = nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_8.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_8.size
  end

  return index
end

-- Dissect: Trading Sessions
nsekenya_nairobibonds_marketdata_mits_v2_14.trading_sessions.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.trading_sessions, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_sessions.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_sessions.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.trading_sessions.fields(buffer, offset, packet, parent)
  end
end

-- Books Close Date
nsekenya_nairobibonds_marketdata_mits_v2_14.books_close_date = {}

-- Size: Books Close Date
nsekenya_nairobibonds_marketdata_mits_v2_14.books_close_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Books Close Date
nsekenya_nairobibonds_marketdata_mits_v2_14.books_close_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Books Close Date
nsekenya_nairobibonds_marketdata_mits_v2_14.books_close_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Books Close Date
nsekenya_nairobibonds_marketdata_mits_v2_14.books_close_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.books_close_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.books_close_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.books_close_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.books_close_date.fields(buffer, offset, packet, parent)
  end
end

-- Coupon Date
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_date = {}

-- Size: Coupon Date
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Coupon Date
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Coupon Date
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Coupon Date
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.coupon_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_date.fields(buffer, offset, packet, parent)
  end
end

-- Coupon Information
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_information = {}

-- Size: Coupon Information
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_information.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.books_close_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_rate.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.redemption_value.size

-- Display: Coupon Information
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Coupon Information
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Coupon Sequence: I
  index, coupon_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_sequence.dissect(buffer, index, packet, parent)

  -- Instrument Sequence: I
  index, instrument_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.dissect(buffer, index, packet, parent)

  -- Coupon Date: Struct of 3 fields
  index, coupon_date = nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_date.dissect(buffer, index, packet, parent)

  -- Books Close Date: Struct of 3 fields
  index, books_close_date = nsekenya_nairobibonds_marketdata_mits_v2_14.books_close_date.dissect(buffer, index, packet, parent)

  -- Coupon Rate: D
  index, coupon_rate = nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_rate.dissect(buffer, index, packet, parent)

  -- Redemption Value: D
  index, redemption_value = nsekenya_nairobibonds_marketdata_mits_v2_14.redemption_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Coupon Information
nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_information.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.coupon_information, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_information.fields(buffer, offset, packet, parent)
  end
end

-- Message P 255
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255 = {}

-- Size: Message P 255
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_characters.size

-- Display: Message P 255
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message P 255
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message P 255 Length Byte: P
  index, message_p_255_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_length_byte.dissect(buffer, index, packet, parent)

  -- Message P 255 Characters: P
  index, message_p_255_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message P 255
nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_p_255, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255.fields(buffer, offset, packet, parent)
  end
end

-- Message Category Value
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value = {}

-- Size: Message Category Value
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_characters.size

-- Display: Message Category Value
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Category Value
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Category Value Length Byte: P
  index, message_category_value_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_length_byte.dissect(buffer, index, packet, parent)

  -- Message Category Value Characters: P
  index, message_category_value_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Category Value
nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.message_category_value, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value.fields(buffer, offset, packet, parent)
  end
end

-- Time
nsekenya_nairobibonds_marketdata_mits_v2_14.time = {}

-- Size: Time
nsekenya_nairobibonds_marketdata_mits_v2_14.time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Time
nsekenya_nairobibonds_marketdata_mits_v2_14.time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time
nsekenya_nairobibonds_marketdata_mits_v2_14.time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Time
nsekenya_nairobibonds_marketdata_mits_v2_14.time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.time.fields(buffer, offset, packet, parent)
  end
end

-- Date
nsekenya_nairobibonds_marketdata_mits_v2_14.date = {}

-- Size: Date
nsekenya_nairobibonds_marketdata_mits_v2_14.date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Date
nsekenya_nairobibonds_marketdata_mits_v2_14.date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Date
nsekenya_nairobibonds_marketdata_mits_v2_14.date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Date
nsekenya_nairobibonds_marketdata_mits_v2_14.date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.date.fields(buffer, offset, packet, parent)
  end
end

-- News Service
nsekenya_nairobibonds_marketdata_mits_v2_14.news_service = {}

-- Size: News Service
nsekenya_nairobibonds_marketdata_mits_v2_14.news_service.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_type.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.news_number.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.total_number_of_segments.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.segment_number.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255.size

-- Display: News Service
nsekenya_nairobibonds_marketdata_mits_v2_14.news_service.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Service
nsekenya_nairobibonds_marketdata_mits_v2_14.news_service.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Date: Struct of 3 fields
  index, date = nsekenya_nairobibonds_marketdata_mits_v2_14.date.dissect(buffer, index, packet, parent)

  -- Time: Struct of 4 fields
  index, time = nsekenya_nairobibonds_marketdata_mits_v2_14.time.dissect(buffer, index, packet, parent)

  -- Message Category Type: I
  index, message_category_type = nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_type.dissect(buffer, index, packet, parent)

  -- Message Category Value: Struct of 2 fields
  index, message_category_value = nsekenya_nairobibonds_marketdata_mits_v2_14.message_category_value.dissect(buffer, index, packet, parent)

  -- News Number: I
  index, news_number = nsekenya_nairobibonds_marketdata_mits_v2_14.news_number.dissect(buffer, index, packet, parent)

  -- Total Number Of Segments: I
  index, total_number_of_segments = nsekenya_nairobibonds_marketdata_mits_v2_14.total_number_of_segments.dissect(buffer, index, packet, parent)

  -- Segment Number: I
  index, segment_number = nsekenya_nairobibonds_marketdata_mits_v2_14.segment_number.dissect(buffer, index, packet, parent)

  -- Message P 255: Struct of 2 fields
  index, message_p_255 = nsekenya_nairobibonds_marketdata_mits_v2_14.message_p_255.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Service
nsekenya_nairobibonds_marketdata_mits_v2_14.news_service.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.news_service, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.news_service.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.news_service.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.news_service.fields(buffer, offset, packet, parent)
  end
end

-- Announcement
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement = {}

-- Size: Announcement
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_characters.size

-- Display: Announcement
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Announcement
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Announcement Length Byte: P
  index, announcement_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_length_byte.dissect(buffer, index, packet, parent)

  -- Announcement Characters: P
  index, announcement_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Announcement
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.announcement, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.announcement.fields(buffer, offset, packet, parent)
  end
end

-- Announcement Time
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_time = {}

-- Size: Announcement Time
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Announcement Time
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Announcement Time
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Announcement Time
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.announcement_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_time.fields(buffer, offset, packet, parent)
  end
end

-- Announcement Date
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_date = {}

-- Size: Announcement Date
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Announcement Date
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Announcement Date
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Announcement Date
nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.announcement_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_date.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Announcements
nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements = {}

-- Size: Exchange Announcements
nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.id_market.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.announcement.size

-- Display: Exchange Announcements
nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exchange Announcements
nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id Market: I
  index, id_market = nsekenya_nairobibonds_marketdata_mits_v2_14.id_market.dissect(buffer, index, packet, parent)

  -- Announcement Sequence: I
  index, announcement_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_sequence.dissect(buffer, index, packet, parent)

  -- Announcement Date: Struct of 3 fields
  index, announcement_date = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_date.dissect(buffer, index, packet, parent)

  -- Announcement Time: Struct of 4 fields
  index, announcement_time = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement_time.dissect(buffer, index, packet, parent)

  -- Announcement: Struct of 2 fields
  index, announcement = nsekenya_nairobibonds_marketdata_mits_v2_14.announcement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Exchange Announcements
nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.exchange_announcements, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Member Description
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description = {}

-- Size: Clearing Member Description
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_characters.size

-- Display: Clearing Member Description
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Member Description
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Member Description Length Byte: P
  index, clearing_member_description_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_length_byte.dissect(buffer, index, packet, parent)

  -- Clearing Member Description Characters: P
  index, clearing_member_description_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Member Description
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_description, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Member Code
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code = {}

-- Size: Clearing Member Code
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_characters.size

-- Display: Clearing Member Code
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Member Code
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Member Code Length Byte: P
  index, clearing_member_code_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_length_byte.dissect(buffer, index, packet, parent)

  -- Clearing Member Code Characters: P
  index, clearing_member_code_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Member Code
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_code, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Member Data
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_data = {}

-- Size: Clearing Member Data
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_data.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description.size

-- Display: Clearing Member Data
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Member Data
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Member Sequence: I
  index, clearing_member_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_sequence.dissect(buffer, index, packet, parent)

  -- Clearing Member Code: Struct of 2 fields
  index, clearing_member_code = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_code.dissect(buffer, index, packet, parent)

  -- Clearing Member Description: Struct of 2 fields
  index, clearing_member_description = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_description.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Member Data
nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearing_member_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_data.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Type Name
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name = {}

-- Size: Instrument Type Name
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_characters.size

-- Display: Instrument Type Name
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Type Name
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Type Name Length Byte: P
  index, instrument_type_name_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_length_byte.dissect(buffer, index, packet, parent)

  -- Instrument Type Name Characters: P
  index, instrument_type_name_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Type Name
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_name, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Type Code
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code = {}

-- Size: Instrument Type Code
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_characters.size

-- Display: Instrument Type Code
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Type Code
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Type Code Length Byte: P
  index, instrument_type_code_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_length_byte.dissect(buffer, index, packet, parent)

  -- Instrument Type Code Characters: P
  index, instrument_type_code_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Type Code
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_type_code, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Types
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_types = {}

-- Size: Instrument Types
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_types.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_4.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_i_4.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_c_1.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name.size

-- Display: Instrument Types
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_types.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Types
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_types.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Type Sequence: I
  index, instrument_type_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_sequence.dissect(buffer, index, packet, parent)

  -- Unused 4: B
  if show.padding then
    index, unused_4 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_4.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_4.size
  end

  -- Instrument Type Number I 4: I
  index, instrument_type_number_i_4 = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_i_4.dissect(buffer, index, packet, parent)

  -- Identifier Prefix C 1: C
  index, identifier_prefix_c_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_c_1.dissect(buffer, index, packet, parent)

  -- Instrument Type Code: Struct of 2 fields
  index, instrument_type_code = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_code.dissect(buffer, index, packet, parent)

  -- Instrument Type Name: Struct of 2 fields
  index, instrument_type_name = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Types
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_types.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_types, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_types.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_types.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_types.fields(buffer, offset, packet, parent)
  end
end

-- Holiday Date
nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_date = {}

-- Size: Holiday Date
nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Holiday Date
nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Holiday Date
nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Holiday Date
nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.holiday_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_date.fields(buffer, offset, packet, parent)
  end
end

-- Country Code
nsekenya_nairobibonds_marketdata_mits_v2_14.country_code = {}

-- Size: Country Code
nsekenya_nairobibonds_marketdata_mits_v2_14.country_code.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_characters.size

-- Display: Country Code
nsekenya_nairobibonds_marketdata_mits_v2_14.country_code.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Country Code
nsekenya_nairobibonds_marketdata_mits_v2_14.country_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Country Code Length Byte: P
  index, country_code_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_length_byte.dissect(buffer, index, packet, parent)

  -- Country Code Characters: P
  index, country_code_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.country_code_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Country Code
nsekenya_nairobibonds_marketdata_mits_v2_14.country_code.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.country_code, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.country_code.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.country_code.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.country_code.fields(buffer, offset, packet, parent)
  end
end

-- Holiday Data
nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_data = {}

-- Size: Holiday Data
nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_data.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.country_code.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.reminder_only.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.is_early_close.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.is_futures_close_out.size

-- Display: Holiday Data
nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Holiday Data
nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Holiday Sequence: I
  index, holiday_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_sequence.dissect(buffer, index, packet, parent)

  -- Country Code: Struct of 2 fields
  index, country_code = nsekenya_nairobibonds_marketdata_mits_v2_14.country_code.dissect(buffer, index, packet, parent)

  -- Holiday Date: Struct of 3 fields
  index, holiday_date = nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_date.dissect(buffer, index, packet, parent)

  -- Reminder Only: B
  index, reminder_only = nsekenya_nairobibonds_marketdata_mits_v2_14.reminder_only.dissect(buffer, index, packet, parent)

  -- Is Early Close: B
  index, is_early_close = nsekenya_nairobibonds_marketdata_mits_v2_14.is_early_close.dissect(buffer, index, packet, parent)

  -- Is Futures Close Out: B
  index, is_futures_close_out = nsekenya_nairobibonds_marketdata_mits_v2_14.is_futures_close_out.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Holiday Data
nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.holiday_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_data.fields(buffer, offset, packet, parent)
  end
end

-- Secondary Instrument Name P 5
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5 = {}

-- Size: Secondary Instrument Name P 5
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_characters.size

-- Display: Secondary Instrument Name P 5
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Secondary Instrument Name P 5
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Secondary Instrument Name P 5 Length Byte: P
  index, secondary_instrument_name_p_5_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_length_byte.dissect(buffer, index, packet, parent)

  -- Secondary Instrument Name P 5 Characters: P
  index, secondary_instrument_name_p_5_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Secondary Instrument Name P 5
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.secondary_instrument_name_p_5, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5.fields(buffer, offset, packet, parent)
  end
end

-- Secondary Date
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_date = {}

-- Size: Secondary Date
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Secondary Date
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Secondary Date
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Secondary Date
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.secondary_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_date.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Name P 5
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5 = {}

-- Size: Instrument Name P 5
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_characters.size

-- Display: Instrument Name P 5
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Name P 5
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Name P 5 Length Byte: P
  index, instrument_name_p_5_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_length_byte.dissect(buffer, index, packet, parent)

  -- Instrument Name P 5 Characters: P
  index, instrument_name_p_5_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Name P 5
nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instrument_name_p_5, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5.fields(buffer, offset, packet, parent)
  end
end

-- Contract
nsekenya_nairobibonds_marketdata_mits_v2_14.contract = {}

-- Size: Contract
nsekenya_nairobibonds_marketdata_mits_v2_14.contract.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_i_4.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.strike.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_c_1.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.is_delta_option.size

-- Display: Contract
nsekenya_nairobibonds_marketdata_mits_v2_14.contract.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract
nsekenya_nairobibonds_marketdata_mits_v2_14.contract.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Identifier Prefix I 4: I
  index, identifier_prefix_i_4 = nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_i_4.dissect(buffer, index, packet, parent)

  -- Date: Struct of 3 fields
  index, date = nsekenya_nairobibonds_marketdata_mits_v2_14.date.dissect(buffer, index, packet, parent)

  -- Instrument Name P 5: Struct of 2 fields
  index, instrument_name_p_5 = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5.dissect(buffer, index, packet, parent)

  -- Strike: D
  index, strike = nsekenya_nairobibonds_marketdata_mits_v2_14.strike.dissect(buffer, index, packet, parent)

  -- Call Put C 1: C
  index, call_put_c_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_c_1.dissect(buffer, index, packet, parent)

  -- Secondary Date: Struct of 3 fields
  index, secondary_date = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_date.dissect(buffer, index, packet, parent)

  -- Secondary Instrument Name P 5: Struct of 2 fields
  index, secondary_instrument_name_p_5 = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5.dissect(buffer, index, packet, parent)

  -- Is Delta Option: B
  index, is_delta_option = nsekenya_nairobibonds_marketdata_mits_v2_14.is_delta_option.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract
nsekenya_nairobibonds_marketdata_mits_v2_14.contract.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contract, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.contract.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.contract.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.contract.fields(buffer, offset, packet, parent)
  end
end

-- Mtm Data
nsekenya_nairobibonds_marketdata_mits_v2_14.mtm_data = {}

-- Size: Mtm Data
nsekenya_nairobibonds_marketdata_mits_v2_14.mtm_data.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.date_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.contract.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_rate.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.open_interest.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.spot_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.volatility.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.high_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.low_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_d_8.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.open_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.previous_close_price.size

-- Display: Mtm Data
nsekenya_nairobibonds_marketdata_mits_v2_14.mtm_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mtm Data
nsekenya_nairobibonds_marketdata_mits_v2_14.mtm_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Sequence: I
  index, instrument_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.dissect(buffer, index, packet, parent)

  -- Date Sequence: I
  index, date_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.date_sequence.dissect(buffer, index, packet, parent)

  -- Strike Sequence: I
  index, strike_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence.dissect(buffer, index, packet, parent)

  -- Contract: Struct of 8 fields
  index, contract = nsekenya_nairobibonds_marketdata_mits_v2_14.contract.dissect(buffer, index, packet, parent)

  -- Days Closing Price: D
  index, days_closing_price = nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_price.dissect(buffer, index, packet, parent)

  -- Days Closing Rate: D
  index, days_closing_rate = nsekenya_nairobibonds_marketdata_mits_v2_14.days_closing_rate.dissect(buffer, index, packet, parent)

  -- Open Interest: D
  index, open_interest = nsekenya_nairobibonds_marketdata_mits_v2_14.open_interest.dissect(buffer, index, packet, parent)

  -- Date: Struct of 3 fields
  index, date = nsekenya_nairobibonds_marketdata_mits_v2_14.date.dissect(buffer, index, packet, parent)

  -- Spot Price: D
  index, spot_price = nsekenya_nairobibonds_marketdata_mits_v2_14.spot_price.dissect(buffer, index, packet, parent)

  -- Volatility: D
  index, volatility = nsekenya_nairobibonds_marketdata_mits_v2_14.volatility.dissect(buffer, index, packet, parent)

  -- High Price: D
  index, high_price = nsekenya_nairobibonds_marketdata_mits_v2_14.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: D
  index, low_price = nsekenya_nairobibonds_marketdata_mits_v2_14.low_price.dissect(buffer, index, packet, parent)

  -- Days Volume D 8: D
  index, days_volume_d_8 = nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_d_8.dissect(buffer, index, packet, parent)

  -- Shares In Issue: D
  index, shares_in_issue = nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue.dissect(buffer, index, packet, parent)

  -- Open Price: D
  index, open_price = nsekenya_nairobibonds_marketdata_mits_v2_14.open_price.dissect(buffer, index, packet, parent)

  -- Previous Close Price: D
  index, previous_close_price = nsekenya_nairobibonds_marketdata_mits_v2_14.previous_close_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mtm Data
nsekenya_nairobibonds_marketdata_mits_v2_14.mtm_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.mtm_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.mtm_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.mtm_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.mtm_data.fields(buffer, offset, packet, parent)
  end
end

-- Sor Account
nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account = {}

-- Size: Sor Account
nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_characters.size

-- Display: Sor Account
nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sor Account
nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sor Account Length Byte: P
  index, sor_account_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_length_byte.dissect(buffer, index, packet, parent)

  -- Sor Account Characters: P
  index, sor_account_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sor Account
nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sor_account, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account.fields(buffer, offset, packet, parent)
  end
end

-- Description P 50
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50 = {}

-- Size: Description P 50
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_characters.size

-- Display: Description P 50
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Description P 50
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Description P 50 Length Byte: P
  index, description_p_50_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_length_byte.dissect(buffer, index, packet, parent)

  -- Description P 50 Characters: P
  index, description_p_50_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Description P 50
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.description_p_50, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50.fields(buffer, offset, packet, parent)
  end
end

-- Member Code P 5
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5 = {}

-- Size: Member Code P 5
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_characters.size

-- Display: Member Code P 5
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Member Code P 5
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Member Code P 5 Length Byte: P
  index, member_code_p_5_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_length_byte.dissect(buffer, index, packet, parent)

  -- Member Code P 5 Characters: P
  index, member_code_p_5_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Member Code P 5
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_code_p_5, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5.fields(buffer, offset, packet, parent)
  end
end

-- Member Data
nsekenya_nairobibonds_marketdata_mits_v2_14.member_data = {}

-- Size: Member Data
nsekenya_nairobibonds_marketdata_mits_v2_14.member_data.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.member_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.master_member_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_4.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_8.size

-- Display: Member Data
nsekenya_nairobibonds_marketdata_mits_v2_14.member_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Member Data
nsekenya_nairobibonds_marketdata_mits_v2_14.member_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Member Sequence: I
  index, member_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.member_sequence.dissect(buffer, index, packet, parent)

  -- Master Member Sequence: I
  index, master_member_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.master_member_sequence.dissect(buffer, index, packet, parent)

  -- Clearing Member Sequence: I
  index, clearing_member_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_sequence.dissect(buffer, index, packet, parent)

  -- Member Code P 5: Struct of 2 fields
  index, member_code_p_5 = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_5.dissect(buffer, index, packet, parent)

  -- Description P 50: Struct of 2 fields
  index, description_p_50 = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_50.dissect(buffer, index, packet, parent)

  -- Unused 4: B
  if show.padding then
    index, unused_4 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_4.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_4.size
  end

  -- Sor Account: Struct of 2 fields
  index, sor_account = nsekenya_nairobibonds_marketdata_mits_v2_14.sor_account.dissect(buffer, index, packet, parent)

  -- Unused 8: B
  if show.padding then
    index, unused_8 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_8.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_8.size
  end

  return index
end

-- Dissect: Member Data
nsekenya_nairobibonds_marketdata_mits_v2_14.member_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.member_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.member_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.member_data.fields(buffer, offset, packet, parent)
  end
end

-- Strike Expiry Date
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_expiry_date = {}

-- Size: Strike Expiry Date
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_expiry_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Strike Expiry Date
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_expiry_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strike Expiry Date
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_expiry_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Expiry Date
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_expiry_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.strike_expiry_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_expiry_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_expiry_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.strike_expiry_date.fields(buffer, offset, packet, parent)
  end
end

-- Strike Data
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_data = {}

-- Size: Strike Data
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_data.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence_number.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.contract_date_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.strike.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.strike_expiry_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.deltas.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.call_or_put.size

-- Display: Strike Data
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strike Data
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Strike Sequence Number: I
  index, strike_sequence_number = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence_number.dissect(buffer, index, packet, parent)

  -- Contract Date Sequence: I
  index, contract_date_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_date_sequence.dissect(buffer, index, packet, parent)

  -- Strike: D
  index, strike = nsekenya_nairobibonds_marketdata_mits_v2_14.strike.dissect(buffer, index, packet, parent)

  -- Strike Expiry Date: Struct of 3 fields
  index, strike_expiry_date = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_expiry_date.dissect(buffer, index, packet, parent)

  -- Deltas: B
  index, deltas = nsekenya_nairobibonds_marketdata_mits_v2_14.deltas.dissect(buffer, index, packet, parent)

  -- Call Or Put: C
  index, call_or_put = nsekenya_nairobibonds_marketdata_mits_v2_14.call_or_put.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Data
nsekenya_nairobibonds_marketdata_mits_v2_14.strike_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.strike_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.strike_data.fields(buffer, offset, packet, parent)
  end
end

-- Clearance Date
nsekenya_nairobibonds_marketdata_mits_v2_14.clearance_date = {}

-- Size: Clearance Date
nsekenya_nairobibonds_marketdata_mits_v2_14.clearance_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Clearance Date
nsekenya_nairobibonds_marketdata_mits_v2_14.clearance_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearance Date
nsekenya_nairobibonds_marketdata_mits_v2_14.clearance_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearance Date
nsekenya_nairobibonds_marketdata_mits_v2_14.clearance_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.clearance_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.clearance_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.clearance_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.clearance_date.fields(buffer, offset, packet, parent)
  end
end

-- Valuation Date
nsekenya_nairobibonds_marketdata_mits_v2_14.valuation_date = {}

-- Size: Valuation Date
nsekenya_nairobibonds_marketdata_mits_v2_14.valuation_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Valuation Date
nsekenya_nairobibonds_marketdata_mits_v2_14.valuation_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Valuation Date
nsekenya_nairobibonds_marketdata_mits_v2_14.valuation_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Valuation Date
nsekenya_nairobibonds_marketdata_mits_v2_14.valuation_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.valuation_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.valuation_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.valuation_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.valuation_date.fields(buffer, offset, packet, parent)
  end
end

-- Expiry Date
nsekenya_nairobibonds_marketdata_mits_v2_14.expiry_date = {}

-- Size: Expiry Date
nsekenya_nairobibonds_marketdata_mits_v2_14.expiry_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Expiry Date
nsekenya_nairobibonds_marketdata_mits_v2_14.expiry_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expiry Date
nsekenya_nairobibonds_marketdata_mits_v2_14.expiry_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expiry Date
nsekenya_nairobibonds_marketdata_mits_v2_14.expiry_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.expiry_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.expiry_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.expiry_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.expiry_date.fields(buffer, offset, packet, parent)
  end
end

-- Contract Dates
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_dates = {}

-- Size: Contract Dates
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_dates.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.contract_date_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.expiry_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.valuation_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.nominal.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval_off_screen.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.spread_margin.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.lot_size.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.option_lot_size.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.big_depth.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.price_rate.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.max_change.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.max_days_move.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.max_gap.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.options_allowed.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.deltas_allowed.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.spreads_allowed.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.initial_margin.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.quote_format_decimal_places.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.price_format_decimal_places.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.option_premium_format_decimal_places.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.price_multiplier.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.clearance_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.vsr.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.rpve.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.volatility_rounding_places.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_onscreen.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_report_only.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_onscreen.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_report_only.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.price_interval.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen_options.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen_options.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.all_or_nothing_allowed.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.at_best_orders_allowed.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.stop_orders_allowed.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.ice_berg_orders_allowed.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.hold_over_orders_allowed.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.at_close_orders_allowed.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.future_anonymous.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.option_anonymous.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_17.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.rfq_allowed.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_tick_size.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_8.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_all_or_nothing_quantity.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_iceberg_quantity.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.good_till_cancelled_allowed.size

-- Display: Contract Dates
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_dates.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Dates
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_dates.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Sequence: I
  index, instrument_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.dissect(buffer, index, packet, parent)

  -- Contract Date Sequence: I
  index, contract_date_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_date_sequence.dissect(buffer, index, packet, parent)

  -- Trading Session Sequence: I
  index, trading_session_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_sequence.dissect(buffer, index, packet, parent)

  -- Expiry Date: Struct of 3 fields
  index, expiry_date = nsekenya_nairobibonds_marketdata_mits_v2_14.expiry_date.dissect(buffer, index, packet, parent)

  -- Valuation Date: Struct of 3 fields
  index, valuation_date = nsekenya_nairobibonds_marketdata_mits_v2_14.valuation_date.dissect(buffer, index, packet, parent)

  -- Nominal: D
  index, nominal = nsekenya_nairobibonds_marketdata_mits_v2_14.nominal.dissect(buffer, index, packet, parent)

  -- Strike Interval: D
  index, strike_interval = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval.dissect(buffer, index, packet, parent)

  -- Strike Interval Off Screen: D
  index, strike_interval_off_screen = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_interval_off_screen.dissect(buffer, index, packet, parent)

  -- Spread Margin: D
  index, spread_margin = nsekenya_nairobibonds_marketdata_mits_v2_14.spread_margin.dissect(buffer, index, packet, parent)

  -- Lot Size: I
  index, lot_size = nsekenya_nairobibonds_marketdata_mits_v2_14.lot_size.dissect(buffer, index, packet, parent)

  -- Option Lot Size: I
  index, option_lot_size = nsekenya_nairobibonds_marketdata_mits_v2_14.option_lot_size.dissect(buffer, index, packet, parent)

  -- Big Depth: B
  index, big_depth = nsekenya_nairobibonds_marketdata_mits_v2_14.big_depth.dissect(buffer, index, packet, parent)

  -- Price Rate: C
  index, price_rate = nsekenya_nairobibonds_marketdata_mits_v2_14.price_rate.dissect(buffer, index, packet, parent)

  -- Max Change: D
  index, max_change = nsekenya_nairobibonds_marketdata_mits_v2_14.max_change.dissect(buffer, index, packet, parent)

  -- Max Days Move: D
  index, max_days_move = nsekenya_nairobibonds_marketdata_mits_v2_14.max_days_move.dissect(buffer, index, packet, parent)

  -- Max Gap: D
  index, max_gap = nsekenya_nairobibonds_marketdata_mits_v2_14.max_gap.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  -- Options Allowed: B
  index, options_allowed = nsekenya_nairobibonds_marketdata_mits_v2_14.options_allowed.dissect(buffer, index, packet, parent)

  -- Deltas Allowed: B
  index, deltas_allowed = nsekenya_nairobibonds_marketdata_mits_v2_14.deltas_allowed.dissect(buffer, index, packet, parent)

  -- Spreads Allowed: B
  index, spreads_allowed = nsekenya_nairobibonds_marketdata_mits_v2_14.spreads_allowed.dissect(buffer, index, packet, parent)

  -- Initial Margin: D
  index, initial_margin = nsekenya_nairobibonds_marketdata_mits_v2_14.initial_margin.dissect(buffer, index, packet, parent)

  -- Quote Format Decimal Places: I
  index, quote_format_decimal_places = nsekenya_nairobibonds_marketdata_mits_v2_14.quote_format_decimal_places.dissect(buffer, index, packet, parent)

  -- Price Format Decimal Places: I
  index, price_format_decimal_places = nsekenya_nairobibonds_marketdata_mits_v2_14.price_format_decimal_places.dissect(buffer, index, packet, parent)

  -- Option Premium Format Decimal Places: I
  index, option_premium_format_decimal_places = nsekenya_nairobibonds_marketdata_mits_v2_14.option_premium_format_decimal_places.dissect(buffer, index, packet, parent)

  -- Price Multiplier: I
  index, price_multiplier = nsekenya_nairobibonds_marketdata_mits_v2_14.price_multiplier.dissect(buffer, index, packet, parent)

  -- Clearance Date: Struct of 3 fields
  index, clearance_date = nsekenya_nairobibonds_marketdata_mits_v2_14.clearance_date.dissect(buffer, index, packet, parent)

  -- Vsr: D
  index, vsr = nsekenya_nairobibonds_marketdata_mits_v2_14.vsr.dissect(buffer, index, packet, parent)

  -- Rpve: D
  index, rpve = nsekenya_nairobibonds_marketdata_mits_v2_14.rpve.dissect(buffer, index, packet, parent)

  -- Volatility Rounding Places: I
  index, volatility_rounding_places = nsekenya_nairobibonds_marketdata_mits_v2_14.volatility_rounding_places.dissect(buffer, index, packet, parent)

  -- Can Trade Options Onscreen: B
  index, can_trade_options_onscreen = nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_onscreen.dissect(buffer, index, packet, parent)

  -- Can Trade Options Report Only: B
  index, can_trade_options_report_only = nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_options_report_only.dissect(buffer, index, packet, parent)

  -- Can Trade Onscreen: B
  index, can_trade_onscreen = nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_onscreen.dissect(buffer, index, packet, parent)

  -- Can Trade Report Only: B
  index, can_trade_report_only = nsekenya_nairobibonds_marketdata_mits_v2_14.can_trade_report_only.dissect(buffer, index, packet, parent)

  -- Price Interval: D
  index, price_interval = nsekenya_nairobibonds_marketdata_mits_v2_14.price_interval.dissect(buffer, index, packet, parent)

  -- Minimum Valid Bid Volume On Screen: I
  index, minimum_valid_bid_volume_on_screen = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen.dissect(buffer, index, packet, parent)

  -- Minimum Valid Bid Volume Off Screen: I
  index, minimum_valid_bid_volume_off_screen = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen.dissect(buffer, index, packet, parent)

  -- Minimum Valid Bid Volume On Screen Options: I
  index, minimum_valid_bid_volume_on_screen_options = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_on_screen_options.dissect(buffer, index, packet, parent)

  -- Minimum Valid Bid Volume Off Screen Options: I
  index, minimum_valid_bid_volume_off_screen_options = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_valid_bid_volume_off_screen_options.dissect(buffer, index, packet, parent)

  -- All Or Nothing Allowed: B
  index, all_or_nothing_allowed = nsekenya_nairobibonds_marketdata_mits_v2_14.all_or_nothing_allowed.dissect(buffer, index, packet, parent)

  -- At Best Orders Allowed: B
  index, at_best_orders_allowed = nsekenya_nairobibonds_marketdata_mits_v2_14.at_best_orders_allowed.dissect(buffer, index, packet, parent)

  -- Stop Orders Allowed: B
  index, stop_orders_allowed = nsekenya_nairobibonds_marketdata_mits_v2_14.stop_orders_allowed.dissect(buffer, index, packet, parent)

  -- Ice Berg Orders Allowed: B
  index, ice_berg_orders_allowed = nsekenya_nairobibonds_marketdata_mits_v2_14.ice_berg_orders_allowed.dissect(buffer, index, packet, parent)

  -- Hold Over Orders Allowed: B
  index, hold_over_orders_allowed = nsekenya_nairobibonds_marketdata_mits_v2_14.hold_over_orders_allowed.dissect(buffer, index, packet, parent)

  -- At Close Orders Allowed: B
  index, at_close_orders_allowed = nsekenya_nairobibonds_marketdata_mits_v2_14.at_close_orders_allowed.dissect(buffer, index, packet, parent)

  -- Future Anonymous: B
  index, future_anonymous = nsekenya_nairobibonds_marketdata_mits_v2_14.future_anonymous.dissect(buffer, index, packet, parent)

  -- Option Anonymous: B
  index, option_anonymous = nsekenya_nairobibonds_marketdata_mits_v2_14.option_anonymous.dissect(buffer, index, packet, parent)

  -- Unused 17: B
  if show.padding then
    index, unused_17 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_17.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_17.size
  end

  -- Rfq Allowed: B
  index, rfq_allowed = nsekenya_nairobibonds_marketdata_mits_v2_14.rfq_allowed.dissect(buffer, index, packet, parent)

  -- Quantity Tick Size: I
  index, quantity_tick_size = nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_tick_size.dissect(buffer, index, packet, parent)

  -- Unused 8: B
  if show.padding then
    index, unused_8 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_8.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_8.size
  end

  -- Minimum All Or Nothing Quantity: I
  index, minimum_all_or_nothing_quantity = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_all_or_nothing_quantity.dissect(buffer, index, packet, parent)

  -- Minimum Iceberg Quantity: I
  index, minimum_iceberg_quantity = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_iceberg_quantity.dissect(buffer, index, packet, parent)

  -- Good Till Cancelled Allowed: B
  index, good_till_cancelled_allowed = nsekenya_nairobibonds_marketdata_mits_v2_14.good_till_cancelled_allowed.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Dates
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_dates.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contract_dates, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_dates.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_dates.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.contract_dates.fields(buffer, offset, packet, parent)
  end
end

-- Security Type
nsekenya_nairobibonds_marketdata_mits_v2_14.security_type = {}

-- Size: Security Type
nsekenya_nairobibonds_marketdata_mits_v2_14.security_type.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_characters.size

-- Display: Security Type
nsekenya_nairobibonds_marketdata_mits_v2_14.security_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Type
nsekenya_nairobibonds_marketdata_mits_v2_14.security_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Type Length Byte: P
  index, security_type_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_length_byte.dissect(buffer, index, packet, parent)

  -- Security Type Characters: P
  index, security_type_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.security_type_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Type
nsekenya_nairobibonds_marketdata_mits_v2_14.security_type.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.security_type, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.security_type.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.security_type.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.security_type.fields(buffer, offset, packet, parent)
  end
end

-- Sector
nsekenya_nairobibonds_marketdata_mits_v2_14.sector = {}

-- Size: Sector
nsekenya_nairobibonds_marketdata_mits_v2_14.sector.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.sector_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.sector_characters.size

-- Display: Sector
nsekenya_nairobibonds_marketdata_mits_v2_14.sector.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sector
nsekenya_nairobibonds_marketdata_mits_v2_14.sector.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sector Length Byte: P
  index, sector_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.sector_length_byte.dissect(buffer, index, packet, parent)

  -- Sector Characters: P
  index, sector_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.sector_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sector
nsekenya_nairobibonds_marketdata_mits_v2_14.sector.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sector, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.sector.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sector.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.sector.fields(buffer, offset, packet, parent)
  end
end

-- Vetting Agent Contact
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact = {}

-- Size: Vetting Agent Contact
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_characters.size

-- Display: Vetting Agent Contact
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Vetting Agent Contact
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Vetting Agent Contact Length Byte: P
  index, vetting_agent_contact_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_length_byte.dissect(buffer, index, packet, parent)

  -- Vetting Agent Contact Characters: P
  index, vetting_agent_contact_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Vetting Agent Contact
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vetting_agent_contact, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact.fields(buffer, offset, packet, parent)
  end
end

-- Vetting Agent Name
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name = {}

-- Size: Vetting Agent Name
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_characters.size

-- Display: Vetting Agent Name
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Vetting Agent Name
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Vetting Agent Name Length Byte: P
  index, vetting_agent_name_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_length_byte.dissect(buffer, index, packet, parent)

  -- Vetting Agent Name Characters: P
  index, vetting_agent_name_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Vetting Agent Name
nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.vetting_agent_name, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name.fields(buffer, offset, packet, parent)
  end
end

-- Display Name
nsekenya_nairobibonds_marketdata_mits_v2_14.display_name = {}

-- Size: Display Name
nsekenya_nairobibonds_marketdata_mits_v2_14.display_name.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_characters.size

-- Display: Display Name
nsekenya_nairobibonds_marketdata_mits_v2_14.display_name.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Display Name
nsekenya_nairobibonds_marketdata_mits_v2_14.display_name.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Display Name Length Byte: P
  index, display_name_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_length_byte.dissect(buffer, index, packet, parent)

  -- Display Name Characters: P
  index, display_name_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.display_name_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Display Name
nsekenya_nairobibonds_marketdata_mits_v2_14.display_name.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_name, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.display_name.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.display_name.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.display_name.fields(buffer, offset, packet, parent)
  end
end

-- First Trade Reference
nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference = {}

-- Size: First Trade Reference
nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_characters.size

-- Display: First Trade Reference
nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: First Trade Reference
nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- First Trade Reference Length Byte: P
  index, first_trade_reference_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_length_byte.dissect(buffer, index, packet, parent)

  -- First Trade Reference Characters: P
  index, first_trade_reference_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: First Trade Reference
nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.first_trade_reference, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference.fields(buffer, offset, packet, parent)
  end
end

-- Group Description
nsekenya_nairobibonds_marketdata_mits_v2_14.group_description = {}

-- Size: Group Description
nsekenya_nairobibonds_marketdata_mits_v2_14.group_description.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_characters.size

-- Display: Group Description
nsekenya_nairobibonds_marketdata_mits_v2_14.group_description.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Description
nsekenya_nairobibonds_marketdata_mits_v2_14.group_description.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Description Length Byte: P
  index, group_description_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_length_byte.dissect(buffer, index, packet, parent)

  -- Group Description Characters: P
  index, group_description_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.group_description_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Description
nsekenya_nairobibonds_marketdata_mits_v2_14.group_description.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.group_description, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.group_description.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.group_description.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.group_description.fields(buffer, offset, packet, parent)
  end
end

-- Issue Date
nsekenya_nairobibonds_marketdata_mits_v2_14.issue_date = {}

-- Size: Issue Date
nsekenya_nairobibonds_marketdata_mits_v2_14.issue_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Issue Date
nsekenya_nairobibonds_marketdata_mits_v2_14.issue_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Date
nsekenya_nairobibonds_marketdata_mits_v2_14.issue_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Date
nsekenya_nairobibonds_marketdata_mits_v2_14.issue_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.issue_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.issue_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.issue_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.issue_date.fields(buffer, offset, packet, parent)
  end
end

-- Maturity Date
nsekenya_nairobibonds_marketdata_mits_v2_14.maturity_date = {}

-- Size: Maturity Date
nsekenya_nairobibonds_marketdata_mits_v2_14.maturity_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Maturity Date
nsekenya_nairobibonds_marketdata_mits_v2_14.maturity_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maturity Date
nsekenya_nairobibonds_marketdata_mits_v2_14.maturity_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Date
nsekenya_nairobibonds_marketdata_mits_v2_14.maturity_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.maturity_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.maturity_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.maturity_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.maturity_date.fields(buffer, offset, packet, parent)
  end
end

-- Description P 62
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62 = {}

-- Size: Description P 62
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_characters.size

-- Display: Description P 62
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Description P 62
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Description P 62 Length Byte: P
  index, description_p_62_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_length_byte.dissect(buffer, index, packet, parent)

  -- Description P 62 Characters: P
  index, description_p_62_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Description P 62
nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.description_p_62, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62.fields(buffer, offset, packet, parent)
  end
end

-- Isin Code
nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code = {}

-- Size: Isin Code
nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_characters.size

-- Display: Isin Code
nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Isin Code
nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Isin Code Length Byte: P
  index, isin_code_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_length_byte.dissect(buffer, index, packet, parent)

  -- Isin Code Characters: P
  index, isin_code_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Isin Code
nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.isin_code, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code.fields(buffer, offset, packet, parent)
  end
end

-- Instruments Data
nsekenya_nairobibonds_marketdata_mits_v2_14.instruments_data = {}

-- Size: Instruments Data
nsekenya_nairobibonds_marketdata_mits_v2_14.instruments_data.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_4.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_group_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.future_fee_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.option_fee_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.delivery_fee_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_c_1.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_c_1.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_c_1.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.on_screen.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.maturity_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_4.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.nominal_divisor.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.issue_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.linked_to_floating_rate.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.underlying.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_is_percentage.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_cost.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.group_margin.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.vat.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_margin.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.physical_settlement.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.group_description.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.third_unused_4.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.reference_inflation_rate.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_initiation_fee.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_5.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.country_code.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.display_name.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_days_in_a_year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.bond_formula_decimal_places.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_rate.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.classification.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_days.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.validated_at_csd.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.proprietary_trading_allowed.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.share_holding_percentage_limit.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.sector.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.security_type.size

-- Display: Instruments Data
nsekenya_nairobibonds_marketdata_mits_v2_14.instruments_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instruments Data
nsekenya_nairobibonds_marketdata_mits_v2_14.instruments_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Sequence: I
  index, instrument_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.dissect(buffer, index, packet, parent)

  -- Trading Session Sequence: I
  index, trading_session_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_session_sequence.dissect(buffer, index, packet, parent)

  -- Unused 4: B
  if show.padding then
    index, unused_4 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_4.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_4.size
  end

  -- Instrument Group Sequence: I
  index, instrument_group_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_group_sequence.dissect(buffer, index, packet, parent)

  -- Future Fee Sequence: I
  index, future_fee_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.future_fee_sequence.dissect(buffer, index, packet, parent)

  -- Option Fee Sequence: I
  index, option_fee_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.option_fee_sequence.dissect(buffer, index, packet, parent)

  -- Delivery Fee Sequence: I
  index, delivery_fee_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.delivery_fee_sequence.dissect(buffer, index, packet, parent)

  -- Market Number C 1: C
  index, market_number_c_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.market_number_c_1.dissect(buffer, index, packet, parent)

  -- Market Shard Number C 1: C
  index, market_shard_number_c_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_c_1.dissect(buffer, index, packet, parent)

  -- Instrument Name P 5: Struct of 2 fields
  index, instrument_name_p_5 = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5.dissect(buffer, index, packet, parent)

  -- Instrument Type Number C 1: C
  index, instrument_type_number_c_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_type_number_c_1.dissect(buffer, index, packet, parent)

  -- Isin Code: Struct of 2 fields
  index, isin_code = nsekenya_nairobibonds_marketdata_mits_v2_14.isin_code.dissect(buffer, index, packet, parent)

  -- Description P 62: Struct of 2 fields
  index, description_p_62 = nsekenya_nairobibonds_marketdata_mits_v2_14.description_p_62.dissect(buffer, index, packet, parent)

  -- On Screen: B
  index, on_screen = nsekenya_nairobibonds_marketdata_mits_v2_14.on_screen.dissect(buffer, index, packet, parent)

  -- Maturity Date: Struct of 3 fields
  index, maturity_date = nsekenya_nairobibonds_marketdata_mits_v2_14.maturity_date.dissect(buffer, index, packet, parent)

  -- Second Unused 4: B
  if show.padding then
    index, second_unused_4 = nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_4.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.second_unused_4.size
  end

  -- Nominal Divisor: I
  index, nominal_divisor = nsekenya_nairobibonds_marketdata_mits_v2_14.nominal_divisor.dissect(buffer, index, packet, parent)

  -- Issue Date: Struct of 3 fields
  index, issue_date = nsekenya_nairobibonds_marketdata_mits_v2_14.issue_date.dissect(buffer, index, packet, parent)

  -- Linked To Floating Rate: C
  index, linked_to_floating_rate = nsekenya_nairobibonds_marketdata_mits_v2_14.linked_to_floating_rate.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  -- Underlying: I
  index, underlying = nsekenya_nairobibonds_marketdata_mits_v2_14.underlying.dissect(buffer, index, packet, parent)

  -- Options Exercise Is Percentage: B
  index, options_exercise_is_percentage = nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_is_percentage.dissect(buffer, index, packet, parent)

  -- Options Exercise Cost: D
  index, options_exercise_cost = nsekenya_nairobibonds_marketdata_mits_v2_14.options_exercise_cost.dissect(buffer, index, packet, parent)

  -- Group Margin: D
  index, group_margin = nsekenya_nairobibonds_marketdata_mits_v2_14.group_margin.dissect(buffer, index, packet, parent)

  -- Vat: B
  index, vat = nsekenya_nairobibonds_marketdata_mits_v2_14.vat.dissect(buffer, index, packet, parent)

  -- Settlement Margin: D
  index, settlement_margin = nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_margin.dissect(buffer, index, packet, parent)

  -- Physical Settlement: B
  index, physical_settlement = nsekenya_nairobibonds_marketdata_mits_v2_14.physical_settlement.dissect(buffer, index, packet, parent)

  -- Group Description: Struct of 2 fields
  index, group_description = nsekenya_nairobibonds_marketdata_mits_v2_14.group_description.dissect(buffer, index, packet, parent)

  -- Third Unused 4: B
  if show.padding then
    index, third_unused_4 = nsekenya_nairobibonds_marketdata_mits_v2_14.third_unused_4.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.third_unused_4.size
  end

  -- Reference Inflation Rate: D
  index, reference_inflation_rate = nsekenya_nairobibonds_marketdata_mits_v2_14.reference_inflation_rate.dissect(buffer, index, packet, parent)

  -- Minimum Initiation Fee: D
  index, minimum_initiation_fee = nsekenya_nairobibonds_marketdata_mits_v2_14.minimum_initiation_fee.dissect(buffer, index, packet, parent)

  -- First Trade Reference: Struct of 2 fields
  index, first_trade_reference = nsekenya_nairobibonds_marketdata_mits_v2_14.first_trade_reference.dissect(buffer, index, packet, parent)

  -- Unused 5: B
  if show.padding then
    index, unused_5 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_5.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_5.size
  end

  -- Country Code: Struct of 2 fields
  index, country_code = nsekenya_nairobibonds_marketdata_mits_v2_14.country_code.dissect(buffer, index, packet, parent)

  -- Display Name: Struct of 2 fields
  index, display_name = nsekenya_nairobibonds_marketdata_mits_v2_14.display_name.dissect(buffer, index, packet, parent)

  -- Number Of Days In A Year: I
  index, number_of_days_in_a_year = nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_days_in_a_year.dissect(buffer, index, packet, parent)

  -- Bond Formula Decimal Places: I
  index, bond_formula_decimal_places = nsekenya_nairobibonds_marketdata_mits_v2_14.bond_formula_decimal_places.dissect(buffer, index, packet, parent)

  -- Coupon Rate: D
  index, coupon_rate = nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_rate.dissect(buffer, index, packet, parent)

  -- Classification: Struct of 2 fields
  index, classification = nsekenya_nairobibonds_marketdata_mits_v2_14.classification.dissect(buffer, index, packet, parent)

  -- Settlement Days: I
  index, settlement_days = nsekenya_nairobibonds_marketdata_mits_v2_14.settlement_days.dissect(buffer, index, packet, parent)

  -- Validated At Csd: B
  index, validated_at_csd = nsekenya_nairobibonds_marketdata_mits_v2_14.validated_at_csd.dissect(buffer, index, packet, parent)

  -- Proprietary Trading Allowed: B
  index, proprietary_trading_allowed = nsekenya_nairobibonds_marketdata_mits_v2_14.proprietary_trading_allowed.dissect(buffer, index, packet, parent)

  -- Vetting Agent Name: Struct of 2 fields
  index, vetting_agent_name = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_name.dissect(buffer, index, packet, parent)

  -- Vetting Agent Contact: Struct of 2 fields
  index, vetting_agent_contact = nsekenya_nairobibonds_marketdata_mits_v2_14.vetting_agent_contact.dissect(buffer, index, packet, parent)

  -- Share Holding Percentage Limit: D
  index, share_holding_percentage_limit = nsekenya_nairobibonds_marketdata_mits_v2_14.share_holding_percentage_limit.dissect(buffer, index, packet, parent)

  -- Sector: Struct of 2 fields
  index, sector = nsekenya_nairobibonds_marketdata_mits_v2_14.sector.dissect(buffer, index, packet, parent)

  -- Security Type: Struct of 2 fields
  index, security_type = nsekenya_nairobibonds_marketdata_mits_v2_14.security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instruments Data
nsekenya_nairobibonds_marketdata_mits_v2_14.instruments_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.instruments_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.instruments_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.instruments_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.instruments_data.fields(buffer, offset, packet, parent)
  end
end

-- Market Display Data
nsekenya_nairobibonds_marketdata_mits_v2_14.market_display_data = {}

-- Size: Market Display Data
nsekenya_nairobibonds_marketdata_mits_v2_14.market_display_data.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.display_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.contract.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.open_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.date_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.second_instrument_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.second_date_sequence.size

-- Display: Market Display Data
nsekenya_nairobibonds_marketdata_mits_v2_14.market_display_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Display Data
nsekenya_nairobibonds_marketdata_mits_v2_14.market_display_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Display Sequence: I
  index, display_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.display_sequence.dissect(buffer, index, packet, parent)

  -- Contract: Struct of 8 fields
  index, contract = nsekenya_nairobibonds_marketdata_mits_v2_14.contract.dissect(buffer, index, packet, parent)

  -- Open Price: D
  index, open_price = nsekenya_nairobibonds_marketdata_mits_v2_14.open_price.dissect(buffer, index, packet, parent)

  -- Instrument Sequence: I
  index, instrument_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_sequence.dissect(buffer, index, packet, parent)

  -- Date Sequence: I
  index, date_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.date_sequence.dissect(buffer, index, packet, parent)

  -- Strike Sequence: I
  index, strike_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence.dissect(buffer, index, packet, parent)

  -- Second Instrument Sequence: I
  index, second_instrument_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.second_instrument_sequence.dissect(buffer, index, packet, parent)

  -- Second Date Sequence: I
  index, second_date_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.second_date_sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Display Data
nsekenya_nairobibonds_marketdata_mits_v2_14.market_display_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.market_display_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.market_display_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.market_display_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.market_display_data.fields(buffer, offset, packet, parent)
  end
end

-- Record
nsekenya_nairobibonds_marketdata_mits_v2_14.record = {}

-- Dispatch: Record
nsekenya_nairobibonds_marketdata_mits_v2_14.record.dispatch = {
  [1] = nsekenya_nairobibonds_marketdata_mits_v2_14.market_display_data.dissect,
  [2] = nsekenya_nairobibonds_marketdata_mits_v2_14.instruments_data.dissect,
  [3] = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_dates.dissect,
  [4] = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_data.dissect,
  [15] = nsekenya_nairobibonds_marketdata_mits_v2_14.member_data.dissect,
  [16] = nsekenya_nairobibonds_marketdata_mits_v2_14.mtm_data.dissect,
  [18] = nsekenya_nairobibonds_marketdata_mits_v2_14.holiday_data.dissect,
  [39] = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_types.dissect,
  [65] = nsekenya_nairobibonds_marketdata_mits_v2_14.clearing_member_data.dissect,
  [89] = nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements.dissect,
  [129] = nsekenya_nairobibonds_marketdata_mits_v2_14.news_service.dissect,
  [131] = nsekenya_nairobibonds_marketdata_mits_v2_14.coupon_information.dissect,
  [136] = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_sessions.dissect,
  [137] = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_price_data.dissect,
  [138] = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_data.dissect,
  [141] = nsekenya_nairobibonds_marketdata_mits_v2_14.shares_in_issue_data.dissect,
  [146] = nsekenya_nairobibonds_marketdata_mits_v2_14.index_data.dissect,
  [147] = nsekenya_nairobibonds_marketdata_mits_v2_14.index_constituents_data.dissect,
}

-- Dissect: Record
nsekenya_nairobibonds_marketdata_mits_v2_14.record.dissect = function(buffer, offset, packet, parent, data_type)
  local dissect = nsekenya_nairobibonds_marketdata_mits_v2_14.record.dispatch[data_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Download Date
nsekenya_nairobibonds_marketdata_mits_v2_14.download_date = {}

-- Size: Download Date
nsekenya_nairobibonds_marketdata_mits_v2_14.download_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Download Date
nsekenya_nairobibonds_marketdata_mits_v2_14.download_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Download Date
nsekenya_nairobibonds_marketdata_mits_v2_14.download_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Download Date
nsekenya_nairobibonds_marketdata_mits_v2_14.download_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.download_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.download_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.download_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.download_date.fields(buffer, offset, packet, parent)
  end
end

-- Data Update Message
nsekenya_nairobibonds_marketdata_mits_v2_14.data_update_message = {}

-- Size: Data Update Message
nsekenya_nairobibonds_marketdata_mits_v2_14.data_update_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Data Update Message
nsekenya_nairobibonds_marketdata_mits_v2_14.data_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Data Update Message
nsekenya_nairobibonds_marketdata_mits_v2_14.data_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Data Type: B
  index, data_type = nsekenya_nairobibonds_marketdata_mits_v2_14.data_type.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  -- Last Piece Of Chunk: B
  index, last_piece_of_chunk = nsekenya_nairobibonds_marketdata_mits_v2_14.last_piece_of_chunk.dissect(buffer, index, packet, parent)

  -- Another Set To Come: B
  index, another_set_to_come = nsekenya_nairobibonds_marketdata_mits_v2_14.another_set_to_come.dissect(buffer, index, packet, parent)

  -- Action: I
  index, action = nsekenya_nairobibonds_marketdata_mits_v2_14.action.dissect(buffer, index, packet, parent)

  -- Specific Record: I
  index, specific_record = nsekenya_nairobibonds_marketdata_mits_v2_14.specific_record.dissect(buffer, index, packet, parent)

  -- Download Date: Struct of 3 fields
  index, download_date = nsekenya_nairobibonds_marketdata_mits_v2_14.download_date.dissect(buffer, index, packet, parent)

  -- Dependency for Record
  local end_of_payload = index + buffer:len() - index

  -- Record: Runtime Type with 18 branches
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Record: Runtime Type with 18 branches
    index = nsekenya_nairobibonds_marketdata_mits_v2_14.record.dissect(buffer, index, packet, parent, data_type)
  end

  return index
end

-- Dissect: Data Update Message
nsekenya_nairobibonds_marketdata_mits_v2_14.data_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.data_update_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.data_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.data_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.data_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Sell Who Unique Member
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_unique_member = {}

-- Size: Sell Who Unique Member
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_unique_member.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unique_member_number.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Sell Who Unique Member
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_unique_member.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sell Who Unique Member
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_unique_member.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sell Who Length Byte: P
  index, sell_who_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_length_byte.dissect(buffer, index, packet, parent)

  -- Unique Member Number: I
  index, unique_member_number = nsekenya_nairobibonds_marketdata_mits_v2_14.unique_member_number.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Sell Who Unique Member
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_unique_member.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_who_unique_member, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_unique_member.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_unique_member.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_unique_member.fields(buffer, offset, packet, parent)
  end
end

-- Sell Who Member
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_member = {}

-- Size: Sell Who Member
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_member.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_characters.size

-- Display: Sell Who Member
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_member.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sell Who Member
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_member.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sell Who Length Byte: P
  index, sell_who_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_length_byte.dissect(buffer, index, packet, parent)

  -- Sell Who Characters: P
  index, sell_who_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sell Who Member
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_member.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.sell_who_member, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_member.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_member.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_member.fields(buffer, offset, packet, parent)
  end
end

-- Sell Who
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who = {}

-- Dissect: Sell Who
nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who.dissect = function(buffer, offset, packet, parent, trading_anonymous)
  -- Dissect Sell Who Member
  if trading_anonymous == 0 then
    return nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_member.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sell Who Unique Member
  if trading_anonymous ~= 0 then
    return nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who_unique_member.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Buy Who Unique Member
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_unique_member = {}

-- Size: Buy Who Unique Member
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_unique_member.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unique_member_number.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Buy Who Unique Member
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_unique_member.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Buy Who Unique Member
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_unique_member.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Buy Who Length Byte: P
  index, buy_who_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_length_byte.dissect(buffer, index, packet, parent)

  -- Unique Member Number: I
  index, unique_member_number = nsekenya_nairobibonds_marketdata_mits_v2_14.unique_member_number.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Buy Who Unique Member
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_unique_member.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_who_unique_member, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_unique_member.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_unique_member.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_unique_member.fields(buffer, offset, packet, parent)
  end
end

-- Buy Who Member
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_member = {}

-- Size: Buy Who Member
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_member.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_characters.size

-- Display: Buy Who Member
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_member.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Buy Who Member
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_member.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Buy Who Length Byte: P
  index, buy_who_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_length_byte.dissect(buffer, index, packet, parent)

  -- Buy Who Characters: P
  index, buy_who_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Buy Who Member
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_member.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.buy_who_member, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_member.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_member.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_member.fields(buffer, offset, packet, parent)
  end
end

-- Buy Who
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who = {}

-- Dissect: Buy Who
nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who.dissect = function(buffer, offset, packet, parent, trading_anonymous)
  -- Dissect Buy Who Member
  if trading_anonymous == 0 then
    return nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_member.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Buy Who Unique Member
  if trading_anonymous ~= 0 then
    return nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who_unique_member.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Depth Data
nsekenya_nairobibonds_marketdata_mits_v2_14.depth_data = {}

-- Size of Depth Data: not written, it needs Trading Anonymous passed down from Display Record

-- Display: Depth Data
nsekenya_nairobibonds_marketdata_mits_v2_14.depth_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Data
nsekenya_nairobibonds_marketdata_mits_v2_14.depth_data.fields = function(buffer, offset, packet, parent, depth_data_index, trading_anonymous)
  local index = offset

  -- Implicit Depth Data Index
  if depth_data_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.depth_data_index, depth_data_index)
    iteration:set_generated()
  end

  -- Buy Side Phantom: B
  index, buy_side_phantom = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_side_phantom.dissect(buffer, index, packet, parent)

  -- Buy Who: Runtime Type with 2 branches
  index = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_who.dissect(buffer, index, packet, parent, trading_anonymous)

  -- Buy Price: D
  index, buy_price = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_price.dissect(buffer, index, packet, parent)

  -- Buy Quantity: I
  index, buy_quantity = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_quantity.dissect(buffer, index, packet, parent)

  -- Sell Quantity: I
  index, sell_quantity = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_quantity.dissect(buffer, index, packet, parent)

  -- Sell Price: D
  index, sell_price = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_price.dissect(buffer, index, packet, parent)

  -- Sell Who: Runtime Type with 2 branches
  index = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_who.dissect(buffer, index, packet, parent, trading_anonymous)

  -- Sell Side Phantom: B
  index, sell_side_phantom = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_side_phantom.dissect(buffer, index, packet, parent)

  -- Buy Order Id: I
  index, buy_order_id = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_id.dissect(buffer, index, packet, parent)

  -- Buy Order Type: I
  index, buy_order_type = nsekenya_nairobibonds_marketdata_mits_v2_14.buy_order_type.dissect(buffer, index, packet, parent)

  -- Sell Order Id: I
  index, sell_order_id = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Type: I
  index, sell_order_type = nsekenya_nairobibonds_marketdata_mits_v2_14.sell_order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Depth Data
nsekenya_nairobibonds_marketdata_mits_v2_14.depth_data.dissect = function(buffer, offset, packet, parent, depth_data_index, trading_anonymous)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.depth_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.depth_data.fields(buffer, offset, packet, parent, depth_data_index, trading_anonymous)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.depth_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.depth_data.fields(buffer, offset, packet, parent, depth_data_index, trading_anonymous)
  end
end

-- Last Dealt Time
nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_time = {}

-- Size: Last Dealt Time
nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_time.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.hours.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

-- Display: Last Dealt Time
nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Dealt Time
nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hours: B
  index, hours = nsekenya_nairobibonds_marketdata_mits_v2_14.hours.dissect(buffer, index, packet, parent)

  -- Minutes: B
  index, minutes = nsekenya_nairobibonds_marketdata_mits_v2_14.minutes.dissect(buffer, index, packet, parent)

  -- Seconds: B
  index, seconds = nsekenya_nairobibonds_marketdata_mits_v2_14.seconds.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  return index
end

-- Dissect: Last Dealt Time
nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.last_dealt_time, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_time.fields(buffer, offset, packet, parent)
  end
end

-- Display
nsekenya_nairobibonds_marketdata_mits_v2_14.display = {}

-- Size: Display
nsekenya_nairobibonds_marketdata_mits_v2_14.display.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.trading_anonymous.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.contract.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.mid_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.deal_volume.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.high_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.low_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_i_8.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_qty.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_buy_sell.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_depth.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.open_interest.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.change.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.auction.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.contract_status.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.odd_lot.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.last_traded_quantity.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.date_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_contract_date_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_global_sequence_number.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.stack_sequence_number.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_21.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.update_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.vwap.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.closing_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.reserved_1.size

-- Display: Display
nsekenya_nairobibonds_marketdata_mits_v2_14.display.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Display
nsekenya_nairobibonds_marketdata_mits_v2_14.display.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Anonymous: B
  index, trading_anonymous = nsekenya_nairobibonds_marketdata_mits_v2_14.trading_anonymous.dissect(buffer, index, packet, parent)

  -- Contract: Struct of 8 fields
  index, contract = nsekenya_nairobibonds_marketdata_mits_v2_14.contract.dissect(buffer, index, packet, parent)

  -- Mid Price: D
  index, mid_price = nsekenya_nairobibonds_marketdata_mits_v2_14.mid_price.dissect(buffer, index, packet, parent)

  -- Last Dealt Price: D
  index, last_dealt_price = nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_price.dissect(buffer, index, packet, parent)

  -- Last Dealt Time: Struct of 4 fields
  index, last_dealt_time = nsekenya_nairobibonds_marketdata_mits_v2_14.last_dealt_time.dissect(buffer, index, packet, parent)

  -- Deal Volume: I
  index, deal_volume = nsekenya_nairobibonds_marketdata_mits_v2_14.deal_volume.dissect(buffer, index, packet, parent)

  -- High Price: D
  index, high_price = nsekenya_nairobibonds_marketdata_mits_v2_14.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: D
  index, low_price = nsekenya_nairobibonds_marketdata_mits_v2_14.low_price.dissect(buffer, index, packet, parent)

  -- Days Volume I 8: I
  index, days_volume_i_8 = nsekenya_nairobibonds_marketdata_mits_v2_14.days_volume_i_8.dissect(buffer, index, packet, parent)

  -- Last Order Qty: I
  index, last_order_qty = nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_qty.dissect(buffer, index, packet, parent)

  -- Last Order Buy Sell: C
  index, last_order_buy_sell = nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_buy_sell.dissect(buffer, index, packet, parent)

  -- Last Order Price: D
  index, last_order_price = nsekenya_nairobibonds_marketdata_mits_v2_14.last_order_price.dissect(buffer, index, packet, parent)

  -- Number Of Depth: B
  index, number_of_depth = nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_depth.dissect(buffer, index, packet, parent)

  -- Open Interest: D
  index, open_interest = nsekenya_nairobibonds_marketdata_mits_v2_14.open_interest.dissect(buffer, index, packet, parent)

  -- Change: D
  index, change = nsekenya_nairobibonds_marketdata_mits_v2_14.change.dissect(buffer, index, packet, parent)

  -- Auction: B
  index, auction = nsekenya_nairobibonds_marketdata_mits_v2_14.auction.dissect(buffer, index, packet, parent)

  -- Contract Status: B
  index, contract_status = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_status.dissect(buffer, index, packet, parent)

  -- Odd Lot: B
  index, odd_lot = nsekenya_nairobibonds_marketdata_mits_v2_14.odd_lot.dissect(buffer, index, packet, parent)

  -- Last Traded Quantity: I
  index, last_traded_quantity = nsekenya_nairobibonds_marketdata_mits_v2_14.last_traded_quantity.dissect(buffer, index, packet, parent)

  -- Date Sequence: I
  index, date_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.date_sequence.dissect(buffer, index, packet, parent)

  -- Secondary Contract Date Sequence: I
  index, secondary_contract_date_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_contract_date_sequence.dissect(buffer, index, packet, parent)

  -- Strike Sequence: I
  index, strike_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.strike_sequence.dissect(buffer, index, packet, parent)

  -- Market Shard Global Sequence Number: I
  index, market_shard_global_sequence_number = nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_global_sequence_number.dissect(buffer, index, packet, parent)

  -- Stack Sequence Number: I
  index, stack_sequence_number = nsekenya_nairobibonds_marketdata_mits_v2_14.stack_sequence_number.dissect(buffer, index, packet, parent)

  -- Unused 21: B
  if show.padding then
    index, unused_21 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_21.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_21.size
  end

  -- Update Time: Struct of 4 fields
  index, update_time = nsekenya_nairobibonds_marketdata_mits_v2_14.update_time.dissect(buffer, index, packet, parent)

  -- Vwap: D
  index, vwap = nsekenya_nairobibonds_marketdata_mits_v2_14.vwap.dissect(buffer, index, packet, parent)

  -- Closing Price: D
  index, closing_price = nsekenya_nairobibonds_marketdata_mits_v2_14.closing_price.dissect(buffer, index, packet, parent)

  -- Reserved 1: B
  if show.padding then
    index, reserved_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.reserved_1.size
  end

  return index
end

-- Dissect: Display
nsekenya_nairobibonds_marketdata_mits_v2_14.display.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.display.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.display.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.display.fields(buffer, offset, packet, parent)
  end
end

-- Display Record
nsekenya_nairobibonds_marketdata_mits_v2_14.display_record = {}

-- Calculate size of: Display Record
nsekenya_nairobibonds_marketdata_mits_v2_14.display_record.size = function(buffer, offset)
  local index = 0

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.display.size

  -- Calculate field size from count
  local depth_data_count = buffer(offset + index - 90, 1):uint()
  for i = 1, depth_data_count do
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.depth_data.size(buffer, offset + index)
  end
  return index
end

-- Display: Display Record
nsekenya_nairobibonds_marketdata_mits_v2_14.display_record.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Display Record
nsekenya_nairobibonds_marketdata_mits_v2_14.display_record.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Display: Struct of 29 fields
  index, display = nsekenya_nairobibonds_marketdata_mits_v2_14.display.dissect(buffer, index, packet, parent)

  -- Dependency element: Trading Anonymous
  local trading_anonymous = buffer(offset, 1):uint()

  -- Dependency element: Number Of Depth
  local number_of_depth = buffer(index - 90, 1):uint()

  -- Repeating: Depth Data
  for depth_data_index = 1, number_of_depth do
    index, depth_data = nsekenya_nairobibonds_marketdata_mits_v2_14.depth_data.dissect(buffer, index, packet, parent, depth_data_index, trading_anonymous)
  end

  return index
end

-- Dissect: Display Record
nsekenya_nairobibonds_marketdata_mits_v2_14.display_record.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_record, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.display_record.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.display_record.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.display_record.fields(buffer, offset, packet, parent)
  end
end

-- Display Records
nsekenya_nairobibonds_marketdata_mits_v2_14.display_records = {}

-- Size: Display Records
nsekenya_nairobibonds_marketdata_mits_v2_14.display_records.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Display Records
nsekenya_nairobibonds_marketdata_mits_v2_14.display_records.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Display Records
nsekenya_nairobibonds_marketdata_mits_v2_14.display_records.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency for Display Record
  local end_of_payload = index + buffer:len() - index

  -- Display Record: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, display_record = nsekenya_nairobibonds_marketdata_mits_v2_14.display_record.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Display Records
nsekenya_nairobibonds_marketdata_mits_v2_14.display_records.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_records, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.display_records.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.display_records.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.display_records.fields(buffer, offset, packet, parent)
  end
end

-- Display data
nsekenya_nairobibonds_marketdata_mits_v2_14.display_data = {}

-- Calculate size of: Display data
nsekenya_nairobibonds_marketdata_mits_v2_14.display_data.size = function(buffer, offset)
  local index = 0

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.uncompressed_length.size

  -- Remaining size of: Display Records
  index = index + (buffer:len() - (offset + index))

  return index
end

-- Display: Display data
nsekenya_nairobibonds_marketdata_mits_v2_14.display_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Display data
nsekenya_nairobibonds_marketdata_mits_v2_14.display_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uncompressed Length: 4 Byte Signed Fixed Width Integer
  index, uncompressed_length = nsekenya_nairobibonds_marketdata_mits_v2_14.uncompressed_length.dissect(buffer, index, packet, parent)

  local display_records_conversion = uncompressed_length > 0

  if display_records_conversion then
    buffer = zlib_decompress(buffer(index, buffer:len() - index))
    index = 0
  end

  -- Display Records: Struct of 1 fields
  index, display_records = nsekenya_nairobibonds_marketdata_mits_v2_14.display_records.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Display data
nsekenya_nairobibonds_marketdata_mits_v2_14.display_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.display_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.display_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.display_data.fields(buffer, offset, packet, parent)
  end
end

-- Price Update Message
nsekenya_nairobibonds_marketdata_mits_v2_14.price_update_message = {}

-- Calculate size of: Price Update Message
nsekenya_nairobibonds_marketdata_mits_v2_14.price_update_message.size = function(buffer, offset)
  local index = 0

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.last_chunk.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.display_data.size(buffer, offset + index)

  return index
end

-- Display: Price Update Message
nsekenya_nairobibonds_marketdata_mits_v2_14.price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Update Message
nsekenya_nairobibonds_marketdata_mits_v2_14.price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Chunk: B
  index, last_chunk = nsekenya_nairobibonds_marketdata_mits_v2_14.last_chunk.dissect(buffer, index, packet, parent)

  -- Chunked: Display data, joined across messages until Last Chunk

  -- Dependency element: Server Message Type
  local server_message_type = buffer(offset - 1, 1):uint()
  local display_data_chunk_buffer = buffer
  local display_data_chunk_index = index
  local display_data_chunk_length = buffer:len() - index
  local display_data_joined = nsekenya_nairobibonds_marketdata_mits_v2_14.chunks.join(packet, parent, "displaydata", tostring(server_message_type), buffer(index, display_data_chunk_length), last_chunk ~= 0, 1048576, omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_data_part, nsekenya_nairobibonds_marketdata_mits_v2_14.experts.display_data_divided, nsekenya_nairobibonds_marketdata_mits_v2_14.experts.display_data_too_large)

  if display_data_joined ~= nil then
    buffer = display_data_joined
    index = 0

    -- Display data: Struct of 2 fields
    index, display_data = nsekenya_nairobibonds_marketdata_mits_v2_14.display_data.dissect(buffer, index, packet, parent)
  end

  -- Resume the buffer the part was carried in, past the part
  buffer = display_data_chunk_buffer
  index = display_data_chunk_index + display_data_chunk_length

  return index
end

-- Dissect: Price Update Message
nsekenya_nairobibonds_marketdata_mits_v2_14.price_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.price_update_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.price_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.price_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.price_update_message.fields(buffer, offset, packet, parent)
  end
end

-- History Suffix
nsekenya_nairobibonds_marketdata_mits_v2_14.history_suffix = {}

-- Size: History Suffix
nsekenya_nairobibonds_marketdata_mits_v2_14.history_suffix.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_8.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.time.size

-- Display: History Suffix
nsekenya_nairobibonds_marketdata_mits_v2_14.history_suffix.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: History Suffix
nsekenya_nairobibonds_marketdata_mits_v2_14.history_suffix.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price: D
  index, price = nsekenya_nairobibonds_marketdata_mits_v2_14.price.dissect(buffer, index, packet, parent)

  -- Quantity I 8: I
  index, quantity_i_8 = nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_8.dissect(buffer, index, packet, parent)

  -- Time: Struct of 4 fields
  index, time = nsekenya_nairobibonds_marketdata_mits_v2_14.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: History Suffix
nsekenya_nairobibonds_marketdata_mits_v2_14.history_suffix.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.history_suffix, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.history_suffix.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.history_suffix.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.history_suffix.fields(buffer, offset, packet, parent)
  end
end

-- Daily Trend Data
nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_data = {}

-- Size: Daily Trend Data
nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_data.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Daily Trend Data
nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Daily Trend Data
nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Contract: Struct of 8 fields
  index, contract = nsekenya_nairobibonds_marketdata_mits_v2_14.contract.dissect(buffer, index, packet, parent)

  -- Dependency for History Suffix
  local end_of_payload = index + buffer:len() - index

  -- History Suffix: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, history_suffix = nsekenya_nairobibonds_marketdata_mits_v2_14.history_suffix.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Daily Trend Data
nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.daily_trend_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_data.fields(buffer, offset, packet, parent)
  end
end

-- Daily Trend Reply Message
nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_reply_message = {}

-- Calculate size of: Daily Trend Reply Message
nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_reply_message.size = function(buffer, offset)
  local index = 0

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.uncompressed_length.size

  -- Remaining size of: Daily Trend Data
  index = index + (buffer:len() - (offset + index))

  return index
end

-- Display: Daily Trend Reply Message
nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Daily Trend Reply Message
nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uncompressed Length: 4 Byte Signed Fixed Width Integer
  index, uncompressed_length = nsekenya_nairobibonds_marketdata_mits_v2_14.uncompressed_length.dissect(buffer, index, packet, parent)

  local daily_trend_data_conversion = uncompressed_length > 0

  if daily_trend_data_conversion then
    buffer = zlib_decompress(buffer(index, buffer:len() - index))
    index = 0
  end

  -- Daily Trend Data: Struct of 2 fields
  index, daily_trend_data = nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Daily Trend Reply Message
nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.daily_trend_reply_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number = {}

-- Size: Index Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_characters.size

-- Display: Index Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Sequence Number Length Byte: P
  index, index_sequence_number_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_length_byte.dissect(buffer, index, packet, parent)

  -- Index Sequence Number Characters: P
  index, index_sequence_number_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Sequence Number
nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.index_sequence_number, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number.fields(buffer, offset, packet, parent)
  end
end

-- Indices Message
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_message = {}

-- Size: Indices Message
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_message.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.opening_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.index_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.update_time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.update_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalisation.size

-- Display: Indices Message
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indices Message
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Sequence Number: Struct of 2 fields
  index, index_sequence_number = nsekenya_nairobibonds_marketdata_mits_v2_14.index_sequence_number.dissect(buffer, index, packet, parent)

  -- Opening Price: D
  index, opening_price = nsekenya_nairobibonds_marketdata_mits_v2_14.opening_price.dissect(buffer, index, packet, parent)

  -- Index Price: D
  index, index_price = nsekenya_nairobibonds_marketdata_mits_v2_14.index_price.dissect(buffer, index, packet, parent)

  -- Update Time: Struct of 4 fields
  index, update_time = nsekenya_nairobibonds_marketdata_mits_v2_14.update_time.dissect(buffer, index, packet, parent)

  -- Update Date: Struct of 3 fields
  index, update_date = nsekenya_nairobibonds_marketdata_mits_v2_14.update_date.dissect(buffer, index, packet, parent)

  -- Market Capitalisation: D
  index, market_capitalisation = nsekenya_nairobibonds_marketdata_mits_v2_14.market_capitalisation.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indices Message
nsekenya_nairobibonds_marketdata_mits_v2_14.indices_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.indices_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.indices_message.fields(buffer, offset, packet, parent)
  end
end

-- Display Update Message
nsekenya_nairobibonds_marketdata_mits_v2_14.display_update_message = {}

-- Calculate size of: Display Update Message
nsekenya_nairobibonds_marketdata_mits_v2_14.display_update_message.size = function(buffer, offset)
  local index = 0

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.last_chunk.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.display.size

  -- Calculate field size from count
  local depth_data_count = buffer(offset + index - 90, 1):uint()
  for i = 1, depth_data_count do
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.depth_data.size(buffer, offset + index)
  end
  return index
end

-- Display: Display Update Message
nsekenya_nairobibonds_marketdata_mits_v2_14.display_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Display Update Message
nsekenya_nairobibonds_marketdata_mits_v2_14.display_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Chunk: B
  index, last_chunk = nsekenya_nairobibonds_marketdata_mits_v2_14.last_chunk.dissect(buffer, index, packet, parent)

  -- Display: Struct of 29 fields
  index, display = nsekenya_nairobibonds_marketdata_mits_v2_14.display.dissect(buffer, index, packet, parent)

  -- Dependency element: Trading Anonymous
  local trading_anonymous = buffer(offset + 1, 1):uint()

  -- Dependency element: Number Of Depth
  local number_of_depth = buffer(index - 90, 1):uint()

  -- Repeating: Depth Data
  for depth_data_index = 1, number_of_depth do
    index, depth_data = nsekenya_nairobibonds_marketdata_mits_v2_14.depth_data.dissect(buffer, index, packet, parent, depth_data_index, trading_anonymous)
  end

  return index
end

-- Dissect: Display Update Message
nsekenya_nairobibonds_marketdata_mits_v2_14.display_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.display_update_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.display_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.display_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.display_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Secondary Expiry Date
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_expiry_date = {}

-- Size: Secondary Expiry Date
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_expiry_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Secondary Expiry Date
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_expiry_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Secondary Expiry Date
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_expiry_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Secondary Expiry Date
nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_expiry_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.secondary_expiry_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_expiry_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_expiry_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_expiry_date.fields(buffer, offset, packet, parent)
  end
end

-- Order Contract
nsekenya_nairobibonds_marketdata_mits_v2_14.order_contract = {}

-- Size: Order Contract
nsekenya_nairobibonds_marketdata_mits_v2_14.order_contract.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_b_4.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.expiry_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_b_5.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.strike.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_b_1.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_expiry_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_b_5.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.is_delta_option.size

-- Display: Order Contract
nsekenya_nairobibonds_marketdata_mits_v2_14.order_contract.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Contract
nsekenya_nairobibonds_marketdata_mits_v2_14.order_contract.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Identifier Prefix B 4: B
  index, identifier_prefix_b_4 = nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_b_4.dissect(buffer, index, packet, parent)

  -- Expiry Date: Struct of 3 fields
  index, expiry_date = nsekenya_nairobibonds_marketdata_mits_v2_14.expiry_date.dissect(buffer, index, packet, parent)

  -- Instrument Name B 5: B
  index, instrument_name_b_5 = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_b_5.dissect(buffer, index, packet, parent)

  -- Strike: D
  index, strike = nsekenya_nairobibonds_marketdata_mits_v2_14.strike.dissect(buffer, index, packet, parent)

  -- Call Put B 1: B
  index, call_put_b_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_b_1.dissect(buffer, index, packet, parent)

  -- Secondary Expiry Date: Struct of 3 fields
  index, secondary_expiry_date = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_expiry_date.dissect(buffer, index, packet, parent)

  -- Secondary Instrument Name B 5: B
  index, secondary_instrument_name_b_5 = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_b_5.dissect(buffer, index, packet, parent)

  -- Is Delta Option: B
  index, is_delta_option = nsekenya_nairobibonds_marketdata_mits_v2_14.is_delta_option.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Contract
nsekenya_nairobibonds_marketdata_mits_v2_14.order_contract.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.order_contract, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.order_contract.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.order_contract.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.order_contract.fields(buffer, offset, packet, parent)
  end
end

-- Completed Trade Message
nsekenya_nairobibonds_marketdata_mits_v2_14.completed_trade_message = {}

-- Size: Completed Trade Message
nsekenya_nairobibonds_marketdata_mits_v2_14.completed_trade_message.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.order_contract.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.sequence_number.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_d_8.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.open_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.previous_closing_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.closing_price.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.change.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.open_interest.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.low.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.high.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day_volume.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.vwap.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.trade_type.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.trade_date.size

-- Display: Completed Trade Message
nsekenya_nairobibonds_marketdata_mits_v2_14.completed_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Completed Trade Message
nsekenya_nairobibonds_marketdata_mits_v2_14.completed_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Contract: Struct of 8 fields
  index, order_contract = nsekenya_nairobibonds_marketdata_mits_v2_14.order_contract.dissect(buffer, index, packet, parent)

  -- Sequence Number: I
  index, sequence_number = nsekenya_nairobibonds_marketdata_mits_v2_14.sequence_number.dissect(buffer, index, packet, parent)

  -- Price: D
  index, price = nsekenya_nairobibonds_marketdata_mits_v2_14.price.dissect(buffer, index, packet, parent)

  -- Quantity D 8: D
  index, quantity_d_8 = nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_d_8.dissect(buffer, index, packet, parent)

  -- Open Price: D
  index, open_price = nsekenya_nairobibonds_marketdata_mits_v2_14.open_price.dissect(buffer, index, packet, parent)

  -- Previous Closing Price: D
  index, previous_closing_price = nsekenya_nairobibonds_marketdata_mits_v2_14.previous_closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price: D
  index, closing_price = nsekenya_nairobibonds_marketdata_mits_v2_14.closing_price.dissect(buffer, index, packet, parent)

  -- Change: D
  index, change = nsekenya_nairobibonds_marketdata_mits_v2_14.change.dissect(buffer, index, packet, parent)

  -- Open Interest: D
  index, open_interest = nsekenya_nairobibonds_marketdata_mits_v2_14.open_interest.dissect(buffer, index, packet, parent)

  -- Low: D
  index, low = nsekenya_nairobibonds_marketdata_mits_v2_14.low.dissect(buffer, index, packet, parent)

  -- High: D
  index, high = nsekenya_nairobibonds_marketdata_mits_v2_14.high.dissect(buffer, index, packet, parent)

  -- Day Volume: D
  index, day_volume = nsekenya_nairobibonds_marketdata_mits_v2_14.day_volume.dissect(buffer, index, packet, parent)

  -- Vwap: D
  index, vwap = nsekenya_nairobibonds_marketdata_mits_v2_14.vwap.dissect(buffer, index, packet, parent)

  -- Trade Type: I
  index, trade_type = nsekenya_nairobibonds_marketdata_mits_v2_14.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Date: Struct of 3 fields
  index, trade_date = nsekenya_nairobibonds_marketdata_mits_v2_14.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Completed Trade Message
nsekenya_nairobibonds_marketdata_mits_v2_14.completed_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.completed_trade_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.completed_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.completed_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.completed_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Records
nsekenya_nairobibonds_marketdata_mits_v2_14.records = {}

-- Size: Records
nsekenya_nairobibonds_marketdata_mits_v2_14.records.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Records
nsekenya_nairobibonds_marketdata_mits_v2_14.records.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Records
nsekenya_nairobibonds_marketdata_mits_v2_14.records.fields = function(buffer, offset, packet, parent, data_type)
  local index = offset

  -- Dependency for Record
  local end_of_payload = index + buffer:len() - index

  -- Record: Runtime Type with 18 branches
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Record: Runtime Type with 18 branches
    index = nsekenya_nairobibonds_marketdata_mits_v2_14.record.dissect(buffer, index, packet, parent, data_type)
  end

  return index
end

-- Dissect: Records
nsekenya_nairobibonds_marketdata_mits_v2_14.records.dissect = function(buffer, offset, packet, parent, data_type)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.records, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.records.fields(buffer, offset, packet, parent, data_type)
    local length = index - offset
    parent:set_len(length)
    if length == 0 then
      parent:set_hidden(true)
    end
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.records.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.records.fields(buffer, offset, packet, parent, data_type)
  end
end

-- Download Data
nsekenya_nairobibonds_marketdata_mits_v2_14.download_data = {}

-- Size of Download Data: not written, it needs Data Type passed down from Download Data Response Message

-- Display: Download Data
nsekenya_nairobibonds_marketdata_mits_v2_14.download_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Download Data
nsekenya_nairobibonds_marketdata_mits_v2_14.download_data.fields = function(buffer, offset, packet, parent, data_type)
  local index = offset

  -- Uncompressed Length: 4 Byte Signed Fixed Width Integer
  index, uncompressed_length = nsekenya_nairobibonds_marketdata_mits_v2_14.uncompressed_length.dissect(buffer, index, packet, parent)

  local records_conversion = uncompressed_length > 0

  if records_conversion then
    buffer = zlib_decompress(buffer(index, buffer:len() - index))
    index = 0
  end

  -- Records: Struct of 1 fields
  index, records = nsekenya_nairobibonds_marketdata_mits_v2_14.records.dissect(buffer, index, packet, parent, data_type)

  return index
end

-- Dissect: Download Data
nsekenya_nairobibonds_marketdata_mits_v2_14.download_data.dissect = function(buffer, offset, packet, parent, data_type)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.download_data, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.download_data.fields(buffer, offset, packet, parent, data_type)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.download_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.download_data.fields(buffer, offset, packet, parent, data_type)
  end
end

-- Download Data Response Message
nsekenya_nairobibonds_marketdata_mits_v2_14.download_data_response_message = {}

-- Calculate size of: Download Data Response Message
nsekenya_nairobibonds_marketdata_mits_v2_14.download_data_response_message.size = function(buffer, offset)
  local index = 0

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.data_type.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.last_piece_of_chunk.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.another_set_to_come.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.action.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.specific_record.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.download_date.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.download_data.size(buffer, offset + index)

  return index
end

-- Display: Download Data Response Message
nsekenya_nairobibonds_marketdata_mits_v2_14.download_data_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Download Data Response Message
nsekenya_nairobibonds_marketdata_mits_v2_14.download_data_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Data Type: B
  index, data_type = nsekenya_nairobibonds_marketdata_mits_v2_14.data_type.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  -- Last Piece Of Chunk: B
  index, last_piece_of_chunk = nsekenya_nairobibonds_marketdata_mits_v2_14.last_piece_of_chunk.dissect(buffer, index, packet, parent)

  -- Another Set To Come: B
  index, another_set_to_come = nsekenya_nairobibonds_marketdata_mits_v2_14.another_set_to_come.dissect(buffer, index, packet, parent)

  -- Action: I
  index, action = nsekenya_nairobibonds_marketdata_mits_v2_14.action.dissect(buffer, index, packet, parent)

  -- Specific Record: I
  index, specific_record = nsekenya_nairobibonds_marketdata_mits_v2_14.specific_record.dissect(buffer, index, packet, parent)

  -- Download Date: Struct of 3 fields
  index, download_date = nsekenya_nairobibonds_marketdata_mits_v2_14.download_date.dissect(buffer, index, packet, parent)

  -- Chunked: Download Data, joined across messages until Last Piece Of Chunk
  local download_data_chunk_buffer = buffer
  local download_data_chunk_index = index
  local download_data_chunk_length = buffer:len() - index
  local download_data_joined = nsekenya_nairobibonds_marketdata_mits_v2_14.chunks.join(packet, parent, "downloaddata", tostring(data_type), buffer(index, download_data_chunk_length), last_piece_of_chunk ~= 0, 1048576, omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.download_data_part, nsekenya_nairobibonds_marketdata_mits_v2_14.experts.download_data_divided, nsekenya_nairobibonds_marketdata_mits_v2_14.experts.download_data_too_large)

  if download_data_joined ~= nil then
    buffer = download_data_joined
    index = 0

    -- Download Data: Struct of 2 fields
    index, download_data = nsekenya_nairobibonds_marketdata_mits_v2_14.download_data.dissect(buffer, index, packet, parent, data_type)
  end

  -- Resume the buffer the part was carried in, past the part
  buffer = download_data_chunk_buffer
  index = download_data_chunk_index + download_data_chunk_length

  return index
end

-- Dissect: Download Data Response Message
nsekenya_nairobibonds_marketdata_mits_v2_14.download_data_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.download_data_response_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.download_data_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.download_data_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.download_data_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Session Key Challenge Message
nsekenya_nairobibonds_marketdata_mits_v2_14.session_key_challenge_message = {}

-- Size: Session Key Challenge Message
nsekenya_nairobibonds_marketdata_mits_v2_14.session_key_challenge_message.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.challenge.size

-- Display: Session Key Challenge Message
nsekenya_nairobibonds_marketdata_mits_v2_14.session_key_challenge_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Key Challenge Message
nsekenya_nairobibonds_marketdata_mits_v2_14.session_key_challenge_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Challenge: B
  index, challenge = nsekenya_nairobibonds_marketdata_mits_v2_14.challenge.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Key Challenge Message
nsekenya_nairobibonds_marketdata_mits_v2_14.session_key_challenge_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.session_key_challenge_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.session_key_challenge_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.session_key_challenge_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.session_key_challenge_message.fields(buffer, offset, packet, parent)
  end
end

-- Heart Beat Message
nsekenya_nairobibonds_marketdata_mits_v2_14.heart_beat_message = {}

-- Display: Heart Beat Message
nsekenya_nairobibonds_marketdata_mits_v2_14.heart_beat_message.display = function(packet, parent, length)
  return "Heart Beat Message"
end


-- Dissect: Heart Beat Message
nsekenya_nairobibonds_marketdata_mits_v2_14.heart_beat_message.dissect = function(buffer, offset, packet, parent)
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.heart_beat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Member Code P 6
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6 = {}

-- Size: Member Code P 6
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_characters.size

-- Display: Member Code P 6
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Member Code P 6
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Member Code P 6 Length Byte: P
  index, member_code_p_6_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_length_byte.dissect(buffer, index, packet, parent)

  -- Member Code P 6 Characters: P
  index, member_code_p_6_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Member Code P 6
nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.member_code_p_6, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6.fields(buffer, offset, packet, parent)
  end
end

-- Pair Member Codes With Unique Number
nsekenya_nairobibonds_marketdata_mits_v2_14.pair_member_codes_with_unique_number = {}

-- Size: Pair Member Codes With Unique Number
nsekenya_nairobibonds_marketdata_mits_v2_14.pair_member_codes_with_unique_number.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unique_member_number.size

-- Display: Pair Member Codes With Unique Number
nsekenya_nairobibonds_marketdata_mits_v2_14.pair_member_codes_with_unique_number.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pair Member Codes With Unique Number
nsekenya_nairobibonds_marketdata_mits_v2_14.pair_member_codes_with_unique_number.fields = function(buffer, offset, packet, parent, pair_member_codes_with_unique_number_index)
  local index = offset

  -- Implicit Pair Member Codes With Unique Number Index
  if pair_member_codes_with_unique_number_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.pair_member_codes_with_unique_number_index, pair_member_codes_with_unique_number_index)
    iteration:set_generated()
  end

  -- Member Code P 6: Struct of 2 fields
  index, member_code_p_6 = nsekenya_nairobibonds_marketdata_mits_v2_14.member_code_p_6.dissect(buffer, index, packet, parent)

  -- Unique Member Number: I
  index, unique_member_number = nsekenya_nairobibonds_marketdata_mits_v2_14.unique_member_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Pair Member Codes With Unique Number
nsekenya_nairobibonds_marketdata_mits_v2_14.pair_member_codes_with_unique_number.dissect = function(buffer, offset, packet, parent, pair_member_codes_with_unique_number_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.pair_member_codes_with_unique_number, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.pair_member_codes_with_unique_number.fields(buffer, offset, packet, parent, pair_member_codes_with_unique_number_index)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.pair_member_codes_with_unique_number.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.pair_member_codes_with_unique_number.fields(buffer, offset, packet, parent, pair_member_codes_with_unique_number_index)
  end
end

-- Text P 50
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50 = {}

-- Size: Text P 50
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_characters.size

-- Display: Text P 50
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Text P 50
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text P 50 Length Byte: P
  index, text_p_50_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_length_byte.dissect(buffer, index, packet, parent)

  -- Text P 50 Characters: P
  index, text_p_50_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Text P 50
nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.text_p_50, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50.fields(buffer, offset, packet, parent)
  end
end

-- Previous Business Day
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_business_day = {}

-- Size: Previous Business Day
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_business_day.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Previous Business Day
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_business_day.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Previous Business Day
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_business_day.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Previous Business Day
nsekenya_nairobibonds_marketdata_mits_v2_14.previous_business_day.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.previous_business_day, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.previous_business_day.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.previous_business_day.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.previous_business_day.fields(buffer, offset, packet, parent)
  end
end

-- Today Date
nsekenya_nairobibonds_marketdata_mits_v2_14.today_date = {}

-- Size: Today Date
nsekenya_nairobibonds_marketdata_mits_v2_14.today_date.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.year.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.month.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.day.size

-- Display: Today Date
nsekenya_nairobibonds_marketdata_mits_v2_14.today_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Today Date
nsekenya_nairobibonds_marketdata_mits_v2_14.today_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: I
  index, year = nsekenya_nairobibonds_marketdata_mits_v2_14.year.dissect(buffer, index, packet, parent)

  -- Month: I
  index, month = nsekenya_nairobibonds_marketdata_mits_v2_14.month.dissect(buffer, index, packet, parent)

  -- Day: I
  index, day = nsekenya_nairobibonds_marketdata_mits_v2_14.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Today Date
nsekenya_nairobibonds_marketdata_mits_v2_14.today_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.today_date, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.today_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.today_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.today_date.fields(buffer, offset, packet, parent)
  end
end

-- Successful Log In Response Message
nsekenya_nairobibonds_marketdata_mits_v2_14.successful_log_in_response_message = {}

-- Calculate size of: Successful Log In Response Message
nsekenya_nairobibonds_marketdata_mits_v2_14.successful_log_in_response_message.size = function(buffer, offset)
  local index = 0

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_12.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.today_date.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.country_code.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.previous_business_day.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_unique_members.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.is_successful.size

  index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50.size

  -- Calculate field size from count
  local pair_member_codes_with_unique_number_count = buffer(offset + index - 55, 4):le_int()
  index = index + pair_member_codes_with_unique_number_count * 10

  return index
end

-- Display: Successful Log In Response Message
nsekenya_nairobibonds_marketdata_mits_v2_14.successful_log_in_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Successful Log In Response Message
nsekenya_nairobibonds_marketdata_mits_v2_14.successful_log_in_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unused 12: B
  if show.padding then
    index, unused_12 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_12.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_12.size
  end

  -- Today Date: Struct of 3 fields
  index, today_date = nsekenya_nairobibonds_marketdata_mits_v2_14.today_date.dissect(buffer, index, packet, parent)

  -- Country Code: Struct of 2 fields
  index, country_code = nsekenya_nairobibonds_marketdata_mits_v2_14.country_code.dissect(buffer, index, packet, parent)

  -- Previous Business Day: Struct of 3 fields
  index, previous_business_day = nsekenya_nairobibonds_marketdata_mits_v2_14.previous_business_day.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  -- Number Of Unique Members: I
  index, number_of_unique_members = nsekenya_nairobibonds_marketdata_mits_v2_14.number_of_unique_members.dissect(buffer, index, packet, parent)

  -- Is Successful: B
  index, is_successful = nsekenya_nairobibonds_marketdata_mits_v2_14.is_successful.dissect(buffer, index, packet, parent)

  -- Text P 50: Struct of 2 fields
  index, text_p_50 = nsekenya_nairobibonds_marketdata_mits_v2_14.text_p_50.dissect(buffer, index, packet, parent)

  -- Repeating: Pair Member Codes With Unique Number
  for pair_member_codes_with_unique_number_index = 1, number_of_unique_members do
    index, pair_member_codes_with_unique_number = nsekenya_nairobibonds_marketdata_mits_v2_14.pair_member_codes_with_unique_number.dissect(buffer, index, packet, parent, pair_member_codes_with_unique_number_index)
  end

  return index
end

-- Dissect: Successful Log In Response Message
nsekenya_nairobibonds_marketdata_mits_v2_14.successful_log_in_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.successful_log_in_response_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.successful_log_in_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.successful_log_in_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.successful_log_in_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Server Message Payload
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_payload = {}

-- Dispatch: Server Message Payload
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_payload.dispatch = {
  [1] = nsekenya_nairobibonds_marketdata_mits_v2_14.successful_log_in_response_message.dissect,
  [10] = nsekenya_nairobibonds_marketdata_mits_v2_14.heart_beat_message.dissect,
  [16] = nsekenya_nairobibonds_marketdata_mits_v2_14.session_key_challenge_message.dissect,
  [36] = nsekenya_nairobibonds_marketdata_mits_v2_14.download_data_response_message.dissect,
  [37] = nsekenya_nairobibonds_marketdata_mits_v2_14.download_data_response_message.dissect,
  [58] = nsekenya_nairobibonds_marketdata_mits_v2_14.completed_trade_message.dissect,
  [59] = nsekenya_nairobibonds_marketdata_mits_v2_14.display_update_message.dissect,
  [60] = nsekenya_nairobibonds_marketdata_mits_v2_14.indices_message.dissect,
  [61] = nsekenya_nairobibonds_marketdata_mits_v2_14.daily_trend_reply_message.dissect,
  [99] = nsekenya_nairobibonds_marketdata_mits_v2_14.price_update_message.dissect,
  [123] = nsekenya_nairobibonds_marketdata_mits_v2_14.data_update_message.dissect,
  [125] = nsekenya_nairobibonds_marketdata_mits_v2_14.exchange_announcements_message.dissect,
  [127] = nsekenya_nairobibonds_marketdata_mits_v2_14.notification_of_failure_message.dissect,
  [132] = nsekenya_nairobibonds_marketdata_mits_v2_14.business_message_reject_message.dissect,
}

-- Dissect: Server Message Payload
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_payload.dissect = function(buffer, offset, packet, parent, server_message_type)
  local dissect = nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_payload.dispatch[server_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- User Name
nsekenya_nairobibonds_marketdata_mits_v2_14.user_name = {}

-- Size: User Name
nsekenya_nairobibonds_marketdata_mits_v2_14.user_name.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_length_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_characters.size

-- Display: User Name
nsekenya_nairobibonds_marketdata_mits_v2_14.user_name.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Name
nsekenya_nairobibonds_marketdata_mits_v2_14.user_name.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Name Length Byte: P
  index, user_name_length_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_length_byte.dissect(buffer, index, packet, parent)

  -- User Name Characters: P
  index, user_name_characters = nsekenya_nairobibonds_marketdata_mits_v2_14.user_name_characters.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Name
nsekenya_nairobibonds_marketdata_mits_v2_14.user_name.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.user_name, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.user_name.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.user_name.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.user_name.fields(buffer, offset, packet, parent)
  end
end

-- Server Message Header
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_header = {}

-- Size: Server Message Header
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_header.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.sequence_number.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.user_name.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.user_number.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_type.size

-- Display: Server Message Header
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Message Header
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: I
  index, sequence_number = nsekenya_nairobibonds_marketdata_mits_v2_14.sequence_number.dissect(buffer, index, packet, parent)

  -- User Name: Struct of 2 fields
  index, user_name = nsekenya_nairobibonds_marketdata_mits_v2_14.user_name.dissect(buffer, index, packet, parent)

  -- User Number: I
  index, user_number = nsekenya_nairobibonds_marketdata_mits_v2_14.user_number.dissect(buffer, index, packet, parent)

  -- Time: Struct of 4 fields
  index, time = nsekenya_nairobibonds_marketdata_mits_v2_14.time.dissect(buffer, index, packet, parent)

  -- Server Message Type: B
  index, server_message_type = nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Message Header
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.server_message_header, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Transport Header
nsekenya_nairobibonds_marketdata_mits_v2_14.transport_header = {}

-- Size: Transport Header
nsekenya_nairobibonds_marketdata_mits_v2_14.transport_header.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.start_byte.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.message_length.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.length_check.size

-- Display: Transport Header
nsekenya_nairobibonds_marketdata_mits_v2_14.transport_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transport Header
nsekenya_nairobibonds_marketdata_mits_v2_14.transport_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Byte: 1 Byte Unsigned Fixed Width Integer
  index, start_byte = nsekenya_nairobibonds_marketdata_mits_v2_14.start_byte.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nsekenya_nairobibonds_marketdata_mits_v2_14.message_length.dissect(buffer, index, packet, parent)

  -- Length Check: 1 Byte Unsigned Fixed Width Integer
  index, length_check = nsekenya_nairobibonds_marketdata_mits_v2_14.length_check.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transport Header
nsekenya_nairobibonds_marketdata_mits_v2_14.transport_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.transport_header, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.transport_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.transport_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.transport_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Message
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message = {}

-- Display: Server Message
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Message
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message.fields = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset

  -- Transport Header: Struct of 3 fields
  index, transport_header = nsekenya_nairobibonds_marketdata_mits_v2_14.transport_header.dissect(buffer, index, packet, parent)

  -- Server Message Header: Struct of 5 fields
  index, server_message_header = nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Message Type
  local server_message_type = buffer(index - 1, 1):uint()

  -- Server Message Payload: Runtime Type with 13 branches
  index = nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_payload.dissect(buffer, index, packet, parent, server_message_type)

  return index
end

-- Dissect: Server Message
nsekenya_nairobibonds_marketdata_mits_v2_14.server_message.dissect = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset + size_of_server_message

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.server_message, buffer(offset, 0))
    local decoded, failure = pcall(nsekenya_nairobibonds_marketdata_mits_v2_14.server_message.fields, bounded, offset, packet, parent, size_of_server_message)
    if not decoded then
      undecoded(failure, parent, nsekenya_nairobibonds_marketdata_mits_v2_14.experts.undecoded, "Server Message does not decode within its "..size_of_server_message.." bytes")
    end
    parent:set_len(size_of_server_message)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.server_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(nsekenya_nairobibonds_marketdata_mits_v2_14.server_message.fields, bounded, offset, packet, parent, size_of_server_message)
    if not decoded then
      undecoded(failure, parent, nsekenya_nairobibonds_marketdata_mits_v2_14.experts.undecoded, "Server Message does not decode within its "..size_of_server_message.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Server Message
local server_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nsekenya_nairobibonds_marketdata_mits_v2_14.transport_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 1, 2):le_uint() + 4

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
nsekenya_nairobibonds_marketdata_mits_v2_14.server_packet = {}

-- Verify required size of Tcp packet
nsekenya_nairobibonds_marketdata_mits_v2_14.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nsekenya_nairobibonds_marketdata_mits_v2_14.transport_header.size + nsekenya_nairobibonds_marketdata_mits_v2_14.server_message_header.size
end

-- Dissect Server Packet
nsekenya_nairobibonds_marketdata_mits_v2_14.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Message
  local end_of_payload = buffer:len()

  -- Server Message: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_message = server_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_message):tvb()
      index = nsekenya_nairobibonds_marketdata_mits_v2_14.server_message.dissect(frame, index, packet, parent, size_of_server_message)
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

-- Contract Name
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_name = {}

-- Size: Contract Name
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_name.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_i_4.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.strike.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_c_1.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_date.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.is_delta_option.size

-- Display: Contract Name
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_name.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Name
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_name.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Identifier Prefix I 4: I
  index, identifier_prefix_i_4 = nsekenya_nairobibonds_marketdata_mits_v2_14.identifier_prefix_i_4.dissect(buffer, index, packet, parent)

  -- Date: Struct of 3 fields
  index, date = nsekenya_nairobibonds_marketdata_mits_v2_14.date.dissect(buffer, index, packet, parent)

  -- Instrument Name P 5: Struct of 2 fields
  index, instrument_name_p_5 = nsekenya_nairobibonds_marketdata_mits_v2_14.instrument_name_p_5.dissect(buffer, index, packet, parent)

  -- Strike: D
  index, strike = nsekenya_nairobibonds_marketdata_mits_v2_14.strike.dissect(buffer, index, packet, parent)

  -- Call Put C 1: C
  index, call_put_c_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.call_put_c_1.dissect(buffer, index, packet, parent)

  -- Secondary Date: Struct of 3 fields
  index, secondary_date = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_date.dissect(buffer, index, packet, parent)

  -- Secondary Instrument Name P 5: Struct of 2 fields
  index, secondary_instrument_name_p_5 = nsekenya_nairobibonds_marketdata_mits_v2_14.secondary_instrument_name_p_5.dissect(buffer, index, packet, parent)

  -- Is Delta Option: B
  index, is_delta_option = nsekenya_nairobibonds_marketdata_mits_v2_14.is_delta_option.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Name
nsekenya_nairobibonds_marketdata_mits_v2_14.contract_name.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contract_name, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_name.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_name.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.contract_name.fields(buffer, offset, packet, parent)
  end
end

-- Option Statistics Request Message
nsekenya_nairobibonds_marketdata_mits_v2_14.option_statistics_request_message = {}

-- Size: Option Statistics Request Message
nsekenya_nairobibonds_marketdata_mits_v2_14.option_statistics_request_message.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.contract_name.size

-- Display: Option Statistics Request Message
nsekenya_nairobibonds_marketdata_mits_v2_14.option_statistics_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Statistics Request Message
nsekenya_nairobibonds_marketdata_mits_v2_14.option_statistics_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Contract Name: Struct of 8 fields
  index, contract_name = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Statistics Request Message
nsekenya_nairobibonds_marketdata_mits_v2_14.option_statistics_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.option_statistics_request_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.option_statistics_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.option_statistics_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.option_statistics_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Contracts Requested For Display
nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_requested_for_display = {}

-- Size: Contracts Requested For Display
nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_requested_for_display.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.contract.size

-- Display: Contracts Requested For Display
nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_requested_for_display.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contracts Requested For Display
nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_requested_for_display.fields = function(buffer, offset, packet, parent, contracts_requested_for_display_index)
  local index = offset

  -- Implicit Contracts Requested For Display Index
  if contracts_requested_for_display_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contracts_requested_for_display_index, contracts_requested_for_display_index)
    iteration:set_generated()
  end

  -- Contract: Struct of 8 fields
  index, contract = nsekenya_nairobibonds_marketdata_mits_v2_14.contract.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contracts Requested For Display
nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_requested_for_display.dissect = function(buffer, offset, packet, parent, contracts_requested_for_display_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contracts_requested_for_display, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_requested_for_display.fields(buffer, offset, packet, parent, contracts_requested_for_display_index)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_requested_for_display.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_requested_for_display.fields(buffer, offset, packet, parent, contracts_requested_for_display_index)
  end
end

-- Future Contract Subscription Message
nsekenya_nairobibonds_marketdata_mits_v2_14.future_contract_subscription_message = {}

-- Size: Future Contract Subscription Message
nsekenya_nairobibonds_marketdata_mits_v2_14.future_contract_subscription_message.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_2.size + 
  40 * nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_requested_for_display.size

-- Display: Future Contract Subscription Message
nsekenya_nairobibonds_marketdata_mits_v2_14.future_contract_subscription_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Contract Subscription Message
nsekenya_nairobibonds_marketdata_mits_v2_14.future_contract_subscription_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quantity I 2: I
  index, quantity_i_2 = nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_2.dissect(buffer, index, packet, parent)

  -- Array Of: Contracts Requested For Display
  for contracts_requested_for_display_index = 1, 40 do
    index, contracts_requested_for_display = nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_requested_for_display.dissect(buffer, index, packet, parent, contracts_requested_for_display_index)
  end

  return index
end

-- Dissect: Future Contract Subscription Message
nsekenya_nairobibonds_marketdata_mits_v2_14.future_contract_subscription_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.future_contract_subscription_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.future_contract_subscription_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.future_contract_subscription_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.future_contract_subscription_message.fields(buffer, offset, packet, parent)
  end
end

-- Subscribing To Indices Service Message
nsekenya_nairobibonds_marketdata_mits_v2_14.subscribing_to_indices_service_message = {}

-- Size: Subscribing To Indices Service Message
nsekenya_nairobibonds_marketdata_mits_v2_14.subscribing_to_indices_service_message.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.subscribe.size

-- Display: Subscribing To Indices Service Message
nsekenya_nairobibonds_marketdata_mits_v2_14.subscribing_to_indices_service_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subscribing To Indices Service Message
nsekenya_nairobibonds_marketdata_mits_v2_14.subscribing_to_indices_service_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Subscribe: B
  index, subscribe = nsekenya_nairobibonds_marketdata_mits_v2_14.subscribe.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscribing To Indices Service Message
nsekenya_nairobibonds_marketdata_mits_v2_14.subscribing_to_indices_service_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.subscribing_to_indices_service_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.subscribing_to_indices_service_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.subscribing_to_indices_service_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.subscribing_to_indices_service_message.fields(buffer, offset, packet, parent)
  end
end

-- Heart Beats Message
nsekenya_nairobibonds_marketdata_mits_v2_14.heart_beats_message = {}

-- Display: Heart Beats Message
nsekenya_nairobibonds_marketdata_mits_v2_14.heart_beats_message.display = function(packet, parent, length)
  return "Heart Beats Message"
end


-- Dissect: Heart Beats Message
nsekenya_nairobibonds_marketdata_mits_v2_14.heart_beats_message.dissect = function(buffer, offset, packet, parent)
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.heart_beats_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Option Contract Subscription Message
nsekenya_nairobibonds_marketdata_mits_v2_14.option_contract_subscription_message = {}

-- Size: Option Contract Subscription Message
nsekenya_nairobibonds_marketdata_mits_v2_14.option_contract_subscription_message.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.contract_name.size

-- Display: Option Contract Subscription Message
nsekenya_nairobibonds_marketdata_mits_v2_14.option_contract_subscription_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Contract Subscription Message
nsekenya_nairobibonds_marketdata_mits_v2_14.option_contract_subscription_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Contract Name: Struct of 8 fields
  index, contract_name = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Contract Subscription Message
nsekenya_nairobibonds_marketdata_mits_v2_14.option_contract_subscription_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.option_contract_subscription_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.option_contract_subscription_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.option_contract_subscription_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.option_contract_subscription_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Daily Trend Message
nsekenya_nairobibonds_marketdata_mits_v2_14.request_daily_trend_message = {}

-- Size: Request Daily Trend Message
nsekenya_nairobibonds_marketdata_mits_v2_14.request_daily_trend_message.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.contract_name.size

-- Display: Request Daily Trend Message
nsekenya_nairobibonds_marketdata_mits_v2_14.request_daily_trend_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Daily Trend Message
nsekenya_nairobibonds_marketdata_mits_v2_14.request_daily_trend_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Contract Name: Struct of 8 fields
  index, contract_name = nsekenya_nairobibonds_marketdata_mits_v2_14.contract_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Daily Trend Message
nsekenya_nairobibonds_marketdata_mits_v2_14.request_daily_trend_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.request_daily_trend_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.request_daily_trend_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.request_daily_trend_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.request_daily_trend_message.fields(buffer, offset, packet, parent)
  end
end

-- Contracts To Unsubscribe
nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_to_unsubscribe = {}

-- Size: Contracts To Unsubscribe
nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_to_unsubscribe.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.contract.size

-- Display: Contracts To Unsubscribe
nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_to_unsubscribe.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contracts To Unsubscribe
nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_to_unsubscribe.fields = function(buffer, offset, packet, parent, contracts_to_unsubscribe_index)
  local index = offset

  -- Implicit Contracts To Unsubscribe Index
  if contracts_to_unsubscribe_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contracts_to_unsubscribe_index, contracts_to_unsubscribe_index)
    iteration:set_generated()
  end

  -- Contract: Struct of 8 fields
  index, contract = nsekenya_nairobibonds_marketdata_mits_v2_14.contract.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contracts To Unsubscribe
nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_to_unsubscribe.dissect = function(buffer, offset, packet, parent, contracts_to_unsubscribe_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.contracts_to_unsubscribe, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_to_unsubscribe.fields(buffer, offset, packet, parent, contracts_to_unsubscribe_index)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_to_unsubscribe.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_to_unsubscribe.fields(buffer, offset, packet, parent, contracts_to_unsubscribe_index)
  end
end

-- Unsubscribe Contract Message
nsekenya_nairobibonds_marketdata_mits_v2_14.unsubscribe_contract_message = {}

-- Size: Unsubscribe Contract Message
nsekenya_nairobibonds_marketdata_mits_v2_14.unsubscribe_contract_message.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_2.size + 
  40 * nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_to_unsubscribe.size

-- Display: Unsubscribe Contract Message
nsekenya_nairobibonds_marketdata_mits_v2_14.unsubscribe_contract_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsubscribe Contract Message
nsekenya_nairobibonds_marketdata_mits_v2_14.unsubscribe_contract_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quantity I 2: I
  index, quantity_i_2 = nsekenya_nairobibonds_marketdata_mits_v2_14.quantity_i_2.dissect(buffer, index, packet, parent)

  -- Array Of: Contracts To Unsubscribe
  for contracts_to_unsubscribe_index = 1, 40 do
    index, contracts_to_unsubscribe = nsekenya_nairobibonds_marketdata_mits_v2_14.contracts_to_unsubscribe.dissect(buffer, index, packet, parent, contracts_to_unsubscribe_index)
  end

  return index
end

-- Dissect: Unsubscribe Contract Message
nsekenya_nairobibonds_marketdata_mits_v2_14.unsubscribe_contract_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.unsubscribe_contract_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.unsubscribe_contract_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.unsubscribe_contract_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.unsubscribe_contract_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Data Retrieval Message
nsekenya_nairobibonds_marketdata_mits_v2_14.request_data_retrieval_message = {}

-- Size: Request Data Retrieval Message
nsekenya_nairobibonds_marketdata_mits_v2_14.request_data_retrieval_message.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.data_type.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.last_piece_of_chunk.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.re_request.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.action.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.specific_record.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.download_date.size

-- Display: Request Data Retrieval Message
nsekenya_nairobibonds_marketdata_mits_v2_14.request_data_retrieval_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Data Retrieval Message
nsekenya_nairobibonds_marketdata_mits_v2_14.request_data_retrieval_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Data Type: B
  index, data_type = nsekenya_nairobibonds_marketdata_mits_v2_14.data_type.dissect(buffer, index, packet, parent)

  -- Unused 1: B
  if show.padding then
    index, unused_1 = nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.dissect(buffer, index, packet, parent)
  else
    index = index + nsekenya_nairobibonds_marketdata_mits_v2_14.unused_1.size
  end

  -- Last Piece Of Chunk: B
  index, last_piece_of_chunk = nsekenya_nairobibonds_marketdata_mits_v2_14.last_piece_of_chunk.dissect(buffer, index, packet, parent)

  -- Re Request: B
  index, re_request = nsekenya_nairobibonds_marketdata_mits_v2_14.re_request.dissect(buffer, index, packet, parent)

  -- Action: I
  index, action = nsekenya_nairobibonds_marketdata_mits_v2_14.action.dissect(buffer, index, packet, parent)

  -- Specific Record: I
  index, specific_record = nsekenya_nairobibonds_marketdata_mits_v2_14.specific_record.dissect(buffer, index, packet, parent)

  -- Download Date: Struct of 3 fields
  index, download_date = nsekenya_nairobibonds_marketdata_mits_v2_14.download_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Data Retrieval Message
nsekenya_nairobibonds_marketdata_mits_v2_14.request_data_retrieval_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.request_data_retrieval_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.request_data_retrieval_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.request_data_retrieval_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.request_data_retrieval_message.fields(buffer, offset, packet, parent)
  end
end

-- Log Out Message
nsekenya_nairobibonds_marketdata_mits_v2_14.log_out_message = {}

-- Display: Log Out Message
nsekenya_nairobibonds_marketdata_mits_v2_14.log_out_message.display = function(packet, parent, length)
  return "Log Out Message"
end


-- Dissect: Log Out Message
nsekenya_nairobibonds_marketdata_mits_v2_14.log_out_message.dissect = function(buffer, offset, packet, parent)
  local display = nsekenya_nairobibonds_marketdata_mits_v2_14.log_out_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Re Request Message
nsekenya_nairobibonds_marketdata_mits_v2_14.re_request_message = {}

-- Size: Re Request Message
nsekenya_nairobibonds_marketdata_mits_v2_14.re_request_message.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.from_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.to_sequence.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_i_4.size

-- Display: Re Request Message
nsekenya_nairobibonds_marketdata_mits_v2_14.re_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Re Request Message
nsekenya_nairobibonds_marketdata_mits_v2_14.re_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- From Sequence: I
  index, from_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.from_sequence.dissect(buffer, index, packet, parent)

  -- To Sequence: I
  index, to_sequence = nsekenya_nairobibonds_marketdata_mits_v2_14.to_sequence.dissect(buffer, index, packet, parent)

  -- Market Shard Number I 4: I
  index, market_shard_number_i_4 = nsekenya_nairobibonds_marketdata_mits_v2_14.market_shard_number_i_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Re Request Message
nsekenya_nairobibonds_marketdata_mits_v2_14.re_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.re_request_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.re_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.re_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.re_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Log In Message
nsekenya_nairobibonds_marketdata_mits_v2_14.log_in_message = {}

-- Size: Log In Message
nsekenya_nairobibonds_marketdata_mits_v2_14.log_in_message.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.encrypted_password.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.new_password.size

-- Display: Log In Message
nsekenya_nairobibonds_marketdata_mits_v2_14.log_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Log In Message
nsekenya_nairobibonds_marketdata_mits_v2_14.log_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Encrypted Password: B
  index, encrypted_password = nsekenya_nairobibonds_marketdata_mits_v2_14.encrypted_password.dissect(buffer, index, packet, parent)

  -- New Password: B
  index, new_password = nsekenya_nairobibonds_marketdata_mits_v2_14.new_password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Log In Message
nsekenya_nairobibonds_marketdata_mits_v2_14.log_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.log_in_message, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.log_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.log_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.log_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Message Payload
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_payload = {}

-- Dispatch: Client Message Payload
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_payload.dispatch = {
  [0] = nsekenya_nairobibonds_marketdata_mits_v2_14.log_in_message.dissect,
  [3] = nsekenya_nairobibonds_marketdata_mits_v2_14.re_request_message.dissect,
  [4] = nsekenya_nairobibonds_marketdata_mits_v2_14.log_out_message.dissect,
  [36] = nsekenya_nairobibonds_marketdata_mits_v2_14.request_data_retrieval_message.dissect,
  [37] = nsekenya_nairobibonds_marketdata_mits_v2_14.request_data_retrieval_message.dissect,
  [42] = nsekenya_nairobibonds_marketdata_mits_v2_14.unsubscribe_contract_message.dissect,
  [61] = nsekenya_nairobibonds_marketdata_mits_v2_14.request_daily_trend_message.dissect,
  [67] = nsekenya_nairobibonds_marketdata_mits_v2_14.option_contract_subscription_message.dissect,
  [84] = nsekenya_nairobibonds_marketdata_mits_v2_14.heart_beats_message.dissect,
  [98] = nsekenya_nairobibonds_marketdata_mits_v2_14.subscribing_to_indices_service_message.dissect,
  [99] = nsekenya_nairobibonds_marketdata_mits_v2_14.future_contract_subscription_message.dissect,
  [135] = nsekenya_nairobibonds_marketdata_mits_v2_14.option_statistics_request_message.dissect,
}

-- Dissect: Client Message Payload
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_payload.dissect = function(buffer, offset, packet, parent, client_message_type)
  local dissect = nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_payload.dispatch[client_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Message Header
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_header = {}

-- Size: Client Message Header
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_header.size =
  nsekenya_nairobibonds_marketdata_mits_v2_14.sequence_number.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.user_name.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.user_number.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.time.size + 
  nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_type.size

-- Display: Client Message Header
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Message Header
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: I
  index, sequence_number = nsekenya_nairobibonds_marketdata_mits_v2_14.sequence_number.dissect(buffer, index, packet, parent)

  -- User Name: Struct of 2 fields
  index, user_name = nsekenya_nairobibonds_marketdata_mits_v2_14.user_name.dissect(buffer, index, packet, parent)

  -- User Number: I
  index, user_number = nsekenya_nairobibonds_marketdata_mits_v2_14.user_number.dissect(buffer, index, packet, parent)

  -- Time: Struct of 4 fields
  index, time = nsekenya_nairobibonds_marketdata_mits_v2_14.time.dissect(buffer, index, packet, parent)

  -- Client Message Type: B
  index, client_message_type = nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Message Header
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.client_message_header, buffer(offset, 0))
    local index = nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Message
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message = {}

-- Display: Client Message
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Message
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message.fields = function(buffer, offset, packet, parent, size_of_client_message)
  local index = offset

  -- Transport Header: Struct of 3 fields
  index, transport_header = nsekenya_nairobibonds_marketdata_mits_v2_14.transport_header.dissect(buffer, index, packet, parent)

  -- Client Message Header: Struct of 5 fields
  index, client_message_header = nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Message Type
  local client_message_type = buffer(index - 1, 1):uint()

  -- Client Message Payload: Runtime Type with 11 branches
  index = nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_payload.dissect(buffer, index, packet, parent, client_message_type)

  return index
end

-- Dissect: Client Message
nsekenya_nairobibonds_marketdata_mits_v2_14.client_message.dissect = function(buffer, offset, packet, parent, size_of_client_message)
  local index = offset + size_of_client_message

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14.fields.client_message, buffer(offset, 0))
    local decoded, failure = pcall(nsekenya_nairobibonds_marketdata_mits_v2_14.client_message.fields, bounded, offset, packet, parent, size_of_client_message)
    if not decoded then
      undecoded(failure, parent, nsekenya_nairobibonds_marketdata_mits_v2_14.experts.undecoded, "Client Message does not decode within its "..size_of_client_message.." bytes")
    end
    parent:set_len(size_of_client_message)
    local display = nsekenya_nairobibonds_marketdata_mits_v2_14.client_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(nsekenya_nairobibonds_marketdata_mits_v2_14.client_message.fields, bounded, offset, packet, parent, size_of_client_message)
    if not decoded then
      undecoded(failure, parent, nsekenya_nairobibonds_marketdata_mits_v2_14.experts.undecoded, "Client Message does not decode within its "..size_of_client_message.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Client Message
local client_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nsekenya_nairobibonds_marketdata_mits_v2_14.transport_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 1, 2):le_uint() + 4

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
nsekenya_nairobibonds_marketdata_mits_v2_14.client_packet = {}

-- Verify required size of Tcp packet
nsekenya_nairobibonds_marketdata_mits_v2_14.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nsekenya_nairobibonds_marketdata_mits_v2_14.transport_header.size + nsekenya_nairobibonds_marketdata_mits_v2_14.client_message_header.size
end

-- Dissect Client Packet
nsekenya_nairobibonds_marketdata_mits_v2_14.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Message
  local end_of_payload = buffer:len()

  -- Client Message: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_message = client_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_message):tvb()
      index = nsekenya_nairobibonds_marketdata_mits_v2_14.client_message.dissect(frame, index, packet, parent, size_of_client_message)
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
function omi_nsekenya_nairobibonds_marketdata_mits_v2_14.init()
  nsekenya_nairobibonds_marketdata_mits_v2_14.chunks.frame = nil
  nsekenya_nairobibonds_marketdata_mits_v2_14.conversation.current = nil
  nsekenya_nairobibonds_marketdata_mits_v2_14.conversation.flows = {}
end

-- Connection roles for NseKenya NairobiBonds MarketData Mits 2.14: Client is the initiator, Server is the acceptor
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
nsekenya_nairobibonds_marketdata_mits_v2_14.role = function(packet)
  if omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.acceptor_port

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

  if omi_nsekenya_nairobibonds_marketdata_mits_v2_14.prefs.swap_sides then
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
nsekenya_nairobibonds_marketdata_mits_v2_14.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for NseKenya NairobiBonds MarketData Mits 2.14
function omi_nsekenya_nairobibonds_marketdata_mits_v2_14.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nsekenya_nairobibonds_marketdata_mits_v2_14.name

  -- Dissect protocol
  local protocol = parent:add(omi_nsekenya_nairobibonds_marketdata_mits_v2_14, buffer(), omi_nsekenya_nairobibonds_marketdata_mits_v2_14.description, "("..buffer:len().." Bytes)")
  local role = nsekenya_nairobibonds_marketdata_mits_v2_14.role(packet)

  if role == "initiator" then
    return nsekenya_nairobibonds_marketdata_mits_v2_14.client_packet.dissect(buffer, packet, protocol)
  end

  return nsekenya_nairobibonds_marketdata_mits_v2_14.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nsekenya_nairobibonds_marketdata_mits_v2_14.client_packet.fingerprint = function(buffer)
  if buffer:len() < 33 then
    return false
  end

  local client_message_type = buffer(32, 1):uint()

  -- Log In Message
  if client_message_type == 0 then
    return true
  end

  -- Re Request Message
  if client_message_type == 3 then
    return true
  end

  -- Log Out Message
  if client_message_type == 4 then
    return true
  end

  -- Request Data Retrieval Message
  if client_message_type == 36 then
    return true
  end

  -- Request Data Retrieval Message
  if client_message_type == 37 then
    return true
  end

  -- Unsubscribe Contract Message
  if client_message_type == 42 then
    return true
  end

  -- Request Daily Trend Message
  if client_message_type == 61 then
    return true
  end

  -- Option Contract Subscription Message
  if client_message_type == 67 then
    return true
  end

  -- Heart Beats Message
  if client_message_type == 84 then
    return true
  end

  -- Subscribing To Indices Service Message
  if client_message_type == 98 then
    return true
  end

  -- Future Contract Subscription Message
  if client_message_type == 99 then
    return true
  end

  -- Option Statistics Request Message
  if client_message_type == 135 then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nsekenya_nairobibonds_marketdata_mits_v2_14.server_packet.fingerprint = function(buffer)
  if buffer:len() < 33 then
    return false
  end

  local server_message_type = buffer(32, 1):uint()

  -- Successful Log In Response Message
  if server_message_type == 1 then
    return true
  end

  -- Heart Beat Message
  if server_message_type == 10 then
    return true
  end

  -- Session Key Challenge Message
  if server_message_type == 16 then
    return true
  end

  -- Download Data Response Message: carries the application messages, which tell this protocol from others sharing the session framing
  if server_message_type == 36 then
    if buffer:len() < 34 then
      return false
    end

    local data_type = buffer(33, 1):uint()

    -- Market Display Data
    if data_type == 1 then
      return true
    end

    -- Instruments Data
    if data_type == 2 then
      return true
    end

    -- Contract Dates
    if data_type == 3 then
      return true
    end

    -- Strike Data
    if data_type == 4 then
      return true
    end

    -- Member Data
    if data_type == 15 then
      return true
    end

    -- Mtm Data
    if data_type == 16 then
      return true
    end

    -- Holiday Data
    if data_type == 18 then
      return true
    end

    -- Instrument Types
    if data_type == 39 then
      return true
    end

    -- Clearing Member Data
    if data_type == 65 then
      return true
    end

    -- Exchange Announcements
    if data_type == 89 then
      return true
    end

    -- News Service
    if data_type == 129 then
      return true
    end

    -- Coupon Information
    if data_type == 131 then
      return true
    end

    -- Trading Sessions
    if data_type == 136 then
      return true
    end

    -- Indices Price Data
    if data_type == 137 then
      return true
    end

    -- Indices Data
    if data_type == 138 then
      return true
    end

    -- Shares In Issue Data
    if data_type == 141 then
      return true
    end

    -- Index Data
    if data_type == 146 then
      return true
    end

    -- Index Constituents Data
    if data_type == 147 then
      return true
    end

    return false
  end

  -- Download Data Response Message: carries the application messages, which tell this protocol from others sharing the session framing
  if server_message_type == 37 then
    if buffer:len() < 34 then
      return false
    end

    local data_type = buffer(33, 1):uint()

    -- Market Display Data
    if data_type == 1 then
      return true
    end

    -- Instruments Data
    if data_type == 2 then
      return true
    end

    -- Contract Dates
    if data_type == 3 then
      return true
    end

    -- Strike Data
    if data_type == 4 then
      return true
    end

    -- Member Data
    if data_type == 15 then
      return true
    end

    -- Mtm Data
    if data_type == 16 then
      return true
    end

    -- Holiday Data
    if data_type == 18 then
      return true
    end

    -- Instrument Types
    if data_type == 39 then
      return true
    end

    -- Clearing Member Data
    if data_type == 65 then
      return true
    end

    -- Exchange Announcements
    if data_type == 89 then
      return true
    end

    -- News Service
    if data_type == 129 then
      return true
    end

    -- Coupon Information
    if data_type == 131 then
      return true
    end

    -- Trading Sessions
    if data_type == 136 then
      return true
    end

    -- Indices Price Data
    if data_type == 137 then
      return true
    end

    -- Indices Data
    if data_type == 138 then
      return true
    end

    -- Shares In Issue Data
    if data_type == 141 then
      return true
    end

    -- Index Data
    if data_type == 146 then
      return true
    end

    -- Index Constituents Data
    if data_type == 147 then
      return true
    end

    return false
  end

  -- Completed Trade Message
  if server_message_type == 58 then
    return true
  end

  -- Display Update Message: carries the application messages, which tell this protocol from others sharing the session framing
  if server_message_type == 59 then
    if buffer:len() < 35 then
      return false
    end

    local trading_anonymous = buffer(34, 1):uint()

    -- Buy Who Member
    if trading_anonymous == 0 then
      return true
    end

    -- Buy Who Unique Member
    if trading_anonymous ~= 0 then
      return true
    end

    return false
  end

  -- Indices Message
  if server_message_type == 60 then
    return true
  end

  -- Daily Trend Reply Message
  if server_message_type == 61 then
    return true
  end

  -- Price Update Message: carries the application messages, which tell this protocol from others sharing the session framing
  if server_message_type == 99 then
    if buffer:len() < 39 then
      return false
    end

    local trading_anonymous = buffer(38, 1):uint()

    -- Buy Who Member
    if trading_anonymous == 0 then
      return true
    end

    -- Buy Who Unique Member
    if trading_anonymous ~= 0 then
      return true
    end

    return false
  end

  -- Data Update Message: carries the application messages, which tell this protocol from others sharing the session framing
  if server_message_type == 123 then
    if buffer:len() < 34 then
      return false
    end

    local data_type = buffer(33, 1):uint()

    -- Market Display Data
    if data_type == 1 then
      return true
    end

    -- Instruments Data
    if data_type == 2 then
      return true
    end

    -- Contract Dates
    if data_type == 3 then
      return true
    end

    -- Strike Data
    if data_type == 4 then
      return true
    end

    -- Member Data
    if data_type == 15 then
      return true
    end

    -- Mtm Data
    if data_type == 16 then
      return true
    end

    -- Holiday Data
    if data_type == 18 then
      return true
    end

    -- Instrument Types
    if data_type == 39 then
      return true
    end

    -- Clearing Member Data
    if data_type == 65 then
      return true
    end

    -- Exchange Announcements
    if data_type == 89 then
      return true
    end

    -- News Service
    if data_type == 129 then
      return true
    end

    -- Coupon Information
    if data_type == 131 then
      return true
    end

    -- Trading Sessions
    if data_type == 136 then
      return true
    end

    -- Indices Price Data
    if data_type == 137 then
      return true
    end

    -- Indices Data
    if data_type == 138 then
      return true
    end

    -- Shares In Issue Data
    if data_type == 141 then
      return true
    end

    -- Index Data
    if data_type == 146 then
      return true
    end

    -- Index Constituents Data
    if data_type == 147 then
      return true
    end

    return false
  end

  -- Exchange Announcements Message
  if server_message_type == 125 then
    return true
  end

  -- Notification Of Failure Message
  if server_message_type == 127 then
    return true
  end

  -- Business Message Reject Message
  if server_message_type == 132 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for NseKenya NairobiBonds MarketData Mits 2.14 (Tcp)
local function omi_nsekenya_nairobibonds_marketdata_mits_v2_14_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nsekenya_nairobibonds_marketdata_mits_v2_14.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nsekenya_nairobibonds_marketdata_mits_v2_14.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nsekenya_nairobibonds_marketdata_mits_v2_14
  omi_nsekenya_nairobibonds_marketdata_mits_v2_14.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for NseKenya NairobiBonds MarketData Mits 2.14 (Tcp)
local function omi_nsekenya_nairobibonds_marketdata_mits_v2_14_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nsekenya_nairobibonds_marketdata_mits_v2_14.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nsekenya_nairobibonds_marketdata_mits_v2_14.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nsekenya_nairobibonds_marketdata_mits_v2_14
  omi_nsekenya_nairobibonds_marketdata_mits_v2_14.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for NseKenya NairobiBonds MarketData Mits 2.14 (Tcp): apply the heuristic of the sender's connection role
local function omi_nsekenya_nairobibonds_marketdata_mits_v2_14_tcp_heuristic(buffer, packet, parent)
  local role = nsekenya_nairobibonds_marketdata_mits_v2_14.role(packet)
  local initiator = omi_nsekenya_nairobibonds_marketdata_mits_v2_14_tcp_initiator_heuristic
  local acceptor = omi_nsekenya_nairobibonds_marketdata_mits_v2_14_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nsekenya_nairobibonds_marketdata_mits_v2_14.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nsekenya_nairobibonds_marketdata_mits_v2_14.swap(packet)

  return false
end

-- Register Heuristics for NseKenya NairobiBonds MarketData Mits 2.14
omi_nsekenya_nairobibonds_marketdata_mits_v2_14:register_heuristic("tcp", omi_nsekenya_nairobibonds_marketdata_mits_v2_14_tcp_heuristic)

-- Register NseKenya NairobiBonds MarketData Mits 2.14 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nsekenya_nairobibonds_marketdata_mits_v2_14)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Nairobi Securities Exchange
--   Version: 2.14
--   Date: Wednesday, August 21, 2019
--   Specification: Bonds-and-Derrivatives-MITS-Market-Data-API.pdf
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
