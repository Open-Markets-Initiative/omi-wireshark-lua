-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nairobi NairobiEquities RealTime Mitch 1.22 Protocol
local omi_nairobi_nairobiequities_realtime_mitch_v1_22 = Proto("Omi.Nairobi.NairobiEquities.RealTime.Mitch.v1.22", "Nairobi NairobiEquities RealTime Mitch 1.22")

-- Protocol table
local nairobi_nairobiequities_realtime_mitch_v1_22 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nairobi NairobiEquities RealTime Mitch 1.22 Fields
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.action_type = ProtoField.new("Action Type", "nairobi.nairobiequities.realtime.mitch.v1.22.actiontype", ftypes.STRING, nil, nil, nil, "Action on the trade.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.add_attributed_order_flags = ProtoField.new("Add Attributed Order Flags", "nairobi.nairobiequities.realtime.mitch.v1.22.addattributedorderflags", ftypes.STRING, nil, nil, nil, "Flags of the Add Attributed Order message, which the document labels Flags.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.add_order_flags = ProtoField.new("Add Order Flags", "nairobi.nairobiequities.realtime.mitch.v1.22.addorderflags", ftypes.STRING, nil, nil, nil, "Flags of the Add Order message, which the document labels Flags.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.all_or_none = ProtoField.new("All Or None", "nairobi.nairobiequities.realtime.mitch.v1.22.allornone", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80, "All or None order book")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.aon_status = ProtoField.new("Aon Status", "nairobi.nairobiequities.realtime.mitch.v1.22.aonstatus", ftypes.STRING, nil, nil, nil, "Status of the auction.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.attribution = ProtoField.new("Attribution", "nairobi.nairobiequities.realtime.mitch.v1.22.attribution", ftypes.STRING, nil, nil, nil, "Identity of firm that submitted the order.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.auction = ProtoField.new("Auction", "nairobi.nairobiequities.realtime.mitch.v1.22.auction", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40, "Auction order book")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.auction_trade_type = ProtoField.new("Auction Trade Type", "nairobi.nairobiequities.realtime.mitch.v1.22.auctiontradetype", ftypes.STRING, nil, nil, nil, "Denotes the type of the auction trade being disseminated. For regular trades this field will be unset.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.auction_type = ProtoField.new("Auction Type", "nairobi.nairobiequities.realtime.mitch.v1.22.auctiontype", ftypes.STRING, nil, nil, nil, "Type of auction.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.block_trade = ProtoField.new("Block Trade", "nairobi.nairobiequities.realtime.mitch.v1.22.blocktrade", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04, "Block Trade order book")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.book_type = ProtoField.new("Book Type", "nairobi.nairobiequities.realtime.mitch.v1.22.booktype", ftypes.STRING, nil, nil, nil, "Type of book to be cleared.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.bulletin_board = ProtoField.new("Bulletin Board", "nairobi.nairobiequities.realtime.mitch.v1.22.bulletinboard", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20, "Bulletin Board order book")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.buy_firm = ProtoField.new("Buy Firm", "nairobi.nairobiequities.realtime.mitch.v1.22.buyfirm", ftypes.STRING, nil, nil, nil, "Identifier of the firm which submitted the buy order. Required only if the 'Publish Firms' is enabled for the order book in which the execution occurred.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.corporate_action = ProtoField.new("Corporate Action", "nairobi.nairobiequities.realtime.mitch.v1.22.corporateaction", ftypes.STRING, nil, nil, nil, "Pipe separated field. Identifies the type of Corporate Actions applicable on the instrument for the current Trading day.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.coupon = ProtoField.new("Coupon", "nairobi.nairobiequities.realtime.mitch.v1.22.coupon", ftypes.DOUBLE, nil, nil, nil, "Rate of interest applied to the face value. This is a percentage field (e.g. 0.05 represents 5%). The price will be zero if the instrument is not a fixed income instrument.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.daily_foreign_buy_value = ProtoField.new("Daily Foreign Buy Value", "nairobi.nairobiequities.realtime.mitch.v1.22.dailyforeignbuyvalue", ftypes.DOUBLE, nil, nil, nil, "Total foreign buy trade value for the day for the sub book. Will be set to a negative value if the value is not set or withdrawn.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.daily_foreign_sell_value = ProtoField.new("Daily Foreign Sell Value", "nairobi.nairobiequities.realtime.mitch.v1.22.dailyforeignsellvalue", ftypes.DOUBLE, nil, nil, nil, "Total foreign sell trade value for the day for the sub book. Will be set to a negative value if the value is not set or withdrawn.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.date = ProtoField.new("Date", "nairobi.nairobiequities.realtime.mitch.v1.22.date", ftypes.STRING, nil, nil, nil, "Date the auction is being held. This field will contain only spaces if the instrument contains an AON Status of 'Inactive' or 'Cancelled'.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.default_auction = ProtoField.new("Default Auction", "nairobi.nairobiequities.realtime.mitch.v1.22.defaultauction", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40, "Default Auction order book")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.display_quantity = ProtoField.new("Display Quantity", "nairobi.nairobiequities.realtime.mitch.v1.22.displayquantity", ftypes.UINT32, nil, nil, nil, "Displayed quantity of the order after the execution.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.early_settlement = ProtoField.new("Early Settlement", "nairobi.nairobiequities.realtime.mitch.v1.22.earlysettlement", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10, "Early Settlement order book")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.event_code = ProtoField.new("Event Code", "nairobi.nairobiequities.realtime.mitch.v1.22.eventcode", ftypes.STRING, nil, nil, nil, "Start or end of day.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.executed_quantity = ProtoField.new("Executed Quantity", "nairobi.nairobiequities.realtime.mitch.v1.22.executedquantity", ftypes.UINT32, nil, nil, nil, "Quantity executed.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.expiration_date = ProtoField.new("Expiration Date", "nairobi.nairobiequities.realtime.mitch.v1.22.expirationdate", ftypes.STRING, nil, nil, nil, "Date an instrument expires or matures. This field will contain only spaces if the instrument is not a derivative or fixed income instrument.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.halt_reason = ProtoField.new("Halt Reason", "nairobi.nairobiequities.realtime.mitch.v1.22.haltreason", ftypes.STRING, nil, nil, nil, "Reason for the trading halt. This field will contain only spaces if Trading Status is not \"H\".")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.headline = ProtoField.new("Headline", "nairobi.nairobiequities.realtime.mitch.v1.22.headline", ftypes.STRING, nil, nil, nil, "Headline or subject of announcement.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.high_price = ProtoField.new("High Price", "nairobi.nairobiequities.realtime.mitch.v1.22.highprice", ftypes.DOUBLE, nil, nil, nil, "High price for the sub book. Will be set to a negative value if the value is not set or withdrawn.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.identification_number = ProtoField.new("Identification Number", "nairobi.nairobiequities.realtime.mitch.v1.22.identificationnumber", ftypes.STRING, nil, nil, nil, "Instrument identification number (e.g. ISIN, CUSIP, etc.)")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nairobi.nairobiequities.realtime.mitch.v1.22.imbalancedirection", ftypes.STRING, nil, nil, nil, "Direction of the imbalance.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.imbalance_quantity = ProtoField.new("Imbalance Quantity", "nairobi.nairobiequities.realtime.mitch.v1.22.imbalancequantity", ftypes.UINT32, nil, nil, nil, "Quantity that is eligible to be matched at the indicative price but will not be matched.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.index_value = ProtoField.new("Index Value", "nairobi.nairobiequities.realtime.mitch.v1.22.indexvalue", ftypes.DOUBLE, nil, nil, nil, "Index value.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.instruments = ProtoField.new("Instruments", "nairobi.nairobiequities.realtime.mitch.v1.22.instruments", ftypes.STRING, nil, nil, nil, "Pipe separated list of symbols of the instruments announcement relates to.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.interest_rate = ProtoField.new("Interest Rate", "nairobi.nairobiequities.realtime.mitch.v1.22.interestrate", ftypes.DOUBLE, nil, nil, nil, "Gives the interest rate for a Repo order. Only valid when Order Book is Block Trade (4).")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.inverse_order_book = ProtoField.new("Inverse Order Book", "nairobi.nairobiequities.realtime.mitch.v1.22.inverseorderbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.issue_date = ProtoField.new("Issue Date", "nairobi.nairobiequities.realtime.mitch.v1.22.issuedate", ftypes.STRING, nil, nil, nil, "Date instrument was issued. This field will contain all spaces if the instrument is not a fixed income instrument.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.issued_quantity = ProtoField.new("Issued Quantity", "nairobi.nairobiequities.realtime.mitch.v1.22.issuedquantity", ftypes.DOUBLE, nil, nil, nil, "Issued Quantity of the instrument.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.issuer = ProtoField.new("Issuer", "nairobi.nairobiequities.realtime.mitch.v1.22.issuer", ftypes.STRING, nil, nil, nil, "Issuer of the instrument. This field will contain all spaces if the instrument is not an equity or fixed income instrument.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.last_opt_px = ProtoField.new("Last Opt Px", "nairobi.nairobiequities.realtime.mitch.v1.22.lastoptpx", ftypes.DOUBLE, nil, nil, nil, "Converted price of the executed volatility of the options instrument.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.length = ProtoField.new("Length", "nairobi.nairobiequities.realtime.mitch.v1.22.length", ftypes.UINT16, nil, nil, nil, "Length of the message block including the header and all payload messages")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.low_price = ProtoField.new("Low Price", "nairobi.nairobiequities.realtime.mitch.v1.22.lowprice", ftypes.DOUBLE, nil, nil, nil, "Low price for the sub book. Will be set to a negative value if the value is not set or withdrawn.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.market_capitalization = ProtoField.new("Market Capitalization", "nairobi.nairobiequities.realtime.mitch.v1.22.marketcapitalization", ftypes.DOUBLE, nil, nil, nil, "Market Capitalization of the instrument. Will be set to a negative value if the value is not set or withdrawn.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.market_data_group = ProtoField.new("Market Data Group", "nairobi.nairobiequities.realtime.mitch.v1.22.marketdatagroup", ftypes.STRING, nil, nil, nil, "Identity of the market data group the payload messages relate to")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.market_order = ProtoField.new("Market Order", "nairobi.nairobiequities.realtime.mitch.v1.22.marketorder", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.market_order_quantity = ProtoField.new("Market Order Quantity", "nairobi.nairobiequities.realtime.mitch.v1.22.marketorderquantity", ftypes.UINT32, nil, nil, nil, "Cumulative visible size of market orders.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.message_count = ProtoField.new("Message Count", "nairobi.nairobiequities.realtime.mitch.v1.22.messagecount", ftypes.UINT8, nil, nil, nil, "Number of payload messages that follow the header. Zero marks a heartbeat")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.message_length = ProtoField.new("Message Length", "nairobi.nairobiequities.realtime.mitch.v1.22.messagelength", ftypes.UINT16, nil, nil, nil, "Length of message including this field")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.message_type = ProtoField.new("Message Type", "nairobi.nairobiequities.realtime.mitch.v1.22.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.nanosecond = ProtoField.new("Nanosecond", "nairobi.nairobiequities.realtime.mitch.v1.22.nanosecond", ftypes.UINT32, nil, nil, nil, "Nanoseconds offset from the last Time message.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.new_end_time = ProtoField.new("New End Time", "nairobi.nairobiequities.realtime.mitch.v1.22.newendtime", ftypes.STRING, nil, nil, nil, "New session end time specified in terms of local time for server (i.e. not UTC). The field will contain only spaces if Session Change Reason is \"0\" or \"9\".")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.new_price = ProtoField.new("New Price", "nairobi.nairobiequities.realtime.mitch.v1.22.newprice", ftypes.DOUBLE, nil, nil, nil, "New limit price of the order.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.new_quantity = ProtoField.new("New Quantity", "nairobi.nairobiequities.realtime.mitch.v1.22.newquantity", ftypes.UINT32, nil, nil, nil, "New displayed quantity of the order.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.notional_delta_exposure = ProtoField.new("Notional Delta Exposure", "nairobi.nairobiequities.realtime.mitch.v1.22.notionaldeltaexposure", ftypes.DOUBLE, nil, nil, nil, "Notional exposure updated by the delta of the option based on trade executions.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.notional_exposure = ProtoField.new("Notional Exposure", "nairobi.nairobiequities.realtime.mitch.v1.22.notionalexposure", ftypes.DOUBLE, nil, nil, nil, "Notional exposure related to the options trade executions.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.odd_lot = ProtoField.new("Odd Lot", "nairobi.nairobiequities.realtime.mitch.v1.22.oddlot", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08, "Odd Lot order book")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.off_book = ProtoField.new("Off Book", "nairobi.nairobiequities.realtime.mitch.v1.22.offbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "Off-Book order book")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.off_book_trade_type = ProtoField.new("Off Book Trade Type", "nairobi.nairobiequities.realtime.mitch.v1.22.offbooktradetype", ftypes.STRING, nil, nil, nil, "Type of off-book trade.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.open_close_indicator = ProtoField.new("Open Close Indicator", "nairobi.nairobiequities.realtime.mitch.v1.22.opencloseindicator", ftypes.STRING, nil, nil, nil, "How the price was determined.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.option_type = ProtoField.new("Option Type", "nairobi.nairobiequities.realtime.mitch.v1.22.optiontype", ftypes.STRING, nil, nil, nil, "Call or put. This field will contain a space if the instrument is not an option.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.order_id = ProtoField.new("Order Id", "nairobi.nairobiequities.realtime.mitch.v1.22.orderid", ftypes.UINT64, nil, nil, nil, "Unique identifier of the order.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.order_modified_flags = ProtoField.new("Order Modified Flags", "nairobi.nairobiequities.realtime.mitch.v1.22.ordermodifiedflags", ftypes.STRING, nil, nil, nil, "Flags of the Order Modified message, which the document labels Flags.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.paired_quantity = ProtoField.new("Paired Quantity", "nairobi.nairobiequities.realtime.mitch.v1.22.pairedquantity", ftypes.UINT32, nil, nil, nil, "Quantity that will be matched at the indicative price.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.perctg_diff_from_closing = ProtoField.new("Perctg Diff From Closing", "nairobi.nairobiequities.realtime.mitch.v1.22.perctgdifffromclosing", ftypes.DOUBLE, nil, nil, nil, "Percentage difference of the current Index value compared to the Previous Closing index value. This will be set to 0 when the Index Type is Previous Close (2); the document means Update Type.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.price = ProtoField.new("Price", "nairobi.nairobiequities.realtime.mitch.v1.22.price", ftypes.DOUBLE, nil, nil, nil, "Limit price of the order.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.price_level = ProtoField.new("Price Level", "nairobi.nairobiequities.realtime.mitch.v1.22.pricelevel", ftypes.UINT8, nil, nil, nil, "Price Level of the order. A smaller number will denote a more marketable price point. A Price Level of 0 will denote market orders.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.price_point_action = ProtoField.new("Price Point Action", "nairobi.nairobiequities.realtime.mitch.v1.22.pricepointaction", ftypes.STRING, nil, nil, nil, "Action on the price point. The document names this field Action.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.price_point_sub_book_flags = ProtoField.new("Price Point Sub Book Flags", "nairobi.nairobiequities.realtime.mitch.v1.22.pricepointsubbookflags", ftypes.STRING, nil, nil, nil, "Order books of an Update Price Point, Delete Price Point or Top of Book message, one bit per book. The document labels this field Sub book or Sub Book; it defines no bit 1 or bit 7, and its bit 6 is Default Auction.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.printable = ProtoField.new("Printable", "nairobi.nairobiequities.realtime.mitch.v1.22.printable", ftypes.STRING, nil, nil, nil, "Whether the trade should update time and sales and statistics displays.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.priority_flag = ProtoField.new("Priority Flag", "nairobi.nairobiequities.realtime.mitch.v1.22.priorityflag", ftypes.UINT8, {[0]="Priority Lost", [1]="Priority Retained"}, base.DEC, 0x01, "Whether the order retained its time priority")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.quantity = ProtoField.new("Quantity", "nairobi.nairobiequities.realtime.mitch.v1.22.quantity", ftypes.UINT32, nil, nil, nil, "Displayed quantity of the order.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.regular = ProtoField.new("Regular", "nairobi.nairobiequities.realtime.mitch.v1.22.regular", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Regular order book")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_03 = ProtoField.new("Reserved 03", "nairobi.nairobiequities.realtime.mitch.v1.22.reserved03", ftypes.UINT8, nil, base.DEC, 0x0F, "Not defined")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_04 = ProtoField.new("Reserved 04", "nairobi.nairobiequities.realtime.mitch.v1.22.reserved04", ftypes.UINT8, nil, base.DEC, 0x1F, "Not defined")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_07 = ProtoField.new("Reserved 07", "nairobi.nairobiequities.realtime.mitch.v1.22.reserved07", ftypes.UINT8, nil, base.DEC, 0xFF, "Reserved for future use")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_1 = ProtoField.new("Reserved 1", "nairobi.nairobiequities.realtime.mitch.v1.22.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_11 = ProtoField.new("Reserved 11", "nairobi.nairobiequities.realtime.mitch.v1.22.reserved11", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "Not defined")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_17 = ProtoField.new("Reserved 17", "nairobi.nairobiequities.realtime.mitch.v1.22.reserved17", ftypes.UINT8, nil, base.DEC, 0xFE, "Not defined")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_2 = ProtoField.new("Reserved 2", "nairobi.nairobiequities.realtime.mitch.v1.22.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_57 = ProtoField.new("Reserved 57", "nairobi.nairobiequities.realtime.mitch.v1.22.reserved57", ftypes.UINT8, nil, base.DEC, 0xE0, "Not defined")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_67 = ProtoField.new("Reserved 67", "nairobi.nairobiequities.realtime.mitch.v1.22.reserved67", ftypes.UINT8, nil, base.DEC, 0xC0, "Not defined")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_7 = ProtoField.new("Reserved 7", "nairobi.nairobiequities.realtime.mitch.v1.22.reserved7", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80, "Not defined")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_8 = ProtoField.new("Reserved 8", "nairobi.nairobiequities.realtime.mitch.v1.22.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.seconds = ProtoField.new("Seconds", "nairobi.nairobiequities.realtime.mitch.v1.22.seconds", ftypes.UINT32, nil, nil, nil, "Number of seconds since midnight. Midnight will be in terms of the local time for the server (i.e. not UTC).")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.segment = ProtoField.new("Segment", "nairobi.nairobiequities.realtime.mitch.v1.22.segment", ftypes.STRING, nil, nil, nil, "Segment the instrument is assigned to.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.sell_firm = ProtoField.new("Sell Firm", "nairobi.nairobiequities.realtime.mitch.v1.22.sellfirm", ftypes.STRING, nil, nil, nil, "Identifier of the firm which submitted the sell order. Required only if the 'Publish Firms' is enabled for the order book in which the execution occurred.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.sequence_number = ProtoField.new("Sequence Number", "nairobi.nairobiequities.realtime.mitch.v1.22.sequencenumber", ftypes.UINT32, nil, nil, nil, "Sequence number of the first payload message; zero in a unit header carrying unsequenced messages, other than a heartbeat")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.session_change_reason = ProtoField.new("Session Change Reason", "nairobi.nairobiequities.realtime.mitch.v1.22.sessionchangereason", ftypes.UINT8, nil, nil, nil, "Reason for the session change.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.settlement_type = ProtoField.new("Settlement Type", "nairobi.nairobiequities.realtime.mitch.v1.22.settlementtype", ftypes.STRING, nil, nil, nil, "Type of settlement. Only valid when Order Book is Block Trade (4).")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.side = ProtoField.new("Side", "nairobi.nairobiequities.realtime.mitch.v1.22.side", ftypes.STRING, nil, nil, nil, "Side of the order.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.splits = ProtoField.new("Splits", "nairobi.nairobiequities.realtime.mitch.v1.22.splits", ftypes.UINT32, nil, nil, nil, "Number of orders that contribute to this price point. Only the orders with a visible portion will be considered.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.statistic_type = ProtoField.new("Statistic Type", "nairobi.nairobiequities.realtime.mitch.v1.22.statistictype", ftypes.STRING, nil, nil, nil, "Type of statistic.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.statistics_type = ProtoField.new("Statistics Type", "nairobi.nairobiequities.realtime.mitch.v1.22.statisticstype", ftypes.UINT8, nil, nil, nil, "Level the statistics relate to.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.strike_price = ProtoField.new("Strike Price", "nairobi.nairobiequities.realtime.mitch.v1.22.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Strike price of an option. The price will be zero if the instrument is not an option.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.sub_book = ProtoField.new("Sub Book", "nairobi.nairobiequities.realtime.mitch.v1.22.subbook", ftypes.UINT8, nil, nil, nil, "Order book the status relates to.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.sub_book_flags = ProtoField.new("Sub Book Flags", "nairobi.nairobiequities.realtime.mitch.v1.22.subbookflags", ftypes.STRING, nil, nil, nil, "Order books a message relates to, one bit per book. The document labels this field Sub Book, the label it also gives the single valued order book code of the trade and statistics messages; the two are different encodings.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.symbol = ProtoField.new("Symbol", "nairobi.nairobiequities.realtime.mitch.v1.22.symbol", ftypes.STRING, nil, nil, nil, "Instrument's symbol.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.symbol_directory_flags = ProtoField.new("Symbol Directory Flags", "nairobi.nairobiequities.realtime.mitch.v1.22.symboldirectoryflags", ftypes.STRING, nil, nil, nil, "Instrument flags of the Symbol Directory message, which the document labels Flags.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.symbol_status = ProtoField.new("Symbol Status", "nairobi.nairobiequities.realtime.mitch.v1.22.symbolstatus", ftypes.STRING, nil, nil, nil, "Status of the instrument. This field will contain a space if the instrument is active.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.symbol_status_flags = ProtoField.new("Symbol Status Flags", "nairobi.nairobiequities.realtime.mitch.v1.22.symbolstatusflags", ftypes.STRING, nil, nil, nil, "Flags of the Symbol Status message, which the document labels Flags and reserves for future use.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.term = ProtoField.new("Term", "nairobi.nairobiequities.realtime.mitch.v1.22.term", ftypes.UINT8, nil, nil, nil, "Gives the term of settlement of the 2nd leg of the Repo. Only valid when Order Book is Block Trade (4).")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.text = ProtoField.new("Text", "nairobi.nairobiequities.realtime.mitch.v1.22.text", ftypes.STRING, nil, nil, nil, "Text of the announcement.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.time = ProtoField.new("Time", "nairobi.nairobiequities.realtime.mitch.v1.22.time", ftypes.STRING, nil, nil, nil, "Time the announcement was published. The time is specified in terms of the local time for the server (i.e. not UTC).")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.top_of_book_action = ProtoField.new("Top Of Book Action", "nairobi.nairobiequities.realtime.mitch.v1.22.topofbookaction", ftypes.STRING, nil, nil, nil, "Action on the top of book. The document names this field Action.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trade_date = ProtoField.new("Trade Date", "nairobi.nairobiequities.realtime.mitch.v1.22.tradedate", ftypes.STRING, nil, nil, nil, "Date off-book trade was executed.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trade_id = ProtoField.new("Trade Id", "nairobi.nairobiequities.realtime.mitch.v1.22.tradeid", ftypes.UINT64, nil, nil, nil, "Unique identifier of the trade.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trade_time = ProtoField.new("Trade Time", "nairobi.nairobiequities.realtime.mitch.v1.22.tradetime", ftypes.STRING, nil, nil, nil, "Time off-book trade was executed. The time is specified in terms of the local time for the server (i.e. not UTC).")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trade_type = ProtoField.new("Trade Type", "nairobi.nairobiequities.realtime.mitch.v1.22.tradetype", ftypes.STRING, nil, nil, nil, "On-book or off-book trade.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trades = ProtoField.new("Trades", "nairobi.nairobiequities.realtime.mitch.v1.22.trades", ftypes.UINT32, nil, nil, nil, "Number of trades for the sub book. Will be set to a negative value if the value is not set or withdrawn. The document types the field as an unsigned integer.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trading_status = ProtoField.new("Trading Status", "nairobi.nairobiequities.realtime.mitch.v1.22.tradingstatus", ftypes.STRING, nil, nil, nil, "Trading session that applies to the instrument.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.turnover = ProtoField.new("Turnover", "nairobi.nairobiequities.realtime.mitch.v1.22.turnover", ftypes.DOUBLE, nil, nil, nil, "Turnover for the sub book. Will be set to a negative value if the value is not set or withdrawn.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.underlying = ProtoField.new("Underlying", "nairobi.nairobiequities.realtime.mitch.v1.22.underlying", ftypes.STRING, nil, nil, nil, "Symbol of the underlying instrument. This field will contain only spaces if the instrument is not a derivative.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.underlying_reference_price = ProtoField.new("Underlying Reference Price", "nairobi.nairobiequities.realtime.mitch.v1.22.underlyingreferenceprice", ftypes.DOUBLE, nil, nil, nil, "Underlying Reference Price related to converted value calculated upon an options instrument trade execution.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.underlyings = ProtoField.new("Underlyings", "nairobi.nairobiequities.realtime.mitch.v1.22.underlyings", ftypes.STRING, nil, nil, nil, "Pipe separated list of symbols of the underlyings announcement relates to.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.update_price_point_flags = ProtoField.new("Update Price Point Flags", "nairobi.nairobiequities.realtime.mitch.v1.22.updatepricepointflags", ftypes.STRING, nil, nil, nil, "Flags of the Update Price Point message, which the document labels Flags.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.update_type = ProtoField.new("Update Type", "nairobi.nairobiequities.realtime.mitch.v1.22.updatetype", ftypes.UINT8, nil, nil, nil, "Type of index value.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.urgency = ProtoField.new("Urgency", "nairobi.nairobiequities.realtime.mitch.v1.22.urgency", ftypes.STRING, nil, nil, nil, "Urgency of the announcement.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.volatility = ProtoField.new("Volatility", "nairobi.nairobiequities.realtime.mitch.v1.22.volatility", ftypes.DOUBLE, nil, nil, nil, "Converted volatility of the executed price of the options instrument.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.volume = ProtoField.new("Volume", "nairobi.nairobiequities.realtime.mitch.v1.22.volume", ftypes.UINT32, nil, nil, nil, "Volume for the sub book. Will be set to a negative value if the value is not set or withdrawn. The document types the field as an unsigned integer.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.vwap = ProtoField.new("Vwap", "nairobi.nairobiequities.realtime.mitch.v1.22.vwap", ftypes.DOUBLE, nil, nil, nil, "VWAP for the sub book. Will be set to a negative value if the value is not set or withdrawn.")

-- Nairobi NairobiEquities RealTime Mitch 1.22 Framing
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.message = ProtoField.new("Message", "nairobi.nairobiequities.realtime.mitch.v1.22.message", ftypes.STRING, nil, nil, nil, "Nairobi Mitch Udp Message")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.message_header = ProtoField.new("Message Header", "nairobi.nairobiequities.realtime.mitch.v1.22.messageheader", ftypes.STRING, nil, nil, nil, "Nairobi Mitch Udp Message Header")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.packet = ProtoField.new("Packet", "nairobi.nairobiequities.realtime.mitch.v1.22.packet", ftypes.STRING, nil, nil, nil, "Nairobi Mitch Udp Packet")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.unit_header = ProtoField.new("Unit Header", "nairobi.nairobiequities.realtime.mitch.v1.22.unitheader", ftypes.STRING, nil, nil, nil, "Nairobi Mitch Udp Unit Header")

-- Nairobi NairobiEquities RealTime 1.22 Application Messages
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.add_attributed_order_message = ProtoField.new("Add Attributed Order Message", "nairobi.nairobiequities.realtime.mitch.v1.22.addattributedordermessage", ftypes.STRING, nil, nil, nil, "Indicates that an attributable limit order is added to the order book. The identity of the submitting firm is included in the message.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.add_order_message = ProtoField.new("Add Order Message", "nairobi.nairobiequities.realtime.mitch.v1.22.addordermessage", ftypes.STRING, nil, nil, nil, "Sent to indicate that an anonymous limit or market order is added to the order book.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.aon_info_message = ProtoField.new("Aon Info Message", "nairobi.nairobiequities.realtime.mitch.v1.22.aoninfomessage", ftypes.STRING, nil, nil, nil, "Sent to disseminate the details of an All or None auction.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.auction_info_message = ProtoField.new("Auction Info Message", "nairobi.nairobiequities.realtime.mitch.v1.22.auctioninfomessage", ftypes.STRING, nil, nil, nil, "Indicative auction information for an instrument; the document labels the message type Indicative Auction Info.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "nairobi.nairobiequities.realtime.mitch.v1.22.auctiontrademessage", ftypes.STRING, nil, nil, nil, "Sent to report details of an auction (e.g. opening, closing, intra-day, etc.).")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.consolidated_statistics_message = ProtoField.new("Consolidated Statistics Message", "nairobi.nairobiequities.realtime.mitch.v1.22.consolidatedstatisticsmessage", ftypes.STRING, nil, nil, nil, "Sent to disseminate the volume, turnover and trades of a market, sector or instrument type.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.delete_price_point_message = ProtoField.new("Delete Price Point Message", "nairobi.nairobiequities.realtime.mitch.v1.22.deletepricepointmessage", ftypes.STRING, nil, nil, nil, "Communicates the removal of a price point.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.extended_statistics_message = ProtoField.new("Extended Statistics Message", "nairobi.nairobiequities.realtime.mitch.v1.22.extendedstatisticsmessage", ftypes.STRING, nil, nil, nil, "Sent to disseminate the high, low, VWAP, volume, turnover and other statistics of an instrument for a sub book.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.index_message = ProtoField.new("Index Message", "nairobi.nairobiequities.realtime.mitch.v1.22.indexmessage", ftypes.STRING, nil, nil, nil, "Sent to disseminate the value of an index.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.news_message = ProtoField.new("News Message", "nairobi.nairobiequities.realtime.mitch.v1.22.newsmessage", ftypes.STRING, nil, nil, nil, "Sent to disseminate an announcement.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.off_book_trade_message = ProtoField.new("Off Book Trade Message", "nairobi.nairobiequities.realtime.mitch.v1.22.offbooktrademessage", ftypes.STRING, nil, nil, nil, "Sent to report the details of an off-book trade.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "nairobi.nairobiequities.realtime.mitch.v1.22.orderbookclearmessage", ftypes.STRING, nil, nil, nil, "Sent to instruct recipients to remove all orders from the order book for the specified instrument.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "nairobi.nairobiequities.realtime.mitch.v1.22.orderdeletedmessage", ftypes.STRING, nil, nil, nil, "Sent to indicate that the remainder of a displayed order is cancelled.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.order_executed_message = ProtoField.new("Order Executed Message", "nairobi.nairobiequities.realtime.mitch.v1.22.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "Indicates that the displayed portion of an order is fully or partially filled at its displayed price. The executed quantity is included in the message.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.order_executed_with_price_size_message = ProtoField.new("Order Executed With Price Size Message", "nairobi.nairobiequities.realtime.mitch.v1.22.orderexecutedwithpricesizemessage", ftypes.STRING, nil, nil, nil, "Sent if a displayed order is fully or partially filled at a price that is different from its displayed price, with an indication of whether the trade should update time and sales and statistics displays.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.order_modified_message = ProtoField.new("Order Modified Message", "nairobi.nairobiequities.realtime.mitch.v1.22.ordermodifiedmessage", ftypes.STRING, nil, nil, nil, "Indicates that the displayed quantity or price of a displayed order has been updated, and whether the order has retained or lost its time priority.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.recovery_trade_message = ProtoField.new("Recovery Trade Message", "nairobi.nairobiequities.realtime.mitch.v1.22.recoverytrademessage", ftypes.STRING, nil, nil, nil, "Sent on the Snapshot channel to retransmit the trades published on the Real-Time channel.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.statistics_message = ProtoField.new("Statistics Message", "nairobi.nairobiequities.realtime.mitch.v1.22.statisticsmessage", ftypes.STRING, nil, nil, nil, "Sent to disseminate the opening, closing and previous closing prices of an instrument.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.symbol_directory_message = ProtoField.new("Symbol Directory Message", "nairobi.nairobiequities.realtime.mitch.v1.22.symboldirectorymessage", ftypes.STRING, nil, nil, nil, "Used to disseminate information (e.g. symbol, segment, ISIN, underlying, etc.) on each instrument.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "nairobi.nairobiequities.realtime.mitch.v1.22.symbolstatusmessage", ftypes.STRING, nil, nil, nil, "Indicates the trading session (e.g. pre-opening, regular trading, etc.) that currently applies to an instrument.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.system_event_message = ProtoField.new("System Event Message", "nairobi.nairobiequities.realtime.mitch.v1.22.systemeventmessage", ftypes.STRING, nil, nil, nil, "Sent to indicate the start and end of the day.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.time_message = ProtoField.new("Time Message", "nairobi.nairobiequities.realtime.mitch.v1.22.timemessage", ftypes.STRING, nil, nil, nil, "Sent by the server for every second for which at least one application message is generated; its time is the reference for the nanosecond offsets of every other application message.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.top_of_book_message = ProtoField.new("Top Of Book Message", "nairobi.nairobiequities.realtime.mitch.v1.22.topofbookmessage", ftypes.STRING, nil, nil, nil, "Communicates the best price and cumulative visible size of a side of an order book.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trade_break_message = ProtoField.new("Trade Break Message", "nairobi.nairobiequities.realtime.mitch.v1.22.tradebreakmessage", ftypes.STRING, nil, nil, nil, "Sent to indicate that a previously reported trade is cancelled.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nairobi.nairobiequities.realtime.mitch.v1.22.tradecorrectionmessage", ftypes.STRING, nil, nil, nil, "Sent to report the correction of the executed quantity of a trade.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trade_message = ProtoField.new("Trade Message", "nairobi.nairobiequities.realtime.mitch.v1.22.trademessage", ftypes.STRING, nil, nil, nil, "Sent if the non-displayed portion of an iceberg order or a reserve order is fully or partially filled, or if the negotiated non-disclosed order in the block trade order book is executed.")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.update_price_point_message = ProtoField.new("Update Price Point Message", "nairobi.nairobiequities.realtime.mitch.v1.22.updatepricepointmessage", ftypes.STRING, nil, nil, nil, "Communicates the addition of a new price point or a size update to an already published price point.")

-- Nairobi NairobiEquities RealTime Mitch 1.22 Generated Fields
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.message_index = ProtoField.new("Message Index", "nairobi.nairobiequities.realtime.mitch.v1.22.messageindex", ftypes.UINT16)
omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.timestamp = ProtoField.new("Timestamp", "nairobi.nairobiequities.realtime.mitch.v1.22.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nairobi NairobiEquities RealTime Mitch 1.22 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime Local", 2 },
  { 4, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
nairobi_nairobiequities_realtime_mitch_v1_22.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nairobi NairobiEquities RealTime Mitch 1.22 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.padding = false
show.indexes = true

-- Register Nairobi NairobiEquities RealTime Mitch 1.22 Show Options
omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")
omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.show_application_messages then
    show.application_messages = omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.show_application_messages
  end
  if show.headers ~= omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.show_headers then
    show.headers = omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.show_headers
  end
  if show.padding ~= omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.show_padding then
    show.padding = omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.show_padding
  end
  if show.structs ~= omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.show_structs then
    show.structs = omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.show_structs
  end
  if show.indexes ~= omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.show_indexes then
    show.indexes = omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.show_indexes
  end
  if nairobi_nairobiequities_realtime_mitch_v1_22.timestamp_format ~= omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.timestamp_format then
    nairobi_nairobiequities_realtime_mitch_v1_22.timestamp_format = omi_nairobi_nairobiequities_realtime_mitch_v1_22.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nairobi_nairobiequities_realtime_mitch_v1_22.conversation = {}
nairobi_nairobiequities_realtime_mitch_v1_22.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
nairobi_nairobiequities_realtime_mitch_v1_22.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nairobi_nairobiequities_realtime_mitch_v1_22.conversation.data = function(packet)
  local key = nairobi_nairobiequities_realtime_mitch_v1_22.conversation.key(packet)
  local data = nairobi_nairobiequities_realtime_mitch_v1_22.conversation.flows[key]
  if data == nil then
    data = { seconds = { last = nil, frames = {} } }
    nairobi_nairobiequities_realtime_mitch_v1_22.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nairobi_nairobiequities_realtime_mitch_v1_22.conversation.current = nil


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
-- Nairobi NairobiEquities RealTime Mitch 1.22 Fields
-----------------------------------------------------------------------

-- Action Type
nairobi_nairobiequities_realtime_mitch_v1_22.action_type = {}

-- Size: Action Type
nairobi_nairobiequities_realtime_mitch_v1_22.action_type.size = 1

-- Display: Action Type
nairobi_nairobiequities_realtime_mitch_v1_22.action_type.labels = {
  ["C"] = "Action Type: Cancelled Trade (C)",
  ["N"] = "Action Type: Trade (N)",
  ["A"] = "Action Type: Amend Trade (A)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.action_type.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.action_type.labels[value] or "Action Type: Unknown("..value..")"
end

-- Dissect: Action Type
nairobi_nairobiequities_realtime_mitch_v1_22.action_type.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.action_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.action_type, range, value, display)

  return offset + length, value
end

-- Aon Status
nairobi_nairobiequities_realtime_mitch_v1_22.aon_status = {}

-- Size: Aon Status
nairobi_nairobiequities_realtime_mitch_v1_22.aon_status.size = 1

-- Display: Aon Status
nairobi_nairobiequities_realtime_mitch_v1_22.aon_status.labels = {
  ["A"] = "Aon Status: Active (A)",
  ["C"] = "Aon Status: Completed (C)",
  ["H"] = "Aon Status: Halted (H)",
  ["I"] = "Aon Status: Inactive (I)",
  ["X"] = "Aon Status: Cancelled (X)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.aon_status.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.aon_status.labels[value] or "Aon Status: Unknown("..value..")"
end

-- Dissect: Aon Status
nairobi_nairobiequities_realtime_mitch_v1_22.aon_status.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.aon_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.aon_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.aon_status, range, value, display)

  return offset + length, value
end

-- Attribution
nairobi_nairobiequities_realtime_mitch_v1_22.attribution = {}

-- Size: Attribution
nairobi_nairobiequities_realtime_mitch_v1_22.attribution.size = 6

-- Display: Attribution
nairobi_nairobiequities_realtime_mitch_v1_22.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
nairobi_nairobiequities_realtime_mitch_v1_22.attribution.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.attribution, range, value, display)

  return offset + length, value
end

-- Auction Trade Type
nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_type = {}

-- Size: Auction Trade Type
nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_type.size = 1

-- Display: Auction Trade Type
nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_type.labels = {
  ["B"] = "Auction Trade Type: Bulk Trade (B)",
  ["S"] = "Auction Trade Type: Supplementary Trade (S)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_type.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_type.labels[value] or "Auction Trade Type: Unknown("..value..")"
end

-- Dissect: Auction Trade Type
nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.auction_trade_type, range, value, display)

  return offset + length, value
end

-- Auction Type
nairobi_nairobiequities_realtime_mitch_v1_22.auction_type = {}

-- Size: Auction Type
nairobi_nairobiequities_realtime_mitch_v1_22.auction_type.size = 1

-- Display: Auction Type
nairobi_nairobiequities_realtime_mitch_v1_22.auction_type.display = function(value)
  if value == "A" then
    return "Auction Type: Re Opening Auction (A)"
  end
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "K" then
    return "Auction Type: Intra Day Auction (K)"
  end
  if value == " " then
    return "Auction Type: Not An Auction Trade (<whitespace>)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nairobi_nairobiequities_realtime_mitch_v1_22.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Book Type
nairobi_nairobiequities_realtime_mitch_v1_22.book_type = {}

-- Size: Book Type
nairobi_nairobiequities_realtime_mitch_v1_22.book_type.size = 1

-- Display: Book Type
nairobi_nairobiequities_realtime_mitch_v1_22.book_type.labels = {
  ["0"] = "Book Type: Mbp Mbo Statistics (0)",
  ["1"] = "Book Type: Top Of Book (1)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.book_type.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.book_type.labels[value] or "Book Type: Unknown("..value..")"
end

-- Dissect: Book Type
nairobi_nairobiequities_realtime_mitch_v1_22.book_type.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.book_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.book_type, range, value, display)

  return offset + length, value
end

-- Buy Firm
nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm = {}

-- Size: Buy Firm
nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm.size = 6

-- Display: Buy Firm
nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm.display = function(value)
  return "Buy Firm: "..value
end

-- Dissect: Buy Firm
nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.buy_firm, range, value, display)

  return offset + length, value
end

-- Corporate Action
nairobi_nairobiequities_realtime_mitch_v1_22.corporate_action = {}

-- Size: Corporate Action
nairobi_nairobiequities_realtime_mitch_v1_22.corporate_action.size = 5

-- Display: Corporate Action
nairobi_nairobiequities_realtime_mitch_v1_22.corporate_action.display = function(value)
  return "Corporate Action: "..value
end

-- Dissect: Corporate Action
nairobi_nairobiequities_realtime_mitch_v1_22.corporate_action.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.corporate_action.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.corporate_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.corporate_action, range, value, display)

  return offset + length, value
end

-- Coupon
nairobi_nairobiequities_realtime_mitch_v1_22.coupon = {}

-- Size: Coupon
nairobi_nairobiequities_realtime_mitch_v1_22.coupon.size = 4

-- Display: Coupon
nairobi_nairobiequities_realtime_mitch_v1_22.coupon.display = function(value)
  return "Coupon: "..value
end

-- Translate: Coupon
nairobi_nairobiequities_realtime_mitch_v1_22.coupon.translate = function(raw)
  return raw/10000
end

-- Dissect: Coupon
nairobi_nairobiequities_realtime_mitch_v1_22.coupon.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.coupon.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.coupon.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.coupon.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.coupon, range, value, display)

  return offset + length, value
end

-- Daily Foreign Buy Value
nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_buy_value = {}

-- Size: Daily Foreign Buy Value
nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_buy_value.size = 8

-- Display: Daily Foreign Buy Value
nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_buy_value.display = function(value)
  return "Daily Foreign Buy Value: "..value
end

-- Translate: Daily Foreign Buy Value
nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_buy_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Daily Foreign Buy Value
nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_buy_value.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_buy_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_buy_value.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_buy_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.daily_foreign_buy_value, range, value, display)

  return offset + length, value
end

-- Daily Foreign Sell Value
nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_sell_value = {}

-- Size: Daily Foreign Sell Value
nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_sell_value.size = 8

-- Display: Daily Foreign Sell Value
nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_sell_value.display = function(value)
  return "Daily Foreign Sell Value: "..value
end

-- Translate: Daily Foreign Sell Value
nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_sell_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Daily Foreign Sell Value
nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_sell_value.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_sell_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_sell_value.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_sell_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.daily_foreign_sell_value, range, value, display)

  return offset + length, value
end

-- Date
nairobi_nairobiequities_realtime_mitch_v1_22.date = {}

-- Size: Date
nairobi_nairobiequities_realtime_mitch_v1_22.date.size = 8

-- Display: Date
nairobi_nairobiequities_realtime_mitch_v1_22.date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Date: No Value"
  end

  if #value < 8 then
    return "Date: "..value
  end

  return "Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Date
nairobi_nairobiequities_realtime_mitch_v1_22.date.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.date, range, value, display)

  return offset + length, value
end

-- Display Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.display_quantity = {}

-- Size: Display Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.display_quantity.size = 4

-- Display: Display Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.display_quantity.display = function(value)
  return "Display Quantity: "..value
end

-- Dissect: Display Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.display_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.display_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.display_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.display_quantity, range, value, display)

  return offset + length, value
end

-- Event Code
nairobi_nairobiequities_realtime_mitch_v1_22.event_code = {}

-- Size: Event Code
nairobi_nairobiequities_realtime_mitch_v1_22.event_code.size = 1

-- Display: Event Code
nairobi_nairobiequities_realtime_mitch_v1_22.event_code.labels = {
  ["C"] = "Event Code: End Of Day (C)",
  ["O"] = "Event Code: Start Of Day (O)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.event_code.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nairobi_nairobiequities_realtime_mitch_v1_22.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity = {}

-- Size: Executed Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.size = 4

-- Display: Executed Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Expiration Date
nairobi_nairobiequities_realtime_mitch_v1_22.expiration_date = {}

-- Size: Expiration Date
nairobi_nairobiequities_realtime_mitch_v1_22.expiration_date.size = 8

-- Display: Expiration Date
nairobi_nairobiequities_realtime_mitch_v1_22.expiration_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Expiration Date: No Value"
  end

  if #value < 8 then
    return "Expiration Date: "..value
  end

  return "Expiration Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Expiration Date
nairobi_nairobiequities_realtime_mitch_v1_22.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Halt Reason
nairobi_nairobiequities_realtime_mitch_v1_22.halt_reason = {}

-- Size: Halt Reason
nairobi_nairobiequities_realtime_mitch_v1_22.halt_reason.size = 4

-- Display: Halt Reason
nairobi_nairobiequities_realtime_mitch_v1_22.halt_reason.display = function(value)
  if value == "101" then
    return "Halt Reason: Instrument Level Circuit Breaker Tripped (101)"
  end
  if value == "102" then
    return "Halt Reason: Instrument Status Is Halted (102)"
  end
  if value == "9998" then
    return "Halt Reason: Matching Partition Suspended (9998)"
  end
  if value == "9999" then
    return "Halt Reason: System Suspended (9999)"
  end
  if value == "" then
    return "Halt Reason: Reason Not Available (<whitespace>)"
  end

  return "Halt Reason: Unknown("..value..")"
end

-- Dissect: Halt Reason
nairobi_nairobiequities_realtime_mitch_v1_22.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.halt_reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Headline
nairobi_nairobiequities_realtime_mitch_v1_22.headline = {}

-- Size: Headline
nairobi_nairobiequities_realtime_mitch_v1_22.headline.size = 100

-- Display: Headline
nairobi_nairobiequities_realtime_mitch_v1_22.headline.display = function(value)
  return "Headline: "..value
end

-- Dissect: Headline
nairobi_nairobiequities_realtime_mitch_v1_22.headline.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.headline.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.headline.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.headline, range, value, display)

  return offset + length, value
end

-- High Price
nairobi_nairobiequities_realtime_mitch_v1_22.high_price = {}

-- Size: High Price
nairobi_nairobiequities_realtime_mitch_v1_22.high_price.size = 4

-- Display: High Price
nairobi_nairobiequities_realtime_mitch_v1_22.high_price.display = function(value)
  return "High Price: "..value
end

-- Translate: High Price
nairobi_nairobiequities_realtime_mitch_v1_22.high_price.translate = function(raw)
  return raw/10000
end

-- Dissect: High Price
nairobi_nairobiequities_realtime_mitch_v1_22.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.high_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.high_price.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.high_price, range, value, display)

  return offset + length, value
end

-- Identification Number
nairobi_nairobiequities_realtime_mitch_v1_22.identification_number = {}

-- Size: Identification Number
nairobi_nairobiequities_realtime_mitch_v1_22.identification_number.size = 12

-- Display: Identification Number
nairobi_nairobiequities_realtime_mitch_v1_22.identification_number.display = function(value)
  return "Identification Number: "..value
end

-- Dissect: Identification Number
nairobi_nairobiequities_realtime_mitch_v1_22.identification_number.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.identification_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.identification_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.identification_number, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_direction = {}

-- Size: Imbalance Direction
nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_direction.size = 1

-- Display: Imbalance Direction
nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_direction.labels = {
  ["B"] = "Imbalance Direction: Buy Imbalance (B)",
  ["N"] = "Imbalance Direction: No Imbalance (N)",
  ["O"] = "Imbalance Direction: Insufficient Orders For Auction (O)",
  ["S"] = "Imbalance Direction: Sell Imbalance (S)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_direction.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_direction.labels[value] or "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_quantity = {}

-- Size: Imbalance Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_quantity.size = 4

-- Display: Imbalance Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_quantity.display = function(value)
  return "Imbalance Quantity: "..value
end

-- Dissect: Imbalance Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Index Value
nairobi_nairobiequities_realtime_mitch_v1_22.index_value = {}

-- Size: Index Value
nairobi_nairobiequities_realtime_mitch_v1_22.index_value.size = 4

-- Display: Index Value
nairobi_nairobiequities_realtime_mitch_v1_22.index_value.display = function(value)
  return "Index Value: "..value
end

-- Translate: Index Value
nairobi_nairobiequities_realtime_mitch_v1_22.index_value.translate = function(raw)
  return raw/10000
end

-- Dissect: Index Value
nairobi_nairobiequities_realtime_mitch_v1_22.index_value.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.index_value.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.index_value.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.index_value, range, value, display)

  return offset + length, value
end

-- Instruments
nairobi_nairobiequities_realtime_mitch_v1_22.instruments = {}

-- Size: Instruments
nairobi_nairobiequities_realtime_mitch_v1_22.instruments.size = 100

-- Display: Instruments
nairobi_nairobiequities_realtime_mitch_v1_22.instruments.display = function(value)
  return "Instruments: "..value
end

-- Dissect: Instruments
nairobi_nairobiequities_realtime_mitch_v1_22.instruments.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.instruments.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.instruments.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.instruments, range, value, display)

  return offset + length, value
end

-- Interest Rate
nairobi_nairobiequities_realtime_mitch_v1_22.interest_rate = {}

-- Size: Interest Rate
nairobi_nairobiequities_realtime_mitch_v1_22.interest_rate.size = 4

-- Display: Interest Rate
nairobi_nairobiequities_realtime_mitch_v1_22.interest_rate.display = function(value)
  return "Interest Rate: "..value
end

-- Translate: Interest Rate
nairobi_nairobiequities_realtime_mitch_v1_22.interest_rate.translate = function(raw)
  return raw/10000
end

-- Dissect: Interest Rate
nairobi_nairobiequities_realtime_mitch_v1_22.interest_rate.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.interest_rate.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.interest_rate.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.interest_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.interest_rate, range, value, display)

  return offset + length, value
end

-- Issue Date
nairobi_nairobiequities_realtime_mitch_v1_22.issue_date = {}

-- Size: Issue Date
nairobi_nairobiequities_realtime_mitch_v1_22.issue_date.size = 8

-- Display: Issue Date
nairobi_nairobiequities_realtime_mitch_v1_22.issue_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Issue Date: No Value"
  end

  if #value < 8 then
    return "Issue Date: "..value
  end

  return "Issue Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Issue Date
nairobi_nairobiequities_realtime_mitch_v1_22.issue_date.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.issue_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Issued Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.issued_quantity = {}

-- Size: Issued Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.issued_quantity.size = 8

-- Display: Issued Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.issued_quantity.display = function(value)
  return "Issued Quantity: "..value
end

-- Translate: Issued Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.issued_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Issued Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.issued_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.issued_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.issued_quantity.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.issued_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.issued_quantity, range, value, display)

  return offset + length, value
end

-- Issuer
nairobi_nairobiequities_realtime_mitch_v1_22.issuer = {}

-- Size: Issuer
nairobi_nairobiequities_realtime_mitch_v1_22.issuer.size = 6

-- Display: Issuer
nairobi_nairobiequities_realtime_mitch_v1_22.issuer.display = function(value)
  return "Issuer: "..value
end

-- Dissect: Issuer
nairobi_nairobiequities_realtime_mitch_v1_22.issuer.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.issuer.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.issuer, range, value, display)

  return offset + length, value
end

-- Last Opt Px
nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px = {}

-- Size: Last Opt Px
nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.size = 8

-- Display: Last Opt Px
nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.display = function(value)
  return "Last Opt Px: "..value
end

-- Translate: Last Opt Px
nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Opt Px
nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.last_opt_px, range, value, display)

  return offset + length, value
end

-- Length
nairobi_nairobiequities_realtime_mitch_v1_22.length = {}

-- Size: Length
nairobi_nairobiequities_realtime_mitch_v1_22.length.size = 2

-- Display: Length
nairobi_nairobiequities_realtime_mitch_v1_22.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
nairobi_nairobiequities_realtime_mitch_v1_22.length.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.length, range, value, display)

  return offset + length, value
end

-- Low Price
nairobi_nairobiequities_realtime_mitch_v1_22.low_price = {}

-- Size: Low Price
nairobi_nairobiequities_realtime_mitch_v1_22.low_price.size = 4

-- Display: Low Price
nairobi_nairobiequities_realtime_mitch_v1_22.low_price.display = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
nairobi_nairobiequities_realtime_mitch_v1_22.low_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Low Price
nairobi_nairobiequities_realtime_mitch_v1_22.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.low_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.low_price.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.low_price, range, value, display)

  return offset + length, value
end

-- Market Capitalization
nairobi_nairobiequities_realtime_mitch_v1_22.market_capitalization = {}

-- Size: Market Capitalization
nairobi_nairobiequities_realtime_mitch_v1_22.market_capitalization.size = 8

-- Display: Market Capitalization
nairobi_nairobiequities_realtime_mitch_v1_22.market_capitalization.display = function(value)
  return "Market Capitalization: "..value
end

-- Translate: Market Capitalization
nairobi_nairobiequities_realtime_mitch_v1_22.market_capitalization.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Market Capitalization
nairobi_nairobiequities_realtime_mitch_v1_22.market_capitalization.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.market_capitalization.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.market_capitalization.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.market_capitalization.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.market_capitalization, range, value, display)

  return offset + length, value
end

-- Market Data Group
nairobi_nairobiequities_realtime_mitch_v1_22.market_data_group = {}

-- Size: Market Data Group
nairobi_nairobiequities_realtime_mitch_v1_22.market_data_group.size = 1

-- Display: Market Data Group
nairobi_nairobiequities_realtime_mitch_v1_22.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
nairobi_nairobiequities_realtime_mitch_v1_22.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Market Order Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.market_order_quantity = {}

-- Size: Market Order Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.market_order_quantity.size = 4

-- Display: Market Order Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.market_order_quantity.display = function(value)
  return "Market Order Quantity: "..value
end

-- Dissect: Market Order Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.market_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.market_order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.market_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.market_order_quantity, range, value, display)

  return offset + length, value
end

-- Message Count
nairobi_nairobiequities_realtime_mitch_v1_22.message_count = {}

-- Size: Message Count
nairobi_nairobiequities_realtime_mitch_v1_22.message_count.size = 1

-- Display: Message Count
nairobi_nairobiequities_realtime_mitch_v1_22.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nairobi_nairobiequities_realtime_mitch_v1_22.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nairobi_nairobiequities_realtime_mitch_v1_22.message_length = {}

-- Size: Message Length
nairobi_nairobiequities_realtime_mitch_v1_22.message_length.size = 2

-- Display: Message Length
nairobi_nairobiequities_realtime_mitch_v1_22.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nairobi_nairobiequities_realtime_mitch_v1_22.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nairobi_nairobiequities_realtime_mitch_v1_22.message_type = {}

-- Size: Message Type
nairobi_nairobiequities_realtime_mitch_v1_22.message_type.size = 1

-- Display: Message Type
nairobi_nairobiequities_realtime_mitch_v1_22.message_type.display = function(value)
  if value == 0x54 then
    return "Message Type: Time Message (0x54)"
  end
  if value == 0x53 then
    return "Message Type: System Event Message (0x53)"
  end
  if value == 0x52 then
    return "Message Type: Symbol Directory Message (0x52)"
  end
  if value == 0x48 then
    return "Message Type: Symbol Status Message (0x48)"
  end
  if value == 0x41 then
    return "Message Type: Add Order Message (0x41)"
  end
  if value == 0x46 then
    return "Message Type: Add Attributed Order Message (0x46)"
  end
  if value == 0x44 then
    return "Message Type: Order Deleted Message (0x44)"
  end
  if value == 0x55 then
    return "Message Type: Order Modified Message (0x55)"
  end
  if value == 0x79 then
    return "Message Type: Order Book Clear Message (0x79)"
  end
  if value == 0x45 then
    return "Message Type: Order Executed Message (0x45)"
  end
  if value == 0x43 then
    return "Message Type: Order Executed With Price Size Message (0x43)"
  end
  if value == 0x50 then
    return "Message Type: Trade Message (0x50)"
  end
  if value == 0x51 then
    return "Message Type: Auction Trade Message (0x51)"
  end
  if value == 0x78 then
    return "Message Type: Off Book Trade Message (0x78)"
  end
  if value == 0x42 then
    return "Message Type: Trade Break Message (0x42)"
  end
  if value == 0x60 then
    return "Message Type: Trade Correction Message (0x60)"
  end
  if value == 0x76 then
    return "Message Type: Recovery Trade Message (0x76)"
  end
  if value == 0x49 then
    return "Message Type: Auction Info Message (0x49)"
  end
  if value == 0x77 then
    return "Message Type: Statistics Message (0x77)"
  end
  if value == 0x80 then
    return "Message Type: Extended Statistics Message (0x80)"
  end
  if value == 0x64 then
    return "Message Type: Consolidated Statistics Message (0x64)"
  end
  if value == 0x62 then
    return "Message Type: Index Message (0x62)"
  end
  if value == 0x65 then
    return "Message Type: Aon Info Message (0x65)"
  end
  if value == 0x75 then
    return "Message Type: News Message (0x75)"
  end
  if value == 0x73 then
    return "Message Type: Update Price Point Message (0x73)"
  end
  if value == 0x72 then
    return "Message Type: Delete Price Point Message (0x72)"
  end
  if value == 0x71 then
    return "Message Type: Top Of Book Message (0x71)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
nairobi_nairobiequities_realtime_mitch_v1_22.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanosecond
nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond = {}

-- Size: Nanosecond
nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size = 4

-- Display: Nanosecond
nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.display = function(value)
  return "Nanosecond: "..value
end

-- Dissect: Nanosecond
nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.nanosecond, range, value, display)

  return offset + length, value
end

-- New End Time
nairobi_nairobiequities_realtime_mitch_v1_22.new_end_time = {}

-- Size: New End Time
nairobi_nairobiequities_realtime_mitch_v1_22.new_end_time.size = 8

-- Display: New End Time
nairobi_nairobiequities_realtime_mitch_v1_22.new_end_time.display = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
nairobi_nairobiequities_realtime_mitch_v1_22.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.new_end_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- New Price
nairobi_nairobiequities_realtime_mitch_v1_22.new_price = {}

-- Size: New Price
nairobi_nairobiequities_realtime_mitch_v1_22.new_price.size = 4

-- Display: New Price
nairobi_nairobiequities_realtime_mitch_v1_22.new_price.display = function(value)
  return "New Price: "..value
end

-- Translate: New Price
nairobi_nairobiequities_realtime_mitch_v1_22.new_price.translate = function(raw)
  return raw/10000
end

-- Dissect: New Price
nairobi_nairobiequities_realtime_mitch_v1_22.new_price.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.new_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.new_price.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.new_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.new_price, range, value, display)

  return offset + length, value
end

-- New Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.new_quantity = {}

-- Size: New Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.new_quantity.size = 4

-- Display: New Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.new_quantity.display = function(value)
  return "New Quantity: "..value
end

-- Dissect: New Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.new_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.new_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.new_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.new_quantity, range, value, display)

  return offset + length, value
end

-- Notional Delta Exposure
nairobi_nairobiequities_realtime_mitch_v1_22.notional_delta_exposure = {}

-- Size: Notional Delta Exposure
nairobi_nairobiequities_realtime_mitch_v1_22.notional_delta_exposure.size = 8

-- Display: Notional Delta Exposure
nairobi_nairobiequities_realtime_mitch_v1_22.notional_delta_exposure.display = function(value)
  return "Notional Delta Exposure: "..value
end

-- Translate: Notional Delta Exposure
nairobi_nairobiequities_realtime_mitch_v1_22.notional_delta_exposure.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Notional Delta Exposure
nairobi_nairobiequities_realtime_mitch_v1_22.notional_delta_exposure.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.notional_delta_exposure.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.notional_delta_exposure.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.notional_delta_exposure.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.notional_delta_exposure, range, value, display)

  return offset + length, value
end

-- Notional Exposure
nairobi_nairobiequities_realtime_mitch_v1_22.notional_exposure = {}

-- Size: Notional Exposure
nairobi_nairobiequities_realtime_mitch_v1_22.notional_exposure.size = 8

-- Display: Notional Exposure
nairobi_nairobiequities_realtime_mitch_v1_22.notional_exposure.display = function(value)
  return "Notional Exposure: "..value
end

-- Translate: Notional Exposure
nairobi_nairobiequities_realtime_mitch_v1_22.notional_exposure.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Notional Exposure
nairobi_nairobiequities_realtime_mitch_v1_22.notional_exposure.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.notional_exposure.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.notional_exposure.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.notional_exposure.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.notional_exposure, range, value, display)

  return offset + length, value
end

-- Off Book Trade Type
nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_type = {}

-- Size: Off Book Trade Type
nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_type.size = 4

-- Display: Off Book Trade Type
nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_type.display = function(value)
  if value == "16" then
    return "Off Book Trade Type: Block Trade (16)"
  end
  if value == "20" then
    return "Off Book Trade Type: Not To Mark (20)"
  end
  if value == "37" then
    return "Off Book Trade Type: Crossed Trade (37)"
  end
  if value == "39" then
    return "Off Book Trade Type: Large In Scale (39)"
  end
  if value == "" then
    return "Off Book Trade Type: Trade Type Not Available (<whitespace>)"
  end

  return "Off Book Trade Type: Unknown("..value..")"
end

-- Dissect: Off Book Trade Type
nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.off_book_trade_type, range, value, display)

  return offset + length, value
end

-- Open Close Indicator
nairobi_nairobiequities_realtime_mitch_v1_22.open_close_indicator = {}

-- Size: Open Close Indicator
nairobi_nairobiequities_realtime_mitch_v1_22.open_close_indicator.size = 1

-- Display: Open Close Indicator
nairobi_nairobiequities_realtime_mitch_v1_22.open_close_indicator.labels = {
  ["A"] = "Open Close Indicator: Auction Trade (A)",
  ["B"] = "Open Close Indicator: Regular Trade (B)",
  ["C"] = "Open Close Indicator: Mid Point (C)",
  ["D"] = "Open Close Indicator: Last Regular Trade (D)",
  ["E"] = "Open Close Indicator: Last Auction (E)",
  ["F"] = "Open Close Indicator: Manual (F)",
  ["H"] = "Open Close Indicator: Vwap (H)",
  ["I"] = "Open Close Indicator: Previous Close (I)",
  ["T"] = "Open Close Indicator: Theoretical Price (T)",
  ["U"] = "Open Close Indicator: Best Bid (U)",
  ["V"] = "Open Close Indicator: Best Offer (V)",
  ["W"] = "Open Close Indicator: None (W)",
  ["X"] = "Open Close Indicator: Vwap Of Last N Trades (X)",
  ["Y"] = "Open Close Indicator: Reference Price (Y)",
  ["Z"] = "Open Close Indicator: Price Unavailable (Z)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.open_close_indicator.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.open_close_indicator.labels[value] or "Open Close Indicator: Unknown("..value..")"
end

-- Dissect: Open Close Indicator
nairobi_nairobiequities_realtime_mitch_v1_22.open_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.open_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.open_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.open_close_indicator, range, value, display)

  return offset + length, value
end

-- Option Type
nairobi_nairobiequities_realtime_mitch_v1_22.option_type = {}

-- Size: Option Type
nairobi_nairobiequities_realtime_mitch_v1_22.option_type.size = 1

-- Display: Option Type
nairobi_nairobiequities_realtime_mitch_v1_22.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call Option (C)"
  end
  if value == "P" then
    return "Option Type: Put Option (P)"
  end
  if value == " " then
    return "Option Type: Not An Option (<whitespace>)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nairobi_nairobiequities_realtime_mitch_v1_22.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Id
nairobi_nairobiequities_realtime_mitch_v1_22.order_id = {}

-- Size: Order Id
nairobi_nairobiequities_realtime_mitch_v1_22.order_id.size = 8

-- Display: Order Id
nairobi_nairobiequities_realtime_mitch_v1_22.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nairobi_nairobiequities_realtime_mitch_v1_22.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.order_id, range, value, display)

  return offset + length, value
end

-- Paired Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.paired_quantity = {}

-- Size: Paired Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.paired_quantity.size = 4

-- Display: Paired Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.paired_quantity.display = function(value)
  return "Paired Quantity: "..value
end

-- Dissect: Paired Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.paired_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.paired_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.paired_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.paired_quantity, range, value, display)

  return offset + length, value
end

-- Perctg Diff From Closing
nairobi_nairobiequities_realtime_mitch_v1_22.perctg_diff_from_closing = {}

-- Size: Perctg Diff From Closing
nairobi_nairobiequities_realtime_mitch_v1_22.perctg_diff_from_closing.size = 4

-- Display: Perctg Diff From Closing
nairobi_nairobiequities_realtime_mitch_v1_22.perctg_diff_from_closing.display = function(value)
  return "Perctg Diff From Closing: "..value
end

-- Translate: Perctg Diff From Closing
nairobi_nairobiequities_realtime_mitch_v1_22.perctg_diff_from_closing.translate = function(raw)
  return raw/10000
end

-- Dissect: Perctg Diff From Closing
nairobi_nairobiequities_realtime_mitch_v1_22.perctg_diff_from_closing.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.perctg_diff_from_closing.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.perctg_diff_from_closing.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.perctg_diff_from_closing.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.perctg_diff_from_closing, range, value, display)

  return offset + length, value
end

-- Price
nairobi_nairobiequities_realtime_mitch_v1_22.price = {}

-- Size: Price
nairobi_nairobiequities_realtime_mitch_v1_22.price.size = 4

-- Display: Price
nairobi_nairobiequities_realtime_mitch_v1_22.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nairobi_nairobiequities_realtime_mitch_v1_22.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nairobi_nairobiequities_realtime_mitch_v1_22.price.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.price.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.price, range, value, display)

  return offset + length, value
end

-- Price Level
nairobi_nairobiequities_realtime_mitch_v1_22.price_level = {}

-- Size: Price Level
nairobi_nairobiequities_realtime_mitch_v1_22.price_level.size = 1

-- Display: Price Level
nairobi_nairobiequities_realtime_mitch_v1_22.price_level.display = function(value)
  return "Price Level: "..value
end

-- Dissect: Price Level
nairobi_nairobiequities_realtime_mitch_v1_22.price_level.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.price_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.price_level, range, value, display)

  return offset + length, value
end

-- Price Point Action
nairobi_nairobiequities_realtime_mitch_v1_22.price_point_action = {}

-- Size: Price Point Action
nairobi_nairobiequities_realtime_mitch_v1_22.price_point_action.size = 1

-- Display: Price Point Action
nairobi_nairobiequities_realtime_mitch_v1_22.price_point_action.labels = {
  ["0"] = "Price Point Action: Add (0)",
  ["1"] = "Price Point Action: Change (1)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.price_point_action.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.price_point_action.labels[value] or "Price Point Action: Unknown("..value..")"
end

-- Dissect: Price Point Action
nairobi_nairobiequities_realtime_mitch_v1_22.price_point_action.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.price_point_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.price_point_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.price_point_action, range, value, display)

  return offset + length, value
end

-- Printable
nairobi_nairobiequities_realtime_mitch_v1_22.printable = {}

-- Size: Printable
nairobi_nairobiequities_realtime_mitch_v1_22.printable.size = 1

-- Display: Printable
nairobi_nairobiequities_realtime_mitch_v1_22.printable.labels = {
  ["N"] = "Printable: Non Printable (N)",
  ["Y"] = "Printable: Printable (Y)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.printable.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.printable.labels[value] or "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nairobi_nairobiequities_realtime_mitch_v1_22.printable.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.printable, range, value, display)

  return offset + length, value
end

-- Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.quantity = {}

-- Size: Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.quantity.size = 4

-- Display: Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nairobi_nairobiequities_realtime_mitch_v1_22.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
nairobi_nairobiequities_realtime_mitch_v1_22.reserved_1 = {}

-- Size: Reserved 1
nairobi_nairobiequities_realtime_mitch_v1_22.reserved_1.size = 1

-- Display: Reserved 1
nairobi_nairobiequities_realtime_mitch_v1_22.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nairobi_nairobiequities_realtime_mitch_v1_22.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
nairobi_nairobiequities_realtime_mitch_v1_22.reserved_2 = {}

-- Size: Reserved 2
nairobi_nairobiequities_realtime_mitch_v1_22.reserved_2.size = 2

-- Display: Reserved 2
nairobi_nairobiequities_realtime_mitch_v1_22.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nairobi_nairobiequities_realtime_mitch_v1_22.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 8
nairobi_nairobiequities_realtime_mitch_v1_22.reserved_8 = {}

-- Size: Reserved 8
nairobi_nairobiequities_realtime_mitch_v1_22.reserved_8.size = 8

-- Display: Reserved 8
nairobi_nairobiequities_realtime_mitch_v1_22.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
nairobi_nairobiequities_realtime_mitch_v1_22.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Seconds
nairobi_nairobiequities_realtime_mitch_v1_22.seconds = {}

-- Size: Seconds
nairobi_nairobiequities_realtime_mitch_v1_22.seconds.size = 4

-- Store: Seconds
nairobi_nairobiequities_realtime_mitch_v1_22.seconds.current = nil

-- Generated: Seconds
nairobi_nairobiequities_realtime_mitch_v1_22.seconds.generated = function(value, range, packet, parent)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.seconds.display(value)
  local seconds = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.seconds, range, value, display)
  seconds:set_generated()
end

-- Display: Seconds
nairobi_nairobiequities_realtime_mitch_v1_22.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nairobi_nairobiequities_realtime_mitch_v1_22.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.seconds, range, value, display)

  return offset + length, value
end

-- Segment
nairobi_nairobiequities_realtime_mitch_v1_22.segment = {}

-- Size: Segment
nairobi_nairobiequities_realtime_mitch_v1_22.segment.size = 6

-- Display: Segment
nairobi_nairobiequities_realtime_mitch_v1_22.segment.labels = {
  ["MBD"] = "Segment: Main Board (MBD)",
  ["SBD"] = "Segment: Secondary Board (SBD)",
  ["DBD"] = "Segment: Default Board (DBD)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.segment.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.segment.labels[value] or "Segment: Unknown("..value..")"
end

-- Dissect: Segment
nairobi_nairobiequities_realtime_mitch_v1_22.segment.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.segment, range, value, display)

  return offset + length, value
end

-- Sell Firm
nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm = {}

-- Size: Sell Firm
nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm.size = 6

-- Display: Sell Firm
nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm.display = function(value)
  return "Sell Firm: "..value
end

-- Dissect: Sell Firm
nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.sell_firm, range, value, display)

  return offset + length, value
end

-- Sequence Number
nairobi_nairobiequities_realtime_mitch_v1_22.sequence_number = {}

-- Size: Sequence Number
nairobi_nairobiequities_realtime_mitch_v1_22.sequence_number.size = 4

-- Display: Sequence Number
nairobi_nairobiequities_realtime_mitch_v1_22.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nairobi_nairobiequities_realtime_mitch_v1_22.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Change Reason
nairobi_nairobiequities_realtime_mitch_v1_22.session_change_reason = {}

-- Size: Session Change Reason
nairobi_nairobiequities_realtime_mitch_v1_22.session_change_reason.size = 1

-- Display: Session Change Reason
nairobi_nairobiequities_realtime_mitch_v1_22.session_change_reason.labels = {
  [0] = "Session Change Reason: Scheduled Transition (0)",
  [1] = "Session Change Reason: Extended By Market Ops (1)",
  [2] = "Session Change Reason: Shortened By Market Ops (2)",
  [3] = "Session Change Reason: Market Order Extension (3)",
  [4] = "Session Change Reason: Price Monitoring Extension (4)",
  [5] = "Session Change Reason: Circuit Breaker Tripped (5)",
  [9] = "Session Change Reason: Unavailable (9)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.session_change_reason.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.session_change_reason.labels[value] or "Session Change Reason: Unknown("..value..")"
end

-- Dissect: Session Change Reason
nairobi_nairobiequities_realtime_mitch_v1_22.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Settlement Type
nairobi_nairobiequities_realtime_mitch_v1_22.settlement_type = {}

-- Size: Settlement Type
nairobi_nairobiequities_realtime_mitch_v1_22.settlement_type.size = 1

-- Display: Settlement Type
nairobi_nairobiequities_realtime_mitch_v1_22.settlement_type.labels = {
  ["1"] = "Settlement Type: Cash T Plus 0 (1)",
  ["2"] = "Settlement Type: Early Settle T Plus 1 (2)",
  ["3"] = "Settlement Type: T Plus 2 (3)",
  ["4"] = "Settlement Type: Regular T Plus 3 (4)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.settlement_type.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.settlement_type.labels[value] or "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
nairobi_nairobiequities_realtime_mitch_v1_22.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.settlement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Side
nairobi_nairobiequities_realtime_mitch_v1_22.side = {}

-- Size: Side
nairobi_nairobiequities_realtime_mitch_v1_22.side.size = 1

-- Display: Side
nairobi_nairobiequities_realtime_mitch_v1_22.side.labels = {
  ["B"] = "Side: Buy Order (B)",
  ["S"] = "Side: Sell Order (S)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.side.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
nairobi_nairobiequities_realtime_mitch_v1_22.side.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.side, range, value, display)

  return offset + length, value
end

-- Splits
nairobi_nairobiequities_realtime_mitch_v1_22.splits = {}

-- Size: Splits
nairobi_nairobiequities_realtime_mitch_v1_22.splits.size = 4

-- Display: Splits
nairobi_nairobiequities_realtime_mitch_v1_22.splits.display = function(value)
  return "Splits: "..value
end

-- Dissect: Splits
nairobi_nairobiequities_realtime_mitch_v1_22.splits.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.splits.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.splits.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.splits, range, value, display)

  return offset + length, value
end

-- Statistic Type
nairobi_nairobiequities_realtime_mitch_v1_22.statistic_type = {}

-- Size: Statistic Type
nairobi_nairobiequities_realtime_mitch_v1_22.statistic_type.size = 1

-- Display: Statistic Type
nairobi_nairobiequities_realtime_mitch_v1_22.statistic_type.labels = {
  ["C"] = "Statistic Type: Closing Price (C)",
  ["O"] = "Statistic Type: Opening Price (O)",
  ["P"] = "Statistic Type: Previous Close (P)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.statistic_type.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.statistic_type.labels[value] or "Statistic Type: Unknown("..value..")"
end

-- Dissect: Statistic Type
nairobi_nairobiequities_realtime_mitch_v1_22.statistic_type.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.statistic_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.statistic_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.statistic_type, range, value, display)

  return offset + length, value
end

-- Statistics Type
nairobi_nairobiequities_realtime_mitch_v1_22.statistics_type = {}

-- Size: Statistics Type
nairobi_nairobiequities_realtime_mitch_v1_22.statistics_type.size = 1

-- Display: Statistics Type
nairobi_nairobiequities_realtime_mitch_v1_22.statistics_type.labels = {
  [0] = "Statistics Type: Market (0)",
  [1] = "Statistics Type: Sector (1)",
  [2] = "Statistics Type: Instrument Type (2)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.statistics_type.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.statistics_type.labels[value] or "Statistics Type: Unknown("..value..")"
end

-- Dissect: Statistics Type
nairobi_nairobiequities_realtime_mitch_v1_22.statistics_type.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.statistics_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.statistics_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.statistics_type, range, value, display)

  return offset + length, value
end

-- Strike Price
nairobi_nairobiequities_realtime_mitch_v1_22.strike_price = {}

-- Size: Strike Price
nairobi_nairobiequities_realtime_mitch_v1_22.strike_price.size = 4

-- Display: Strike Price
nairobi_nairobiequities_realtime_mitch_v1_22.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
nairobi_nairobiequities_realtime_mitch_v1_22.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
nairobi_nairobiequities_realtime_mitch_v1_22.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.strike_price.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Sub Book
nairobi_nairobiequities_realtime_mitch_v1_22.sub_book = {}

-- Size: Sub Book
nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.size = 1

-- Display: Sub Book
nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.labels = {
  [1] = "Sub Book: Regular (1)",
  [2] = "Sub Book: Off Book (2)",
  [3] = "Sub Book: Odd Lot (3)",
  [4] = "Sub Book: Block Trade (4)",
  [5] = "Sub Book: All Or None (5)",
  [6] = "Sub Book: Early Settlement (6)",
  [7] = "Sub Book: Auction (7)",
  [9] = "Sub Book: Bulletin Board (9)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.labels[value] or "Sub Book: Unknown("..value..")"
end

-- Dissect: Sub Book
nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.sub_book, range, value, display)

  return offset + length, value
end

-- Symbol
nairobi_nairobiequities_realtime_mitch_v1_22.symbol = {}

-- Size: Symbol
nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size = 12

-- Display: Symbol
nairobi_nairobiequities_realtime_mitch_v1_22.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Status
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status = {}

-- Size: Symbol Status
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status.size = 1

-- Display: Symbol Status
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status.display = function(value)
  if value == "H" then
    return "Symbol Status: Halted (H)"
  end
  if value == "S" then
    return "Symbol Status: Suspended (S)"
  end
  if value == "a" then
    return "Symbol Status: Inactive (a)"
  end
  if value == " " then
    return "Symbol Status: Active (<whitespace>)"
  end

  return "Symbol Status: Unknown("..value..")"
end

-- Dissect: Symbol Status
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.symbol_status, range, value, display)

  return offset + length, value
end

-- Term
nairobi_nairobiequities_realtime_mitch_v1_22.term = {}

-- Size: Term
nairobi_nairobiequities_realtime_mitch_v1_22.term.size = 1

-- Display: Term
nairobi_nairobiequities_realtime_mitch_v1_22.term.display = function(value)
  return "Term: "..value
end

-- Dissect: Term
nairobi_nairobiequities_realtime_mitch_v1_22.term.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.term.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.term.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.term, range, value, display)

  return offset + length, value
end

-- Text
nairobi_nairobiequities_realtime_mitch_v1_22.text = {}

-- Size: Text
nairobi_nairobiequities_realtime_mitch_v1_22.text.size = 750

-- Display: Text
nairobi_nairobiequities_realtime_mitch_v1_22.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nairobi_nairobiequities_realtime_mitch_v1_22.text.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.text, range, value, display)

  return offset + length, value
end

-- Time
nairobi_nairobiequities_realtime_mitch_v1_22.time = {}

-- Size: Time
nairobi_nairobiequities_realtime_mitch_v1_22.time.size = 8

-- Display: Time
nairobi_nairobiequities_realtime_mitch_v1_22.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nairobi_nairobiequities_realtime_mitch_v1_22.time.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.time, range, value, display)

  return offset + length, value
end

-- Top Of Book Action
nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_action = {}

-- Size: Top Of Book Action
nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_action.size = 1

-- Display: Top Of Book Action
nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_action.labels = {
  ["1"] = "Top Of Book Action: Update (1)",
  ["2"] = "Top Of Book Action: Delete (2)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_action.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_action.labels[value] or "Top Of Book Action: Unknown("..value..")"
end

-- Dissect: Top Of Book Action
nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_action.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.top_of_book_action, range, value, display)

  return offset + length, value
end

-- Trade Date
nairobi_nairobiequities_realtime_mitch_v1_22.trade_date = {}

-- Size: Trade Date
nairobi_nairobiequities_realtime_mitch_v1_22.trade_date.size = 8

-- Display: Trade Date
nairobi_nairobiequities_realtime_mitch_v1_22.trade_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Date: No Value"
  end

  if #value < 8 then
    return "Trade Date: "..value
  end

  return "Trade Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Trade Date
nairobi_nairobiequities_realtime_mitch_v1_22.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.trade_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Id
nairobi_nairobiequities_realtime_mitch_v1_22.trade_id = {}

-- Size: Trade Id
nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.size = 8

-- Display: Trade Id
nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Time
nairobi_nairobiequities_realtime_mitch_v1_22.trade_time = {}

-- Size: Trade Time
nairobi_nairobiequities_realtime_mitch_v1_22.trade_time.size = 8

-- Display: Trade Time
nairobi_nairobiequities_realtime_mitch_v1_22.trade_time.display = function(value)
  return "Trade Time: "..value
end

-- Dissect: Trade Time
nairobi_nairobiequities_realtime_mitch_v1_22.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.trade_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Trade Type
nairobi_nairobiequities_realtime_mitch_v1_22.trade_type = {}

-- Size: Trade Type
nairobi_nairobiequities_realtime_mitch_v1_22.trade_type.size = 1

-- Display: Trade Type
nairobi_nairobiequities_realtime_mitch_v1_22.trade_type.labels = {
  ["T"] = "Trade Type: On Book Trade (T)",
  ["N"] = "Trade Type: Off Book Trade (N)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.trade_type.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
nairobi_nairobiequities_realtime_mitch_v1_22.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trades
nairobi_nairobiequities_realtime_mitch_v1_22.trades = {}

-- Size: Trades
nairobi_nairobiequities_realtime_mitch_v1_22.trades.size = 4

-- Display: Trades
nairobi_nairobiequities_realtime_mitch_v1_22.trades.display = function(value)
  return "Trades: "..value
end

-- Dissect: Trades
nairobi_nairobiequities_realtime_mitch_v1_22.trades.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.trades.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trades, range, value, display)

  return offset + length, value
end

-- Trading Status
nairobi_nairobiequities_realtime_mitch_v1_22.trading_status = {}

-- Size: Trading Status
nairobi_nairobiequities_realtime_mitch_v1_22.trading_status.size = 1

-- Display: Trading Status
nairobi_nairobiequities_realtime_mitch_v1_22.trading_status.labels = {
  ["H"] = "Trading Status: Halt (H)",
  ["T"] = "Trading Status: Regular Trading (T)",
  ["a"] = "Trading Status: Opening Auction Call (a)",
  ["b"] = "Trading Status: Post Close (b)",
  ["c"] = "Trading Status: Market Close (c)",
  ["d"] = "Trading Status: Closing Auction Call (d)",
  ["e"] = "Trading Status: Re Opening Auction Call (e)",
  ["l"] = "Trading Status: Pause (l)",
  ["n"] = "Trading Status: Order Entry (n)",
  ["p"] = "Trading Status: Auction Initiation (p)",
  ["q"] = "Trading Status: Start Of Auction Call (q)",
  ["r"] = "Trading Status: End Of Auction Call (r)",
  ["s"] = "Trading Status: Start Of Aon Order Entry (s)",
  ["t"] = "Trading Status: End Of Aon Order Entry (t)",
  ["u"] = "Trading Status: Closing Price Cross (u)",
  ["v"] = "Trading Status: Reserved For Backward Compatibility (v)",
  ["w"] = "Trading Status: No Active Session (w)",
  ["x"] = "Trading Status: End Of Post Close (x)",
  ["y"] = "Trading Status: Pre Trading (y)",
  ["z"] = "Trading Status: Closing Price Publication (z)",
  ["o"] = "Trading Status: Intraday Auction Call (o)",
  ["0"] = "Trading Status: Auction Execution (0)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.trading_status.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
nairobi_nairobiequities_realtime_mitch_v1_22.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Turnover
nairobi_nairobiequities_realtime_mitch_v1_22.turnover = {}

-- Size: Turnover
nairobi_nairobiequities_realtime_mitch_v1_22.turnover.size = 8

-- Display: Turnover
nairobi_nairobiequities_realtime_mitch_v1_22.turnover.display = function(value)
  return "Turnover: "..value
end

-- Translate: Turnover
nairobi_nairobiequities_realtime_mitch_v1_22.turnover.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Turnover
nairobi_nairobiequities_realtime_mitch_v1_22.turnover.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.turnover.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.turnover, range, value, display)

  return offset + length, value
end

-- Underlying
nairobi_nairobiequities_realtime_mitch_v1_22.underlying = {}

-- Size: Underlying
nairobi_nairobiequities_realtime_mitch_v1_22.underlying.size = 6

-- Display: Underlying
nairobi_nairobiequities_realtime_mitch_v1_22.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
nairobi_nairobiequities_realtime_mitch_v1_22.underlying.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.underlying, range, value, display)

  return offset + length, value
end

-- Underlying Reference Price
nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price = {}

-- Size: Underlying Reference Price
nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.size = 8

-- Display: Underlying Reference Price
nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.display = function(value)
  return "Underlying Reference Price: "..value
end

-- Translate: Underlying Reference Price
nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Underlying Reference Price
nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.underlying_reference_price, range, value, display)

  return offset + length, value
end

-- Underlyings
nairobi_nairobiequities_realtime_mitch_v1_22.underlyings = {}

-- Size: Underlyings
nairobi_nairobiequities_realtime_mitch_v1_22.underlyings.size = 100

-- Display: Underlyings
nairobi_nairobiequities_realtime_mitch_v1_22.underlyings.display = function(value)
  return "Underlyings: "..value
end

-- Dissect: Underlyings
nairobi_nairobiequities_realtime_mitch_v1_22.underlyings.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.underlyings.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.underlyings.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.underlyings, range, value, display)

  return offset + length, value
end

-- Update Type
nairobi_nairobiequities_realtime_mitch_v1_22.update_type = {}

-- Size: Update Type
nairobi_nairobiequities_realtime_mitch_v1_22.update_type.size = 1

-- Display: Update Type
nairobi_nairobiequities_realtime_mitch_v1_22.update_type.labels = {
  [0] = "Update Type: Intra Day (0)",
  [1] = "Update Type: Closing (1)",
  [2] = "Update Type: Previous Close (2)",
  [3] = "Update Type: Indicative (3)",
  [4] = "Update Type: High (4)",
  [5] = "Update Type: Low (5)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.update_type.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.update_type.labels[value] or "Update Type: Unknown("..value..")"
end

-- Dissect: Update Type
nairobi_nairobiequities_realtime_mitch_v1_22.update_type.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.update_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.update_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.update_type, range, value, display)

  return offset + length, value
end

-- Urgency
nairobi_nairobiequities_realtime_mitch_v1_22.urgency = {}

-- Size: Urgency
nairobi_nairobiequities_realtime_mitch_v1_22.urgency.size = 1

-- Display: Urgency
nairobi_nairobiequities_realtime_mitch_v1_22.urgency.labels = {
  ["0"] = "Urgency: Regular (0)",
  ["1"] = "Urgency: High Priority (1)",
  ["2"] = "Urgency: Low Priority (2)",
}

nairobi_nairobiequities_realtime_mitch_v1_22.urgency.display = function(value)
  return nairobi_nairobiequities_realtime_mitch_v1_22.urgency.labels[value] or "Urgency: Unknown("..value..")"
end

-- Dissect: Urgency
nairobi_nairobiequities_realtime_mitch_v1_22.urgency.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.urgency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.urgency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.urgency, range, value, display)

  return offset + length, value
end

-- Volatility
nairobi_nairobiequities_realtime_mitch_v1_22.volatility = {}

-- Size: Volatility
nairobi_nairobiequities_realtime_mitch_v1_22.volatility.size = 8

-- Display: Volatility
nairobi_nairobiequities_realtime_mitch_v1_22.volatility.display = function(value)
  return "Volatility: "..value
end

-- Translate: Volatility
nairobi_nairobiequities_realtime_mitch_v1_22.volatility.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Volatility
nairobi_nairobiequities_realtime_mitch_v1_22.volatility.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.volatility.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.volatility.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.volatility, range, value, display)

  return offset + length, value
end

-- Volume
nairobi_nairobiequities_realtime_mitch_v1_22.volume = {}

-- Size: Volume
nairobi_nairobiequities_realtime_mitch_v1_22.volume.size = 4

-- Display: Volume
nairobi_nairobiequities_realtime_mitch_v1_22.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nairobi_nairobiequities_realtime_mitch_v1_22.volume.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.volume, range, value, display)

  return offset + length, value
end

-- Vwap
nairobi_nairobiequities_realtime_mitch_v1_22.vwap = {}

-- Size: Vwap
nairobi_nairobiequities_realtime_mitch_v1_22.vwap.size = 4

-- Display: Vwap
nairobi_nairobiequities_realtime_mitch_v1_22.vwap.display = function(value)
  return "Vwap: "..value
end

-- Translate: Vwap
nairobi_nairobiequities_realtime_mitch_v1_22.vwap.translate = function(raw)
  return raw/10000
end

-- Dissect: Vwap
nairobi_nairobiequities_realtime_mitch_v1_22.vwap.dissect = function(buffer, offset, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.vwap.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.vwap.translate(raw)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.vwap, range, value, display)

  return offset + length, value
end

-- Timestamp
nairobi_nairobiequities_realtime_mitch_v1_22.timestamp = {}

-- Translate: Timestamp
nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.translate = function(nanosecond, stored_seconds)
  return UInt64.new(stored_seconds) * 1000000000 + nanosecond
end

-- Display: Timestamp
nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.display = function(nanosecond, stored_seconds, packet)
  -- Raw display mode
  if nairobi_nairobiequities_realtime_mitch_v1_22.timestamp_format == 0 then
    return "Timestamp: "..(stored_seconds * 1000000000 + nanosecond)
  end

  -- An offset the Field epoch leaves unbounded carries whole seconds of its own
  local seconds = stored_seconds + math.floor(nanosecond / 1000000000)
  local fraction = nanosecond % 1000000000

  -- Full datetime mode (the day the frame that carried it settled on)
  if nairobi_nairobiequities_realtime_mitch_v1_22.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      local format = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Timestamp: "..os.date(format, midnight + seconds)..string.format("%09d", fraction)
    end
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", fraction)
end

-- Composite: Timestamp
nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.composite = function(buffer, offset, stored_seconds, packet, parent)
  local length = nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size
  local range = buffer(offset, length)
  local nanosecond = range:le_uint()
  local value = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.translate(nanosecond, stored_seconds)
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.display(nanosecond, stored_seconds, packet)
  parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.timestamp, range, value, display)

  nairobi_nairobiequities_realtime_mitch_v1_22.seconds.generated(stored_seconds, range, packet, parent)

  display = nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.display(nanosecond)
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.nanosecond, range, nanosecond, display)

  return offset + length, value
end

-- Dissect: Timestamp
nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect = function(buffer, offset, packet, parent)
  if nairobi_nairobiequities_realtime_mitch_v1_22.timestamp_format ~= 0 then
    local stored_seconds = nairobi_nairobiequities_realtime_mitch_v1_22.seconds.current

    if stored_seconds ~= nil then
      return nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.composite(buffer, offset, stored_seconds, packet, parent)
    end
  end

  return nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Nairobi NairobiEquities RealTime Mitch 1.22
-----------------------------------------------------------------------

-- Price Point Sub Book Flags
nairobi_nairobiequities_realtime_mitch_v1_22.price_point_sub_book_flags = {}

-- Size: Price Point Sub Book Flags
nairobi_nairobiequities_realtime_mitch_v1_22.price_point_sub_book_flags.size = 1

-- Display: Price Point Sub Book Flags
nairobi_nairobiequities_realtime_mitch_v1_22.price_point_sub_book_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Regular flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Regular"
  end
  -- Is Block Trade flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Block Trade"
  end
  -- Is Odd Lot flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Odd Lot"
  end
  -- Is Early Settlement flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Early Settlement"
  end
  -- Is Bulletin Board flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Bulletin Board"
  end
  -- Is Default Auction flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Default Auction"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Price Point Sub Book Flags
nairobi_nairobiequities_realtime_mitch_v1_22.price_point_sub_book_flags.bits = function(range, value, packet, parent)

  -- Regular: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.regular, range, value)

  -- Reserved 11: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_11, range, value)

  -- Block Trade: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.block_trade, range, value)

  -- Odd Lot: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.odd_lot, range, value)

  -- Early Settlement: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.early_settlement, range, value)

  -- Bulletin Board: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.bulletin_board, range, value)

  -- Default Auction: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.default_auction, range, value)

  -- Reserved 7: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_7, range, value)
end

-- Dissect: Price Point Sub Book Flags
nairobi_nairobiequities_realtime_mitch_v1_22.price_point_sub_book_flags.dissect = function(buffer, offset, packet, parent)
  local size = nairobi_nairobiequities_realtime_mitch_v1_22.price_point_sub_book_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.price_point_sub_book_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.price_point_sub_book_flags, range, display)

  if show.structs then
    nairobi_nairobiequities_realtime_mitch_v1_22.price_point_sub_book_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Top Of Book Message
nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_message = {}

-- Size: Top Of Book Message
nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price_point_sub_book_flags.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_action.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.side.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.market_order_quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.reserved_2.size

-- Display: Top Of Book Message
nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Book Message
nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Price Point Sub Book Flags: Struct of 8 fields
  index, price_point_sub_book_flags = nairobi_nairobiequities_realtime_mitch_v1_22.price_point_sub_book_flags.dissect(buffer, index, packet, parent)

  -- Top Of Book Action: Byte
  index, top_of_book_action = nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_action.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = nairobi_nairobiequities_realtime_mitch_v1_22.side.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nairobi_nairobiequities_realtime_mitch_v1_22.price.dissect(buffer, index, packet, parent)

  -- Quantity: UInt32
  index, quantity = nairobi_nairobiequities_realtime_mitch_v1_22.quantity.dissect(buffer, index, packet, parent)

  -- Market Order Quantity: UInt32
  index, market_order_quantity = nairobi_nairobiequities_realtime_mitch_v1_22.market_order_quantity.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  if show.padding then
    index, reserved_2 = nairobi_nairobiequities_realtime_mitch_v1_22.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nairobi_nairobiequities_realtime_mitch_v1_22.reserved_2.size
  end

  return index
end

-- Dissect: Top Of Book Message
nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.top_of_book_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Price Point Message
nairobi_nairobiequities_realtime_mitch_v1_22.delete_price_point_message = {}

-- Size: Delete Price Point Message
nairobi_nairobiequities_realtime_mitch_v1_22.delete_price_point_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price_point_sub_book_flags.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.side.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price_level.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.reserved_1.size

-- Display: Delete Price Point Message
nairobi_nairobiequities_realtime_mitch_v1_22.delete_price_point_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Price Point Message
nairobi_nairobiequities_realtime_mitch_v1_22.delete_price_point_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Price Point Sub Book Flags: Struct of 8 fields
  index, price_point_sub_book_flags = nairobi_nairobiequities_realtime_mitch_v1_22.price_point_sub_book_flags.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = nairobi_nairobiequities_realtime_mitch_v1_22.side.dissect(buffer, index, packet, parent)

  -- Price Level: UInt8
  index, price_level = nairobi_nairobiequities_realtime_mitch_v1_22.price_level.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  if show.padding then
    index, reserved_1 = nairobi_nairobiequities_realtime_mitch_v1_22.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nairobi_nairobiequities_realtime_mitch_v1_22.reserved_1.size
  end

  return index
end

-- Dissect: Delete Price Point Message
nairobi_nairobiequities_realtime_mitch_v1_22.delete_price_point_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.delete_price_point_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.delete_price_point_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.delete_price_point_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.delete_price_point_message.fields(buffer, offset, packet, parent)
  end
end

-- Update Price Point Flags
nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_flags = {}

-- Size: Update Price Point Flags
nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_flags.size = 1

-- Display: Update Price Point Flags
nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Market Order flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Market Order"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Update Price Point Flags
nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_flags.bits = function(range, value, packet, parent)

  -- Reserved 03: 4 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_03, range, value)

  -- Market Order: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.market_order, range, value)

  -- Reserved 57: 3 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_57, range, value)
end

-- Dissect: Update Price Point Flags
nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_flags.dissect = function(buffer, offset, packet, parent)
  local size = nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.update_price_point_flags, range, display)

  if show.structs then
    nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Update Price Point Message
nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_message = {}

-- Size: Update Price Point Message
nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price_point_sub_book_flags.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price_point_action.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.side.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price_level.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.splits.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_flags.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.reserved_1.size

-- Display: Update Price Point Message
nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Price Point Message
nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Price Point Sub Book Flags: Struct of 8 fields
  index, price_point_sub_book_flags = nairobi_nairobiequities_realtime_mitch_v1_22.price_point_sub_book_flags.dissect(buffer, index, packet, parent)

  -- Price Point Action: Byte
  index, price_point_action = nairobi_nairobiequities_realtime_mitch_v1_22.price_point_action.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = nairobi_nairobiequities_realtime_mitch_v1_22.side.dissect(buffer, index, packet, parent)

  -- Price Level: UInt8
  index, price_level = nairobi_nairobiequities_realtime_mitch_v1_22.price_level.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nairobi_nairobiequities_realtime_mitch_v1_22.price.dissect(buffer, index, packet, parent)

  -- Quantity: UInt32
  index, quantity = nairobi_nairobiequities_realtime_mitch_v1_22.quantity.dissect(buffer, index, packet, parent)

  -- Splits: UInt32
  index, splits = nairobi_nairobiequities_realtime_mitch_v1_22.splits.dissect(buffer, index, packet, parent)

  -- Update Price Point Flags: Struct of 3 fields
  index, update_price_point_flags = nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_flags.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  if show.padding then
    index, reserved_1 = nairobi_nairobiequities_realtime_mitch_v1_22.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nairobi_nairobiequities_realtime_mitch_v1_22.reserved_1.size
  end

  return index
end

-- Dissect: Update Price Point Message
nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.update_price_point_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_message.fields(buffer, offset, packet, parent)
  end
end

-- News Message
nairobi_nairobiequities_realtime_mitch_v1_22.news_message = {}

-- Size: News Message
nairobi_nairobiequities_realtime_mitch_v1_22.news_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.time.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.urgency.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.headline.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.text.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.instruments.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.underlyings.size

-- Display: News Message
nairobi_nairobiequities_realtime_mitch_v1_22.news_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Message
nairobi_nairobiequities_realtime_mitch_v1_22.news_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Time: Time
  index, time = nairobi_nairobiequities_realtime_mitch_v1_22.time.dissect(buffer, index, packet, parent)

  -- Urgency: Byte
  index, urgency = nairobi_nairobiequities_realtime_mitch_v1_22.urgency.dissect(buffer, index, packet, parent)

  -- Headline: Alpha
  index, headline = nairobi_nairobiequities_realtime_mitch_v1_22.headline.dissect(buffer, index, packet, parent)

  -- Text: Alpha
  index, text = nairobi_nairobiequities_realtime_mitch_v1_22.text.dissect(buffer, index, packet, parent)

  -- Instruments: Alpha
  index, instruments = nairobi_nairobiequities_realtime_mitch_v1_22.instruments.dissect(buffer, index, packet, parent)

  -- Underlyings: Alpha
  index, underlyings = nairobi_nairobiequities_realtime_mitch_v1_22.underlyings.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Message
nairobi_nairobiequities_realtime_mitch_v1_22.news_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.news_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.news_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.news_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.news_message.fields(buffer, offset, packet, parent)
  end
end

-- Aon Info Message
nairobi_nairobiequities_realtime_mitch_v1_22.aon_info_message = {}

-- Size: Aon Info Message
nairobi_nairobiequities_realtime_mitch_v1_22.aon_info_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.side.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.aon_status.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.date.size

-- Display: Aon Info Message
nairobi_nairobiequities_realtime_mitch_v1_22.aon_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aon Info Message
nairobi_nairobiequities_realtime_mitch_v1_22.aon_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nairobi_nairobiequities_realtime_mitch_v1_22.price.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = nairobi_nairobiequities_realtime_mitch_v1_22.side.dissect(buffer, index, packet, parent)

  -- Quantity: UInt32
  index, quantity = nairobi_nairobiequities_realtime_mitch_v1_22.quantity.dissect(buffer, index, packet, parent)

  -- Aon Status: Alpha
  index, aon_status = nairobi_nairobiequities_realtime_mitch_v1_22.aon_status.dissect(buffer, index, packet, parent)

  -- Date: Date
  index, date = nairobi_nairobiequities_realtime_mitch_v1_22.date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Aon Info Message
nairobi_nairobiequities_realtime_mitch_v1_22.aon_info_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.aon_info_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.aon_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.aon_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.aon_info_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Message
nairobi_nairobiequities_realtime_mitch_v1_22.index_message = {}

-- Size: Index Message
nairobi_nairobiequities_realtime_mitch_v1_22.index_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.index_value.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.update_type.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.perctg_diff_from_closing.size

-- Display: Index Message
nairobi_nairobiequities_realtime_mitch_v1_22.index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Message
nairobi_nairobiequities_realtime_mitch_v1_22.index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Index Value: Price
  index, index_value = nairobi_nairobiequities_realtime_mitch_v1_22.index_value.dissect(buffer, index, packet, parent)

  -- Update Type: UInt8
  index, update_type = nairobi_nairobiequities_realtime_mitch_v1_22.update_type.dissect(buffer, index, packet, parent)

  -- Perctg Diff From Closing: Price
  index, perctg_diff_from_closing = nairobi_nairobiequities_realtime_mitch_v1_22.perctg_diff_from_closing.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Message
nairobi_nairobiequities_realtime_mitch_v1_22.index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.index_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.index_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Statistics Message
nairobi_nairobiequities_realtime_mitch_v1_22.consolidated_statistics_message = {}

-- Size: Consolidated Statistics Message
nairobi_nairobiequities_realtime_mitch_v1_22.consolidated_statistics_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.statistics_type.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.volume.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.turnover.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trades.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_buy_value.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_sell_value.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.market_capitalization.size

-- Display: Consolidated Statistics Message
nairobi_nairobiequities_realtime_mitch_v1_22.consolidated_statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Statistics Message
nairobi_nairobiequities_realtime_mitch_v1_22.consolidated_statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Statistics Type: UInt8
  index, statistics_type = nairobi_nairobiequities_realtime_mitch_v1_22.statistics_type.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Volume: UInt32
  index, volume = nairobi_nairobiequities_realtime_mitch_v1_22.volume.dissect(buffer, index, packet, parent)

  -- Turnover: Long Price
  index, turnover = nairobi_nairobiequities_realtime_mitch_v1_22.turnover.dissect(buffer, index, packet, parent)

  -- Trades: UInt32
  index, trades = nairobi_nairobiequities_realtime_mitch_v1_22.trades.dissect(buffer, index, packet, parent)

  -- Daily Foreign Buy Value: Long Price
  index, daily_foreign_buy_value = nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_buy_value.dissect(buffer, index, packet, parent)

  -- Daily Foreign Sell Value: Long Price
  index, daily_foreign_sell_value = nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_sell_value.dissect(buffer, index, packet, parent)

  -- Market Capitalization: Long Price
  index, market_capitalization = nairobi_nairobiequities_realtime_mitch_v1_22.market_capitalization.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Statistics Message
nairobi_nairobiequities_realtime_mitch_v1_22.consolidated_statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.consolidated_statistics_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.consolidated_statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.consolidated_statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.consolidated_statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Statistics Message
nairobi_nairobiequities_realtime_mitch_v1_22.extended_statistics_message = {}

-- Size: Extended Statistics Message
nairobi_nairobiequities_realtime_mitch_v1_22.extended_statistics_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.high_price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.low_price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.vwap.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.volume.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.turnover.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trades.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.reserved_8.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.notional_exposure.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.notional_delta_exposure.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_buy_value.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_sell_value.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.market_capitalization.size

-- Display: Extended Statistics Message
nairobi_nairobiequities_realtime_mitch_v1_22.extended_statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Statistics Message
nairobi_nairobiequities_realtime_mitch_v1_22.extended_statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- High Price: Price
  index, high_price = nairobi_nairobiequities_realtime_mitch_v1_22.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Price
  index, low_price = nairobi_nairobiequities_realtime_mitch_v1_22.low_price.dissect(buffer, index, packet, parent)

  -- Vwap: Price
  index, vwap = nairobi_nairobiequities_realtime_mitch_v1_22.vwap.dissect(buffer, index, packet, parent)

  -- Volume: UInt32
  index, volume = nairobi_nairobiequities_realtime_mitch_v1_22.volume.dissect(buffer, index, packet, parent)

  -- Turnover: Long Price
  index, turnover = nairobi_nairobiequities_realtime_mitch_v1_22.turnover.dissect(buffer, index, packet, parent)

  -- Trades: UInt32
  index, trades = nairobi_nairobiequities_realtime_mitch_v1_22.trades.dissect(buffer, index, packet, parent)

  -- Reserved 8: Reserved
  if show.padding then
    index, reserved_8 = nairobi_nairobiequities_realtime_mitch_v1_22.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + nairobi_nairobiequities_realtime_mitch_v1_22.reserved_8.size
  end

  -- Sub Book: UInt8
  index, sub_book = nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.dissect(buffer, index, packet, parent)

  -- Notional Exposure: Long Price
  index, notional_exposure = nairobi_nairobiequities_realtime_mitch_v1_22.notional_exposure.dissect(buffer, index, packet, parent)

  -- Notional Delta Exposure: Long Price
  index, notional_delta_exposure = nairobi_nairobiequities_realtime_mitch_v1_22.notional_delta_exposure.dissect(buffer, index, packet, parent)

  -- Daily Foreign Buy Value: Long Price
  index, daily_foreign_buy_value = nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_buy_value.dissect(buffer, index, packet, parent)

  -- Daily Foreign Sell Value: Long Price
  index, daily_foreign_sell_value = nairobi_nairobiequities_realtime_mitch_v1_22.daily_foreign_sell_value.dissect(buffer, index, packet, parent)

  -- Market Capitalization: Long Price
  index, market_capitalization = nairobi_nairobiequities_realtime_mitch_v1_22.market_capitalization.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Statistics Message
nairobi_nairobiequities_realtime_mitch_v1_22.extended_statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.extended_statistics_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.extended_statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.extended_statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.extended_statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Message
nairobi_nairobiequities_realtime_mitch_v1_22.statistics_message = {}

-- Size: Statistics Message
nairobi_nairobiequities_realtime_mitch_v1_22.statistics_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.statistic_type.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.open_close_indicator.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.size

-- Display: Statistics Message
nairobi_nairobiequities_realtime_mitch_v1_22.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
nairobi_nairobiequities_realtime_mitch_v1_22.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Statistic Type: Byte
  index, statistic_type = nairobi_nairobiequities_realtime_mitch_v1_22.statistic_type.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nairobi_nairobiequities_realtime_mitch_v1_22.price.dissect(buffer, index, packet, parent)

  -- Open Close Indicator: Byte
  index, open_close_indicator = nairobi_nairobiequities_realtime_mitch_v1_22.open_close_indicator.dissect(buffer, index, packet, parent)

  -- Sub Book: UInt8
  index, sub_book = nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
nairobi_nairobiequities_realtime_mitch_v1_22.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.statistics_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Info Message
nairobi_nairobiequities_realtime_mitch_v1_22.auction_info_message = {}

-- Size: Auction Info Message
nairobi_nairobiequities_realtime_mitch_v1_22.auction_info_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.paired_quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_direction.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.auction_type.size

-- Display: Auction Info Message
nairobi_nairobiequities_realtime_mitch_v1_22.auction_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Info Message
nairobi_nairobiequities_realtime_mitch_v1_22.auction_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Paired Quantity: UInt32
  index, paired_quantity = nairobi_nairobiequities_realtime_mitch_v1_22.paired_quantity.dissect(buffer, index, packet, parent)

  -- Imbalance Quantity: UInt32
  index, imbalance_quantity = nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Byte
  index, imbalance_direction = nairobi_nairobiequities_realtime_mitch_v1_22.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nairobi_nairobiequities_realtime_mitch_v1_22.price.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = nairobi_nairobiequities_realtime_mitch_v1_22.auction_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Info Message
nairobi_nairobiequities_realtime_mitch_v1_22.auction_info_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.auction_info_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.auction_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.auction_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.auction_info_message.fields(buffer, offset, packet, parent)
  end
end

-- Recovery Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.recovery_trade_message = {}

-- Size: Recovery Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.recovery_trade_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.auction_type.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_type.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trade_time.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trade_date.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.action_type.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.volatility.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_type.size

-- Display: Recovery Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.recovery_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Recovery Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.recovery_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Executed Quantity: UInt32
  index, executed_quantity = nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nairobi_nairobiequities_realtime_mitch_v1_22.price.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = nairobi_nairobiequities_realtime_mitch_v1_22.auction_type.dissect(buffer, index, packet, parent)

  -- Off Book Trade Type: Alpha
  index, off_book_trade_type = nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_type.dissect(buffer, index, packet, parent)

  -- Trade Time: Time
  index, trade_time = nairobi_nairobiequities_realtime_mitch_v1_22.trade_time.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = nairobi_nairobiequities_realtime_mitch_v1_22.trade_date.dissect(buffer, index, packet, parent)

  -- Action Type: Byte
  index, action_type = nairobi_nairobiequities_realtime_mitch_v1_22.action_type.dissect(buffer, index, packet, parent)

  -- Sub Book: UInt8
  index, sub_book = nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.dissect(buffer, index, packet, parent)

  -- Buy Firm: Alpha
  index, buy_firm = nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm.dissect(buffer, index, packet, parent)

  -- Sell Firm: Alpha
  index, sell_firm = nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm.dissect(buffer, index, packet, parent)

  -- Last Opt Px: Long Price
  index, last_opt_px = nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.dissect(buffer, index, packet, parent)

  -- Volatility: Long Price
  index, volatility = nairobi_nairobiequities_realtime_mitch_v1_22.volatility.dissect(buffer, index, packet, parent)

  -- Underlying Reference Price: Long Price
  index, underlying_reference_price = nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.dissect(buffer, index, packet, parent)

  -- Auction Trade Type: Byte
  index, auction_trade_type = nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Recovery Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.recovery_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.recovery_trade_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.recovery_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.recovery_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.recovery_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
nairobi_nairobiequities_realtime_mitch_v1_22.trade_correction_message = {}

-- Size: Trade Correction Message
nairobi_nairobiequities_realtime_mitch_v1_22.trade_correction_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm.size

-- Display: Trade Correction Message
nairobi_nairobiequities_realtime_mitch_v1_22.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
nairobi_nairobiequities_realtime_mitch_v1_22.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nairobi_nairobiequities_realtime_mitch_v1_22.price.dissect(buffer, index, packet, parent)

  -- Quantity: UInt32
  index, quantity = nairobi_nairobiequities_realtime_mitch_v1_22.quantity.dissect(buffer, index, packet, parent)

  -- Sub Book: UInt8
  index, sub_book = nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.dissect(buffer, index, packet, parent)

  -- Buy Firm: Alpha
  index, buy_firm = nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm.dissect(buffer, index, packet, parent)

  -- Sell Firm: Alpha
  index, sell_firm = nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nairobi_nairobiequities_realtime_mitch_v1_22.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trade_correction_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
nairobi_nairobiequities_realtime_mitch_v1_22.trade_break_message = {}

-- Size: Trade Break Message
nairobi_nairobiequities_realtime_mitch_v1_22.trade_break_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trade_type.size

-- Display: Trade Break Message
nairobi_nairobiequities_realtime_mitch_v1_22.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
nairobi_nairobiequities_realtime_mitch_v1_22.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Type: Byte
  index, trade_type = nairobi_nairobiequities_realtime_mitch_v1_22.trade_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
nairobi_nairobiequities_realtime_mitch_v1_22.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trade_break_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Off Book Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_message = {}

-- Size: Off Book Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_type.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trade_time.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trade_date.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.volatility.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.size

-- Display: Off Book Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Off Book Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Executed Quantity: UInt32
  index, executed_quantity = nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nairobi_nairobiequities_realtime_mitch_v1_22.price.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.dissect(buffer, index, packet, parent)

  -- Off Book Trade Type: Alpha
  index, off_book_trade_type = nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_type.dissect(buffer, index, packet, parent)

  -- Trade Time: Time
  index, trade_time = nairobi_nairobiequities_realtime_mitch_v1_22.trade_time.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = nairobi_nairobiequities_realtime_mitch_v1_22.trade_date.dissect(buffer, index, packet, parent)

  -- Last Opt Px: Long Price
  index, last_opt_px = nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.dissect(buffer, index, packet, parent)

  -- Volatility: Long Price
  index, volatility = nairobi_nairobiequities_realtime_mitch_v1_22.volatility.dissect(buffer, index, packet, parent)

  -- Underlying Reference Price: Long Price
  index, underlying_reference_price = nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Off Book Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.off_book_trade_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_message = {}

-- Size: Auction Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.auction_type.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.volatility.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.size

-- Display: Auction Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Executed Quantity: UInt32
  index, executed_quantity = nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nairobi_nairobiequities_realtime_mitch_v1_22.price.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = nairobi_nairobiequities_realtime_mitch_v1_22.auction_type.dissect(buffer, index, packet, parent)

  -- Last Opt Px: Long Price
  index, last_opt_px = nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.dissect(buffer, index, packet, parent)

  -- Volatility: Long Price
  index, volatility = nairobi_nairobiequities_realtime_mitch_v1_22.volatility.dissect(buffer, index, packet, parent)

  -- Underlying Reference Price: Long Price
  index, underlying_reference_price = nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.auction_trade_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.trade_message = {}

-- Size: Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.trade_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.volatility.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.size

-- Display: Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Executed Quantity: UInt32
  index, executed_quantity = nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nairobi_nairobiequities_realtime_mitch_v1_22.price.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.dissect(buffer, index, packet, parent)

  -- Sub Book: UInt8
  index, sub_book = nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.dissect(buffer, index, packet, parent)

  -- Buy Firm: Alpha
  index, buy_firm = nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm.dissect(buffer, index, packet, parent)

  -- Sell Firm: Alpha
  index, sell_firm = nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm.dissect(buffer, index, packet, parent)

  -- Last Opt Px: Long Price
  index, last_opt_px = nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.dissect(buffer, index, packet, parent)

  -- Volatility: Long Price
  index, volatility = nairobi_nairobiequities_realtime_mitch_v1_22.volatility.dissect(buffer, index, packet, parent)

  -- Underlying Reference Price: Long Price
  index, underlying_reference_price = nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nairobi_nairobiequities_realtime_mitch_v1_22.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.trade_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Size Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_with_price_size_message = {}

-- Size: Order Executed With Price Size Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_with_price_size_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.order_id.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.display_quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.printable.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.volatility.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.size

-- Display: Order Executed With Price Size Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_with_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Size Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_with_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = nairobi_nairobiequities_realtime_mitch_v1_22.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: UInt32
  index, executed_quantity = nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.dissect(buffer, index, packet, parent)

  -- Display Quantity: UInt32
  index, display_quantity = nairobi_nairobiequities_realtime_mitch_v1_22.display_quantity.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.dissect(buffer, index, packet, parent)

  -- Printable: Byte
  index, printable = nairobi_nairobiequities_realtime_mitch_v1_22.printable.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nairobi_nairobiequities_realtime_mitch_v1_22.price.dissect(buffer, index, packet, parent)

  -- Buy Firm: Alpha
  index, buy_firm = nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm.dissect(buffer, index, packet, parent)

  -- Sell Firm: Alpha
  index, sell_firm = nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm.dissect(buffer, index, packet, parent)

  -- Last Opt Px: Long Price
  index, last_opt_px = nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.dissect(buffer, index, packet, parent)

  -- Volatility: Long Price
  index, volatility = nairobi_nairobiequities_realtime_mitch_v1_22.volatility.dissect(buffer, index, packet, parent)

  -- Underlying Reference Price: Long Price
  index, underlying_reference_price = nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Size Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_with_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.order_executed_with_price_size_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_with_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_with_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_with_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_message = {}

-- Size: Order Executed Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.order_id.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.volatility.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.size

-- Display: Order Executed Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = nairobi_nairobiequities_realtime_mitch_v1_22.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: UInt32
  index, executed_quantity = nairobi_nairobiequities_realtime_mitch_v1_22.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Id: UInt64
  index, trade_id = nairobi_nairobiequities_realtime_mitch_v1_22.trade_id.dissect(buffer, index, packet, parent)

  -- Buy Firm: Alpha
  index, buy_firm = nairobi_nairobiequities_realtime_mitch_v1_22.buy_firm.dissect(buffer, index, packet, parent)

  -- Sell Firm: Alpha
  index, sell_firm = nairobi_nairobiequities_realtime_mitch_v1_22.sell_firm.dissect(buffer, index, packet, parent)

  -- Last Opt Px: Long Price
  index, last_opt_px = nairobi_nairobiequities_realtime_mitch_v1_22.last_opt_px.dissect(buffer, index, packet, parent)

  -- Volatility: Long Price
  index, volatility = nairobi_nairobiequities_realtime_mitch_v1_22.volatility.dissect(buffer, index, packet, parent)

  -- Underlying Reference Price: Long Price
  index, underlying_reference_price = nairobi_nairobiequities_realtime_mitch_v1_22.underlying_reference_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.order_executed_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Clear Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_book_clear_message = {}

-- Size: Order Book Clear Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_book_clear_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.book_type.size

-- Display: Order Book Clear Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_book_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Clear Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_book_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Sub Book: UInt8
  index, sub_book = nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.dissect(buffer, index, packet, parent)

  -- Book Type: Byte
  index, book_type = nairobi_nairobiequities_realtime_mitch_v1_22.book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_book_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.order_book_clear_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.order_book_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.order_book_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.order_book_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modified Flags
nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_flags = {}

-- Size: Order Modified Flags
nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_flags.size = 1

-- Display: Order Modified Flags
nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Priority Flag flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Priority Flag"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Modified Flags
nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_flags.bits = function(range, value, packet, parent)

  -- Priority Flag: 1 Bit Enum with 2 values
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.priority_flag, range, value)

  -- Reserved 17: 7 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_17, range, value)
end

-- Dissect: Order Modified Flags
nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_flags.dissect = function(buffer, offset, packet, parent)
  local size = nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.order_modified_flags, range, display)

  if show.structs then
    nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Modified Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_message = {}

-- Size: Order Modified Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.order_id.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.new_quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.new_price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_flags.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.settlement_type.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.interest_rate.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.term.size

-- Display: Order Modified Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = nairobi_nairobiequities_realtime_mitch_v1_22.order_id.dissect(buffer, index, packet, parent)

  -- New Quantity: UInt32
  index, new_quantity = nairobi_nairobiequities_realtime_mitch_v1_22.new_quantity.dissect(buffer, index, packet, parent)

  -- New Price: Price
  index, new_price = nairobi_nairobiequities_realtime_mitch_v1_22.new_price.dissect(buffer, index, packet, parent)

  -- Order Modified Flags: Struct of 2 fields
  index, order_modified_flags = nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_flags.dissect(buffer, index, packet, parent)

  -- Settlement Type: Byte
  index, settlement_type = nairobi_nairobiequities_realtime_mitch_v1_22.settlement_type.dissect(buffer, index, packet, parent)

  -- Interest Rate: Price
  index, interest_rate = nairobi_nairobiequities_realtime_mitch_v1_22.interest_rate.dissect(buffer, index, packet, parent)

  -- Term: UInt8
  index, term = nairobi_nairobiequities_realtime_mitch_v1_22.term.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.order_modified_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Deleted Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_deleted_message = {}

-- Size: Order Deleted Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_deleted_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.order_id.size

-- Display: Order Deleted Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = nairobi_nairobiequities_realtime_mitch_v1_22.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
nairobi_nairobiequities_realtime_mitch_v1_22.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.order_deleted_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Attributed Order Flags
nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_flags = {}

-- Size: Add Attributed Order Flags
nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_flags.size = 1

-- Display: Add Attributed Order Flags
nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Bulletin Board flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Bulletin Board"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Attributed Order Flags
nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_flags.bits = function(range, value, packet, parent)

  -- Reserved 04: 5 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_04, range, value)

  -- Bulletin Board: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.bulletin_board, range, value)

  -- Reserved 67: 2 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_67, range, value)
end

-- Dissect: Add Attributed Order Flags
nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.add_attributed_order_flags, range, display)

  if show.structs then
    nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Attributed Order Message
nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_message = {}

-- Size: Add Attributed Order Message
nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.order_id.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.side.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.attribution.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_flags.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.size

-- Display: Add Attributed Order Message
nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Attributed Order Message
nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = nairobi_nairobiequities_realtime_mitch_v1_22.order_id.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = nairobi_nairobiequities_realtime_mitch_v1_22.side.dissect(buffer, index, packet, parent)

  -- Quantity: UInt32
  index, quantity = nairobi_nairobiequities_realtime_mitch_v1_22.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nairobi_nairobiequities_realtime_mitch_v1_22.price.dissect(buffer, index, packet, parent)

  -- Attribution: Alpha
  index, attribution = nairobi_nairobiequities_realtime_mitch_v1_22.attribution.dissect(buffer, index, packet, parent)

  -- Add Attributed Order Flags: Struct of 3 fields
  index, add_attributed_order_flags = nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_flags.dissect(buffer, index, packet, parent)

  -- Sub Book: UInt8
  index, sub_book = nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Attributed Order Message
nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.add_attributed_order_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Flags
nairobi_nairobiequities_realtime_mitch_v1_22.add_order_flags = {}

-- Size: Add Order Flags
nairobi_nairobiequities_realtime_mitch_v1_22.add_order_flags.size = 1

-- Display: Add Order Flags
nairobi_nairobiequities_realtime_mitch_v1_22.add_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Market Order flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Market Order"
  end
  -- Is Bulletin Board flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Bulletin Board"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Order Flags
nairobi_nairobiequities_realtime_mitch_v1_22.add_order_flags.bits = function(range, value, packet, parent)

  -- Reserved 03: 4 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_03, range, value)

  -- Market Order: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.market_order, range, value)

  -- Bulletin Board: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.bulletin_board, range, value)

  -- Reserved 67: 2 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_67, range, value)
end

-- Dissect: Add Order Flags
nairobi_nairobiequities_realtime_mitch_v1_22.add_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nairobi_nairobiequities_realtime_mitch_v1_22.add_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.add_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.add_order_flags, range, display)

  if show.structs then
    nairobi_nairobiequities_realtime_mitch_v1_22.add_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Order Message
nairobi_nairobiequities_realtime_mitch_v1_22.add_order_message = {}

-- Size: Add Order Message
nairobi_nairobiequities_realtime_mitch_v1_22.add_order_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.order_id.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.side.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.quantity.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.add_order_flags.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.settlement_type.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.interest_rate.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.term.size

-- Display: Add Order Message
nairobi_nairobiequities_realtime_mitch_v1_22.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nairobi_nairobiequities_realtime_mitch_v1_22.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = nairobi_nairobiequities_realtime_mitch_v1_22.order_id.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = nairobi_nairobiequities_realtime_mitch_v1_22.side.dissect(buffer, index, packet, parent)

  -- Quantity: UInt32
  index, quantity = nairobi_nairobiequities_realtime_mitch_v1_22.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nairobi_nairobiequities_realtime_mitch_v1_22.price.dissect(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 4 fields
  index, add_order_flags = nairobi_nairobiequities_realtime_mitch_v1_22.add_order_flags.dissect(buffer, index, packet, parent)

  -- Sub Book: UInt8
  index, sub_book = nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.dissect(buffer, index, packet, parent)

  -- Settlement Type: Byte
  index, settlement_type = nairobi_nairobiequities_realtime_mitch_v1_22.settlement_type.dissect(buffer, index, packet, parent)

  -- Interest Rate: Price
  index, interest_rate = nairobi_nairobiequities_realtime_mitch_v1_22.interest_rate.dissect(buffer, index, packet, parent)

  -- Term: UInt8
  index, term = nairobi_nairobiequities_realtime_mitch_v1_22.term.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nairobi_nairobiequities_realtime_mitch_v1_22.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.add_order_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Status Flags
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_flags = {}

-- Size: Symbol Status Flags
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_flags.size = 1

-- Display: Symbol Status Flags
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_flags.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Symbol Status Flags
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_flags.bits = function(range, value, packet, parent)

  -- Reserved 07: 8 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_07, range, value)
end

-- Dissect: Symbol Status Flags
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_flags.dissect = function(buffer, offset, packet, parent)
  local size = nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.symbol_status_flags, range, display)

  if show.structs then
    nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Symbol Status Message
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_message = {}

-- Size: Symbol Status Message
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.trading_status.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_flags.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.halt_reason.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.session_change_reason.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.new_end_time.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.size

-- Display: Symbol Status Message
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Status Message
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = nairobi_nairobiequities_realtime_mitch_v1_22.trading_status.dissect(buffer, index, packet, parent)

  -- Symbol Status Flags: Struct of 1 fields
  index, symbol_status_flags = nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_flags.dissect(buffer, index, packet, parent)

  -- Halt Reason: Alpha
  index, halt_reason = nairobi_nairobiequities_realtime_mitch_v1_22.halt_reason.dissect(buffer, index, packet, parent)

  -- Session Change Reason: UInt8
  index, session_change_reason = nairobi_nairobiequities_realtime_mitch_v1_22.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: Time
  index, new_end_time = nairobi_nairobiequities_realtime_mitch_v1_22.new_end_time.dissect(buffer, index, packet, parent)

  -- Sub Book: UInt8
  index, sub_book = nairobi_nairobiequities_realtime_mitch_v1_22.sub_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Message
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.symbol_status_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Sub Book Flags
nairobi_nairobiequities_realtime_mitch_v1_22.sub_book_flags = {}

-- Size: Sub Book Flags
nairobi_nairobiequities_realtime_mitch_v1_22.sub_book_flags.size = 1

-- Display: Sub Book Flags
nairobi_nairobiequities_realtime_mitch_v1_22.sub_book_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Regular flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Regular"
  end
  -- Is Off Book flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Off Book"
  end
  -- Is Block Trade flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Block Trade"
  end
  -- Is Odd Lot flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Odd Lot"
  end
  -- Is Early Settlement flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Early Settlement"
  end
  -- Is Bulletin Board flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Bulletin Board"
  end
  -- Is Auction flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Auction"
  end
  -- Is All Or None flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "All Or None"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Sub Book Flags
nairobi_nairobiequities_realtime_mitch_v1_22.sub_book_flags.bits = function(range, value, packet, parent)

  -- Regular: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.regular, range, value)

  -- Off Book: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.off_book, range, value)

  -- Block Trade: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.block_trade, range, value)

  -- Odd Lot: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.odd_lot, range, value)

  -- Early Settlement: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.early_settlement, range, value)

  -- Bulletin Board: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.bulletin_board, range, value)

  -- Auction: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.auction, range, value)

  -- All Or None: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.all_or_none, range, value)
end

-- Dissect: Sub Book Flags
nairobi_nairobiequities_realtime_mitch_v1_22.sub_book_flags.dissect = function(buffer, offset, packet, parent)
  local size = nairobi_nairobiequities_realtime_mitch_v1_22.sub_book_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.sub_book_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.sub_book_flags, range, display)

  if show.structs then
    nairobi_nairobiequities_realtime_mitch_v1_22.sub_book_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Symbol Directory Flags
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_flags = {}

-- Size: Symbol Directory Flags
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_flags.size = 1

-- Display: Symbol Directory Flags
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Inverse Order Book flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Inverse Order Book"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Symbol Directory Flags
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_flags.bits = function(range, value, packet, parent)

  -- Inverse Order Book: 1 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.inverse_order_book, range, value)

  -- Reserved 17: 7 Bit
  parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.reserved_17, range, value)
end

-- Dissect: Symbol Directory Flags
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_flags.dissect = function(buffer, offset, packet, parent)
  local size = nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.symbol_directory_flags, range, display)

  if show.structs then
    nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Symbol Directory Message
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_message = {}

-- Size: Symbol Directory Message
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.identification_number.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.segment.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.expiration_date.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.underlying.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.strike_price.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.option_type.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.issuer.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.issue_date.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.coupon.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_flags.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sub_book_flags.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.corporate_action.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.issued_quantity.size

-- Display: Symbol Directory Message
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Directory Message
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nairobi_nairobiequities_realtime_mitch_v1_22.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Status: Alpha
  index, symbol_status = nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status.dissect(buffer, index, packet, parent)

  -- Identification Number: Alpha
  index, identification_number = nairobi_nairobiequities_realtime_mitch_v1_22.identification_number.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = nairobi_nairobiequities_realtime_mitch_v1_22.segment.dissect(buffer, index, packet, parent)

  -- Expiration Date: Date
  index, expiration_date = nairobi_nairobiequities_realtime_mitch_v1_22.expiration_date.dissect(buffer, index, packet, parent)

  -- Underlying: Alpha
  index, underlying = nairobi_nairobiequities_realtime_mitch_v1_22.underlying.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = nairobi_nairobiequities_realtime_mitch_v1_22.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nairobi_nairobiequities_realtime_mitch_v1_22.option_type.dissect(buffer, index, packet, parent)

  -- Issuer: Alpha
  index, issuer = nairobi_nairobiequities_realtime_mitch_v1_22.issuer.dissect(buffer, index, packet, parent)

  -- Issue Date: Date
  index, issue_date = nairobi_nairobiequities_realtime_mitch_v1_22.issue_date.dissect(buffer, index, packet, parent)

  -- Coupon: Price
  index, coupon = nairobi_nairobiequities_realtime_mitch_v1_22.coupon.dissect(buffer, index, packet, parent)

  -- Symbol Directory Flags: Struct of 2 fields
  index, symbol_directory_flags = nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_flags.dissect(buffer, index, packet, parent)

  -- Sub Book Flags: Struct of 8 fields
  index, sub_book_flags = nairobi_nairobiequities_realtime_mitch_v1_22.sub_book_flags.dissect(buffer, index, packet, parent)

  -- Corporate Action: Alpha
  index, corporate_action = nairobi_nairobiequities_realtime_mitch_v1_22.corporate_action.dissect(buffer, index, packet, parent)

  -- Issued Quantity: Long Price
  index, issued_quantity = nairobi_nairobiequities_realtime_mitch_v1_22.issued_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Directory Message
nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.symbol_directory_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nairobi_nairobiequities_realtime_mitch_v1_22.system_event_message = {}

-- Size: System Event Message
nairobi_nairobiequities_realtime_mitch_v1_22.system_event_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.nanosecond.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.event_code.size

-- Display: System Event Message
nairobi_nairobiequities_realtime_mitch_v1_22.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nairobi_nairobiequities_realtime_mitch_v1_22.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = nairobi_nairobiequities_realtime_mitch_v1_22.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Byte
  index, event_code = nairobi_nairobiequities_realtime_mitch_v1_22.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nairobi_nairobiequities_realtime_mitch_v1_22.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.system_event_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
nairobi_nairobiequities_realtime_mitch_v1_22.time_message = {}

-- Size: Time Message
nairobi_nairobiequities_realtime_mitch_v1_22.time_message.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.seconds.size

-- Display: Time Message
nairobi_nairobiequities_realtime_mitch_v1_22.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
nairobi_nairobiequities_realtime_mitch_v1_22.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: UInt32
  index, seconds = nairobi_nairobiequities_realtime_mitch_v1_22.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  nairobi_nairobiequities_realtime_mitch_v1_22.seconds.current = seconds

  if not packet.visited then
    nairobi_nairobiequities_realtime_mitch_v1_22.conversation.current.seconds.last = seconds
  end

  return index
end

-- Dissect: Time Message
nairobi_nairobiequities_realtime_mitch_v1_22.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.time_message, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nairobi_nairobiequities_realtime_mitch_v1_22.payload = {}

-- Dissect: Payload
nairobi_nairobiequities_realtime_mitch_v1_22.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x54 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == 0x53 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Directory Message
  if message_type == 0x52 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Status Message
  if message_type == 0x48 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.symbol_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == 0x41 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Attributed Order Message
  if message_type == 0x46 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.add_attributed_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if message_type == 0x44 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if message_type == 0x55 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.order_modified_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear Message
  if message_type == 0x79 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.order_book_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x45 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Size Message
  if message_type == 0x43 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.order_executed_with_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0x50 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0x51 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Off Book Trade Message
  if message_type == 0x78 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.off_book_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x42 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if message_type == 0x60 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Recovery Trade Message
  if message_type == 0x76 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.recovery_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Info Message
  if message_type == 0x49 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.auction_info_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x77 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Statistics Message
  if message_type == 0x80 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.extended_statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Statistics Message
  if message_type == 0x64 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.consolidated_statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Message
  if message_type == 0x62 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Aon Info Message
  if message_type == 0x65 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.aon_info_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News Message
  if message_type == 0x75 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.news_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Update Price Point Message
  if message_type == 0x73 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.update_price_point_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Price Point Message
  if message_type == 0x72 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.delete_price_point_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book Message
  if message_type == 0x71 then
    return nairobi_nairobiequities_realtime_mitch_v1_22.top_of_book_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nairobi_nairobiequities_realtime_mitch_v1_22.message_header = {}

-- Size: Message Header
nairobi_nairobiequities_realtime_mitch_v1_22.message_header.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.message_length.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.message_type.size

-- Display: Message Header
nairobi_nairobiequities_realtime_mitch_v1_22.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nairobi_nairobiequities_realtime_mitch_v1_22.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: UInt16
  index, message_length = nairobi_nairobiequities_realtime_mitch_v1_22.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: Byte
  index, message_type = nairobi_nairobiequities_realtime_mitch_v1_22.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nairobi_nairobiequities_realtime_mitch_v1_22.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.message_header, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nairobi_nairobiequities_realtime_mitch_v1_22.message = {}

-- Display: Message
nairobi_nairobiequities_realtime_mitch_v1_22.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nairobi_nairobiequities_realtime_mitch_v1_22.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nairobi_nairobiequities_realtime_mitch_v1_22.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 27 branches
  index = nairobi_nairobiequities_realtime_mitch_v1_22.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nairobi_nairobiequities_realtime_mitch_v1_22.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.message, buffer(offset, 0))
    local current = nairobi_nairobiequities_realtime_mitch_v1_22.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nairobi_nairobiequities_realtime_mitch_v1_22.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Unit Header
nairobi_nairobiequities_realtime_mitch_v1_22.unit_header = {}

-- Size: Unit Header
nairobi_nairobiequities_realtime_mitch_v1_22.unit_header.size =
  nairobi_nairobiequities_realtime_mitch_v1_22.length.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.message_count.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.market_data_group.size + 
  nairobi_nairobiequities_realtime_mitch_v1_22.sequence_number.size

-- Display: Unit Header
nairobi_nairobiequities_realtime_mitch_v1_22.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
nairobi_nairobiequities_realtime_mitch_v1_22.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: UInt16
  index, length = nairobi_nairobiequities_realtime_mitch_v1_22.length.dissect(buffer, index, packet, parent)

  -- Message Count: UInt8
  index, message_count = nairobi_nairobiequities_realtime_mitch_v1_22.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: Byte
  index, market_data_group = nairobi_nairobiequities_realtime_mitch_v1_22.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: UInt32
  index, sequence_number = nairobi_nairobiequities_realtime_mitch_v1_22.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
nairobi_nairobiequities_realtime_mitch_v1_22.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22.fields.unit_header, buffer(offset, 0))
    local index = nairobi_nairobiequities_realtime_mitch_v1_22.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nairobi_nairobiequities_realtime_mitch_v1_22.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nairobi_nairobiequities_realtime_mitch_v1_22.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nairobi_nairobiequities_realtime_mitch_v1_22.packet = {}

-- Verify required size of Udp packet
nairobi_nairobiequities_realtime_mitch_v1_22.packet.requiredsize = function(buffer)
  return buffer:len() >= nairobi_nairobiequities_realtime_mitch_v1_22.unit_header.size
end

-- Dissect Packet
nairobi_nairobiequities_realtime_mitch_v1_22.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nairobi_nairobiequities_realtime_mitch_v1_22.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  nairobi_nairobiequities_realtime_mitch_v1_22.seconds.current = data.seconds.frames[packet.number]
  nairobi_nairobiequities_realtime_mitch_v1_22.conversation.current = data

  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = nairobi_nairobiequities_realtime_mitch_v1_22.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nairobi_nairobiequities_realtime_mitch_v1_22.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nairobi_nairobiequities_realtime_mitch_v1_22.init()
  nairobi_nairobiequities_realtime_mitch_v1_22.seconds.current = nil
  nairobi_nairobiequities_realtime_mitch_v1_22.conversation.current = nil
  nairobi_nairobiequities_realtime_mitch_v1_22.conversation.flows = {}
end

-- Dissector for Nairobi NairobiEquities RealTime Mitch 1.22
function omi_nairobi_nairobiequities_realtime_mitch_v1_22.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nairobi_nairobiequities_realtime_mitch_v1_22.name

  -- Dissect protocol
  local protocol = parent:add(omi_nairobi_nairobiequities_realtime_mitch_v1_22, buffer(), omi_nairobi_nairobiequities_realtime_mitch_v1_22.description, "("..buffer:len().." Bytes)")
  return nairobi_nairobiequities_realtime_mitch_v1_22.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
nairobi_nairobiequities_realtime_mitch_v1_22.packet.fingerprint = function(buffer)
  if buffer:len() < 11 then
    return false
  end

  local message_type = buffer(10, 1):uint()

  -- Time Message
  if message_type == 0x54 then
    return true
  end

  -- System Event Message
  if message_type == 0x53 then
    return true
  end

  -- Symbol Directory Message
  if message_type == 0x52 then
    return true
  end

  -- Symbol Status Message
  if message_type == 0x48 then
    return true
  end

  -- Add Order Message
  if message_type == 0x41 then
    return true
  end

  -- Add Attributed Order Message
  if message_type == 0x46 then
    return true
  end

  -- Order Deleted Message
  if message_type == 0x44 then
    return true
  end

  -- Order Modified Message
  if message_type == 0x55 then
    return true
  end

  -- Order Book Clear Message
  if message_type == 0x79 then
    return true
  end

  -- Order Executed Message
  if message_type == 0x45 then
    return true
  end

  -- Order Executed With Price Size Message
  if message_type == 0x43 then
    return true
  end

  -- Trade Message
  if message_type == 0x50 then
    return true
  end

  -- Auction Trade Message
  if message_type == 0x51 then
    return true
  end

  -- Off Book Trade Message
  if message_type == 0x78 then
    return true
  end

  -- Trade Break Message
  if message_type == 0x42 then
    return true
  end

  -- Trade Correction Message
  if message_type == 0x60 then
    return true
  end

  -- Recovery Trade Message
  if message_type == 0x76 then
    return true
  end

  -- Auction Info Message
  if message_type == 0x49 then
    return true
  end

  -- Statistics Message
  if message_type == 0x77 then
    return true
  end

  -- Extended Statistics Message
  if message_type == 0x80 then
    return true
  end

  -- Consolidated Statistics Message
  if message_type == 0x64 then
    return true
  end

  -- Index Message
  if message_type == 0x62 then
    return true
  end

  -- Aon Info Message
  if message_type == 0x65 then
    return true
  end

  -- News Message
  if message_type == 0x75 then
    return true
  end

  -- Update Price Point Message
  if message_type == 0x73 then
    return true
  end

  -- Delete Price Point Message
  if message_type == 0x72 then
    return true
  end

  -- Top Of Book Message
  if message_type == 0x71 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nairobi NairobiEquities RealTime Mitch 1.22 (Udp)
local function omi_nairobi_nairobiequities_realtime_mitch_v1_22_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nairobi_nairobiequities_realtime_mitch_v1_22.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not nairobi_nairobiequities_realtime_mitch_v1_22.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nairobi_nairobiequities_realtime_mitch_v1_22
  omi_nairobi_nairobiequities_realtime_mitch_v1_22.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nairobi NairobiEquities RealTime Mitch 1.22
omi_nairobi_nairobiequities_realtime_mitch_v1_22:register_heuristic("udp", omi_nairobi_nairobiequities_realtime_mitch_v1_22_udp_heuristic)

-- Register Nairobi NairobiEquities RealTime Mitch 1.22 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nairobi_nairobiequities_realtime_mitch_v1_22)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Nairobi Securities Exchange
--   Version: 1.22
--   Date: Tuesday, November 24, 2020
--   Specification: Equities-Market-Data-Feed-MITCH-UDP_v1.22.pdf
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
