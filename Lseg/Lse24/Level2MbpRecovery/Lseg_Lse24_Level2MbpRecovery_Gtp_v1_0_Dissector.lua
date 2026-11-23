-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Lse24 Level2MbpRecovery Gtp 1.0 Protocol
local omi_lseg_lse24_level2mbprecovery_gtp_v1_0 = Proto("Omi.Lseg.Lse24.Level2MbpRecovery.Gtp.v1.0", "Lseg Lse24 Level2MbpRecovery Gtp 1.0")

-- Protocol table
local lseg_lse24_level2mbprecovery_gtp_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Lse24 Level2MbpRecovery Gtp 1.0 Fields
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.lse24.level2mbprecovery.gtp.v1.0.allowedbooktypes", ftypes.STRING, nil, nil, nil, "Defines the order-book types that are allowed for the instrument")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.auction_type = ProtoField.new("Auction Type", "lseg.lse24.level2mbprecovery.gtp.v1.0.auctiontype", ftypes.STRING, nil, nil, nil, "The value in this field is only relevant when Trade Type is 1.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.best_closing_ask_price = ProtoField.new("Best Closing Ask Price", "lseg.lse24.level2mbprecovery.gtp.v1.0.bestclosingaskprice", ftypes.DOUBLE, nil, nil, nil, "The best offer price at the time the instrument moves into closing auction session.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.best_closing_ask_size = ProtoField.new("Best Closing Ask Size", "lseg.lse24.level2mbprecovery.gtp.v1.0.bestclosingasksize", ftypes.DOUBLE, nil, nil, nil, "The best offer size at the time the instrument moves into closing auction session.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.best_closing_bid_price = ProtoField.new("Best Closing Bid Price", "lseg.lse24.level2mbprecovery.gtp.v1.0.bestclosingbidprice", ftypes.DOUBLE, nil, nil, nil, "The best bid price at the time the instrument moves into closing auction session.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.best_closing_bid_size = ProtoField.new("Best Closing Bid Size", "lseg.lse24.level2mbprecovery.gtp.v1.0.bestclosingbidsize", ftypes.DOUBLE, nil, nil, nil, "The best bid size at the time the instrument moves into closing auction session.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.clearing_type = ProtoField.new("Clearing Type", "lseg.lse24.level2mbprecovery.gtp.v1.0.clearingtype", ftypes.UINT8, nil, nil, nil, "Indicates the settlement mode of the security.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.closing_price_indicator = ProtoField.new("Closing Price Indicator", "lseg.lse24.level2mbprecovery.gtp.v1.0.closingpriceindicator", ftypes.STRING, nil, nil, nil, "Please refer to Description in Statistics Update message for valid values. This will be blank if no Closing Price is contained within the snapshot.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.count = ProtoField.new("Count", "lseg.lse24.level2mbprecovery.gtp.v1.0.count", ftypes.UINT32, nil, nil, nil, "Number of messages to follow, not including any Replay and Recovery Complete messages. This will be zero if Status is not 'A'.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.country_of_register = ProtoField.new("Country Of Register", "lseg.lse24.level2mbprecovery.gtp.v1.0.countryofregister", ftypes.STRING, nil, nil, nil, "Country of Register.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.currency = ProtoField.new("Currency", "lseg.lse24.level2mbprecovery.gtp.v1.0.currency", ftypes.STRING, nil, nil, nil, "Currency code as per ISO 4217.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.depth = ProtoField.new("Depth", "lseg.lse24.level2mbprecovery.gtp.v1.0.depth", ftypes.UINT8, nil, nil, nil, "Total number of orders disseminated including this one, on this side of the book as indicated by Side field.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.description = ProtoField.new("Description", "lseg.lse24.level2mbprecovery.gtp.v1.0.description", ftypes.STRING, nil, nil, nil, "Description of the instrument.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.lse24.level2mbprecovery.gtp.v1.0.dynamiccircuitbreakertolerances", ftypes.DOUBLE, nil, nil, nil, "Dynamic Circuit Breaker Tolerance (%) of the instrument.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.dynamic_reference_price = ProtoField.new("Dynamic Reference Price", "lseg.lse24.level2mbprecovery.gtp.v1.0.dynamicreferenceprice", ftypes.DOUBLE, nil, nil, nil, "Reference Price as reported by the source venue.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.electronic_order_book = ProtoField.new("Electronic Order Book", "lseg.lse24.level2mbprecovery.gtp.v1.0.electronicorderbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.event_code = ProtoField.new("Event Code", "lseg.lse24.level2mbprecovery.gtp.v1.0.eventcode", ftypes.STRING, nil, nil, nil, "Start or end of day event code.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.ex_marker_code = ProtoField.new("Ex Marker Code", "lseg.lse24.level2mbprecovery.gtp.v1.0.exmarkercode", ftypes.STRING, nil, nil, nil, "The value of an Ex-Marker pertaining to a tradable instrument.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.exchange_market_size = ProtoField.new("Exchange Market Size", "lseg.lse24.level2mbprecovery.gtp.v1.0.exchangemarketsize", ftypes.UINT64, nil, nil, nil, "The Exchange Market Size (EMS) is set to show the minimum size a market maker must quote in an individual security for all executable and non executable quotes.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.executed_size = ProtoField.new("Executed Size", "lseg.lse24.level2mbprecovery.gtp.v1.0.executedsize", ftypes.DOUBLE, nil, nil, nil, "Total executed quantity.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.expiration_date = ProtoField.new("Expiration Date", "lseg.lse24.level2mbprecovery.gtp.v1.0.expirationdate", ftypes.STRING, nil, nil, nil, "Expiration date of the instrument.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.fifth_reserved_8 = ProtoField.new("Fifth Reserved 8", "lseg.lse24.level2mbprecovery.gtp.v1.0.fifthreserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.fifty_two_week_trade_high = ProtoField.new("Fifty Two Week Trade High", "lseg.lse24.level2mbprecovery.gtp.v1.0.fiftytwoweektradehigh", ftypes.DOUBLE, nil, nil, nil, "52-week high price of all trades.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.fifty_two_week_trade_low = ProtoField.new("Fifty Two Week Trade Low", "lseg.lse24.level2mbprecovery.gtp.v1.0.fiftytwoweektradelow", ftypes.DOUBLE, nil, nil, nil, "52-week low price of all trades.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.first_reserved_1 = ProtoField.new("First Reserved 1", "lseg.lse24.level2mbprecovery.gtp.v1.0.firstreserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.fourth_reserved_8 = ProtoField.new("Fourth Reserved 8", "lseg.lse24.level2mbprecovery.gtp.v1.0.fourthreserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.group_id = ProtoField.new("Group Id", "lseg.lse24.level2mbprecovery.gtp.v1.0.groupid", ftypes.STRING, nil, nil, nil, "Group/Segment ID if Request Level is 1. Blank if not.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.hidden_execution_indicator = ProtoField.new("Hidden Execution Indicator", "lseg.lse24.level2mbprecovery.gtp.v1.0.hiddenexecutionindicator", ftypes.UINT8, nil, nil, nil, "For London Stock Exchange, during continuous trading and CPX session, 1[2] will be sent for execution of visible[hidden] quantities. For London Stock Exchange Auction Trades, 0 will be sent indicating 'Not Applicable' (N/A).")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.iau_paired_size = ProtoField.new("Iau Paired Size", "lseg.lse24.level2mbprecovery.gtp.v1.0.iaupairedsize", ftypes.DOUBLE, nil, nil, nil, "Quantity to be matched at the last reported indicative price.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.iau_price = ProtoField.new("Iau Price", "lseg.lse24.level2mbprecovery.gtp.v1.0.iauprice", ftypes.DOUBLE, nil, nil, nil, "Contains the last reported Indicative Auction Crossing Price.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "lseg.lse24.level2mbprecovery.gtp.v1.0.imbalancedirection", ftypes.STRING, nil, nil, nil, "Direction of the imbalance.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.imbalance_quantity = ProtoField.new("Imbalance Quantity", "lseg.lse24.level2mbprecovery.gtp.v1.0.imbalancequantity", ftypes.DOUBLE, nil, nil, nil, "Quantity that was eligible to be matched at the indicative price but was not matched at the last indicative price.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.indicative_non_executable_quote_book = ProtoField.new("Indicative Non Executable Quote Book", "lseg.lse24.level2mbprecovery.gtp.v1.0.indicativenonexecutablequotebook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "Firm Quote Book")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.instrument = ProtoField.new("Instrument", "lseg.lse24.level2mbprecovery.gtp.v1.0.instrument", ftypes.UINT64, nil, nil, nil, "GTP Instrument identifier if Request Level is 0. Blank if not.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.isin = ProtoField.new("Isin", "lseg.lse24.level2mbprecovery.gtp.v1.0.isin", ftypes.STRING, nil, nil, nil, "ISIN code of the instrument.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.last_price_in_preceding_session = ProtoField.new("Last Price In Preceding Session", "lseg.lse24.level2mbprecovery.gtp.v1.0.lastpriceinprecedingsession", ftypes.DOUBLE, nil, nil, nil, "Last execution price in a session prior to the current trading day.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.last_price_in_preceding_session_date = ProtoField.new("Last Price In Preceding Session Date", "lseg.lse24.level2mbprecovery.gtp.v1.0.lastpriceinprecedingsessiondate", ftypes.STRING, nil, nil, nil, "Last execution date in a session prior to current trading day.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.last_trade_price = ProtoField.new("Last Trade Price", "lseg.lse24.level2mbprecovery.gtp.v1.0.lasttradeprice", ftypes.DOUBLE, nil, nil, nil, "Executed price at which the instrument was last traded. If no relevant trades have taken place the value '0' will be populated.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.last_trade_quantity = ProtoField.new("Last Trade Quantity", "lseg.lse24.level2mbprecovery.gtp.v1.0.lasttradequantity", ftypes.DOUBLE, nil, nil, nil, "Executed quantity of the trade which set the 'Last Trade Price'. If no relevant trades have taken place the value '0' will be populated.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.last_trade_time_utc = ProtoField.new("Last Trade Time", "lseg.lse24.level2mbprecovery.gtp.v1.0.lasttradetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Transaction time of the trade which set the 'Last Trade Price'. If no relevant trades have taken place the value '0' will be populated.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.last_trade_time = ProtoField.new("Last Trade Time", "lseg.lse24.level2mbprecovery.gtp.v1.0.lasttradetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Transaction time of the trade which set the 'Last Trade Price'. If no relevant trades have taken place the value '0' will be populated.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.length = ProtoField.new("Length", "lseg.lse24.level2mbprecovery.gtp.v1.0.length", ftypes.UINT16, nil, nil, nil, "Length of the message block including the header and all payload messages")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.listing_end_date = ProtoField.new("Listing End Date", "lseg.lse24.level2mbprecovery.gtp.v1.0.listingenddate", ftypes.STRING, nil, nil, nil, "Listing end date of the instrument.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.listing_start_date = ProtoField.new("Listing Start Date", "lseg.lse24.level2mbprecovery.gtp.v1.0.listingstartdate", ftypes.STRING, nil, nil, nil, "Listing start date of the instrument.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.login_status = ProtoField.new("Login Status", "lseg.lse24.level2mbprecovery.gtp.v1.0.loginstatus", ftypes.STRING, nil, nil, nil, "Status of the login request.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.lse24.level2mbprecovery.gtp.v1.0.marketdatagroup", ftypes.STRING, nil, nil, nil, "Identity of the market data group the payload messages relate to")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.message_count = ProtoField.new("Message Count", "lseg.lse24.level2mbprecovery.gtp.v1.0.messagecount", ftypes.UINT8, nil, nil, nil, "Number of payload messages that will follow the header")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.message_length = ProtoField.new("Message Length", "lseg.lse24.level2mbprecovery.gtp.v1.0.messagelength", ftypes.UINT16, nil, nil, nil, "Length of message including this field")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.message_type = ProtoField.new("Message Type", "lseg.lse24.level2mbprecovery.gtp.v1.0.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.minimum_lot_minimum_execution_size = ProtoField.new("Minimum Lot Minimum Execution Size", "lseg.lse24.level2mbprecovery.gtp.v1.0.minimumlotminimumexecutionsize", ftypes.DOUBLE, nil, nil, nil, "Indicates the minimum quantity/nominal value tradable on the market for a security.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.minimum_peak_size_multiplier = ProtoField.new("Minimum Peak Size Multiplier", "lseg.lse24.level2mbprecovery.gtp.v1.0.minimumpeaksizemultiplier", ftypes.DOUBLE, nil, nil, nil, "Used to specify the minimum size of an iceberg peak for an instrument in conjunction with EMS.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.new_end_time = ProtoField.new("New End Time", "lseg.lse24.level2mbprecovery.gtp.v1.0.newendtime", ftypes.STRING, nil, nil, nil, "New time the session will end. The field will contain only spaces if Session Change Reason is '0' or the Session Change Reason is not present. New End Time will be in terms of the local time on the server (i.e., not UTC).")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.number_of_trades = ProtoField.new("Number Of Trades", "lseg.lse24.level2mbprecovery.gtp.v1.0.numberoftrades", ftypes.UINT32, nil, nil, nil, "Count of all trades for the day.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.number_of_trades_on_book_only = ProtoField.new("Number Of Trades On Book Only", "lseg.lse24.level2mbprecovery.gtp.v1.0.numberoftradesonbookonly", ftypes.UINT32, nil, nil, nil, "Count of trades for the day excluding off-book trades.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.off_book = ProtoField.new("Off Book", "lseg.lse24.level2mbprecovery.gtp.v1.0.offbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04, "Off-book")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.official_closing_price = ProtoField.new("Official Closing Price", "lseg.lse24.level2mbprecovery.gtp.v1.0.officialclosingprice", ftypes.DOUBLE, nil, nil, nil, "Official Closing Price for the instrument. If the Closing Price is cleared manually by the venue '-1' will be stamped.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.official_opening_price = ProtoField.new("Official Opening Price", "lseg.lse24.level2mbprecovery.gtp.v1.0.officialopeningprice", ftypes.DOUBLE, nil, nil, nil, "Official Opening Price for the instrument. If the Opening Price is cleared manually by the venue '-1' will be stamped.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.opening_price_indicator = ProtoField.new("Opening Price Indicator", "lseg.lse24.level2mbprecovery.gtp.v1.0.openingpriceindicator", ftypes.STRING, nil, nil, nil, "Please refer to Description in Statistics Update message for valid values. This will be blank if no Opening Price is contained within the snapshot.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.lse24.level2mbprecovery.gtp.v1.0.orderbooktype", ftypes.UINT8, nil, nil, nil, "Order book the status applies to.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.partition_id = ProtoField.new("Partition Id", "lseg.lse24.level2mbprecovery.gtp.v1.0.partitionid", ftypes.STRING, nil, nil, nil, "Trading System's partition in which the instrument is traded.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.previous_days_closing_price = ProtoField.new("Previous Days Closing Price", "lseg.lse24.level2mbprecovery.gtp.v1.0.previousdaysclosingprice", ftypes.DOUBLE, nil, nil, nil, "Closing price reported for the previous trading day.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.price = ProtoField.new("Price", "lseg.lse24.level2mbprecovery.gtp.v1.0.price", ftypes.DOUBLE, nil, nil, nil, "Limit price of the order.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.private_rfq = ProtoField.new("Private Rfq", "lseg.lse24.level2mbprecovery.gtp.v1.0.privaterfq", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.recovery_status = ProtoField.new("Recovery Status", "lseg.lse24.level2mbprecovery.gtp.v1.0.recoverystatus", ftypes.STRING, nil, nil, nil, "Status of the recovery request.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.recovery_type = ProtoField.new("Recovery Type", "lseg.lse24.level2mbprecovery.gtp.v1.0.recoverytype", ftypes.UINT8, nil, nil, nil, "The type of messages to be replayed.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.request_id = ProtoField.new("Request Id", "lseg.lse24.level2mbprecovery.gtp.v1.0.requestid", ftypes.UINT32, nil, nil, nil, "The value set in this will be echoed back in the corresponding Recovery Response and Recovery Complete. The system will not validate uniqueness of the set value.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.request_level = ProtoField.new("Request Level", "lseg.lse24.level2mbprecovery.gtp.v1.0.requestlevel", ftypes.UINT8, nil, nil, nil, "Defines the level of the request.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.request_order_book_type = ProtoField.new("Request Order Book Type", "lseg.lse24.level2mbprecovery.gtp.v1.0.requestorderbooktype", ftypes.UINT8, nil, nil, nil, "Only considered if the Request Level is 0. If specified, only data related to the specified order book type is provided. If not specified, data for all available book types for the instrument are provided. For Recovery Type = 3 (Statistics) this has to be set to '0' = All.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.reserved_1 = ProtoField.new("Reserved 1", "lseg.lse24.level2mbprecovery.gtp.v1.0.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.reserved_12 = ProtoField.new("Reserved 12", "lseg.lse24.level2mbprecovery.gtp.v1.0.reserved12", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.reserved_2 = ProtoField.new("Reserved 2", "lseg.lse24.level2mbprecovery.gtp.v1.0.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.reserved_4 = ProtoField.new("Reserved 4", "lseg.lse24.level2mbprecovery.gtp.v1.0.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.reserved_7 = ProtoField.new("Reserved 7", "lseg.lse24.level2mbprecovery.gtp.v1.0.reserved7", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.reserved_8 = ProtoField.new("Reserved 8", "lseg.lse24.level2mbprecovery.gtp.v1.0.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "lseg.lse24.level2mbprecovery.gtp.v1.0.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.second_reserved_8 = ProtoField.new("Second Reserved 8", "lseg.lse24.level2mbprecovery.gtp.v1.0.secondreserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.security_exchange = ProtoField.new("Security Exchange", "lseg.lse24.level2mbprecovery.gtp.v1.0.securityexchange", ftypes.STRING, nil, nil, nil, "Not Applicable to LSE.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.security_maximum_spread = ProtoField.new("Security Maximum Spread", "lseg.lse24.level2mbprecovery.gtp.v1.0.securitymaximumspread", ftypes.DOUBLE, nil, nil, nil, "This field informs Participants of the maximum spread allowable for an instrument when submitting quote messages, calculated as a percentage of mid-price.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.security_type = ProtoField.new("Security Type", "lseg.lse24.level2mbprecovery.gtp.v1.0.securitytype", ftypes.UINT8, nil, nil, nil, "Type of security.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.sedol = ProtoField.new("Sedol", "lseg.lse24.level2mbprecovery.gtp.v1.0.sedol", ftypes.STRING, nil, nil, nil, "SEDOL code of the instrument.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.segment = ProtoField.new("Segment", "lseg.lse24.level2mbprecovery.gtp.v1.0.segment", ftypes.STRING, nil, nil, nil, "Segment the instrument is assigned to.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.lse24.level2mbprecovery.gtp.v1.0.sequencenumber", ftypes.UINT32, nil, nil, nil, "Only valid if Recovery Type = 2 (Trades). If specified, the trades reported with an equal or higher sequence number will be sent.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.lse24.level2mbprecovery.gtp.v1.0.sessionchangereason", ftypes.UINT8, nil, nil, nil, "Reason the trading session changed.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.seventh_reserved_8 = ProtoField.new("Seventh Reserved 8", "lseg.lse24.level2mbprecovery.gtp.v1.0.seventhreserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.side = ProtoField.new("Side", "lseg.lse24.level2mbprecovery.gtp.v1.0.side", ftypes.STRING, nil, nil, nil, "Side of the price point.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.sixth_reserved_8 = ProtoField.new("Sixth Reserved 8", "lseg.lse24.level2mbprecovery.gtp.v1.0.sixthreserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.size = ProtoField.new("Size", "lseg.lse24.level2mbprecovery.gtp.v1.0.size", ftypes.DOUBLE, nil, nil, nil, "Displayed size of the order.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.source_venue = ProtoField.new("Source Venue", "lseg.lse24.level2mbprecovery.gtp.v1.0.sourcevenue", ftypes.UINT16, nil, nil, nil, "Mandatory field if Request Level = 1. Not considered for other Request Levels.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.splits = ProtoField.new("Splits", "lseg.lse24.level2mbprecovery.gtp.v1.0.splits", ftypes.UINT16, nil, nil, nil, "Number of orders at this price point.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.lse24.level2mbprecovery.gtp.v1.0.staticcircuitbreakertolerances", ftypes.DOUBLE, nil, nil, nil, "Static Circuit Breaker Tolerance (%) of the instrument.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.static_reference_price = ProtoField.new("Static Reference Price", "lseg.lse24.level2mbprecovery.gtp.v1.0.staticreferenceprice", ftypes.DOUBLE, nil, nil, nil, "Reference Price as reported by the source venue.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.strike_price = ProtoField.new("Strike Price", "lseg.lse24.level2mbprecovery.gtp.v1.0.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Strike Price (exercise price for warrants).")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.symbol = ProtoField.new("Symbol", "lseg.lse24.level2mbprecovery.gtp.v1.0.symbol", ftypes.STRING, nil, nil, nil, "Symbol of the instrument.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.tcp_unit = ProtoField.new("Tcp Unit", "lseg.lse24.level2mbprecovery.gtp.v1.0.tcpunit", ftypes.STRING, nil, nil, nil, "One unit on the tcp stream: the unit header and its payload messages")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.third_reserved_1 = ProtoField.new("Third Reserved 1", "lseg.lse24.level2mbprecovery.gtp.v1.0.thirdreserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.third_reserved_8 = ProtoField.new("Third Reserved 8", "lseg.lse24.level2mbprecovery.gtp.v1.0.thirdreserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.tick_id = ProtoField.new("Tick Id", "lseg.lse24.level2mbprecovery.gtp.v1.0.tickid", ftypes.STRING, nil, nil, nil, "The tick structure applicable for the instrument.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.timestamp_utc = ProtoField.new("Timestamp", "lseg.lse24.level2mbprecovery.gtp.v1.0.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the message was generated.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.timestamp = ProtoField.new("Timestamp", "lseg.lse24.level2mbprecovery.gtp.v1.0.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the message was generated.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_cancellation = ProtoField.new("Trade Cancellation", "lseg.lse24.level2mbprecovery.gtp.v1.0.tradecancellation", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_correction = ProtoField.new("Trade Correction", "lseg.lse24.level2mbprecovery.gtp.v1.0.tradecorrection", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_flags = ProtoField.new("Trade Flags", "lseg.lse24.level2mbprecovery.gtp.v1.0.tradeflags", ftypes.STRING)
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_high = ProtoField.new("Trade High", "lseg.lse24.level2mbprecovery.gtp.v1.0.tradehigh", ftypes.DOUBLE, nil, nil, nil, "Current trading day high price of all trades.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_high_on_book_only = ProtoField.new("Trade High On Book Only", "lseg.lse24.level2mbprecovery.gtp.v1.0.tradehighonbookonly", ftypes.DOUBLE, nil, nil, nil, "Current trading day high price excluding off-book trades.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_id = ProtoField.new("Trade Id", "lseg.lse24.level2mbprecovery.gtp.v1.0.tradeid", ftypes.UINT64, nil, nil, nil, "Unique identifier of the trade.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_low = ProtoField.new("Trade Low", "lseg.lse24.level2mbprecovery.gtp.v1.0.tradelow", ftypes.DOUBLE, nil, nil, nil, "Current trading day low price of all trades.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_low_on_book_only = ProtoField.new("Trade Low On Book Only", "lseg.lse24.level2mbprecovery.gtp.v1.0.tradelowonbookonly", ftypes.DOUBLE, nil, nil, nil, "Current trading day low price excluding off-book trades.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "lseg.lse24.level2mbprecovery.gtp.v1.0.tradequalifier", ftypes.STRING, nil, nil, nil, "Qualifier of the trade.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_type = ProtoField.new("Trade Type", "lseg.lse24.level2mbprecovery.gtp.v1.0.tradetype", ftypes.UINT8, nil, nil, nil, "Type of the trade.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trading_status = ProtoField.new("Trading Status", "lseg.lse24.level2mbprecovery.gtp.v1.0.tradingstatus", ftypes.STRING, nil, nil, nil, "Current Trading status of the Instrument. Populated only when the message is sent at the end of individual order book snapshots during a trading session.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.transaction_time_utc = ProtoField.new("Transaction Time", "lseg.lse24.level2mbprecovery.gtp.v1.0.transactiontime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Execution timestamp as reported by the supported market. If a trade is cancelled or amended, this field will contain the transaction time of the original trade.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.transaction_time = ProtoField.new("Transaction Time", "lseg.lse24.level2mbprecovery.gtp.v1.0.transactiontime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Execution timestamp as reported by the supported market. If a trade is cancelled or amended, this field will contain the transaction time of the original trade.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.turnover = ProtoField.new("Turnover", "lseg.lse24.level2mbprecovery.gtp.v1.0.turnover", ftypes.DOUBLE, nil, nil, nil, "Turnover of all trades for the day.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.turnover_on_book_only = ProtoField.new("Turnover On Book Only", "lseg.lse24.level2mbprecovery.gtp.v1.0.turnoveronbookonly", ftypes.DOUBLE, nil, nil, nil, "Turnover for the day excluding off-book trades.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.unused_1 = ProtoField.new("Unused 1", "lseg.lse24.level2mbprecovery.gtp.v1.0.unused1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Reserved")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.unused_3 = ProtoField.new("Unused 3", "lseg.lse24.level2mbprecovery.gtp.v1.0.unused3", ftypes.UINT8, nil, base.DEC, 0xE0, "Reserved")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.unused_6 = ProtoField.new("Unused 6", "lseg.lse24.level2mbprecovery.gtp.v1.0.unused6", ftypes.UINT8, nil, base.DEC, 0xFC, "Reserved")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.username = ProtoField.new("Username", "lseg.lse24.level2mbprecovery.gtp.v1.0.username", ftypes.STRING, nil, nil, nil, "CompID assigned to the client.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.lse24.level2mbprecovery.gtp.v1.0.venueinstrumentid", ftypes.STRING, nil, nil, nil, "Instrument identifier used by the source venue.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.venue_of_execution = ProtoField.new("Venue Of Execution", "lseg.lse24.level2mbprecovery.gtp.v1.0.venueofexecution", ftypes.UINT8, nil, nil, nil, "Market Identification Code (MIC) of the venue where the transaction was executed")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.volume = ProtoField.new("Volume", "lseg.lse24.level2mbprecovery.gtp.v1.0.volume", ftypes.DOUBLE, nil, nil, nil, "Cumulative volume of all trades for the trading day.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.volume_on_book_only = ProtoField.new("Volume On Book Only", "lseg.lse24.level2mbprecovery.gtp.v1.0.volumeonbookonly", ftypes.DOUBLE, nil, nil, nil, "Cumulative volume for the trading day excluding off-book trades.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.vwap = ProtoField.new("Vwap", "lseg.lse24.level2mbprecovery.gtp.v1.0.vwap", ftypes.DOUBLE, nil, nil, nil, "Volume weighted average price for the day for all trades.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.vwap_on_book_only = ProtoField.new("Vwap On Book Only", "lseg.lse24.level2mbprecovery.gtp.v1.0.vwaponbookonly", ftypes.DOUBLE, nil, nil, nil, "Volume weighted average price for the day excluding off-book trades.")

-- Lseg Lse24 Level2MbpRecovery Gtp 1.0 Framing
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.message = ProtoField.new("Message", "lseg.lse24.level2mbprecovery.gtp.v1.0.message", ftypes.STRING, nil, nil, nil, "Gtp Tcp Message")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.message_header = ProtoField.new("Message Header", "lseg.lse24.level2mbprecovery.gtp.v1.0.messageheader", ftypes.STRING, nil, nil, nil, "Gtp Tcp Message Header")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.packet = ProtoField.new("Packet", "lseg.lse24.level2mbprecovery.gtp.v1.0.packet", ftypes.STRING, nil, nil, nil, "Gtp Tcp Packet")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.unit_header = ProtoField.new("Unit Header", "lseg.lse24.level2mbprecovery.gtp.v1.0.unitheader", ftypes.STRING, nil, nil, nil, "Gtp Tcp Unit Header")

-- Lseg Lse24 Level2MbpRecovery 1.0 Application Messages
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.add_order_mbp_message = ProtoField.new("Add Order Mbp Message", "lseg.lse24.level2mbprecovery.gtp.v1.0.addordermbpmessage", ftypes.STRING, nil, nil, nil, "Indicates the first price point of a given side of an MBP snapshot.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.add_order_short_mbp_message = ProtoField.new("Add Order Short Mbp Message", "lseg.lse24.level2mbprecovery.gtp.v1.0.addordershortmbpmessage", ftypes.STRING, nil, nil, nil, "Used to indicate individual price points of an MBP snapshot.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.instrument_directory_extended_message = ProtoField.new("Instrument Directory Extended Message", "lseg.lse24.level2mbprecovery.gtp.v1.0.instrumentdirectoryextendedmessage", ftypes.STRING, nil, nil, nil, "Used to disseminate reference data information of equity instruments.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.instrument_status_message = ProtoField.new("Instrument Status Message", "lseg.lse24.level2mbprecovery.gtp.v1.0.instrumentstatusmessage", ftypes.STRING, nil, nil, nil, "Used to communicate scheduled and unscheduled session changes. When sent in the recovery channel, used to indicate the current trading status of an instrument.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.login_request_message = ProtoField.new("Login Request Message", "lseg.lse24.level2mbprecovery.gtp.v1.0.loginrequestmessage", ftypes.STRING, nil, nil, nil, "Used by the client to log in to the replay or recovery channel.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.login_response_message = ProtoField.new("Login Response Message", "lseg.lse24.level2mbprecovery.gtp.v1.0.loginresponsemessage", ftypes.STRING, nil, nil, nil, "Used by the server to accept or reject a login request to the replay or recovery channel.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "lseg.lse24.level2mbprecovery.gtp.v1.0.orderbookclearmessage", ftypes.STRING, nil, nil, nil, "Sent to instruct recipients to remove all orders from the order book for the specified instrument.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.recovery_request_message = ProtoField.new("Recovery Request Message", "lseg.lse24.level2mbprecovery.gtp.v1.0.recoveryrequestmessage", ftypes.STRING, nil, nil, nil, "Used by the client to request data on the recovery channel.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.recovery_response_message = ProtoField.new("Recovery Response Message", "lseg.lse24.level2mbprecovery.gtp.v1.0.recoveryresponsemessage", ftypes.STRING, nil, nil, nil, "Used by the server to respond to a snapshot request on the Snapshot channel.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.replay_and_recovery_complete_message = ProtoField.new("Replay And Recovery Complete Message", "lseg.lse24.level2mbprecovery.gtp.v1.0.replayandrecoverycompletemessage", ftypes.STRING, nil, nil, nil, "Used by the server to indicate the successful completion of servicing a message replay or a recovery request.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.statistics_snapshot_message = ProtoField.new("Statistics Snapshot Message", "lseg.lse24.level2mbprecovery.gtp.v1.0.statisticssnapshotmessage", ftypes.STRING, nil, nil, nil, "A snapshot of an instrument's statistics that is used for recovery.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.system_event_message = ProtoField.new("System Event Message", "lseg.lse24.level2mbprecovery.gtp.v1.0.systemeventmessage", ftypes.STRING, nil, nil, nil, "Sent to indicate the start and end of the day.")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_message = ProtoField.new("Trade Message", "lseg.lse24.level2mbprecovery.gtp.v1.0.trademessage", ftypes.STRING, nil, nil, nil, "Sent to indicate trades executed on supported markets.")

-- Lseg Lse24 Level2MbpRecovery Gtp 1.0 Generated Fields
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.message_index = ProtoField.new("Message Index", "lseg.lse24.level2mbprecovery.gtp.v1.0.messageindex", ftypes.UINT16)

-- Lseg Lse24 Level2MbpRecovery Gtp 1.0 Expert Info
lseg_lse24_level2mbprecovery_gtp_v1_0.experts = {}
lseg_lse24_level2mbprecovery_gtp_v1_0.experts.undecoded = ProtoExpert.new("lseg.lse24.level2mbprecovery.gtp.v1.0.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.experts = { lseg_lse24_level2mbprecovery_gtp_v1_0.experts.undecoded }

-----------------------------------------------------------------------
-- Lseg Lse24 Level2MbpRecovery Gtp 1.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "DateTime Local", 2 },
  { 2, "DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp_format = 3


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg Lse24 Level2MbpRecovery Gtp 1.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.padding = false
show.indexes = true

-- Register Lseg Lse24 Level2MbpRecovery Gtp 1.0 Show Options
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")
omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.show_application_messages then
    show.application_messages = omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.show_application_messages
  end
  if show.headers ~= omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.show_headers then
    show.headers = omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.show_headers
  end
  if show.padding ~= omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.show_padding then
    show.padding = omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.show_padding
  end
  if show.structs ~= omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.show_structs then
    show.structs = omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.show_structs
  end
  if show.indexes ~= omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.show_indexes then
    show.indexes = omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.show_indexes
  end
  if lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp_format ~= omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.timestamp_format then
    lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp_format = omi_lseg_lse24_level2mbprecovery_gtp_v1_0.prefs.timestamp_format
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
-- Lseg Lse24 Level2MbpRecovery Gtp 1.0 Fields
-----------------------------------------------------------------------

-- Auction Type
lseg_lse24_level2mbprecovery_gtp_v1_0.auction_type = {}

-- Size: Auction Type
lseg_lse24_level2mbprecovery_gtp_v1_0.auction_type.size = 1

-- Display: Auction Type
lseg_lse24_level2mbprecovery_gtp_v1_0.auction_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Auction Type: No Value"
  end

  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "A" then
    return "Auction Type: Aesp (A)"
  end
  if value == "B" then
    return "Auction Type: Edsp (B)"
  end
  if value == "E" then
    return "Auction Type: Resume Auction (E)"
  end
  if value == "F" then
    return "Auction Type: Periodic Auction (F)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
lseg_lse24_level2mbprecovery_gtp_v1_0.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.auction_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string(ENC_WINDOWS_1252)
  end

  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Best Closing Ask Price
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_price = {}

-- Size: Best Closing Ask Price
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_price.size = 8

-- Display: Best Closing Ask Price
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_price.display = function(value)
  return "Best Closing Ask Price: "..value
end

-- Translate: Best Closing Ask Price
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Closing Ask Price
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_price.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.best_closing_ask_price, range, value, display)

  return offset + length, value
end

-- Best Closing Ask Size
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_size = {}

-- Size: Best Closing Ask Size
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_size.size = 8

-- Display: Best Closing Ask Size
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_size.display = function(value)
  return "Best Closing Ask Size: "..value
end

-- Translate: Best Closing Ask Size
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Closing Ask Size
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_size.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.best_closing_ask_size, range, value, display)

  return offset + length, value
end

-- Best Closing Bid Price
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_price = {}

-- Size: Best Closing Bid Price
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_price.size = 8

-- Display: Best Closing Bid Price
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_price.display = function(value)
  return "Best Closing Bid Price: "..value
end

-- Translate: Best Closing Bid Price
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Closing Bid Price
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_price.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.best_closing_bid_price, range, value, display)

  return offset + length, value
end

-- Best Closing Bid Size
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_size = {}

-- Size: Best Closing Bid Size
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_size.size = 8

-- Display: Best Closing Bid Size
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_size.display = function(value)
  return "Best Closing Bid Size: "..value
end

-- Translate: Best Closing Bid Size
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Best Closing Bid Size
lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_size.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.best_closing_bid_size, range, value, display)

  return offset + length, value
end

-- Clearing Type
lseg_lse24_level2mbprecovery_gtp_v1_0.clearing_type = {}

-- Size: Clearing Type
lseg_lse24_level2mbprecovery_gtp_v1_0.clearing_type.size = 1

-- Display: Clearing Type
lseg_lse24_level2mbprecovery_gtp_v1_0.clearing_type.labels = {
  [0] = "Clearing Type: Not Cleared (0)",
  [1] = "Clearing Type: Cleared (1)",
}

lseg_lse24_level2mbprecovery_gtp_v1_0.clearing_type.display = function(value)
  return lseg_lse24_level2mbprecovery_gtp_v1_0.clearing_type.labels[value] or "Clearing Type: Unknown("..value..")"
end

-- Dissect: Clearing Type
lseg_lse24_level2mbprecovery_gtp_v1_0.clearing_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.clearing_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.clearing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.clearing_type, range, value, display)

  return offset + length, value
end

-- Closing Price Indicator
lseg_lse24_level2mbprecovery_gtp_v1_0.closing_price_indicator = {}

-- Size: Closing Price Indicator
lseg_lse24_level2mbprecovery_gtp_v1_0.closing_price_indicator.size = 1

-- Display: Closing Price Indicator
lseg_lse24_level2mbprecovery_gtp_v1_0.closing_price_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Closing Price Indicator: No Value"
  end

  if value == "A" then
    return "Closing Price Indicator: Ut (A)"
  end
  if value == "B" then
    return "Closing Price Indicator: At (B)"
  end
  if value == "C" then
    return "Closing Price Indicator: Mid Of Bbo (C)"
  end
  if value == "D" then
    return "Closing Price Indicator: Last At (D)"
  end
  if value == "E" then
    return "Closing Price Indicator: Last Ut (E)"
  end
  if value == "F" then
    return "Closing Price Indicator: Manual (F)"
  end
  if value == "I" then
    return "Closing Price Indicator: Previous Close (I)"
  end

  return "Closing Price Indicator: Unknown("..value..")"
end

-- Dissect: Closing Price Indicator
lseg_lse24_level2mbprecovery_gtp_v1_0.closing_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.closing_price_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string(ENC_WINDOWS_1252)
  end

  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.closing_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.closing_price_indicator, range, value, display)

  return offset + length, value
end

-- Count
lseg_lse24_level2mbprecovery_gtp_v1_0.count = {}

-- Size: Count
lseg_lse24_level2mbprecovery_gtp_v1_0.count.size = 4

-- Display: Count
lseg_lse24_level2mbprecovery_gtp_v1_0.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
lseg_lse24_level2mbprecovery_gtp_v1_0.count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.count, range, value, display)

  return offset + length, value
end

-- Country Of Register
lseg_lse24_level2mbprecovery_gtp_v1_0.country_of_register = {}

-- Size: Country Of Register
lseg_lse24_level2mbprecovery_gtp_v1_0.country_of_register.size = 3

-- Display: Country Of Register
lseg_lse24_level2mbprecovery_gtp_v1_0.country_of_register.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Country Of Register: No Value"
  end

  return "Country Of Register: "..value
end

-- Dissect: Country Of Register
lseg_lse24_level2mbprecovery_gtp_v1_0.country_of_register.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.country_of_register.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_WINDOWS_1252))
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.country_of_register.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.country_of_register, range, value, display)

  return offset + length, value
end

-- Currency
lseg_lse24_level2mbprecovery_gtp_v1_0.currency = {}

-- Size: Currency
lseg_lse24_level2mbprecovery_gtp_v1_0.currency.size = 3

-- Display: Currency
lseg_lse24_level2mbprecovery_gtp_v1_0.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
lseg_lse24_level2mbprecovery_gtp_v1_0.currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_WINDOWS_1252))
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.currency, range, value, display)

  return offset + length, value
end

-- Depth
lseg_lse24_level2mbprecovery_gtp_v1_0.depth = {}

-- Size: Depth
lseg_lse24_level2mbprecovery_gtp_v1_0.depth.size = 1

-- Display: Depth
lseg_lse24_level2mbprecovery_gtp_v1_0.depth.display = function(value)
  return "Depth: "..value
end

-- Dissect: Depth
lseg_lse24_level2mbprecovery_gtp_v1_0.depth.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.depth.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.depth, range, value, display)

  return offset + length, value
end

-- Description
lseg_lse24_level2mbprecovery_gtp_v1_0.description = {}

-- Size: Description
lseg_lse24_level2mbprecovery_gtp_v1_0.description.size = 40

-- Display: Description
lseg_lse24_level2mbprecovery_gtp_v1_0.description.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Description: No Value"
  end

  return "Description: "..value
end

-- Dissect: Description
lseg_lse24_level2mbprecovery_gtp_v1_0.description.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.description.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_WINDOWS_1252))
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.description.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.description, range, value, display)

  return offset + length, value
end

-- Dynamic Circuit Breaker Tolerances
lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_circuit_breaker_tolerances = {}

-- Size: Dynamic Circuit Breaker Tolerances
lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_circuit_breaker_tolerances.size = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_circuit_breaker_tolerances.display = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_circuit_breaker_tolerances.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Dynamic Reference Price
lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_reference_price = {}

-- Size: Dynamic Reference Price
lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_reference_price.size = 8

-- Display: Dynamic Reference Price
lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_reference_price.display = function(value)
  return "Dynamic Reference Price: "..value
end

-- Translate: Dynamic Reference Price
lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_reference_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Reference Price
lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_reference_price.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.dynamic_reference_price, range, value, display)

  return offset + length, value
end

-- Event Code
lseg_lse24_level2mbprecovery_gtp_v1_0.event_code = {}

-- Size: Event Code
lseg_lse24_level2mbprecovery_gtp_v1_0.event_code.size = 1

-- Display: Event Code
lseg_lse24_level2mbprecovery_gtp_v1_0.event_code.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Event Code: No Value"
  end

  if value == "C" then
    return "Event Code: End Of Day (C)"
  end
  if value == "O" then
    return "Event Code: Start Of Day (O)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
lseg_lse24_level2mbprecovery_gtp_v1_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.event_code.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string(ENC_WINDOWS_1252)
  end

  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Ex Marker Code
lseg_lse24_level2mbprecovery_gtp_v1_0.ex_marker_code = {}

-- Size: Ex Marker Code
lseg_lse24_level2mbprecovery_gtp_v1_0.ex_marker_code.size = 2

-- Display: Ex Marker Code
lseg_lse24_level2mbprecovery_gtp_v1_0.ex_marker_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Ex Marker Code: No Value"
  end

  return "Ex Marker Code: "..value
end

-- Dissect: Ex Marker Code
lseg_lse24_level2mbprecovery_gtp_v1_0.ex_marker_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.ex_marker_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_WINDOWS_1252))
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.ex_marker_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.ex_marker_code, range, value, display)

  return offset + length, value
end

-- Exchange Market Size
lseg_lse24_level2mbprecovery_gtp_v1_0.exchange_market_size = {}

-- Size: Exchange Market Size
lseg_lse24_level2mbprecovery_gtp_v1_0.exchange_market_size.size = 8

-- Display: Exchange Market Size
lseg_lse24_level2mbprecovery_gtp_v1_0.exchange_market_size.display = function(value)
  return "Exchange Market Size: "..value
end

-- Dissect: Exchange Market Size
lseg_lse24_level2mbprecovery_gtp_v1_0.exchange_market_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.exchange_market_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.exchange_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.exchange_market_size, range, value, display)

  return offset + length, value
end

-- Executed Size
lseg_lse24_level2mbprecovery_gtp_v1_0.executed_size = {}

-- Size: Executed Size
lseg_lse24_level2mbprecovery_gtp_v1_0.executed_size.size = 8

-- Display: Executed Size
lseg_lse24_level2mbprecovery_gtp_v1_0.executed_size.display = function(value)
  return "Executed Size: "..value
end

-- Translate: Executed Size
lseg_lse24_level2mbprecovery_gtp_v1_0.executed_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Executed Size
lseg_lse24_level2mbprecovery_gtp_v1_0.executed_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.executed_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.executed_size.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.executed_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.executed_size, range, value, display)

  return offset + length, value
end

-- Expiration Date
lseg_lse24_level2mbprecovery_gtp_v1_0.expiration_date = {}

-- Size: Expiration Date
lseg_lse24_level2mbprecovery_gtp_v1_0.expiration_date.size = 8

-- Display: Expiration Date
lseg_lse24_level2mbprecovery_gtp_v1_0.expiration_date.display = function(value)
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
lseg_lse24_level2mbprecovery_gtp_v1_0.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Fifth Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.fifth_reserved_8 = {}

-- Size: Fifth Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.fifth_reserved_8.size = 8

-- Display: Fifth Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.fifth_reserved_8.display = function(value)
  return "Fifth Reserved 8: "..value
end

-- Dissect: Fifth Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.fifth_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.fifth_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.fifth_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.fifth_reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Fifty Two Week Trade High
lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_high = {}

-- Size: Fifty Two Week Trade High
lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_high.size = 8

-- Display: Fifty Two Week Trade High
lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_high.display = function(value)
  return "Fifty Two Week Trade High: "..value
end

-- Translate: Fifty Two Week Trade High
lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_high.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Fifty Two Week Trade High
lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_high.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_high.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_high.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.fifty_two_week_trade_high, range, value, display)

  return offset + length, value
end

-- Fifty Two Week Trade Low
lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_low = {}

-- Size: Fifty Two Week Trade Low
lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_low.size = 8

-- Display: Fifty Two Week Trade Low
lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_low.display = function(value)
  return "Fifty Two Week Trade Low: "..value
end

-- Translate: Fifty Two Week Trade Low
lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_low.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Fifty Two Week Trade Low
lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_low.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_low.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_low.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.fifty_two_week_trade_low, range, value, display)

  return offset + length, value
end

-- First Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.first_reserved_1 = {}

-- Size: First Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.first_reserved_1.size = 1

-- Display: First Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.first_reserved_1.display = function(value)
  return "First Reserved 1: "..value
end

-- Dissect: First Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.first_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.first_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.first_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.first_reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Fourth Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.fourth_reserved_8 = {}

-- Size: Fourth Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.fourth_reserved_8.size = 8

-- Display: Fourth Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.fourth_reserved_8.display = function(value)
  return "Fourth Reserved 8: "..value
end

-- Dissect: Fourth Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.fourth_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.fourth_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.fourth_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.fourth_reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Group Id
lseg_lse24_level2mbprecovery_gtp_v1_0.group_id = {}

-- Size: Group Id
lseg_lse24_level2mbprecovery_gtp_v1_0.group_id.size = 6

-- Display: Group Id
lseg_lse24_level2mbprecovery_gtp_v1_0.group_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Group Id: No Value"
  end

  return "Group Id: "..value
end

-- Dissect: Group Id
lseg_lse24_level2mbprecovery_gtp_v1_0.group_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.group_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_WINDOWS_1252))
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.group_id, range, value, display)

  return offset + length, value
end

-- Hidden Execution Indicator
lseg_lse24_level2mbprecovery_gtp_v1_0.hidden_execution_indicator = {}

-- Size: Hidden Execution Indicator
lseg_lse24_level2mbprecovery_gtp_v1_0.hidden_execution_indicator.size = 1

-- Display: Hidden Execution Indicator
lseg_lse24_level2mbprecovery_gtp_v1_0.hidden_execution_indicator.labels = {
  [0] = "Hidden Execution Indicator: Na (0)",
  [1] = "Hidden Execution Indicator: Visible (1)",
  [2] = "Hidden Execution Indicator: Hidden (2)",
}

lseg_lse24_level2mbprecovery_gtp_v1_0.hidden_execution_indicator.display = function(value)
  return lseg_lse24_level2mbprecovery_gtp_v1_0.hidden_execution_indicator.labels[value] or "Hidden Execution Indicator: Unknown("..value..")"
end

-- Dissect: Hidden Execution Indicator
lseg_lse24_level2mbprecovery_gtp_v1_0.hidden_execution_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.hidden_execution_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.hidden_execution_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.hidden_execution_indicator, range, value, display)

  return offset + length, value
end

-- Iau Paired Size
lseg_lse24_level2mbprecovery_gtp_v1_0.iau_paired_size = {}

-- Size: Iau Paired Size
lseg_lse24_level2mbprecovery_gtp_v1_0.iau_paired_size.size = 8

-- Display: Iau Paired Size
lseg_lse24_level2mbprecovery_gtp_v1_0.iau_paired_size.display = function(value)
  return "Iau Paired Size: "..value
end

-- Translate: Iau Paired Size
lseg_lse24_level2mbprecovery_gtp_v1_0.iau_paired_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Iau Paired Size
lseg_lse24_level2mbprecovery_gtp_v1_0.iau_paired_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.iau_paired_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.iau_paired_size.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.iau_paired_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.iau_paired_size, range, value, display)

  return offset + length, value
end

-- Iau Price
lseg_lse24_level2mbprecovery_gtp_v1_0.iau_price = {}

-- Size: Iau Price
lseg_lse24_level2mbprecovery_gtp_v1_0.iau_price.size = 8

-- Display: Iau Price
lseg_lse24_level2mbprecovery_gtp_v1_0.iau_price.display = function(value)
  return "Iau Price: "..value
end

-- Translate: Iau Price
lseg_lse24_level2mbprecovery_gtp_v1_0.iau_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Iau Price
lseg_lse24_level2mbprecovery_gtp_v1_0.iau_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.iau_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.iau_price.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.iau_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.iau_price, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_direction = {}

-- Size: Imbalance Direction
lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_direction.size = 1

-- Display: Imbalance Direction
lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_direction.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Imbalance Direction: No Value"
  end

  if value == "B" then
    return "Imbalance Direction: Buy Imbalance (B)"
  end
  if value == "N" then
    return "Imbalance Direction: No Imbalance (N)"
  end
  if value == "O" then
    return "Imbalance Direction: Insufficient Orders For Auction (O)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell Imbalance (S)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_direction.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string(ENC_WINDOWS_1252)
  end

  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Quantity
lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_quantity = {}

-- Size: Imbalance Quantity
lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_quantity.size = 8

-- Display: Imbalance Quantity
lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_quantity.display = function(value)
  return "Imbalance Quantity: "..value
end

-- Translate: Imbalance Quantity
lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Imbalance Quantity
lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_quantity.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Instrument
lseg_lse24_level2mbprecovery_gtp_v1_0.instrument = {}

-- Size: Instrument
lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.size = 8

-- Display: Instrument
lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.instrument, range, value, display)

  return offset + length, value
end

-- Isin
lseg_lse24_level2mbprecovery_gtp_v1_0.isin = {}

-- Size: Isin
lseg_lse24_level2mbprecovery_gtp_v1_0.isin.size = 12

-- Display: Isin
lseg_lse24_level2mbprecovery_gtp_v1_0.isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin: No Value"
  end

  return "Isin: "..value
end

-- Dissect: Isin
lseg_lse24_level2mbprecovery_gtp_v1_0.isin.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_WINDOWS_1252))
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.isin, range, value, display)

  return offset + length, value
end

-- Last Price In Preceding Session
lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session = {}

-- Size: Last Price In Preceding Session
lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session.size = 8

-- Display: Last Price In Preceding Session
lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session.display = function(value)
  return "Last Price In Preceding Session: "..value
end

-- Translate: Last Price In Preceding Session
lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Price In Preceding Session
lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.last_price_in_preceding_session, range, value, display)

  return offset + length, value
end

-- Last Price In Preceding Session Date
lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session_date = {}

-- Size: Last Price In Preceding Session Date
lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session_date.size = 8

-- Display: Last Price In Preceding Session Date
lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Last Price In Preceding Session Date: No Value"
  end

  if #value < 8 then
    return "Last Price In Preceding Session Date: "..value
  end

  return "Last Price In Preceding Session Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Last Price In Preceding Session Date
lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session_date.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.last_price_in_preceding_session_date, range, value, display)

  return offset + length, value
end

-- Last Trade Price
lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_price = {}

-- Size: Last Trade Price
lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_price.size = 8

-- Display: Last Trade Price
lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_price.display = function(value)
  return "Last Trade Price: "..value
end

-- Translate: Last Trade Price
lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Trade Price
lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_price.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.last_trade_price, range, value, display)

  return offset + length, value
end

-- Last Trade Quantity
lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_quantity = {}

-- Size: Last Trade Quantity
lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_quantity.size = 8

-- Display: Last Trade Quantity
lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_quantity.display = function(value)
  return "Last Trade Quantity: "..value
end

-- Translate: Last Trade Quantity
lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_quantity.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Trade Quantity
lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_quantity.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.last_trade_quantity, range, value, display)

  return offset + length, value
end

-- Last Trade Time
lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_time = {}

-- Size: Last Trade Time
lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_time.size = 8

-- Dissect: Last Trade Time
lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.last_trade_time
  if lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp_format == 3 then field = omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.last_trade_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Length
lseg_lse24_level2mbprecovery_gtp_v1_0.length = {}

-- Size: Length
lseg_lse24_level2mbprecovery_gtp_v1_0.length.size = 2

-- Display: Length
lseg_lse24_level2mbprecovery_gtp_v1_0.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_lse24_level2mbprecovery_gtp_v1_0.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.length, range, value, display)

  return offset + length, value
end

-- Listing End Date
lseg_lse24_level2mbprecovery_gtp_v1_0.listing_end_date = {}

-- Size: Listing End Date
lseg_lse24_level2mbprecovery_gtp_v1_0.listing_end_date.size = 8

-- Display: Listing End Date
lseg_lse24_level2mbprecovery_gtp_v1_0.listing_end_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Listing End Date: No Value"
  end

  if #value < 8 then
    return "Listing End Date: "..value
  end

  return "Listing End Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Listing End Date
lseg_lse24_level2mbprecovery_gtp_v1_0.listing_end_date.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.listing_end_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.listing_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.listing_end_date, range, value, display)

  return offset + length, value
end

-- Listing Start Date
lseg_lse24_level2mbprecovery_gtp_v1_0.listing_start_date = {}

-- Size: Listing Start Date
lseg_lse24_level2mbprecovery_gtp_v1_0.listing_start_date.size = 8

-- Display: Listing Start Date
lseg_lse24_level2mbprecovery_gtp_v1_0.listing_start_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Listing Start Date: No Value"
  end

  if #value < 8 then
    return "Listing Start Date: "..value
  end

  return "Listing Start Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Listing Start Date
lseg_lse24_level2mbprecovery_gtp_v1_0.listing_start_date.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.listing_start_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.listing_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.listing_start_date, range, value, display)

  return offset + length, value
end

-- Login Status
lseg_lse24_level2mbprecovery_gtp_v1_0.login_status = {}

-- Size: Login Status
lseg_lse24_level2mbprecovery_gtp_v1_0.login_status.size = 1

-- Display: Login Status
lseg_lse24_level2mbprecovery_gtp_v1_0.login_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Login Status: No Value"
  end

  if value == "A" then
    return "Login Status: Login Accepted (A)"
  end
  if value == "a" then
    return "Login Status: Comp Id Inactive Suspended (a)"
  end
  if value == "b" then
    return "Login Status: Login Limit Reached (b)"
  end
  if value == "c" then
    return "Login Status: Service Unavailable (c)"
  end
  if value == "d" then
    return "Login Status: Maximum Connections Limit Reached (d)"
  end
  if value == "e" then
    return "Login Status: Failed Other (e)"
  end
  if value == "f" then
    return "Login Status: Invalid Comp Id Or Ip Address (f)"
  end

  return "Login Status: Unknown("..value..")"
end

-- Dissect: Login Status
lseg_lse24_level2mbprecovery_gtp_v1_0.login_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.login_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string(ENC_WINDOWS_1252)
  end

  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.login_status, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_lse24_level2mbprecovery_gtp_v1_0.market_data_group = {}

-- Size: Market Data Group
lseg_lse24_level2mbprecovery_gtp_v1_0.market_data_group.size = 1

-- Display: Market Data Group
lseg_lse24_level2mbprecovery_gtp_v1_0.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_lse24_level2mbprecovery_gtp_v1_0.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_lse24_level2mbprecovery_gtp_v1_0.message_count = {}

-- Size: Message Count
lseg_lse24_level2mbprecovery_gtp_v1_0.message_count.size = 1

-- Display: Message Count
lseg_lse24_level2mbprecovery_gtp_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_lse24_level2mbprecovery_gtp_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_lse24_level2mbprecovery_gtp_v1_0.message_length = {}

-- Size: Message Length
lseg_lse24_level2mbprecovery_gtp_v1_0.message_length.size = 2

-- Display: Message Length
lseg_lse24_level2mbprecovery_gtp_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_lse24_level2mbprecovery_gtp_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
lseg_lse24_level2mbprecovery_gtp_v1_0.message_type = {}

-- Size: Message Type
lseg_lse24_level2mbprecovery_gtp_v1_0.message_type.size = 1

-- Display: Message Type
lseg_lse24_level2mbprecovery_gtp_v1_0.message_type.display = function(value)
  if value == 0x01 then
    return "Message Type: Login Request Message (0x01)"
  end
  if value == 0x81 then
    return "Message Type: Recovery Request Message (0x81)"
  end
  if value == 0x02 then
    return "Message Type: Login Response Message (0x02)"
  end
  if value == 0x82 then
    return "Message Type: Recovery Response Message (0x82)"
  end
  if value == 0x83 then
    return "Message Type: Replay And Recovery Complete Message (0x83)"
  end
  if value == 0x53 then
    return "Message Type: System Event Message (0x53)"
  end
  if value == 0x48 then
    return "Message Type: Instrument Status Message (0x48)"
  end
  if value == 0x66 then
    return "Message Type: Add Order Mbp Message (0x66)"
  end
  if value == 0x67 then
    return "Message Type: Add Order Short Mbp Message (0x67)"
  end
  if value == 0x79 then
    return "Message Type: Order Book Clear Message (0x79)"
  end
  if value == 0x50 then
    return "Message Type: Trade Message (0x50)"
  end
  if value == 0x52 then
    return "Message Type: Instrument Directory Extended Message (0x52)"
  end
  if value == 0x6B then
    return "Message Type: Statistics Snapshot Message (0x6B)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
lseg_lse24_level2mbprecovery_gtp_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum Lot Minimum Execution Size
lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_lot_minimum_execution_size = {}

-- Size: Minimum Lot Minimum Execution Size
lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_lot_minimum_execution_size.size = 8

-- Display: Minimum Lot Minimum Execution Size
lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_lot_minimum_execution_size.display = function(value)
  return "Minimum Lot Minimum Execution Size: "..value
end

-- Translate: Minimum Lot Minimum Execution Size
lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_lot_minimum_execution_size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Minimum Lot Minimum Execution Size
lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_lot_minimum_execution_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_lot_minimum_execution_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_lot_minimum_execution_size.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_lot_minimum_execution_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.minimum_lot_minimum_execution_size, range, value, display)

  return offset + length, value
end

-- Minimum Peak Size Multiplier
lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_peak_size_multiplier = {}

-- Size: Minimum Peak Size Multiplier
lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_peak_size_multiplier.size = 8

-- Display: Minimum Peak Size Multiplier
lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_peak_size_multiplier.display = function(value)
  return "Minimum Peak Size Multiplier: "..value
end

-- Translate: Minimum Peak Size Multiplier
lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_peak_size_multiplier.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Minimum Peak Size Multiplier
lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_peak_size_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_peak_size_multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_peak_size_multiplier.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_peak_size_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.minimum_peak_size_multiplier, range, value, display)

  return offset + length, value
end

-- New End Time
lseg_lse24_level2mbprecovery_gtp_v1_0.new_end_time = {}

-- Size: New End Time
lseg_lse24_level2mbprecovery_gtp_v1_0.new_end_time.size = 6

-- Display: New End Time
lseg_lse24_level2mbprecovery_gtp_v1_0.new_end_time.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "New End Time: No Value"
  end

  if #value < 6 then
    return "New End Time: "..value
  end

  return "New End Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: New End Time
lseg_lse24_level2mbprecovery_gtp_v1_0.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.new_end_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Number Of Trades
lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades = {}

-- Size: Number Of Trades
lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades.size = 4

-- Display: Number Of Trades
lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades.display = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.number_of_trades, range, value, display)

  return offset + length, value
end

-- Number Of Trades On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades_on_book_only = {}

-- Size: Number Of Trades On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades_on_book_only.size = 4

-- Display: Number Of Trades On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades_on_book_only.display = function(value)
  return "Number Of Trades On Book Only: "..value
end

-- Dissect: Number Of Trades On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades_on_book_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades_on_book_only.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades_on_book_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.number_of_trades_on_book_only, range, value, display)

  return offset + length, value
end

-- Official Closing Price
lseg_lse24_level2mbprecovery_gtp_v1_0.official_closing_price = {}

-- Size: Official Closing Price
lseg_lse24_level2mbprecovery_gtp_v1_0.official_closing_price.size = 8

-- Display: Official Closing Price
lseg_lse24_level2mbprecovery_gtp_v1_0.official_closing_price.display = function(value)
  return "Official Closing Price: "..value
end

-- Translate: Official Closing Price
lseg_lse24_level2mbprecovery_gtp_v1_0.official_closing_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Official Closing Price
lseg_lse24_level2mbprecovery_gtp_v1_0.official_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.official_closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.official_closing_price.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.official_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.official_closing_price, range, value, display)

  return offset + length, value
end

-- Official Opening Price
lseg_lse24_level2mbprecovery_gtp_v1_0.official_opening_price = {}

-- Size: Official Opening Price
lseg_lse24_level2mbprecovery_gtp_v1_0.official_opening_price.size = 8

-- Display: Official Opening Price
lseg_lse24_level2mbprecovery_gtp_v1_0.official_opening_price.display = function(value)
  return "Official Opening Price: "..value
end

-- Translate: Official Opening Price
lseg_lse24_level2mbprecovery_gtp_v1_0.official_opening_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Official Opening Price
lseg_lse24_level2mbprecovery_gtp_v1_0.official_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.official_opening_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.official_opening_price.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.official_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.official_opening_price, range, value, display)

  return offset + length, value
end

-- Opening Price Indicator
lseg_lse24_level2mbprecovery_gtp_v1_0.opening_price_indicator = {}

-- Size: Opening Price Indicator
lseg_lse24_level2mbprecovery_gtp_v1_0.opening_price_indicator.size = 1

-- Display: Opening Price Indicator
lseg_lse24_level2mbprecovery_gtp_v1_0.opening_price_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Opening Price Indicator: No Value"
  end

  if value == "A" then
    return "Opening Price Indicator: Ut (A)"
  end
  if value == "B" then
    return "Opening Price Indicator: At (B)"
  end
  if value == "C" then
    return "Opening Price Indicator: Mid Of Bbo (C)"
  end
  if value == "D" then
    return "Opening Price Indicator: Last At (D)"
  end
  if value == "E" then
    return "Opening Price Indicator: Last Ut (E)"
  end
  if value == "F" then
    return "Opening Price Indicator: Manual (F)"
  end
  if value == "I" then
    return "Opening Price Indicator: Previous Close (I)"
  end

  return "Opening Price Indicator: Unknown("..value..")"
end

-- Dissect: Opening Price Indicator
lseg_lse24_level2mbprecovery_gtp_v1_0.opening_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.opening_price_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string(ENC_WINDOWS_1252)
  end

  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.opening_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.opening_price_indicator, range, value, display)

  return offset + length, value
end

-- Order Book Type
lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_type = {}

-- Size: Order Book Type
lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_type.size = 1

-- Display: Order Book Type
lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_type.labels = {
  [1] = "Order Book Type: Indicative Non Executable Quote Book (1)",
  [2] = "Order Book Type: Off Book (2)",
  [3] = "Order Book Type: Electronic Order Book (3)",
  [4] = "Order Book Type: Private Rfq (4)",
}

lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_type.display = function(value)
  return lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_type.labels[value] or "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- Partition Id
lseg_lse24_level2mbprecovery_gtp_v1_0.partition_id = {}

-- Size: Partition Id
lseg_lse24_level2mbprecovery_gtp_v1_0.partition_id.size = 1

-- Display: Partition Id
lseg_lse24_level2mbprecovery_gtp_v1_0.partition_id.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Partition Id: No Value"
  end

  return "Partition Id: "..value
end

-- Dissect: Partition Id
lseg_lse24_level2mbprecovery_gtp_v1_0.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.partition_id.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string(ENC_WINDOWS_1252)
  end

  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Previous Days Closing Price
lseg_lse24_level2mbprecovery_gtp_v1_0.previous_days_closing_price = {}

-- Size: Previous Days Closing Price
lseg_lse24_level2mbprecovery_gtp_v1_0.previous_days_closing_price.size = 8

-- Display: Previous Days Closing Price
lseg_lse24_level2mbprecovery_gtp_v1_0.previous_days_closing_price.display = function(value)
  return "Previous Days Closing Price: "..value
end

-- Translate: Previous Days Closing Price
lseg_lse24_level2mbprecovery_gtp_v1_0.previous_days_closing_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Previous Days Closing Price
lseg_lse24_level2mbprecovery_gtp_v1_0.previous_days_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.previous_days_closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.previous_days_closing_price.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.previous_days_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.previous_days_closing_price, range, value, display)

  return offset + length, value
end

-- Price
lseg_lse24_level2mbprecovery_gtp_v1_0.price = {}

-- Size: Price
lseg_lse24_level2mbprecovery_gtp_v1_0.price.size = 8

-- Display: Price
lseg_lse24_level2mbprecovery_gtp_v1_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
lseg_lse24_level2mbprecovery_gtp_v1_0.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
lseg_lse24_level2mbprecovery_gtp_v1_0.price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.price.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.price, range, value, display)

  return offset + length, value
end

-- Recovery Status
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_status = {}

-- Size: Recovery Status
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_status.size = 1

-- Display: Recovery Status
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Recovery Status: No Value"
  end

  if value == "A" then
    return "Recovery Status: Request Accepted (A)"
  end
  if value == "O" then
    return "Recovery Status: Out Of Range (O)"
  end
  if value == "a" then
    return "Recovery Status: Invalid Group Or Instrument (a)"
  end
  if value == "b" then
    return "Recovery Status: Request Limit Reached (b)"
  end
  if value == "c" then
    return "Recovery Status: Concurrent Limit Reached (c)"
  end
  if value == "d" then
    return "Recovery Status: Invalid Recovery Type Or Request Level (d)"
  end
  if value == "e" then
    return "Recovery Status: Failed Other (e)"
  end

  return "Recovery Status: Unknown("..value..")"
end

-- Dissect: Recovery Status
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string(ENC_WINDOWS_1252)
  end

  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.recovery_status, range, value, display)

  return offset + length, value
end

-- Recovery Type
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_type = {}

-- Size: Recovery Type
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_type.size = 1

-- Display: Recovery Type
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_type.labels = {
  [0] = "Recovery Type: Instrument Directory (0)",
  [1] = "Recovery Type: Order Book (1)",
  [2] = "Recovery Type: All Trades (2)",
  [3] = "Recovery Type: Statistics (3)",
  [4] = "Recovery Type: Instrument Status (4)",
  [5] = "Recovery Type: Reserved (5)",
  [6] = "Recovery Type: System Event (6)",
}

lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_type.display = function(value)
  return lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_type.labels[value] or "Recovery Type: Unknown("..value..")"
end

-- Dissect: Recovery Type
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.recovery_type, range, value, display)

  return offset + length, value
end

-- Request Id
lseg_lse24_level2mbprecovery_gtp_v1_0.request_id = {}

-- Size: Request Id
lseg_lse24_level2mbprecovery_gtp_v1_0.request_id.size = 4

-- Display: Request Id
lseg_lse24_level2mbprecovery_gtp_v1_0.request_id.display = function(value)
  return "Request Id: "..value
end

-- Dissect: Request Id
lseg_lse24_level2mbprecovery_gtp_v1_0.request_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.request_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.request_id, range, value, display)

  return offset + length, value
end

-- Request Level
lseg_lse24_level2mbprecovery_gtp_v1_0.request_level = {}

-- Size: Request Level
lseg_lse24_level2mbprecovery_gtp_v1_0.request_level.size = 1

-- Display: Request Level
lseg_lse24_level2mbprecovery_gtp_v1_0.request_level.labels = {
  [0] = "Request Level: Instrument (0)",
  [1] = "Request Level: Group Segment (1)",
  [2] = "Request Level: Multicast Channel (2)",
}

lseg_lse24_level2mbprecovery_gtp_v1_0.request_level.display = function(value)
  return lseg_lse24_level2mbprecovery_gtp_v1_0.request_level.labels[value] or "Request Level: Unknown("..value..")"
end

-- Dissect: Request Level
lseg_lse24_level2mbprecovery_gtp_v1_0.request_level.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.request_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.request_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.request_level, range, value, display)

  return offset + length, value
end

-- Request Order Book Type
lseg_lse24_level2mbprecovery_gtp_v1_0.request_order_book_type = {}

-- Size: Request Order Book Type
lseg_lse24_level2mbprecovery_gtp_v1_0.request_order_book_type.size = 1

-- Display: Request Order Book Type
lseg_lse24_level2mbprecovery_gtp_v1_0.request_order_book_type.labels = {
  [0] = "Request Order Book Type: All Books (0)",
  [1] = "Request Order Book Type: Firm Quote Book (1)",
  [2] = "Request Order Book Type: Off Book (2)",
  [3] = "Request Order Book Type: Electronic Order Book (3)",
  [4] = "Request Order Book Type: Private Rfq (4)",
}

lseg_lse24_level2mbprecovery_gtp_v1_0.request_order_book_type.display = function(value)
  return lseg_lse24_level2mbprecovery_gtp_v1_0.request_order_book_type.labels[value] or "Request Order Book Type: Unknown("..value..")"
end

-- Dissect: Request Order Book Type
lseg_lse24_level2mbprecovery_gtp_v1_0.request_order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.request_order_book_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.request_order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.request_order_book_type, range, value, display)

  return offset + length, value
end

-- Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_1 = {}

-- Size: Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_1.size = 1

-- Display: Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 12
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_12 = {}

-- Size: Reserved 12
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_12.size = 12

-- Display: Reserved 12
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.reserved_12, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 2
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_2 = {}

-- Size: Reserved 2
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_2.size = 2

-- Display: Reserved 2
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.reserved_2, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 4
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_4 = {}

-- Size: Reserved 4
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_4.size = 4

-- Display: Reserved 4
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.reserved_4, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 7
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_7 = {}

-- Size: Reserved 7
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_7.size = 7

-- Display: Reserved 7
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_7.display = function(value)
  return "Reserved 7: "..value
end

-- Dissect: Reserved 7
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_7.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.reserved_7, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8 = {}

-- Size: Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.size = 8

-- Display: Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Second Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_1 = {}

-- Size: Second Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_1.size = 1

-- Display: Second Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.second_reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Second Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_8 = {}

-- Size: Second Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_8.size = 8

-- Display: Second Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_8.display = function(value)
  return "Second Reserved 8: "..value
end

-- Dissect: Second Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.second_reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Security Exchange
lseg_lse24_level2mbprecovery_gtp_v1_0.security_exchange = {}

-- Size: Security Exchange
lseg_lse24_level2mbprecovery_gtp_v1_0.security_exchange.size = 11

-- Display: Security Exchange
lseg_lse24_level2mbprecovery_gtp_v1_0.security_exchange.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange: No Value"
  end

  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
lseg_lse24_level2mbprecovery_gtp_v1_0.security_exchange.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.security_exchange.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_WINDOWS_1252))
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.security_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Security Maximum Spread
lseg_lse24_level2mbprecovery_gtp_v1_0.security_maximum_spread = {}

-- Size: Security Maximum Spread
lseg_lse24_level2mbprecovery_gtp_v1_0.security_maximum_spread.size = 8

-- Display: Security Maximum Spread
lseg_lse24_level2mbprecovery_gtp_v1_0.security_maximum_spread.display = function(value)
  return "Security Maximum Spread: "..value
end

-- Translate: Security Maximum Spread
lseg_lse24_level2mbprecovery_gtp_v1_0.security_maximum_spread.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Security Maximum Spread
lseg_lse24_level2mbprecovery_gtp_v1_0.security_maximum_spread.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.security_maximum_spread.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.security_maximum_spread.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.security_maximum_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.security_maximum_spread, range, value, display)

  return offset + length, value
end

-- Security Type
lseg_lse24_level2mbprecovery_gtp_v1_0.security_type = {}

-- Size: Security Type
lseg_lse24_level2mbprecovery_gtp_v1_0.security_type.size = 1

-- Display: Security Type
lseg_lse24_level2mbprecovery_gtp_v1_0.security_type.labels = {
  [1] = "Security Type: International Equity (1)",
  [4] = "Security Type: Convertible Bond (4)",
  [5] = "Security Type: Right (5)",
  [39] = "Security Type: Bonds (39)",
  [43] = "Security Type: Covered Warrants (43)",
  [44] = "Security Type: Debenture (44)",
  [45] = "Security Type: Uk Equity (45)",
  [46] = "Security Type: Deposit Receipts (46)",
  [47] = "Security Type: Equity Warrants (47)",
  [48] = "Security Type: Foreign Government Bonds (48)",
  [53] = "Security Type: Gilts (53)",
  [56] = "Security Type: Loan Stock (56)",
  [57] = "Security Type: Medium Term Loans (57)",
  [64] = "Security Type: Preference Shares (64)",
  [66] = "Security Type: Package Units (66)",
  [69] = "Security Type: Structured Products (69)",
}

lseg_lse24_level2mbprecovery_gtp_v1_0.security_type.display = function(value)
  return lseg_lse24_level2mbprecovery_gtp_v1_0.security_type.labels[value] or "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
lseg_lse24_level2mbprecovery_gtp_v1_0.security_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.security_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.security_type, range, value, display)

  return offset + length, value
end

-- Sedol
lseg_lse24_level2mbprecovery_gtp_v1_0.sedol = {}

-- Size: Sedol
lseg_lse24_level2mbprecovery_gtp_v1_0.sedol.size = 8

-- Display: Sedol
lseg_lse24_level2mbprecovery_gtp_v1_0.sedol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sedol: No Value"
  end

  return "Sedol: "..value
end

-- Dissect: Sedol
lseg_lse24_level2mbprecovery_gtp_v1_0.sedol.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.sedol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_WINDOWS_1252))
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.sedol.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.sedol, range, value, display)

  return offset + length, value
end

-- Segment
lseg_lse24_level2mbprecovery_gtp_v1_0.segment = {}

-- Size: Segment
lseg_lse24_level2mbprecovery_gtp_v1_0.segment.size = 6

-- Display: Segment
lseg_lse24_level2mbprecovery_gtp_v1_0.segment.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Segment: No Value"
  end

  return "Segment: "..value
end

-- Dissect: Segment
lseg_lse24_level2mbprecovery_gtp_v1_0.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_WINDOWS_1252))
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.segment, range, value, display)

  return offset + length, value
end

-- Sequence Number
lseg_lse24_level2mbprecovery_gtp_v1_0.sequence_number = {}

-- Size: Sequence Number
lseg_lse24_level2mbprecovery_gtp_v1_0.sequence_number.size = 4

-- Display: Sequence Number
lseg_lse24_level2mbprecovery_gtp_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_lse24_level2mbprecovery_gtp_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Change Reason
lseg_lse24_level2mbprecovery_gtp_v1_0.session_change_reason = {}

-- Size: Session Change Reason
lseg_lse24_level2mbprecovery_gtp_v1_0.session_change_reason.size = 1

-- Display: Session Change Reason
lseg_lse24_level2mbprecovery_gtp_v1_0.session_change_reason.labels = {
  [0] = "Session Change Reason: Scheduled Transition (0)",
  [1] = "Session Change Reason: Extended By Market Ops (1)",
  [2] = "Session Change Reason: Shortened By Market Ops (2)",
  [3] = "Session Change Reason: Market Order Imbalance (3)",
  [4] = "Session Change Reason: Price Outside Range (4)",
  [5] = "Session Change Reason: Aesp Circuit Breaker Tripped (5)",
  [9] = "Session Change Reason: Unavailable (9)",
}

lseg_lse24_level2mbprecovery_gtp_v1_0.session_change_reason.display = function(value)
  return lseg_lse24_level2mbprecovery_gtp_v1_0.session_change_reason.labels[value] or "Session Change Reason: Unknown("..value..")"
end

-- Dissect: Session Change Reason
lseg_lse24_level2mbprecovery_gtp_v1_0.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Seventh Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.seventh_reserved_8 = {}

-- Size: Seventh Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.seventh_reserved_8.size = 8

-- Display: Seventh Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.seventh_reserved_8.display = function(value)
  return "Seventh Reserved 8: "..value
end

-- Dissect: Seventh Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.seventh_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.seventh_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.seventh_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.seventh_reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Side
lseg_lse24_level2mbprecovery_gtp_v1_0.side = {}

-- Size: Side
lseg_lse24_level2mbprecovery_gtp_v1_0.side.size = 1

-- Display: Side
lseg_lse24_level2mbprecovery_gtp_v1_0.side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Side: No Value"
  end

  if value == "B" then
    return "Side: Buy Order (B)"
  end
  if value == "S" then
    return "Side: Sell Order (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
lseg_lse24_level2mbprecovery_gtp_v1_0.side.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string(ENC_WINDOWS_1252)
  end

  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.side, range, value, display)

  return offset + length, value
end

-- Sixth Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.sixth_reserved_8 = {}

-- Size: Sixth Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.sixth_reserved_8.size = 8

-- Display: Sixth Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.sixth_reserved_8.display = function(value)
  return "Sixth Reserved 8: "..value
end

-- Dissect: Sixth Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.sixth_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.sixth_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.sixth_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.sixth_reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Size
lseg_lse24_level2mbprecovery_gtp_v1_0.size = {}

-- Size: Size
lseg_lse24_level2mbprecovery_gtp_v1_0.size.size = 8

-- Display: Size
lseg_lse24_level2mbprecovery_gtp_v1_0.size.display = function(value)
  return "Size: "..value
end

-- Translate: Size
lseg_lse24_level2mbprecovery_gtp_v1_0.size.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Size
lseg_lse24_level2mbprecovery_gtp_v1_0.size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.size.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.size, range, value, display)

  return offset + length, value
end

-- Source Venue
lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue = {}

-- Size: Source Venue
lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.size = 2

-- Display: Source Venue
lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.labels = {
  [1] = "Source Venue: London Stock Exchange (1)",
  [17] = "Source Venue: London Stock Exchange 24 (17)",
}

lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.display = function(value)
  return lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.labels[value] or "Source Venue: Unknown("..value..")"
end

-- Dissect: Source Venue
lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Splits
lseg_lse24_level2mbprecovery_gtp_v1_0.splits = {}

-- Size: Splits
lseg_lse24_level2mbprecovery_gtp_v1_0.splits.size = 2

-- Display: Splits
lseg_lse24_level2mbprecovery_gtp_v1_0.splits.display = function(value)
  return "Splits: "..value
end

-- Dissect: Splits
lseg_lse24_level2mbprecovery_gtp_v1_0.splits.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.splits.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.splits.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.splits, range, value, display)

  return offset + length, value
end

-- Static Circuit Breaker Tolerances
lseg_lse24_level2mbprecovery_gtp_v1_0.static_circuit_breaker_tolerances = {}

-- Size: Static Circuit Breaker Tolerances
lseg_lse24_level2mbprecovery_gtp_v1_0.static_circuit_breaker_tolerances.size = 8

-- Display: Static Circuit Breaker Tolerances
lseg_lse24_level2mbprecovery_gtp_v1_0.static_circuit_breaker_tolerances.display = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
lseg_lse24_level2mbprecovery_gtp_v1_0.static_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_lse24_level2mbprecovery_gtp_v1_0.static_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.static_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.static_circuit_breaker_tolerances.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.static_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Static Reference Price
lseg_lse24_level2mbprecovery_gtp_v1_0.static_reference_price = {}

-- Size: Static Reference Price
lseg_lse24_level2mbprecovery_gtp_v1_0.static_reference_price.size = 8

-- Display: Static Reference Price
lseg_lse24_level2mbprecovery_gtp_v1_0.static_reference_price.display = function(value)
  return "Static Reference Price: "..value
end

-- Translate: Static Reference Price
lseg_lse24_level2mbprecovery_gtp_v1_0.static_reference_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Reference Price
lseg_lse24_level2mbprecovery_gtp_v1_0.static_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.static_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.static_reference_price.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.static_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.static_reference_price, range, value, display)

  return offset + length, value
end

-- Strike Price
lseg_lse24_level2mbprecovery_gtp_v1_0.strike_price = {}

-- Size: Strike Price
lseg_lse24_level2mbprecovery_gtp_v1_0.strike_price.size = 8

-- Display: Strike Price
lseg_lse24_level2mbprecovery_gtp_v1_0.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
lseg_lse24_level2mbprecovery_gtp_v1_0.strike_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Strike Price
lseg_lse24_level2mbprecovery_gtp_v1_0.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.strike_price.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
lseg_lse24_level2mbprecovery_gtp_v1_0.symbol = {}

-- Size: Symbol
lseg_lse24_level2mbprecovery_gtp_v1_0.symbol.size = 8

-- Display: Symbol
lseg_lse24_level2mbprecovery_gtp_v1_0.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
lseg_lse24_level2mbprecovery_gtp_v1_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_WINDOWS_1252))
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Third Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_1 = {}

-- Size: Third Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_1.size = 1

-- Display: Third Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_1.display = function(value)
  return "Third Reserved 1: "..value
end

-- Dissect: Third Reserved 1
lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.third_reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Third Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_8 = {}

-- Size: Third Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_8.size = 8

-- Display: Third Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_8.display = function(value)
  return "Third Reserved 8: "..value
end

-- Dissect: Third Reserved 8
lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.third_reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Tick Id
lseg_lse24_level2mbprecovery_gtp_v1_0.tick_id = {}

-- Size: Tick Id
lseg_lse24_level2mbprecovery_gtp_v1_0.tick_id.size = 2

-- Display: Tick Id
lseg_lse24_level2mbprecovery_gtp_v1_0.tick_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Tick Id: No Value"
  end

  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_lse24_level2mbprecovery_gtp_v1_0.tick_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.tick_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_WINDOWS_1252))
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.tick_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Timestamp
lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp = {}

-- Size: Timestamp
lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.size = 8

-- Dissect: Timestamp
lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.timestamp
  if lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp_format == 3 then field = omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trade High
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high = {}

-- Size: Trade High
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high.size = 8

-- Display: Trade High
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high.display = function(value)
  return "Trade High: "..value
end

-- Translate: Trade High
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trade High
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_high, range, value, display)

  return offset + length, value
end

-- Trade High On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high_on_book_only = {}

-- Size: Trade High On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high_on_book_only.size = 8

-- Display: Trade High On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high_on_book_only.display = function(value)
  return "Trade High On Book Only: "..value
end

-- Translate: Trade High On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high_on_book_only.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trade High On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high_on_book_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high_on_book_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high_on_book_only.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high_on_book_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_high_on_book_only, range, value, display)

  return offset + length, value
end

-- Trade Id
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_id = {}

-- Size: Trade Id
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_id.size = 8

-- Display: Trade Id
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Low
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low = {}

-- Size: Trade Low
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low.size = 8

-- Display: Trade Low
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low.display = function(value)
  return "Trade Low: "..value
end

-- Translate: Trade Low
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trade Low
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_low, range, value, display)

  return offset + length, value
end

-- Trade Low On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low_on_book_only = {}

-- Size: Trade Low On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low_on_book_only.size = 8

-- Display: Trade Low On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low_on_book_only.display = function(value)
  return "Trade Low On Book Only: "..value
end

-- Translate: Trade Low On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low_on_book_only.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trade Low On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low_on_book_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low_on_book_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low_on_book_only.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low_on_book_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_low_on_book_only, range, value, display)

  return offset + length, value
end

-- Trade Qualifier
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_qualifier = {}

-- Size: Trade Qualifier
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_qualifier.size = 1

-- Display: Trade Qualifier
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_qualifier.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Trade Qualifier: No Value"
  end

  if value == " " then
    return "Trade Qualifier: Na (<whitespace>)"
  end
  if value == "C" then
    return "Trade Qualifier: Closing Price Cross Cpx (C)"
  end
  if value == "A" then
    return "Trade Qualifier: Auction Volume Discovery Avd (A)"
  end

  return "Trade Qualifier: Unknown("..value..")"
end

-- Dissect: Trade Qualifier
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_qualifier.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string(ENC_WINDOWS_1252)
  end

  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_qualifier, range, value, display)

  return offset + length, value
end

-- Trade Type
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_type = {}

-- Size: Trade Type
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_type.size = 1

-- Display: Trade Type
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_type.labels = {
  [0] = "Trade Type: Regular Or Continuous Trade (0)",
  [1] = "Trade Type: Auction Trade Bulk (1)",
  [2] = "Trade Type: Auction Trade Individual (2)",
  [9] = "Trade Type: On Book Trade Cancellation (9)",
  [11] = "Trade Type: Trade Correction (11)",
  [22] = "Trade Type: Rfq Trade (22)",
  [23] = "Trade Type: Rfq Trade Cancellation (23)",
  [24] = "Trade Type: Rfq Trade Correction (24)",
}

lseg_lse24_level2mbprecovery_gtp_v1_0.trade_type.display = function(value)
  return lseg_lse24_level2mbprecovery_gtp_v1_0.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Status
lseg_lse24_level2mbprecovery_gtp_v1_0.trading_status = {}

-- Size: Trading Status
lseg_lse24_level2mbprecovery_gtp_v1_0.trading_status.size = 1

-- Display: Trading Status
lseg_lse24_level2mbprecovery_gtp_v1_0.trading_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Trading Status: No Value"
  end

  if value == "H" then
    return "Trading Status: Halt (H)"
  end
  if value == "J" then
    return "Trading Status: Halt Matching Partition Suspended (J)"
  end
  if value == "K" then
    return "Trading Status: Halt System Suspended (K)"
  end
  if value == "T" then
    return "Trading Status: Regular Trading (T)"
  end
  if value == "P" then
    return "Trading Status: Halt Regulatory (P)"
  end
  if value == "t" then
    return "Trading Status: End Trade Reporting (t)"
  end
  if value == "a" then
    return "Trading Status: Opening Auction Call (a)"
  end
  if value == "b" then
    return "Trading Status: Post Close (b)"
  end
  if value == "c" then
    return "Trading Status: Closed (c)"
  end
  if value == "d" then
    return "Trading Status: Closing Auction Call (d)"
  end
  if value == "e" then
    return "Trading Status: Aesp Auction Call (e)"
  end
  if value == "f" then
    return "Trading Status: Resume Auction (f)"
  end
  if value == "m" then
    return "Trading Status: Pre Mandatory (m)"
  end
  if value == "n" then
    return "Trading Status: Mandatory (n)"
  end
  if value == "o" then
    return "Trading Status: Post Mandatory (o)"
  end
  if value == "q" then
    return "Trading Status: Edsp Auction Call (q)"
  end
  if value == "r" then
    return "Trading Status: Periodic Auction Call (r)"
  end
  if value == "1" then
    return "Trading Status: Inactive (1)"
  end
  if value == "2" then
    return "Trading Status: Suspended (2)"
  end
  if value == "w" then
    return "Trading Status: No Active Session (w)"
  end
  if value == "x" then
    return "Trading Status: End Of Post Close (x)"
  end
  if value == "u" then
    return "Trading Status: Closing Price Crossing Session (u)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
lseg_lse24_level2mbprecovery_gtp_v1_0.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.trading_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string(ENC_WINDOWS_1252)
  end

  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Transaction Time
lseg_lse24_level2mbprecovery_gtp_v1_0.transaction_time = {}

-- Size: Transaction Time
lseg_lse24_level2mbprecovery_gtp_v1_0.transaction_time.size = 8

-- Dissect: Transaction Time
lseg_lse24_level2mbprecovery_gtp_v1_0.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.transaction_time
  if lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp_format == 3 then field = omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.transaction_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Turnover
lseg_lse24_level2mbprecovery_gtp_v1_0.turnover = {}

-- Size: Turnover
lseg_lse24_level2mbprecovery_gtp_v1_0.turnover.size = 8

-- Display: Turnover
lseg_lse24_level2mbprecovery_gtp_v1_0.turnover.display = function(value)
  return "Turnover: "..value
end

-- Translate: Turnover
lseg_lse24_level2mbprecovery_gtp_v1_0.turnover.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover
lseg_lse24_level2mbprecovery_gtp_v1_0.turnover.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.turnover.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.turnover, range, value, display)

  return offset + length, value
end

-- Turnover On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.turnover_on_book_only = {}

-- Size: Turnover On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.turnover_on_book_only.size = 8

-- Display: Turnover On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.turnover_on_book_only.display = function(value)
  return "Turnover On Book Only: "..value
end

-- Translate: Turnover On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.turnover_on_book_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Turnover On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.turnover_on_book_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.turnover_on_book_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.turnover_on_book_only.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.turnover_on_book_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.turnover_on_book_only, range, value, display)

  return offset + length, value
end

-- Username
lseg_lse24_level2mbprecovery_gtp_v1_0.username = {}

-- Size: Username
lseg_lse24_level2mbprecovery_gtp_v1_0.username.size = 8

-- Display: Username
lseg_lse24_level2mbprecovery_gtp_v1_0.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
lseg_lse24_level2mbprecovery_gtp_v1_0.username.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_WINDOWS_1252))
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.username, range, value, display)

  return offset + length, value
end

-- Venue Instrument Id
lseg_lse24_level2mbprecovery_gtp_v1_0.venue_instrument_id = {}

-- Size: Venue Instrument Id
lseg_lse24_level2mbprecovery_gtp_v1_0.venue_instrument_id.size = 11

-- Display: Venue Instrument Id
lseg_lse24_level2mbprecovery_gtp_v1_0.venue_instrument_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Venue Instrument Id: No Value"
  end

  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_lse24_level2mbprecovery_gtp_v1_0.venue_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.venue_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_WINDOWS_1252))
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.venue_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end

-- Venue Of Execution
lseg_lse24_level2mbprecovery_gtp_v1_0.venue_of_execution = {}

-- Size: Venue Of Execution
lseg_lse24_level2mbprecovery_gtp_v1_0.venue_of_execution.size = 1

-- Display: Venue Of Execution
lseg_lse24_level2mbprecovery_gtp_v1_0.venue_of_execution.labels = {
  [21] = "Venue Of Execution: Xlon On Exchange Lse Rm (21)",
  [22] = "Venue Of Execution: Xlom On Exchange Non Aim Mft (22)",
  [23] = "Venue Of Execution: Aimx On Exchange Aim Mft (23)",
  [24] = "Venue Of Execution: Xpvt On Exchange Private Security Market (24)",
  [25] = "Venue Of Execution: Xlox On Exchange Mid Priced Executions (25)",
  [26] = "Venue Of Execution: Xloe London Stock Exchange 24 (26)",
}

lseg_lse24_level2mbprecovery_gtp_v1_0.venue_of_execution.display = function(value)
  return lseg_lse24_level2mbprecovery_gtp_v1_0.venue_of_execution.labels[value] or "Venue Of Execution: Unknown("..value..")"
end

-- Dissect: Venue Of Execution
lseg_lse24_level2mbprecovery_gtp_v1_0.venue_of_execution.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.venue_of_execution.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.venue_of_execution.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.venue_of_execution, range, value, display)

  return offset + length, value
end

-- Volume
lseg_lse24_level2mbprecovery_gtp_v1_0.volume = {}

-- Size: Volume
lseg_lse24_level2mbprecovery_gtp_v1_0.volume.size = 8

-- Display: Volume
lseg_lse24_level2mbprecovery_gtp_v1_0.volume.display = function(value)
  return "Volume: "..value
end

-- Translate: Volume
lseg_lse24_level2mbprecovery_gtp_v1_0.volume.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume
lseg_lse24_level2mbprecovery_gtp_v1_0.volume.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.volume.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.volume.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.volume, range, value, display)

  return offset + length, value
end

-- Volume On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.volume_on_book_only = {}

-- Size: Volume On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.volume_on_book_only.size = 8

-- Display: Volume On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.volume_on_book_only.display = function(value)
  return "Volume On Book Only: "..value
end

-- Translate: Volume On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.volume_on_book_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.volume_on_book_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.volume_on_book_only.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.volume_on_book_only.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.volume_on_book_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.volume_on_book_only, range, value, display)

  return offset + length, value
end

-- Vwap
lseg_lse24_level2mbprecovery_gtp_v1_0.vwap = {}

-- Size: Vwap
lseg_lse24_level2mbprecovery_gtp_v1_0.vwap.size = 8

-- Display: Vwap
lseg_lse24_level2mbprecovery_gtp_v1_0.vwap.display = function(value)
  return "Vwap: "..value
end

-- Translate: Vwap
lseg_lse24_level2mbprecovery_gtp_v1_0.vwap.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap
lseg_lse24_level2mbprecovery_gtp_v1_0.vwap.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.vwap.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.vwap.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.vwap, range, value, display)

  return offset + length, value
end

-- Vwap On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.vwap_on_book_only = {}

-- Size: Vwap On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.vwap_on_book_only.size = 8

-- Display: Vwap On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.vwap_on_book_only.display = function(value)
  return "Vwap On Book Only: "..value
end

-- Translate: Vwap On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.vwap_on_book_only.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Vwap On Book Only
lseg_lse24_level2mbprecovery_gtp_v1_0.vwap_on_book_only.dissect = function(buffer, offset, packet, parent)
  local length = lseg_lse24_level2mbprecovery_gtp_v1_0.vwap_on_book_only.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_lse24_level2mbprecovery_gtp_v1_0.vwap_on_book_only.translate(raw)
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.vwap_on_book_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.vwap_on_book_only, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lseg Lse24 Level2MbpRecovery Gtp 1.0
-----------------------------------------------------------------------

-- Statistics Snapshot Message
lseg_lse24_level2mbprecovery_gtp_v1_0.statistics_snapshot_message = {}

-- Size: Statistics Snapshot Message
lseg_lse24_level2mbprecovery_gtp_v1_0.statistics_snapshot_message.size =
  lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.volume.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.volume_on_book_only.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.vwap.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.vwap_on_book_only.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades_on_book_only.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.turnover.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.turnover_on_book_only.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.official_opening_price.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.official_closing_price.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high_on_book_only.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low_on_book_only.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_high.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_low.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.opening_price_indicator.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.closing_price_indicator.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.iau_price.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.iau_paired_size.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_quantity.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_direction.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_price.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_price.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_size.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_size.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_8.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_8.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.fourth_reserved_8.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.auction_type.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_price.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_quantity.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_time.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.static_reference_price.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_reference_price.size

-- Display: Statistics Snapshot Message
lseg_lse24_level2mbprecovery_gtp_v1_0.statistics_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Snapshot Message
lseg_lse24_level2mbprecovery_gtp_v1_0.statistics_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.dissect(buffer, index, packet, parent)

  -- Volume: Size4
  index, volume = lseg_lse24_level2mbprecovery_gtp_v1_0.volume.dissect(buffer, index, packet, parent)

  -- Volume On Book Only: Size4
  index, volume_on_book_only = lseg_lse24_level2mbprecovery_gtp_v1_0.volume_on_book_only.dissect(buffer, index, packet, parent)

  -- Vwap: Price4
  index, vwap = lseg_lse24_level2mbprecovery_gtp_v1_0.vwap.dissect(buffer, index, packet, parent)

  -- Vwap On Book Only: Price4
  index, vwap_on_book_only = lseg_lse24_level2mbprecovery_gtp_v1_0.vwap_on_book_only.dissect(buffer, index, packet, parent)

  -- Number Of Trades: UInt32
  index, number_of_trades = lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades.dissect(buffer, index, packet, parent)

  -- Number Of Trades On Book Only: UInt32
  index, number_of_trades_on_book_only = lseg_lse24_level2mbprecovery_gtp_v1_0.number_of_trades_on_book_only.dissect(buffer, index, packet, parent)

  -- Turnover: Price4
  index, turnover = lseg_lse24_level2mbprecovery_gtp_v1_0.turnover.dissect(buffer, index, packet, parent)

  -- Turnover On Book Only: Price4
  index, turnover_on_book_only = lseg_lse24_level2mbprecovery_gtp_v1_0.turnover_on_book_only.dissect(buffer, index, packet, parent)

  -- Official Opening Price: Price
  index, official_opening_price = lseg_lse24_level2mbprecovery_gtp_v1_0.official_opening_price.dissect(buffer, index, packet, parent)

  -- Official Closing Price: Price
  index, official_closing_price = lseg_lse24_level2mbprecovery_gtp_v1_0.official_closing_price.dissect(buffer, index, packet, parent)

  -- Trade High On Book Only: Price
  index, trade_high_on_book_only = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high_on_book_only.dissect(buffer, index, packet, parent)

  -- Trade Low On Book Only: Price
  index, trade_low_on_book_only = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low_on_book_only.dissect(buffer, index, packet, parent)

  -- Trade High: Price
  index, trade_high = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_high.dissect(buffer, index, packet, parent)

  -- Trade Low: Price
  index, trade_low = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_low.dissect(buffer, index, packet, parent)

  -- Fifty Two Week Trade High: Price
  index, fifty_two_week_trade_high = lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_high.dissect(buffer, index, packet, parent)

  -- Fifty Two Week Trade Low: Price
  index, fifty_two_week_trade_low = lseg_lse24_level2mbprecovery_gtp_v1_0.fifty_two_week_trade_low.dissect(buffer, index, packet, parent)

  -- Opening Price Indicator: Byte
  index, opening_price_indicator = lseg_lse24_level2mbprecovery_gtp_v1_0.opening_price_indicator.dissect(buffer, index, packet, parent)

  -- Closing Price Indicator: Byte
  index, closing_price_indicator = lseg_lse24_level2mbprecovery_gtp_v1_0.closing_price_indicator.dissect(buffer, index, packet, parent)

  -- Iau Price: Price
  index, iau_price = lseg_lse24_level2mbprecovery_gtp_v1_0.iau_price.dissect(buffer, index, packet, parent)

  -- Iau Paired Size: Size
  index, iau_paired_size = lseg_lse24_level2mbprecovery_gtp_v1_0.iau_paired_size.dissect(buffer, index, packet, parent)

  -- Imbalance Quantity: Size
  index, imbalance_quantity = lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Byte
  index, imbalance_direction = lseg_lse24_level2mbprecovery_gtp_v1_0.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Best Closing Bid Price: Price
  index, best_closing_bid_price = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_price.dissect(buffer, index, packet, parent)

  -- Best Closing Ask Price: Price
  index, best_closing_ask_price = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_price.dissect(buffer, index, packet, parent)

  -- Best Closing Bid Size: Size
  index, best_closing_bid_size = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_bid_size.dissect(buffer, index, packet, parent)

  -- Best Closing Ask Size: Size
  index, best_closing_ask_size = lseg_lse24_level2mbprecovery_gtp_v1_0.best_closing_ask_size.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  if show.padding then
    index, reserved_8 = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.size
  end

  -- Second Reserved 8: Price
  if show.padding then
    index, second_reserved_8 = lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_8.size
  end

  -- Third Reserved 8: Price
  if show.padding then
    index, third_reserved_8 = lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_8.size
  end

  -- Fourth Reserved 8: Price
  if show.padding then
    index, fourth_reserved_8 = lseg_lse24_level2mbprecovery_gtp_v1_0.fourth_reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.fourth_reserved_8.size
  end

  -- Auction Type: Byte
  index, auction_type = lseg_lse24_level2mbprecovery_gtp_v1_0.auction_type.dissect(buffer, index, packet, parent)

  -- Last Trade Price: Price
  index, last_trade_price = lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_price.dissect(buffer, index, packet, parent)

  -- Last Trade Quantity: Size
  index, last_trade_quantity = lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_quantity.dissect(buffer, index, packet, parent)

  -- Last Trade Time: UDT
  index, last_trade_time = lseg_lse24_level2mbprecovery_gtp_v1_0.last_trade_time.dissect(buffer, index, packet, parent)

  -- Static Reference Price: Price
  index, static_reference_price = lseg_lse24_level2mbprecovery_gtp_v1_0.static_reference_price.dissect(buffer, index, packet, parent)

  -- Dynamic Reference Price: Price
  index, dynamic_reference_price = lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_reference_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Snapshot Message
lseg_lse24_level2mbprecovery_gtp_v1_0.statistics_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.statistics_snapshot_message, buffer(offset, 0))
    local index = lseg_lse24_level2mbprecovery_gtp_v1_0.statistics_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.statistics_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse24_level2mbprecovery_gtp_v1_0.statistics_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Allowed Book Types
lseg_lse24_level2mbprecovery_gtp_v1_0.allowed_book_types = {}

-- Size: Allowed Book Types
lseg_lse24_level2mbprecovery_gtp_v1_0.allowed_book_types.size = 1

-- Display: Allowed Book Types
lseg_lse24_level2mbprecovery_gtp_v1_0.allowed_book_types.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Indicative Non Executable Quote Book flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Indicative Non Executable Quote Book"
  end
  -- Is Off Book flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Off Book"
  end
  -- Is Electronic Order Book flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Electronic Order Book"
  end
  -- Is Private Rfq flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Private Rfq"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Allowed Book Types
lseg_lse24_level2mbprecovery_gtp_v1_0.allowed_book_types.bits = function(range, value, packet, parent)

  -- Unused 1: 1 Bit
  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.unused_1, range, value)

  -- Indicative Non Executable Quote Book: 1 Bit
  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.indicative_non_executable_quote_book, range, value)

  -- Off Book: 1 Bit
  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.off_book, range, value)

  -- Electronic Order Book: 1 Bit
  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.electronic_order_book, range, value)

  -- Private Rfq: 1 Bit
  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.private_rfq, range, value)

  -- Unused 3: 3 Bit
  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.unused_3, range, value)
end

-- Dissect: Allowed Book Types
lseg_lse24_level2mbprecovery_gtp_v1_0.allowed_book_types.dissect = function(buffer, offset, packet, parent)
  local size = lseg_lse24_level2mbprecovery_gtp_v1_0.allowed_book_types.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.allowed_book_types.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.allowed_book_types, range, display)

  if show.structs then
    lseg_lse24_level2mbprecovery_gtp_v1_0.allowed_book_types.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Instrument Directory Extended Message
lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_directory_extended_message = {}

-- Size: Instrument Directory Extended Message
lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_directory_extended_message.size =
  lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.isin.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.sedol.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.allowed_book_types.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.venue_instrument_id.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.segment.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.currency.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.tick_id.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.previous_days_closing_price.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_circuit_breaker_tolerances.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.static_circuit_breaker_tolerances.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.first_reserved_1.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_1.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.expiration_date.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.listing_start_date.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.listing_end_date.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_lot_minimum_execution_size.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session_date.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_1.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_8.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_8.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.ex_marker_code.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.security_type.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.country_of_register.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.exchange_market_size.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_peak_size_multiplier.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.security_maximum_spread.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.clearing_type.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.strike_price.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.security_exchange.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_12.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_1.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.fourth_reserved_8.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.fifth_reserved_8.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.partition_id.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.sixth_reserved_8.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.seventh_reserved_8.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_4.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_2.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.symbol.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.description.size

-- Display: Instrument Directory Extended Message
lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_directory_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Extended Message
lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_directory_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = lseg_lse24_level2mbprecovery_gtp_v1_0.isin.dissect(buffer, index, packet, parent)

  -- Sedol: Alpha
  index, sedol = lseg_lse24_level2mbprecovery_gtp_v1_0.sedol.dissect(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 6 fields
  index, allowed_book_types = lseg_lse24_level2mbprecovery_gtp_v1_0.allowed_book_types.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.dissect(buffer, index, packet, parent)

  -- Venue Instrument Id: Alpha
  index, venue_instrument_id = lseg_lse24_level2mbprecovery_gtp_v1_0.venue_instrument_id.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = lseg_lse24_level2mbprecovery_gtp_v1_0.segment.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = lseg_lse24_level2mbprecovery_gtp_v1_0.currency.dissect(buffer, index, packet, parent)

  -- Tick Id: Alpha
  index, tick_id = lseg_lse24_level2mbprecovery_gtp_v1_0.tick_id.dissect(buffer, index, packet, parent)

  -- Previous Days Closing Price: Price
  index, previous_days_closing_price = lseg_lse24_level2mbprecovery_gtp_v1_0.previous_days_closing_price.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  if show.padding then
    index, reserved_8 = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.size
  end

  -- Dynamic Circuit Breaker Tolerances: Price
  index, dynamic_circuit_breaker_tolerances = lseg_lse24_level2mbprecovery_gtp_v1_0.dynamic_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: Price
  index, static_circuit_breaker_tolerances = lseg_lse24_level2mbprecovery_gtp_v1_0.static_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- First Reserved 1: UInt8
  if show.padding then
    index, first_reserved_1 = lseg_lse24_level2mbprecovery_gtp_v1_0.first_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.first_reserved_1.size
  end

  -- Second Reserved 1: UInt8
  if show.padding then
    index, second_reserved_1 = lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_1.size
  end

  -- Expiration Date: Date
  index, expiration_date = lseg_lse24_level2mbprecovery_gtp_v1_0.expiration_date.dissect(buffer, index, packet, parent)

  -- Listing Start Date: Date
  index, listing_start_date = lseg_lse24_level2mbprecovery_gtp_v1_0.listing_start_date.dissect(buffer, index, packet, parent)

  -- Listing End Date: Date
  index, listing_end_date = lseg_lse24_level2mbprecovery_gtp_v1_0.listing_end_date.dissect(buffer, index, packet, parent)

  -- Minimum Lot Minimum Execution Size: Size
  index, minimum_lot_minimum_execution_size = lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_lot_minimum_execution_size.dissect(buffer, index, packet, parent)

  -- Last Price In Preceding Session: Price
  index, last_price_in_preceding_session = lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session.dissect(buffer, index, packet, parent)

  -- Last Price In Preceding Session Date: Date
  index, last_price_in_preceding_session_date = lseg_lse24_level2mbprecovery_gtp_v1_0.last_price_in_preceding_session_date.dissect(buffer, index, packet, parent)

  -- Third Reserved 1: UInt8
  if show.padding then
    index, third_reserved_1 = lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_1.size
  end

  -- Second Reserved 8: Price
  if show.padding then
    index, second_reserved_8 = lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.second_reserved_8.size
  end

  -- Third Reserved 8: Price
  if show.padding then
    index, third_reserved_8 = lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.third_reserved_8.size
  end

  -- Ex Marker Code: Alpha
  index, ex_marker_code = lseg_lse24_level2mbprecovery_gtp_v1_0.ex_marker_code.dissect(buffer, index, packet, parent)

  -- Security Type: UInt8
  index, security_type = lseg_lse24_level2mbprecovery_gtp_v1_0.security_type.dissect(buffer, index, packet, parent)

  -- Country Of Register: Alpha
  index, country_of_register = lseg_lse24_level2mbprecovery_gtp_v1_0.country_of_register.dissect(buffer, index, packet, parent)

  -- Exchange Market Size: UInt64
  index, exchange_market_size = lseg_lse24_level2mbprecovery_gtp_v1_0.exchange_market_size.dissect(buffer, index, packet, parent)

  -- Minimum Peak Size Multiplier: Size
  index, minimum_peak_size_multiplier = lseg_lse24_level2mbprecovery_gtp_v1_0.minimum_peak_size_multiplier.dissect(buffer, index, packet, parent)

  -- Security Maximum Spread: Price
  index, security_maximum_spread = lseg_lse24_level2mbprecovery_gtp_v1_0.security_maximum_spread.dissect(buffer, index, packet, parent)

  -- Clearing Type: UInt8
  index, clearing_type = lseg_lse24_level2mbprecovery_gtp_v1_0.clearing_type.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = lseg_lse24_level2mbprecovery_gtp_v1_0.strike_price.dissect(buffer, index, packet, parent)

  -- Security Exchange: Alpha
  index, security_exchange = lseg_lse24_level2mbprecovery_gtp_v1_0.security_exchange.dissect(buffer, index, packet, parent)

  -- Reserved 12: Alpha
  if show.padding then
    index, reserved_12 = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_12.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_12.size
  end

  -- Reserved 1: UInt8
  if show.padding then
    index, reserved_1 = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_1.size
  end

  -- Fourth Reserved 8: Price
  if show.padding then
    index, fourth_reserved_8 = lseg_lse24_level2mbprecovery_gtp_v1_0.fourth_reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.fourth_reserved_8.size
  end

  -- Fifth Reserved 8: Price
  if show.padding then
    index, fifth_reserved_8 = lseg_lse24_level2mbprecovery_gtp_v1_0.fifth_reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.fifth_reserved_8.size
  end

  -- Partition Id: Byte
  index, partition_id = lseg_lse24_level2mbprecovery_gtp_v1_0.partition_id.dissect(buffer, index, packet, parent)

  -- Sixth Reserved 8: Price
  if show.padding then
    index, sixth_reserved_8 = lseg_lse24_level2mbprecovery_gtp_v1_0.sixth_reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.sixth_reserved_8.size
  end

  -- Seventh Reserved 8: Price
  if show.padding then
    index, seventh_reserved_8 = lseg_lse24_level2mbprecovery_gtp_v1_0.seventh_reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.seventh_reserved_8.size
  end

  -- Reserved 4: UInt32
  if show.padding then
    index, reserved_4 = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_4.size
  end

  -- Reserved 2: UInt16
  if show.padding then
    index, reserved_2 = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_2.size
  end

  -- Symbol: Alpha
  index, symbol = lseg_lse24_level2mbprecovery_gtp_v1_0.symbol.dissect(buffer, index, packet, parent)

  -- Description: Alpha
  index, description = lseg_lse24_level2mbprecovery_gtp_v1_0.description.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Extended Message
lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_directory_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.instrument_directory_extended_message, buffer(offset, 0))
    local index = lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_directory_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_directory_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_directory_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_flags = {}

-- Size: Trade Flags
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_flags.size = 1

-- Display: Trade Flags
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trade Cancellation flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trade Cancellation"
  end
  -- Is Trade Correction flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Trade Correction"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Flags
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_flags.bits = function(range, value, packet, parent)

  -- Trade Cancellation: 1 Bit
  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_cancellation, range, value)

  -- Trade Correction: 1 Bit
  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_correction, range, value)

  -- Unused 6: 6 Bit
  parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.unused_6, range, value)
end

-- Dissect: Trade Flags
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_flags, range, display)

  if show.structs then
    lseg_lse24_level2mbprecovery_gtp_v1_0.trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Message
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_message = {}

-- Size: Trade Message
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_message.size =
  lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.transaction_time.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.executed_size.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.price.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.venue_of_execution.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_7.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.trade_id.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.trade_type.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.auction_type.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.trade_flags.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.hidden_execution_indicator.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.trade_qualifier.size

-- Display: Trade Message
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Transaction Time: UDT
  index, transaction_time = lseg_lse24_level2mbprecovery_gtp_v1_0.transaction_time.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.dissect(buffer, index, packet, parent)

  -- Executed Size: Size
  index, executed_size = lseg_lse24_level2mbprecovery_gtp_v1_0.executed_size.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_lse24_level2mbprecovery_gtp_v1_0.price.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: UInt8
  index, venue_of_execution = lseg_lse24_level2mbprecovery_gtp_v1_0.venue_of_execution.dissect(buffer, index, packet, parent)

  -- Reserved 7: Alpha
  if show.padding then
    index, reserved_7 = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_7.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_7.size
  end

  -- Trade Id: UInt64
  index, trade_id = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Type: UInt8
  index, trade_type = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_type.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = lseg_lse24_level2mbprecovery_gtp_v1_0.auction_type.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 3 fields
  index, trade_flags = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_flags.dissect(buffer, index, packet, parent)

  -- Hidden Execution Indicator: UInt8
  index, hidden_execution_indicator = lseg_lse24_level2mbprecovery_gtp_v1_0.hidden_execution_indicator.dissect(buffer, index, packet, parent)

  -- Trade Qualifier: Byte
  index, trade_qualifier = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_qualifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
lseg_lse24_level2mbprecovery_gtp_v1_0.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.trade_message, buffer(offset, 0))
    local index = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse24_level2mbprecovery_gtp_v1_0.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Clear Message
lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_clear_message = {}

-- Size: Order Book Clear Message
lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_clear_message.size =
  lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_type.size

-- Display: Order Book Clear Message
lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Clear Message
lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.order_book_clear_message, buffer(offset, 0))
    local index = lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Mbp Message
lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_short_mbp_message = {}

-- Size: Add Order Short Mbp Message
lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_short_mbp_message.size =
  lseg_lse24_level2mbprecovery_gtp_v1_0.size.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.price.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.splits.size

-- Display: Add Order Short Mbp Message
lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_short_mbp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Mbp Message
lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_short_mbp_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Size: Size
  index, size = lseg_lse24_level2mbprecovery_gtp_v1_0.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_lse24_level2mbprecovery_gtp_v1_0.price.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  if show.padding then
    index, reserved_8 = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.size
  end

  -- Splits: UInt16
  index, splits = lseg_lse24_level2mbprecovery_gtp_v1_0.splits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Mbp Message
lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_short_mbp_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.add_order_short_mbp_message, buffer(offset, 0))
    local index = lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_short_mbp_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_short_mbp_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_short_mbp_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Mbp Message
lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_mbp_message = {}

-- Size: Add Order Mbp Message
lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_mbp_message.size =
  lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.side.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.size.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.price.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_type.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.splits.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.depth.size

-- Display: Add Order Mbp Message
lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_mbp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Mbp Message
lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_mbp_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = lseg_lse24_level2mbprecovery_gtp_v1_0.side.dissect(buffer, index, packet, parent)

  -- Size: Size
  index, size = lseg_lse24_level2mbprecovery_gtp_v1_0.size.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_lse24_level2mbprecovery_gtp_v1_0.price.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  if show.padding then
    index, reserved_8 = lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_lse24_level2mbprecovery_gtp_v1_0.reserved_8.size
  end

  -- Source Venue: UInt16
  index, source_venue = lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_type.dissect(buffer, index, packet, parent)

  -- Splits: UInt16
  index, splits = lseg_lse24_level2mbprecovery_gtp_v1_0.splits.dissect(buffer, index, packet, parent)

  -- Depth: UInt8
  index, depth = lseg_lse24_level2mbprecovery_gtp_v1_0.depth.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Mbp Message
lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_mbp_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.add_order_mbp_message, buffer(offset, 0))
    local index = lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_mbp_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_mbp_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_mbp_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Status Message
lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_status_message = {}

-- Size: Instrument Status Message
lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_status_message.size =
  lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.trading_status.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.session_change_reason.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.new_end_time.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_type.size

-- Display: Instrument Status Message
lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status Message
lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = lseg_lse24_level2mbprecovery_gtp_v1_0.trading_status.dissect(buffer, index, packet, parent)

  -- Session Change Reason: UInt8
  index, session_change_reason = lseg_lse24_level2mbprecovery_gtp_v1_0.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: Time
  index, new_end_time = lseg_lse24_level2mbprecovery_gtp_v1_0.new_end_time.dissect(buffer, index, packet, parent)

  -- Order Book Type: UInt8
  index, order_book_type = lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status Message
lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.instrument_status_message, buffer(offset, 0))
    local index = lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_status_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
lseg_lse24_level2mbprecovery_gtp_v1_0.system_event_message = {}

-- Size: System Event Message
lseg_lse24_level2mbprecovery_gtp_v1_0.system_event_message.size =
  lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.event_code.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.size

-- Display: System Event Message
lseg_lse24_level2mbprecovery_gtp_v1_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
lseg_lse24_level2mbprecovery_gtp_v1_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UDT
  index, timestamp = lseg_lse24_level2mbprecovery_gtp_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Byte
  index, event_code = lseg_lse24_level2mbprecovery_gtp_v1_0.event_code.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
lseg_lse24_level2mbprecovery_gtp_v1_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.system_event_message, buffer(offset, 0))
    local index = lseg_lse24_level2mbprecovery_gtp_v1_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse24_level2mbprecovery_gtp_v1_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay And Recovery Complete Message
lseg_lse24_level2mbprecovery_gtp_v1_0.replay_and_recovery_complete_message = {}

-- Size: Replay And Recovery Complete Message
lseg_lse24_level2mbprecovery_gtp_v1_0.replay_and_recovery_complete_message.size =
  lseg_lse24_level2mbprecovery_gtp_v1_0.request_id.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.trading_status.size

-- Display: Replay And Recovery Complete Message
lseg_lse24_level2mbprecovery_gtp_v1_0.replay_and_recovery_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay And Recovery Complete Message
lseg_lse24_level2mbprecovery_gtp_v1_0.replay_and_recovery_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: UInt32
  index, request_id = lseg_lse24_level2mbprecovery_gtp_v1_0.request_id.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = lseg_lse24_level2mbprecovery_gtp_v1_0.trading_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay And Recovery Complete Message
lseg_lse24_level2mbprecovery_gtp_v1_0.replay_and_recovery_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.replay_and_recovery_complete_message, buffer(offset, 0))
    local index = lseg_lse24_level2mbprecovery_gtp_v1_0.replay_and_recovery_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.replay_and_recovery_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse24_level2mbprecovery_gtp_v1_0.replay_and_recovery_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Recovery Response Message
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_response_message = {}

-- Size: Recovery Response Message
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_response_message.size =
  lseg_lse24_level2mbprecovery_gtp_v1_0.sequence_number.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.count.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_status.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.request_id.size

-- Display: Recovery Response Message
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Recovery Response Message
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: UInt32
  index, sequence_number = lseg_lse24_level2mbprecovery_gtp_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Count: UInt32
  index, count = lseg_lse24_level2mbprecovery_gtp_v1_0.count.dissect(buffer, index, packet, parent)

  -- Recovery Status: Byte
  index, recovery_status = lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_status.dissect(buffer, index, packet, parent)

  -- Request Id: UInt32
  index, request_id = lseg_lse24_level2mbprecovery_gtp_v1_0.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Recovery Response Message
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.recovery_response_message, buffer(offset, 0))
    local index = lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
lseg_lse24_level2mbprecovery_gtp_v1_0.login_response_message = {}

-- Size: Login Response Message
lseg_lse24_level2mbprecovery_gtp_v1_0.login_response_message.size =
  lseg_lse24_level2mbprecovery_gtp_v1_0.login_status.size

-- Display: Login Response Message
lseg_lse24_level2mbprecovery_gtp_v1_0.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
lseg_lse24_level2mbprecovery_gtp_v1_0.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Status: Byte
  index, login_status = lseg_lse24_level2mbprecovery_gtp_v1_0.login_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
lseg_lse24_level2mbprecovery_gtp_v1_0.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.login_response_message, buffer(offset, 0))
    local index = lseg_lse24_level2mbprecovery_gtp_v1_0.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse24_level2mbprecovery_gtp_v1_0.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Recovery Request Message
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_request_message = {}

-- Size: Recovery Request Message
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_request_message.size =
  lseg_lse24_level2mbprecovery_gtp_v1_0.request_level.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.group_id.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.request_order_book_type.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_type.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.sequence_number.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.request_id.size

-- Display: Recovery Request Message
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Recovery Request Message
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Level: UInt8
  index, request_level = lseg_lse24_level2mbprecovery_gtp_v1_0.request_level.dissect(buffer, index, packet, parent)

  -- Instrument: UInt64
  index, instrument = lseg_lse24_level2mbprecovery_gtp_v1_0.instrument.dissect(buffer, index, packet, parent)

  -- Group Id: Alpha
  index, group_id = lseg_lse24_level2mbprecovery_gtp_v1_0.group_id.dissect(buffer, index, packet, parent)

  -- Request Order Book Type: UInt8
  index, request_order_book_type = lseg_lse24_level2mbprecovery_gtp_v1_0.request_order_book_type.dissect(buffer, index, packet, parent)

  -- Source Venue: UInt16
  index, source_venue = lseg_lse24_level2mbprecovery_gtp_v1_0.source_venue.dissect(buffer, index, packet, parent)

  -- Recovery Type: UInt8
  index, recovery_type = lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: UInt32
  index, sequence_number = lseg_lse24_level2mbprecovery_gtp_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Request Id: UInt32
  index, request_id = lseg_lse24_level2mbprecovery_gtp_v1_0.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Recovery Request Message
lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.recovery_request_message, buffer(offset, 0))
    local index = lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
lseg_lse24_level2mbprecovery_gtp_v1_0.login_request_message = {}

-- Size: Login Request Message
lseg_lse24_level2mbprecovery_gtp_v1_0.login_request_message.size =
  lseg_lse24_level2mbprecovery_gtp_v1_0.username.size

-- Display: Login Request Message
lseg_lse24_level2mbprecovery_gtp_v1_0.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
lseg_lse24_level2mbprecovery_gtp_v1_0.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: Alpha
  index, username = lseg_lse24_level2mbprecovery_gtp_v1_0.username.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
lseg_lse24_level2mbprecovery_gtp_v1_0.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.login_request_message, buffer(offset, 0))
    local index = lseg_lse24_level2mbprecovery_gtp_v1_0.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse24_level2mbprecovery_gtp_v1_0.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_lse24_level2mbprecovery_gtp_v1_0.payload = {}

-- Dissect: Payload
lseg_lse24_level2mbprecovery_gtp_v1_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 0x01 then
    return lseg_lse24_level2mbprecovery_gtp_v1_0.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Recovery Request Message
  if message_type == 0x81 then
    return lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return lseg_lse24_level2mbprecovery_gtp_v1_0.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Recovery Response Message
  if message_type == 0x82 then
    return lseg_lse24_level2mbprecovery_gtp_v1_0.recovery_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay And Recovery Complete Message
  if message_type == 0x83 then
    return lseg_lse24_level2mbprecovery_gtp_v1_0.replay_and_recovery_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == 0x53 then
    return lseg_lse24_level2mbprecovery_gtp_v1_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status Message
  if message_type == 0x48 then
    return lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Mbp Message
  if message_type == 0x66 then
    return lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_mbp_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Mbp Message
  if message_type == 0x67 then
    return lseg_lse24_level2mbprecovery_gtp_v1_0.add_order_short_mbp_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear Message
  if message_type == 0x79 then
    return lseg_lse24_level2mbprecovery_gtp_v1_0.order_book_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0x50 then
    return lseg_lse24_level2mbprecovery_gtp_v1_0.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Extended Message
  if message_type == 0x52 then
    return lseg_lse24_level2mbprecovery_gtp_v1_0.instrument_directory_extended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Snapshot Message
  if message_type == 0x6B then
    return lseg_lse24_level2mbprecovery_gtp_v1_0.statistics_snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lseg_lse24_level2mbprecovery_gtp_v1_0.message_header = {}

-- Size: Message Header
lseg_lse24_level2mbprecovery_gtp_v1_0.message_header.size =
  lseg_lse24_level2mbprecovery_gtp_v1_0.message_length.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.message_type.size

-- Display: Message Header
lseg_lse24_level2mbprecovery_gtp_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_lse24_level2mbprecovery_gtp_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_lse24_level2mbprecovery_gtp_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, message_type = lseg_lse24_level2mbprecovery_gtp_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_lse24_level2mbprecovery_gtp_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.message_header, buffer(offset, 0))
    local index = lseg_lse24_level2mbprecovery_gtp_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse24_level2mbprecovery_gtp_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_lse24_level2mbprecovery_gtp_v1_0.message = {}

-- Display: Message
lseg_lse24_level2mbprecovery_gtp_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_lse24_level2mbprecovery_gtp_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_lse24_level2mbprecovery_gtp_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 13 branches
  index = lseg_lse24_level2mbprecovery_gtp_v1_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_lse24_level2mbprecovery_gtp_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.message, buffer(offset, 0))
    local decoded, failure = pcall(lseg_lse24_level2mbprecovery_gtp_v1_0.message.fields, bounded, offset, packet, parent, size_of_message, message_index)
    if not decoded then
      undecoded(failure, parent, lseg_lse24_level2mbprecovery_gtp_v1_0.experts.undecoded, "Message does not decode within its "..size_of_message.." bytes")
    end
    parent:set_len(size_of_message)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(lseg_lse24_level2mbprecovery_gtp_v1_0.message.fields, bounded, offset, packet, parent, size_of_message, message_index)
    if not decoded then
      undecoded(failure, parent, lseg_lse24_level2mbprecovery_gtp_v1_0.experts.undecoded, "Message does not decode within its "..size_of_message.." bytes")
    end

    return index
  end
end

-- Unit Header
lseg_lse24_level2mbprecovery_gtp_v1_0.unit_header = {}

-- Size: Unit Header
lseg_lse24_level2mbprecovery_gtp_v1_0.unit_header.size =
  lseg_lse24_level2mbprecovery_gtp_v1_0.length.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.message_count.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.market_data_group.size + 
  lseg_lse24_level2mbprecovery_gtp_v1_0.sequence_number.size

-- Display: Unit Header
lseg_lse24_level2mbprecovery_gtp_v1_0.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_lse24_level2mbprecovery_gtp_v1_0.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_lse24_level2mbprecovery_gtp_v1_0.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_lse24_level2mbprecovery_gtp_v1_0.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_lse24_level2mbprecovery_gtp_v1_0.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: UInt32
  index, sequence_number = lseg_lse24_level2mbprecovery_gtp_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_lse24_level2mbprecovery_gtp_v1_0.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.unit_header, buffer(offset, 0))
    local index = lseg_lse24_level2mbprecovery_gtp_v1_0.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_lse24_level2mbprecovery_gtp_v1_0.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Tcp Unit
lseg_lse24_level2mbprecovery_gtp_v1_0.tcp_unit = {}

-- Display: Tcp Unit
lseg_lse24_level2mbprecovery_gtp_v1_0.tcp_unit.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Unit
lseg_lse24_level2mbprecovery_gtp_v1_0.tcp_unit.fields = function(buffer, offset, packet, parent, size_of_tcp_unit)
  local index = offset

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_lse24_level2mbprecovery_gtp_v1_0.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = offset + size_of_tcp_unit

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Stop where the payload ends inside the next size
    if index + 2 > end_of_payload then
      parent:add_proto_expert_info(lseg_lse24_level2mbprecovery_gtp_v1_0.experts.undecoded, "Message Length runs past the end of the payload")
      break
    end

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = lseg_lse24_level2mbprecovery_gtp_v1_0.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end

-- Dissect: Tcp Unit
lseg_lse24_level2mbprecovery_gtp_v1_0.tcp_unit.dissect = function(buffer, offset, packet, parent, size_of_tcp_unit)
  local index = offset + size_of_tcp_unit

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0.fields.tcp_unit, buffer(offset, 0))
    local decoded, failure = pcall(lseg_lse24_level2mbprecovery_gtp_v1_0.tcp_unit.fields, bounded, offset, packet, parent, size_of_tcp_unit)
    if not decoded then
      undecoded(failure, parent, lseg_lse24_level2mbprecovery_gtp_v1_0.experts.undecoded, "Tcp Unit does not decode within its "..size_of_tcp_unit.." bytes")
    end
    parent:set_len(size_of_tcp_unit)
    local display = lseg_lse24_level2mbprecovery_gtp_v1_0.tcp_unit.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(lseg_lse24_level2mbprecovery_gtp_v1_0.tcp_unit.fields, bounded, offset, packet, parent, size_of_tcp_unit)
    if not decoded then
      undecoded(failure, parent, lseg_lse24_level2mbprecovery_gtp_v1_0.experts.undecoded, "Tcp Unit does not decode within its "..size_of_tcp_unit.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Tcp Unit
local tcp_unit_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < lseg_lse24_level2mbprecovery_gtp_v1_0.unit_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
lseg_lse24_level2mbprecovery_gtp_v1_0.packet = {}

-- Verify required size of Tcp packet
lseg_lse24_level2mbprecovery_gtp_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= lseg_lse24_level2mbprecovery_gtp_v1_0.unit_header.size
end

-- Dissect Packet
lseg_lse24_level2mbprecovery_gtp_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Tcp Unit
  local end_of_payload = buffer:len()

  -- Tcp Unit: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_tcp_unit = tcp_unit_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_tcp_unit):tvb()
      index = lseg_lse24_level2mbprecovery_gtp_v1_0.tcp_unit.dissect(frame, index, packet, parent, size_of_tcp_unit)
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
function omi_lseg_lse24_level2mbprecovery_gtp_v1_0.init()
end

-- Dissector for Lseg Lse24 Level2MbpRecovery Gtp 1.0
function omi_lseg_lse24_level2mbprecovery_gtp_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_lseg_lse24_level2mbprecovery_gtp_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_lse24_level2mbprecovery_gtp_v1_0, buffer(), omi_lseg_lse24_level2mbprecovery_gtp_v1_0.description, "("..buffer:len().." Bytes)")
  return lseg_lse24_level2mbprecovery_gtp_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
lseg_lse24_level2mbprecovery_gtp_v1_0.packet.fingerprint = function(buffer)
  if buffer:len() < 11 then
    return false
  end

  local message_type = buffer(10, 1):uint()

  -- Login Request Message
  if message_type == 0x01 then
    return true
  end

  -- Recovery Request Message
  if message_type == 0x81 then
    return true
  end

  -- Login Response Message
  if message_type == 0x02 then
    return true
  end

  -- Recovery Response Message
  if message_type == 0x82 then
    return true
  end

  -- Replay And Recovery Complete Message
  if message_type == 0x83 then
    return true
  end

  -- System Event Message
  if message_type == 0x53 then
    return true
  end

  -- Instrument Status Message
  if message_type == 0x48 then
    return true
  end

  -- Add Order Mbp Message
  if message_type == 0x66 then
    return true
  end

  -- Add Order Short Mbp Message
  if message_type == 0x67 then
    return true
  end

  -- Order Book Clear Message
  if message_type == 0x79 then
    return true
  end

  -- Trade Message
  if message_type == 0x50 then
    return true
  end

  -- Instrument Directory Extended Message
  if message_type == 0x52 then
    return true
  end

  -- Statistics Snapshot Message
  if message_type == 0x6B then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lseg Lse24 Level2MbpRecovery Gtp 1.0 (Tcp)
local function omi_lseg_lse24_level2mbprecovery_gtp_v1_0_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_lse24_level2mbprecovery_gtp_v1_0.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not lseg_lse24_level2mbprecovery_gtp_v1_0.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_lse24_level2mbprecovery_gtp_v1_0
  omi_lseg_lse24_level2mbprecovery_gtp_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Lse24 Level2MbpRecovery Gtp 1.0
omi_lseg_lse24_level2mbprecovery_gtp_v1_0:register_heuristic("tcp", omi_lseg_lse24_level2mbprecovery_gtp_v1_0_tcp_heuristic)

-- Register Lseg Lse24 Level2MbpRecovery Gtp 1.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_lseg_lse24_level2mbprecovery_gtp_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: London Stock Exchange
--   Version: 1.0
--   Date: Monday, October 19, 2026
--   Specification: gtp-002-technical-guide-lse-24-issue-1-0.pdf
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
