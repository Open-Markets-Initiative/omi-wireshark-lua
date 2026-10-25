-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- 24X 24XEquities MemoirDepthFeed Sbe 2.0 Protocol
local omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0 = Proto("Omi.24X.24XEquities.MemoirDepthFeed.Sbe.v2.0", "24X 24XEquities MemoirDepthFeed Sbe 2.0")

-- Protocol table
local n24x_24xequities_memoirdepthfeed_sbe_v2_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- 24X 24XEquities MemoirDepthFeed Sbe 2.0 Fields
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.as_of_sequence_number = ProtoField.new("As Of Sequence Number", "24x.24xequities.memoirdepthfeed.sbe.v2.0.asofsequencenumber", ftypes.UINT64, nil, nil, nil, "AsOfSequenceNumber")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.auction_id = ProtoField.new("Auction Id", "24x.24xequities.memoirdepthfeed.sbe.v2.0.auctionid", ftypes.UINT64, nil, nil, nil, "AuctionID")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.auction_only_price = ProtoField.new("Auction Only Price", "24x.24xequities.memoirdepthfeed.sbe.v2.0.auctiononlyprice", ftypes.DOUBLE, nil, nil, nil, "AuctionOnlyPrice")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.auction_price = ProtoField.new("Auction Price", "24x.24xequities.memoirdepthfeed.sbe.v2.0.auctionprice", ftypes.DOUBLE, nil, nil, nil, "AuctionPrice")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.auction_quantity = ProtoField.new("Auction Quantity", "24x.24xequities.memoirdepthfeed.sbe.v2.0.auctionquantity", ftypes.UINT64, nil, nil, nil, "AuctionQuantity")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.auction_type = ProtoField.new("Auction Type", "24x.24xequities.memoirdepthfeed.sbe.v2.0.auctiontype", ftypes.STRING, nil, nil, nil, "AuctionType")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.block_length = ProtoField.new("Block Length", "24x.24xequities.memoirdepthfeed.sbe.v2.0.blocklength", ftypes.UINT16, nil, nil, nil, "Memx Udp Message Type")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_auction_price = ProtoField.new("Corrected Auction Price", "24x.24xequities.memoirdepthfeed.sbe.v2.0.correctedauctionprice", ftypes.DOUBLE, nil, nil, nil, "CorrectedAuctionPrice")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_auction_quantity = ProtoField.new("Corrected Auction Quantity", "24x.24xequities.memoirdepthfeed.sbe.v2.0.correctedauctionquantity", ftypes.UINT64, nil, nil, nil, "CorrectedAuctionQuantity")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_price = ProtoField.new("Corrected Price", "24x.24xequities.memoirdepthfeed.sbe.v2.0.correctedprice", ftypes.DOUBLE, nil, nil, nil, "CorrectedPrice")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_quantity = ProtoField.new("Corrected Quantity", "24x.24xequities.memoirdepthfeed.sbe.v2.0.correctedquantity", ftypes.UINT32, nil, nil, nil, "CorrectedQuantity")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_sale_condition_1 = ProtoField.new("Corrected Sale Condition 1", "24x.24xequities.memoirdepthfeed.sbe.v2.0.correctedsalecondition1", ftypes.STRING, nil, nil, nil, "CorrectedSaleCondition1")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_sale_condition_2 = ProtoField.new("Corrected Sale Condition 2", "24x.24xequities.memoirdepthfeed.sbe.v2.0.correctedsalecondition2", ftypes.STRING, nil, nil, nil, "CorrectedSaleCondition2")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_sale_condition_3 = ProtoField.new("Corrected Sale Condition 3", "24x.24xequities.memoirdepthfeed.sbe.v2.0.correctedsalecondition3", ftypes.STRING, nil, nil, nil, "CorrectedSaleCondition3")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_sale_condition_4 = ProtoField.new("Corrected Sale Condition 4", "24x.24xequities.memoirdepthfeed.sbe.v2.0.correctedsalecondition4", ftypes.STRING, nil, nil, nil, "CorrectedSaleCondition4")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.halt_reason = ProtoField.new("Halt Reason", "24x.24xequities.memoirdepthfeed.sbe.v2.0.haltreason", ftypes.UINT8, nil, nil, nil, "HaltReason")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.header_length = ProtoField.new("Header Length", "24x.24xequities.memoirdepthfeed.sbe.v2.0.headerlength", ftypes.UINT8, nil, nil, nil, "Total bytes in this header")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.indicative_price = ProtoField.new("Indicative Price", "24x.24xequities.memoirdepthfeed.sbe.v2.0.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "IndicativePrice")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.is_test_symbol = ProtoField.new("Is Test Symbol", "24x.24xequities.memoirdepthfeed.sbe.v2.0.istestsymbol", ftypes.UINT8, nil, nil, nil, "IsTestSymbol")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.lower_collar_price = ProtoField.new("Lower Collar Price", "24x.24xequities.memoirdepthfeed.sbe.v2.0.lowercollarprice", ftypes.DOUBLE, nil, nil, nil, "LowerCollarPrice")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.message = ProtoField.new("Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.message", ftypes.STRING, nil, nil, nil, "Memx Udp Message")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.message_count = ProtoField.new("Message Count", "24x.24xequities.memoirdepthfeed.sbe.v2.0.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages in this packet")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.message_length = ProtoField.new("Message Length", "24x.24xequities.memoirdepthfeed.sbe.v2.0.messagelength", ftypes.UINT16, nil, nil, nil, "Number of bytes in the following message")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.message_type = ProtoField.new("Message Type", "24x.24xequities.memoirdepthfeed.sbe.v2.0.messagetype", ftypes.UINT8, nil, nil, nil, "Memx Udp Message Type")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.number_of_extensions = ProtoField.new("Number Of Extensions", "24x.24xequities.memoirdepthfeed.sbe.v2.0.numberofextensions", ftypes.UINT32, nil, nil, nil, "NumberOfExtensions")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.order_flags = ProtoField.new("Order Flags", "24x.24xequities.memoirdepthfeed.sbe.v2.0.orderflags", ftypes.STRING, nil, nil, nil, "OrderFlagsType bit set")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.order_id = ProtoField.new("Order Id", "24x.24xequities.memoirdepthfeed.sbe.v2.0.orderid", ftypes.UINT64, nil, nil, nil, "OrderID")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_auction_price = ProtoField.new("Original Auction Price", "24x.24xequities.memoirdepthfeed.sbe.v2.0.originalauctionprice", ftypes.DOUBLE, nil, nil, nil, "OriginalAuctionPrice")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_auction_quantity = ProtoField.new("Original Auction Quantity", "24x.24xequities.memoirdepthfeed.sbe.v2.0.originalauctionquantity", ftypes.UINT64, nil, nil, nil, "OriginalAuctionQuantity")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_price = ProtoField.new("Original Price", "24x.24xequities.memoirdepthfeed.sbe.v2.0.originalprice", ftypes.DOUBLE, nil, nil, nil, "OriginalPrice")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_quantity = ProtoField.new("Original Quantity", "24x.24xequities.memoirdepthfeed.sbe.v2.0.originalquantity", ftypes.UINT32, nil, nil, nil, "OriginalQuantity")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_sale_condition_1 = ProtoField.new("Original Sale Condition 1", "24x.24xequities.memoirdepthfeed.sbe.v2.0.originalsalecondition1", ftypes.STRING, nil, nil, nil, "OriginalSaleCondition1")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_sale_condition_2 = ProtoField.new("Original Sale Condition 2", "24x.24xequities.memoirdepthfeed.sbe.v2.0.originalsalecondition2", ftypes.STRING, nil, nil, nil, "OriginalSaleCondition2")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_sale_condition_3 = ProtoField.new("Original Sale Condition 3", "24x.24xequities.memoirdepthfeed.sbe.v2.0.originalsalecondition3", ftypes.STRING, nil, nil, nil, "OriginalSaleCondition3")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_sale_condition_4 = ProtoField.new("Original Sale Condition 4", "24x.24xequities.memoirdepthfeed.sbe.v2.0.originalsalecondition4", ftypes.STRING, nil, nil, nil, "OriginalSaleCondition4")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.price = ProtoField.new("Price", "24x.24xequities.memoirdepthfeed.sbe.v2.0.price", ftypes.DOUBLE)
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.quantity = ProtoField.new("Quantity", "24x.24xequities.memoirdepthfeed.sbe.v2.0.quantity", ftypes.UINT32)
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.reference_buy_quantity = ProtoField.new("Reference Buy Quantity", "24x.24xequities.memoirdepthfeed.sbe.v2.0.referencebuyquantity", ftypes.UINT64, nil, nil, nil, "ReferenceBuyQuantity")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.reference_price = ProtoField.new("Reference Price", "24x.24xequities.memoirdepthfeed.sbe.v2.0.referenceprice", ftypes.DOUBLE, nil, nil, nil, "ReferencePrice")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.reference_sell_quantity = ProtoField.new("Reference Sell Quantity", "24x.24xequities.memoirdepthfeed.sbe.v2.0.referencesellquantity", ftypes.UINT64, nil, nil, nil, "ReferenceSellQuantity")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.reserved_7 = ProtoField.new("Reserved 7", "24x.24xequities.memoirdepthfeed.sbe.v2.0.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE, "7 reserved bits")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.retail_present = ProtoField.new("Retail Present", "24x.24xequities.memoirdepthfeed.sbe.v2.0.retailpresent", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "RetailPresent")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.round_lot = ProtoField.new("Round Lot", "24x.24xequities.memoirdepthfeed.sbe.v2.0.roundlot", ftypes.UINT32, nil, nil, nil, "RoundLot")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sale_condition_1 = ProtoField.new("Sale Condition 1", "24x.24xequities.memoirdepthfeed.sbe.v2.0.salecondition1", ftypes.STRING, nil, nil, nil, "SaleCondition1")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sale_condition_2 = ProtoField.new("Sale Condition 2", "24x.24xequities.memoirdepthfeed.sbe.v2.0.salecondition2", ftypes.STRING, nil, nil, nil, "SaleCondition2")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sale_condition_3 = ProtoField.new("Sale Condition 3", "24x.24xequities.memoirdepthfeed.sbe.v2.0.salecondition3", ftypes.STRING, nil, nil, nil, "SaleCondition3")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sale_condition_4 = ProtoField.new("Sale Condition 4", "24x.24xequities.memoirdepthfeed.sbe.v2.0.salecondition4", ftypes.STRING, nil, nil, nil, "SaleCondition4")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.schema_id = ProtoField.new("Schema Id", "24x.24xequities.memoirdepthfeed.sbe.v2.0.schemaid", ftypes.UINT8, nil, nil, nil, "The identifier of a message schema")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.security_id = ProtoField.new("Security Id", "24x.24xequities.memoirdepthfeed.sbe.v2.0.securityid", ftypes.UINT16, nil, nil, nil, "SecurityID")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.security_trading_status = ProtoField.new("Security Trading Status", "24x.24xequities.memoirdepthfeed.sbe.v2.0.securitytradingstatus", ftypes.STRING, nil, nil, nil, "SecurityTradingStatus")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.security_trading_status_reason = ProtoField.new("Security Trading Status Reason", "24x.24xequities.memoirdepthfeed.sbe.v2.0.securitytradingstatusreason", ftypes.STRING, nil, nil, nil, "SecurityTradingStatusReason")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sequence_number = ProtoField.new("Sequence Number", "24x.24xequities.memoirdepthfeed.sbe.v2.0.sequencenumber", ftypes.UINT64)
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sequenced_message = ProtoField.new("Sequenced Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.sequencedmessage", ftypes.STRING, nil, nil, nil, "Memx Udp Sequenced Message")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.session_id = ProtoField.new("Session Id", "24x.24xequities.memoirdepthfeed.sbe.v2.0.sessionid", ftypes.UINT64, nil, nil, nil, "session identifier")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "24x.24xequities.memoirdepthfeed.sbe.v2.0.shortsalerestriction", ftypes.UINT8, nil, nil, nil, "ShortSaleRestriction")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.side = ProtoField.new("Side", "24x.24xequities.memoirdepthfeed.sbe.v2.0.side", ftypes.STRING)
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.symbol = ProtoField.new("Symbol", "24x.24xequities.memoirdepthfeed.sbe.v2.0.symbol", ftypes.STRING)
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "24x.24xequities.memoirdepthfeed.sbe.v2.0.symbolsfx", ftypes.STRING, nil, nil, nil, "SymbolSfx")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.template_id = ProtoField.new("Template Id", "24x.24xequities.memoirdepthfeed.sbe.v2.0.templateid", ftypes.UINT8, nil, nil, nil, "T8 Identifier of the message template")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.tie_breaker_price = ProtoField.new("Tie Breaker Price", "24x.24xequities.memoirdepthfeed.sbe.v2.0.tiebreakerprice", ftypes.DOUBLE, nil, nil, nil, "TieBreakerPrice")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.timestamp = ProtoField.new("Timestamp", "24x.24xequities.memoirdepthfeed.sbe.v2.0.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.timestamp_utc = ProtoField.new("Timestamp", "24x.24xequities.memoirdepthfeed.sbe.v2.0.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.trade_id = ProtoField.new("Trade Id", "24x.24xequities.memoirdepthfeed.sbe.v2.0.tradeid", ftypes.UINT64, nil, nil, nil, "TradeID")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.trading_session = ProtoField.new("Trading Session", "24x.24xequities.memoirdepthfeed.sbe.v2.0.tradingsession", ftypes.STRING, nil, nil, nil, "TradingSession")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.upper_collar_price = ProtoField.new("Upper Collar Price", "24x.24xequities.memoirdepthfeed.sbe.v2.0.uppercollarprice", ftypes.DOUBLE, nil, nil, nil, "UpperCollarPrice")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.version = ProtoField.new("Version", "24x.24xequities.memoirdepthfeed.sbe.v2.0.version", ftypes.UINT16, nil, nil, nil, "The version number of the message schema that was used to encode a message")

-- 24X 24XEquities MemoirDepthFeed Sbe 2.0 Framing
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.common_header = ProtoField.new("Common Header", "24x.24xequities.memoirdepthfeed.sbe.v2.0.commonheader", ftypes.STRING, nil, nil, nil, "Memx Udp Common Header")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.packet = ProtoField.new("Packet", "24x.24xequities.memoirdepthfeed.sbe.v2.0.packet", ftypes.STRING, nil, nil, nil, "Memx Udp Packet")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sbe_header = ProtoField.new("Sbe Header", "24x.24xequities.memoirdepthfeed.sbe.v2.0.sbeheader", ftypes.STRING)
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sbe_message = ProtoField.new("Sbe Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.sbemessage", ftypes.STRING)

-- 24X 24XEquities MemoirDepthFeed 2.0 Application Messages
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.auction_status_message = ProtoField.new("Auction Status Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.auctionstatusmessage", ftypes.STRING, nil, nil, nil, "AuctionStatusMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.auctiontrademessage", ftypes.STRING, nil, nil, nil, "AuctionTradeMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.broken_auction_trade_message = ProtoField.new("Broken Auction Trade Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.brokenauctiontrademessage", ftypes.STRING, nil, nil, nil, "BrokenAuctionTradeMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.brokentrademessage", ftypes.STRING, nil, nil, nil, "BrokenTradeMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.clear_book_message = ProtoField.new("Clear Book Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.clearbookmessage", ftypes.STRING, nil, nil, nil, "ClearBookMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_auction_trade_message = ProtoField.new("Corrected Auction Trade Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.correctedauctiontrademessage", ftypes.STRING, nil, nil, nil, "CorrectedAuctionTradeMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_trade_message = ProtoField.new("Corrected Trade Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.correctedtrademessage", ftypes.STRING, nil, nil, nil, "CorrectedTradeMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.instrumentdirectorymessage", ftypes.STRING, nil, nil, nil, "InstrumentDirectoryMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.order_added_message = ProtoField.new("Order Added Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.orderaddedmessage", ftypes.STRING, nil, nil, nil, "OrderAddedMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.orderdeletedmessage", ftypes.STRING, nil, nil, nil, "OrderDeletedMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "OrderExecutedMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.order_reduced_message = ProtoField.new("Order Reduced Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.orderreducedmessage", ftypes.STRING, nil, nil, nil, "OrderReducedMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.regshorestrictionmessage", ftypes.STRING, nil, nil, nil, "RegSHORestrictionMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.security_trading_status_message = ProtoField.new("Security Trading Status Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.securitytradingstatusmessage", ftypes.STRING, nil, nil, nil, "SecurityTradingStatusMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.snapshot_complete_message = ProtoField.new("Snapshot Complete Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.snapshotcompletemessage", ftypes.STRING, nil, nil, nil, "SnapshotCompleteMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.trade_message = ProtoField.new("Trade Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.trademessage", ftypes.STRING, nil, nil, nil, "TradeMessage")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "24x.24xequities.memoirdepthfeed.sbe.v2.0.tradingsessionstatusmessage", ftypes.STRING, nil, nil, nil, "TradingSessionStatusMessage")

-- 24X 24XEquities MemoirDepthFeed 2.0 Session Messages
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.heartbeat = ProtoField.new("Heartbeat", "24x.24xequities.memoirdepthfeed.sbe.v2.0.heartbeat", ftypes.BYTES, nil, nil, nil, "Memx Udp heartbeat: the session is alive and no sequenced message follows the header")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.session_shutdown = ProtoField.new("Session Shutdown", "24x.24xequities.memoirdepthfeed.sbe.v2.0.sessionshutdown", ftypes.BYTES, nil, nil, nil, "Memx Udp session shutdown: no further sequenced message will be sent for this session id")

-- 24X 24XEquities MemoirDepthFeed Sbe 2.0 Generated Fields
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.message_index = ProtoField.new("Message Index", "24x.24xequities.memoirdepthfeed.sbe.v2.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- 24X 24XEquities MemoirDepthFeed Sbe 2.0 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
n24x_24xequities_memoirdepthfeed_sbe_v2_0.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- 24X 24XEquities MemoirDepthFeed Sbe 2.0 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.indexes = true

-- Register 24X 24XEquities MemoirDepthFeed Sbe 2.0 Show Options
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs.show_application_messages then
    show.application_messages = omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs.show_application_messages
  end
  if show.headers ~= omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs.show_headers then
    show.headers = omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs.show_headers
  end
  if show.structs ~= omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs.show_structs then
    show.structs = omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs.show_structs
  end
  if show.indexes ~= omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs.show_indexes then
    show.indexes = omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs.show_indexes
  end
  if n24x_24xequities_memoirdepthfeed_sbe_v2_0.absolute_time_base ~= omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs.absolute_time_base then
    n24x_24xequities_memoirdepthfeed_sbe_v2_0.absolute_time_base = omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- 24X 24XEquities MemoirDepthFeed Sbe 2.0 Fields
-----------------------------------------------------------------------

-- As Of Sequence Number
n24x_24xequities_memoirdepthfeed_sbe_v2_0.as_of_sequence_number = {}

-- Size: As Of Sequence Number
n24x_24xequities_memoirdepthfeed_sbe_v2_0.as_of_sequence_number.size = 8

-- Display: As Of Sequence Number
n24x_24xequities_memoirdepthfeed_sbe_v2_0.as_of_sequence_number.display = function(value)
  return "As Of Sequence Number: "..value
end

-- Dissect: As Of Sequence Number
n24x_24xequities_memoirdepthfeed_sbe_v2_0.as_of_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.as_of_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.as_of_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.as_of_sequence_number, range, value, display)

  return offset + length, value
end

-- Auction Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_id = {}

-- Size: Auction Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_id.size = 8

-- Display: Auction Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Only Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_only_price = {}

-- Size: Auction Only Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_only_price.size = 8

-- Display: Auction Only Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_only_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Only Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_only_price.translate(raw)
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_price = {}

-- Size: Auction Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_price.size = 8

-- Display: Auction Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_price.display = function(value)
  return "Auction Price: "..value
end

-- Translate: Auction Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_price.translate(raw)
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.auction_price, range, value, display)

  return offset + length, value
end

-- Auction Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_quantity = {}

-- Size: Auction Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_quantity.size = 8

-- Display: Auction Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_quantity.display = function(value)
  return "Auction Quantity: "..value
end

-- Dissect: Auction Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_quantity.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.auction_quantity, range, value, display)

  return offset + length, value
end

-- Auction Type
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_type = {}

-- Size: Auction Type
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_type.size = 1

-- Display: Auction Type
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Auction Type: No Value"
  end

  if value == " " then
    return "Auction Type: Unknown (<whitespace>)"
  end
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "C" then
    return "Auction Type: Closing (C)"
  end
  if value == "H" then
    return "Auction Type: Halt (H)"
  end
  if value == "I" then
    return "Auction Type: Ipo (I)"
  end
  if value == "P" then
    return "Auction Type: Pause (P)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Block Length
n24x_24xequities_memoirdepthfeed_sbe_v2_0.block_length = {}

-- Size: Block Length
n24x_24xequities_memoirdepthfeed_sbe_v2_0.block_length.size = 2

-- Display: Block Length
n24x_24xequities_memoirdepthfeed_sbe_v2_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
n24x_24xequities_memoirdepthfeed_sbe_v2_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Corrected Auction Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_price = {}

-- Size: Corrected Auction Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_price.size = 8

-- Display: Corrected Auction Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_price.display = function(value)
  return "Corrected Auction Price: "..value
end

-- Translate: Corrected Auction Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Auction Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_price.translate(raw)
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_auction_price, range, value, display)

  return offset + length, value
end

-- Corrected Auction Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_quantity = {}

-- Size: Corrected Auction Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_quantity.size = 8

-- Display: Corrected Auction Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_quantity.display = function(value)
  return "Corrected Auction Quantity: "..value
end

-- Dissect: Corrected Auction Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_quantity.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_auction_quantity, range, value, display)

  return offset + length, value
end

-- Corrected Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_price = {}

-- Size: Corrected Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_price.size = 8

-- Display: Corrected Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_price.translate(raw)
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Corrected Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_quantity = {}

-- Size: Corrected Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_quantity.size = 4

-- Display: Corrected Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_quantity.display = function(value)
  return "Corrected Quantity: "..value
end

-- Dissect: Corrected Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_quantity.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_quantity, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition 1
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_1 = {}

-- Size: Corrected Sale Condition 1
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_1.size = 1

-- Display: Corrected Sale Condition 1
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_1.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Corrected Sale Condition 1: No Value"
  end

  if value == "@" then
    return "Corrected Sale Condition 1: Regular Trade (@)"
  end

  return "Corrected Sale Condition 1: Unknown("..value..")"
end

-- Dissect: Corrected Sale Condition 1
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_1.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_1.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_sale_condition_1, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition 2
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_2 = {}

-- Size: Corrected Sale Condition 2
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_2.size = 1

-- Display: Corrected Sale Condition 2
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_2.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Corrected Sale Condition 2: No Value"
  end

  if value == " " then
    return "Corrected Sale Condition 2: Not Applicable (<whitespace>)"
  end
  if value == "O" then
    return "Corrected Sale Condition 2: Market Center Opening Trade (O)"
  end
  if value == "5" then
    return "Corrected Sale Condition 2: Market Center Reopening Trade (5)"
  end
  if value == "6" then
    return "Corrected Sale Condition 2: Market Center Closing Trade (6)"
  end

  return "Corrected Sale Condition 2: Unknown("..value..")"
end

-- Dissect: Corrected Sale Condition 2
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_2.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_2.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_sale_condition_2, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition 3
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_3 = {}

-- Size: Corrected Sale Condition 3
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_3.size = 1

-- Display: Corrected Sale Condition 3
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_3.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Corrected Sale Condition 3: No Value"
  end

  if value == " " then
    return "Corrected Sale Condition 3: Not Applicable (<whitespace>)"
  end
  if value == "T" then
    return "Corrected Sale Condition 3: Form T (T)"
  end

  return "Corrected Sale Condition 3: Unknown("..value..")"
end

-- Dissect: Corrected Sale Condition 3
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_3.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_3.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_sale_condition_3, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition 4
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_4 = {}

-- Size: Corrected Sale Condition 4
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_4.size = 1

-- Display: Corrected Sale Condition 4
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_4.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Corrected Sale Condition 4: No Value"
  end

  if value == " " then
    return "Corrected Sale Condition 4: Not Applicable (<whitespace>)"
  end
  if value == "H" then
    return "Corrected Sale Condition 4: Price Variation Trade (H)"
  end
  if value == "I" then
    return "Corrected Sale Condition 4: Odd Lot Trade (I)"
  end
  if value == "X" then
    return "Corrected Sale Condition 4: Auction Trade (X)"
  end

  return "Corrected Sale Condition 4: Unknown("..value..")"
end

-- Dissect: Corrected Sale Condition 4
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_4.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_4.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_sale_condition_4, range, value, display)

  return offset + length, value
end

-- Halt Reason
n24x_24xequities_memoirdepthfeed_sbe_v2_0.halt_reason = {}

-- Size: Halt Reason
n24x_24xequities_memoirdepthfeed_sbe_v2_0.halt_reason.size = 1

-- Display: Halt Reason
n24x_24xequities_memoirdepthfeed_sbe_v2_0.halt_reason.labels = {
  [0] = "Halt Reason: Unknown (0)",
  [1] = "Halt Reason: Admin (1)",
  [2] = "Halt Reason: Additional Info Requested (2)",
  [3] = "Halt Reason: Regulatory Concern (3)",
  [4] = "Halt Reason: News Released (4)",
  [5] = "Halt Reason: Merger Effective (5)",
  [6] = "Halt Reason: Etf Component Prices Not Available (6)",
  [7] = "Halt Reason: Order Imbalance (7)",
  [8] = "Halt Reason: Luld Trading Pause (8)",
  [9] = "Halt Reason: Corporate Action (9)",
  [10] = "Halt Reason: New Security Offering (10)",
  [11] = "Halt Reason: News Pending (11)",
  [12] = "Halt Reason: Intraday Indicative Value Not Available (12)",
  [13] = "Halt Reason: Operational (13)",
  [14] = "Halt Reason: Sub Penny Trading (14)",
  [15] = "Halt Reason: Market Wide Circuit Breaker Level 1 (15)",
  [16] = "Halt Reason: Market Wide Circuit Breaker Level 2 (16)",
  [17] = "Halt Reason: Market Wide Circuit Breaker Level 3 (17)",
}

n24x_24xequities_memoirdepthfeed_sbe_v2_0.halt_reason.display = function(value)
  return n24x_24xequities_memoirdepthfeed_sbe_v2_0.halt_reason.labels[value] or "Halt Reason: Unknown("..value..")"
end

-- Dissect: Halt Reason
n24x_24xequities_memoirdepthfeed_sbe_v2_0.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.halt_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Header Length
n24x_24xequities_memoirdepthfeed_sbe_v2_0.header_length = {}

-- Size: Header Length
n24x_24xequities_memoirdepthfeed_sbe_v2_0.header_length.size = 1

-- Display: Header Length
n24x_24xequities_memoirdepthfeed_sbe_v2_0.header_length.display = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
n24x_24xequities_memoirdepthfeed_sbe_v2_0.header_length.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.header_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.header_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.header_length, range, value, display)

  return offset + length, value
end

-- Indicative Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.indicative_price = {}

-- Size: Indicative Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.indicative_price.size = 8

-- Display: Indicative Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.indicative_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Indicative Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = n24x_24xequities_memoirdepthfeed_sbe_v2_0.indicative_price.translate(raw)
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Is Test Symbol
n24x_24xequities_memoirdepthfeed_sbe_v2_0.is_test_symbol = {}

-- Size: Is Test Symbol
n24x_24xequities_memoirdepthfeed_sbe_v2_0.is_test_symbol.size = 1

-- Display: Is Test Symbol
n24x_24xequities_memoirdepthfeed_sbe_v2_0.is_test_symbol.labels = {
  [0] = "Is Test Symbol: False (0)",
  [1] = "Is Test Symbol: True (1)",
}

n24x_24xequities_memoirdepthfeed_sbe_v2_0.is_test_symbol.display = function(value)
  return n24x_24xequities_memoirdepthfeed_sbe_v2_0.is_test_symbol.labels[value] or "Is Test Symbol: Unknown("..value..")"
end

-- Dissect: Is Test Symbol
n24x_24xequities_memoirdepthfeed_sbe_v2_0.is_test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.is_test_symbol.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.is_test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.is_test_symbol, range, value, display)

  return offset + length, value
end

-- Lower Collar Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.lower_collar_price = {}

-- Size: Lower Collar Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.lower_collar_price.size = 8

-- Display: Lower Collar Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.lower_collar_price.display = function(value)
  return "Lower Collar Price: "..value
end

-- Translate: Lower Collar Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.lower_collar_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Lower Collar Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.lower_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.lower_collar_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = n24x_24xequities_memoirdepthfeed_sbe_v2_0.lower_collar_price.translate(raw)
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.lower_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.lower_collar_price, range, value, display)

  return offset + length, value
end

-- Message Count
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_count = {}

-- Size: Message Count
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_count.size = 2

-- Display: Message Count
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_length = {}

-- Size: Message Length
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_length.size = 2

-- Display: Message Length
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_type = {}

-- Size: Message Type
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_type.size = 1

-- Display: Message Type
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_type.labels = {
  [0] = "Message Type: Heartbeat Message (0)",
  [1] = "Message Type: Session Shutdown Message (1)",
  [2] = "Message Type: Sequenced Message (2)",
}

n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_type.display = function(value)
  return n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Number Of Extensions
n24x_24xequities_memoirdepthfeed_sbe_v2_0.number_of_extensions = {}

-- Size: Number Of Extensions
n24x_24xequities_memoirdepthfeed_sbe_v2_0.number_of_extensions.size = 4

-- Display: Number Of Extensions
n24x_24xequities_memoirdepthfeed_sbe_v2_0.number_of_extensions.display = function(value)
  return "Number Of Extensions: "..value
end

-- Dissect: Number Of Extensions
n24x_24xequities_memoirdepthfeed_sbe_v2_0.number_of_extensions.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.number_of_extensions.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.number_of_extensions.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.number_of_extensions, range, value, display)

  return offset + length, value
end

-- Order Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_id = {}

-- Size: Order Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_id.size = 8

-- Display: Order Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Original Auction Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_price = {}

-- Size: Original Auction Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_price.size = 8

-- Display: Original Auction Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_price.display = function(value)
  return "Original Auction Price: "..value
end

-- Translate: Original Auction Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Auction Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_price.translate(raw)
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_auction_price, range, value, display)

  return offset + length, value
end

-- Original Auction Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_quantity = {}

-- Size: Original Auction Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_quantity.size = 8

-- Display: Original Auction Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_quantity.display = function(value)
  return "Original Auction Quantity: "..value
end

-- Dissect: Original Auction Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_quantity.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_auction_quantity, range, value, display)

  return offset + length, value
end

-- Original Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_price = {}

-- Size: Original Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_price.size = 8

-- Display: Original Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_price.display = function(value)
  return "Original Price: "..value
end

-- Translate: Original Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_price.translate(raw)
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_price, range, value, display)

  return offset + length, value
end

-- Original Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_quantity = {}

-- Size: Original Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_quantity.size = 4

-- Display: Original Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_quantity.display = function(value)
  return "Original Quantity: "..value
end

-- Dissect: Original Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_quantity.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_quantity, range, value, display)

  return offset + length, value
end

-- Original Sale Condition 1
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_1 = {}

-- Size: Original Sale Condition 1
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_1.size = 1

-- Display: Original Sale Condition 1
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_1.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Original Sale Condition 1: No Value"
  end

  if value == "@" then
    return "Original Sale Condition 1: Regular Trade (@)"
  end

  return "Original Sale Condition 1: Unknown("..value..")"
end

-- Dissect: Original Sale Condition 1
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_1.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_1.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_sale_condition_1, range, value, display)

  return offset + length, value
end

-- Original Sale Condition 2
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_2 = {}

-- Size: Original Sale Condition 2
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_2.size = 1

-- Display: Original Sale Condition 2
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_2.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Original Sale Condition 2: No Value"
  end

  if value == " " then
    return "Original Sale Condition 2: Not Applicable (<whitespace>)"
  end
  if value == "O" then
    return "Original Sale Condition 2: Market Center Opening Trade (O)"
  end
  if value == "5" then
    return "Original Sale Condition 2: Market Center Reopening Trade (5)"
  end
  if value == "6" then
    return "Original Sale Condition 2: Market Center Closing Trade (6)"
  end

  return "Original Sale Condition 2: Unknown("..value..")"
end

-- Dissect: Original Sale Condition 2
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_2.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_2.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_sale_condition_2, range, value, display)

  return offset + length, value
end

-- Original Sale Condition 3
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_3 = {}

-- Size: Original Sale Condition 3
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_3.size = 1

-- Display: Original Sale Condition 3
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_3.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Original Sale Condition 3: No Value"
  end

  if value == " " then
    return "Original Sale Condition 3: Not Applicable (<whitespace>)"
  end
  if value == "T" then
    return "Original Sale Condition 3: Form T (T)"
  end

  return "Original Sale Condition 3: Unknown("..value..")"
end

-- Dissect: Original Sale Condition 3
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_3.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_3.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_sale_condition_3, range, value, display)

  return offset + length, value
end

-- Original Sale Condition 4
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_4 = {}

-- Size: Original Sale Condition 4
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_4.size = 1

-- Display: Original Sale Condition 4
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_4.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Original Sale Condition 4: No Value"
  end

  if value == " " then
    return "Original Sale Condition 4: Not Applicable (<whitespace>)"
  end
  if value == "H" then
    return "Original Sale Condition 4: Price Variation Trade (H)"
  end
  if value == "I" then
    return "Original Sale Condition 4: Odd Lot Trade (I)"
  end
  if value == "X" then
    return "Original Sale Condition 4: Auction Trade (X)"
  end

  return "Original Sale Condition 4: Unknown("..value..")"
end

-- Dissect: Original Sale Condition 4
n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_4.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_4.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.original_sale_condition_4, range, value, display)

  return offset + length, value
end

-- Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.price = {}

-- Size: Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.price.size = 8

-- Display: Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = n24x_24xequities_memoirdepthfeed_sbe_v2_0.price.translate(raw)
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.quantity = {}

-- Size: Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.quantity.size = 4

-- Display: Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reference Buy Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_buy_quantity = {}

-- Size: Reference Buy Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_buy_quantity.size = 8

-- Display: Reference Buy Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_buy_quantity.display = function(value)
  return "Reference Buy Quantity: "..value
end

-- Dissect: Reference Buy Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_buy_quantity.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_buy_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_buy_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.reference_buy_quantity, range, value, display)

  return offset + length, value
end

-- Reference Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_price = {}

-- Size: Reference Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_price.size = 8

-- Display: Reference Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Reference Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_price.translate(raw)
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reference Sell Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_sell_quantity = {}

-- Size: Reference Sell Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_sell_quantity.size = 8

-- Display: Reference Sell Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_sell_quantity.display = function(value)
  return "Reference Sell Quantity: "..value
end

-- Dissect: Reference Sell Quantity
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_sell_quantity.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_sell_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_sell_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.reference_sell_quantity, range, value, display)

  return offset + length, value
end

-- Round Lot
n24x_24xequities_memoirdepthfeed_sbe_v2_0.round_lot = {}

-- Size: Round Lot
n24x_24xequities_memoirdepthfeed_sbe_v2_0.round_lot.size = 4

-- Display: Round Lot
n24x_24xequities_memoirdepthfeed_sbe_v2_0.round_lot.display = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
n24x_24xequities_memoirdepthfeed_sbe_v2_0.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.round_lot.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Sale Condition 1
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_1 = {}

-- Size: Sale Condition 1
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_1.size = 1

-- Display: Sale Condition 1
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_1.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Sale Condition 1: No Value"
  end

  if value == "@" then
    return "Sale Condition 1: Regular Trade (@)"
  end

  return "Sale Condition 1: Unknown("..value..")"
end

-- Dissect: Sale Condition 1
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_1.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_1.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sale_condition_1, range, value, display)

  return offset + length, value
end

-- Sale Condition 2
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_2 = {}

-- Size: Sale Condition 2
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_2.size = 1

-- Display: Sale Condition 2
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_2.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Sale Condition 2: No Value"
  end

  if value == " " then
    return "Sale Condition 2: Not Applicable (<whitespace>)"
  end
  if value == "O" then
    return "Sale Condition 2: Market Center Opening Trade (O)"
  end
  if value == "5" then
    return "Sale Condition 2: Market Center Reopening Trade (5)"
  end
  if value == "6" then
    return "Sale Condition 2: Market Center Closing Trade (6)"
  end

  return "Sale Condition 2: Unknown("..value..")"
end

-- Dissect: Sale Condition 2
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_2.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_2.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sale_condition_2, range, value, display)

  return offset + length, value
end

-- Sale Condition 3
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_3 = {}

-- Size: Sale Condition 3
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_3.size = 1

-- Display: Sale Condition 3
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_3.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Sale Condition 3: No Value"
  end

  if value == " " then
    return "Sale Condition 3: Not Applicable (<whitespace>)"
  end
  if value == "T" then
    return "Sale Condition 3: Form T (T)"
  end

  return "Sale Condition 3: Unknown("..value..")"
end

-- Dissect: Sale Condition 3
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_3.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_3.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sale_condition_3, range, value, display)

  return offset + length, value
end

-- Sale Condition 4
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_4 = {}

-- Size: Sale Condition 4
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_4.size = 1

-- Display: Sale Condition 4
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_4.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Sale Condition 4: No Value"
  end

  if value == " " then
    return "Sale Condition 4: Not Applicable (<whitespace>)"
  end
  if value == "H" then
    return "Sale Condition 4: Price Variation Trade (H)"
  end
  if value == "I" then
    return "Sale Condition 4: Odd Lot Trade (I)"
  end
  if value == "X" then
    return "Sale Condition 4: Auction Trade (X)"
  end

  return "Sale Condition 4: Unknown("..value..")"
end

-- Dissect: Sale Condition 4
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_4.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_4.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sale_condition_4, range, value, display)

  return offset + length, value
end

-- Schema Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.schema_id = {}

-- Size: Schema Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.schema_id.size = 1

-- Display: Schema Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.schema_id.display = function(value)
  if value == 2 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Security Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id = {}

-- Size: Security Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size = 2

-- Display: Security Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Trading Status
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status = {}

-- Size: Security Trading Status
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status.size = 1

-- Display: Security Trading Status
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Security Trading Status: No Value"
  end

  if value == "H" then
    return "Security Trading Status: Halted (H)"
  end
  if value == "P" then
    return "Security Trading Status: Paused (P)"
  end
  if value == "Q" then
    return "Security Trading Status: Quoting (Q)"
  end
  if value == "T" then
    return "Security Trading Status: Trading (T)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Trading Status Reason
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_reason = {}

-- Size: Security Trading Status Reason
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_reason.size = 1

-- Display: Security Trading Status Reason
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Security Trading Status Reason: No Value"
  end

  if value == "X" then
    return "Security Trading Status Reason: None (X)"
  end
  if value == "R" then
    return "Security Trading Status Reason: Regulatory (R)"
  end
  if value == "A" then
    return "Security Trading Status Reason: Administrative (A)"
  end

  return "Security Trading Status Reason: Unknown("..value..")"
end

-- Dissect: Security Trading Status Reason
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_reason.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.security_trading_status_reason, range, value, display)

  return offset + length, value
end

-- Sequence Number
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequence_number = {}

-- Size: Sequence Number
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequence_number.size = 8

-- Display: Sequence Number
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.session_id = {}

-- Size: Session Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.session_id.size = 8

-- Display: Session Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.session_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.session_id, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction
n24x_24xequities_memoirdepthfeed_sbe_v2_0.short_sale_restriction = {}

-- Size: Short Sale Restriction
n24x_24xequities_memoirdepthfeed_sbe_v2_0.short_sale_restriction.size = 1

-- Display: Short Sale Restriction
n24x_24xequities_memoirdepthfeed_sbe_v2_0.short_sale_restriction.labels = {
  [0] = "Short Sale Restriction: False (0)",
  [1] = "Short Sale Restriction: True (1)",
}

n24x_24xequities_memoirdepthfeed_sbe_v2_0.short_sale_restriction.display = function(value)
  return n24x_24xequities_memoirdepthfeed_sbe_v2_0.short_sale_restriction.labels[value] or "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
n24x_24xequities_memoirdepthfeed_sbe_v2_0.short_sale_restriction.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.short_sale_restriction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.short_sale_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Side
n24x_24xequities_memoirdepthfeed_sbe_v2_0.side = {}

-- Size: Side
n24x_24xequities_memoirdepthfeed_sbe_v2_0.side.size = 1

-- Display: Side
n24x_24xequities_memoirdepthfeed_sbe_v2_0.side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Side: No Value"
  end

  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
n24x_24xequities_memoirdepthfeed_sbe_v2_0.side.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.side, range, value, display)

  return offset + length, value
end

-- Symbol
n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol = {}

-- Size: Symbol
n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol.size = 6

-- Display: Symbol
n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol.size
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

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Sfx
n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol_sfx = {}

-- Size: Symbol Sfx
n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol_sfx.size = 6

-- Display: Symbol Sfx
n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol_sfx.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol_sfx.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol_sfx.size
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

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol_sfx.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Template Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.template_id = {}

-- Size: Template Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.template_id.size = 1

-- Display: Template Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.template_id.labels = {
  [1] = "Template Id: Instrument Directory Message (1)",
  [2] = "Template Id: Reg Sho Restriction Message (2)",
  [3] = "Template Id: Security Trading Status Message (3)",
  [5] = "Template Id: Trading Session Status Message (5)",
  [10] = "Template Id: Order Added Message (10)",
  [11] = "Template Id: Order Deleted Message (11)",
  [12] = "Template Id: Order Reduced Message (12)",
  [13] = "Template Id: Order Executed Message (13)",
  [14] = "Template Id: Trade Message (14)",
  [15] = "Template Id: Broken Trade Message (15)",
  [16] = "Template Id: Corrected Trade Message (16)",
  [18] = "Template Id: Clear Book Message (18)",
  [19] = "Template Id: Auction Status Message (19)",
  [20] = "Template Id: Auction Trade Message (20)",
  [21] = "Template Id: Broken Auction Trade Message (21)",
  [22] = "Template Id: Corrected Auction Trade Message (22)",
  [100] = "Template Id: Snapshot Complete Message (100)",
}

n24x_24xequities_memoirdepthfeed_sbe_v2_0.template_id.display = function(value)
  return n24x_24xequities_memoirdepthfeed_sbe_v2_0.template_id.labels[value] or "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Tie Breaker Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.tie_breaker_price = {}

-- Size: Tie Breaker Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.tie_breaker_price.size = 8

-- Display: Tie Breaker Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.tie_breaker_price.display = function(value)
  return "Tie Breaker Price: "..value
end

-- Translate: Tie Breaker Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.tie_breaker_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Tie Breaker Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.tie_breaker_price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.tie_breaker_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = n24x_24xequities_memoirdepthfeed_sbe_v2_0.tie_breaker_price.translate(raw)
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.tie_breaker_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.tie_breaker_price, range, value, display)

  return offset + length, value
end

-- Timestamp
n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp = {}

-- Size: Timestamp
n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size = 8

-- Dissect: Timestamp
n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.timestamp
  if n24x_24xequities_memoirdepthfeed_sbe_v2_0.absolute_time_base == 1 then field = omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trade Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id = {}

-- Size: Trade Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.size = 8

-- Display: Trade Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trading Session
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session = {}

-- Size: Trading Session
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session.size = 1

-- Display: Trading Session
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Trading Session: No Value"
  end

  if value == "0" then
    return "Trading Session: Overnight (0)"
  end
  if value == "1" then
    return "Trading Session: Opening (1)"
  end
  if value == "2" then
    return "Trading Session: Trading (2)"
  end
  if value == "3" then
    return "Trading Session: Post Trading (3)"
  end
  if value == "4" then
    return "Trading Session: Closed (4)"
  end

  return "Trading Session: Unknown("..value..")"
end

-- Dissect: Trading Session
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Upper Collar Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.upper_collar_price = {}

-- Size: Upper Collar Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.upper_collar_price.size = 8

-- Display: Upper Collar Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.upper_collar_price.display = function(value)
  return "Upper Collar Price: "..value
end

-- Translate: Upper Collar Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.upper_collar_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Upper Collar Price
n24x_24xequities_memoirdepthfeed_sbe_v2_0.upper_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.upper_collar_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = n24x_24xequities_memoirdepthfeed_sbe_v2_0.upper_collar_price.translate(raw)
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.upper_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.upper_collar_price, range, value, display)

  return offset + length, value
end

-- Version
n24x_24xequities_memoirdepthfeed_sbe_v2_0.version = {}

-- Size: Version
n24x_24xequities_memoirdepthfeed_sbe_v2_0.version.size = 2

-- Display: Version
n24x_24xequities_memoirdepthfeed_sbe_v2_0.version.display = function(value)
  if value == 512 then
    return "Version: Version 2.0"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
n24x_24xequities_memoirdepthfeed_sbe_v2_0.version.dissect = function(buffer, offset, packet, parent)
  local length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect 24X 24XEquities MemoirDepthFeed Sbe 2.0
-----------------------------------------------------------------------

-- Snapshot Complete Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.snapshot_complete_message = {}

-- Size: Snapshot Complete Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.snapshot_complete_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.as_of_sequence_number.size

-- Display: Snapshot Complete Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.snapshot_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Complete Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.snapshot_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- As Of Sequence Number: uint64
  index, as_of_sequence_number = n24x_24xequities_memoirdepthfeed_sbe_v2_0.as_of_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Complete Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.snapshot_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.snapshot_complete_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.snapshot_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.snapshot_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.snapshot_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Corrected Auction Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_trade_message = {}

-- Size: Corrected Auction Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_trade_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_quantity.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_price.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_1.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_2.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_3.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_4.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_quantity.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_price.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_1.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_2.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_3.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_4.size

-- Display: Corrected Auction Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Auction Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect(buffer, index, packet, parent)

  -- Auction Id: uint64
  index, auction_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_id.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.dissect(buffer, index, packet, parent)

  -- Original Auction Quantity: uint64
  index, original_auction_quantity = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_quantity.dissect(buffer, index, packet, parent)

  -- Original Auction Price: Price
  index, original_auction_price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_price.dissect(buffer, index, packet, parent)

  -- Original Sale Condition 1: SCSettlementType
  index, original_sale_condition_1 = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_1.dissect(buffer, index, packet, parent)

  -- Original Sale Condition 2: SCTradeThroughExemptionType
  index, original_sale_condition_2 = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_2.dissect(buffer, index, packet, parent)

  -- Original Sale Condition 3: SCExtendedHoursOrSoldType
  index, original_sale_condition_3 = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_3.dissect(buffer, index, packet, parent)

  -- Original Sale Condition 4: SCSROTradeDetailType
  index, original_sale_condition_4 = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_sale_condition_4.dissect(buffer, index, packet, parent)

  -- Corrected Auction Quantity: uint64
  index, corrected_auction_quantity = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_quantity.dissect(buffer, index, packet, parent)

  -- Corrected Auction Price: Price
  index, corrected_auction_price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_price.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition 1: SCSettlementType
  index, corrected_sale_condition_1 = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_1.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition 2: SCTradeThroughExemptionType
  index, corrected_sale_condition_2 = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_2.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition 3: SCExtendedHoursOrSoldType
  index, corrected_sale_condition_3 = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_3.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition 4: SCSROTradeDetailType
  index, corrected_sale_condition_4 = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_sale_condition_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Auction Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_auction_trade_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Auction Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_auction_trade_message = {}

-- Size: Broken Auction Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_auction_trade_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_quantity.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_price.size

-- Display: Broken Auction Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Auction Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect(buffer, index, packet, parent)

  -- Auction Id: uint64
  index, auction_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_id.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.dissect(buffer, index, packet, parent)

  -- Original Auction Quantity: uint64
  index, original_auction_quantity = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_quantity.dissect(buffer, index, packet, parent)

  -- Original Auction Price: Price
  index, original_auction_price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_auction_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Auction Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.broken_auction_trade_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_trade_message = {}

-- Size: Auction Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_trade_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_type.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_quantity.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_price.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_1.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_2.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_3.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_4.size

-- Display: Auction Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect(buffer, index, packet, parent)

  -- Auction Id: uint64
  index, auction_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: AuctionType
  index, auction_type = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Quantity: uint64
  index, auction_quantity = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_quantity.dissect(buffer, index, packet, parent)

  -- Auction Price: Price
  index, auction_price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_price.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.dissect(buffer, index, packet, parent)

  -- Sale Condition 1: SCSettlementType
  index, sale_condition_1 = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_1.dissect(buffer, index, packet, parent)

  -- Sale Condition 2: SCTradeThroughExemptionType
  index, sale_condition_2 = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_2.dissect(buffer, index, packet, parent)

  -- Sale Condition 3: SCExtendedHoursOrSoldType
  index, sale_condition_3 = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_3.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: SCSROTradeDetailType
  index, sale_condition_4 = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sale_condition_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.auction_trade_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Status Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_status_message = {}

-- Size: Auction Status Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_status_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_type.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.tie_breaker_price.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.lower_collar_price.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.upper_collar_price.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_price.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_buy_quantity.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_sell_quantity.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.indicative_price.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_only_price.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.number_of_extensions.size

-- Display: Auction Status Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Status Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect(buffer, index, packet, parent)

  -- Auction Id: uint64
  index, auction_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: AuctionType
  index, auction_type = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_type.dissect(buffer, index, packet, parent)

  -- Tie Breaker Price: Price
  index, tie_breaker_price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.tie_breaker_price.dissect(buffer, index, packet, parent)

  -- Lower Collar Price: Price
  index, lower_collar_price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.lower_collar_price.dissect(buffer, index, packet, parent)

  -- Upper Collar Price: Price
  index, upper_collar_price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.upper_collar_price.dissect(buffer, index, packet, parent)

  -- Reference Price: Price
  index, reference_price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_price.dissect(buffer, index, packet, parent)

  -- Reference Buy Quantity: uint64
  index, reference_buy_quantity = n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_buy_quantity.dissect(buffer, index, packet, parent)

  -- Reference Sell Quantity: uint64
  index, reference_sell_quantity = n24x_24xequities_memoirdepthfeed_sbe_v2_0.reference_sell_quantity.dissect(buffer, index, packet, parent)

  -- Indicative Price: Price
  index, indicative_price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Price
  index, auction_only_price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_only_price.dissect(buffer, index, packet, parent)

  -- Number Of Extensions: uint32
  index, number_of_extensions = n24x_24xequities_memoirdepthfeed_sbe_v2_0.number_of_extensions.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Status Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.auction_status_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Clear Book Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.clear_book_message = {}

-- Size: Clear Book Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.clear_book_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size

-- Display: Clear Book Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.clear_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clear Book Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.clear_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Book Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.clear_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.clear_book_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.clear_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.clear_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.clear_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Corrected Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_trade_message = {}

-- Size: Corrected Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_trade_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_quantity.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_price.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_quantity.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_price.size

-- Display: Corrected Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.dissect(buffer, index, packet, parent)

  -- Original Quantity: uint32
  index, original_quantity = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: Price
  index, original_price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_price.dissect(buffer, index, packet, parent)

  -- Corrected Quantity: uint32
  index, corrected_quantity = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_quantity.dissect(buffer, index, packet, parent)

  -- Corrected Price: Price
  index, corrected_price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.corrected_trade_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_trade_message = {}

-- Size: Broken Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_trade_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_quantity.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_price.size

-- Display: Broken Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.dissect(buffer, index, packet, parent)

  -- Original Quantity: uint32
  index, original_quantity = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: Price
  index, original_price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.original_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.broken_trade_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_message = {}

-- Size: Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.quantity.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.price.size

-- Display: Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.dissect(buffer, index, packet, parent)

  -- Quantity: uint32
  index, quantity = n24x_24xequities_memoirdepthfeed_sbe_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.trade_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_executed_message = {}

-- Size: Order Executed Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_executed_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.quantity.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.price.size

-- Display: Order Executed Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_id.dissect(buffer, index, packet, parent)

  -- Quantity: uint32
  index, quantity = n24x_24xequities_memoirdepthfeed_sbe_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.order_executed_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Reduced Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_reduced_message = {}

-- Size: Order Reduced Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_reduced_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.quantity.size

-- Display: Order Reduced Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_reduced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Reduced Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_reduced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: uint32
  index, quantity = n24x_24xequities_memoirdepthfeed_sbe_v2_0.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Reduced Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_reduced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.order_reduced_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_reduced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_reduced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_reduced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Deleted Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_deleted_message = {}

-- Size: Order Deleted Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_deleted_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_id.size

-- Display: Order Deleted Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.order_deleted_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Flags
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_flags = {}

-- Size: Order Flags
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_flags.size = 1

-- Display: Order Flags
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Retail Present flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Retail Present"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Flags
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_flags.bits = function(range, value, packet, parent)

  -- Retail Present: 1 Bit
  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.retail_present, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.reserved_7, range, value)
end

-- Dissect: Order Flags
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_flags.dissect = function(buffer, offset, packet, parent)
  local size = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.order_flags, range, display)

  if show.structs then
    n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Added Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_added_message = {}

-- Size: Order Added Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_added_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.side.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.quantity.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.price.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_flags.size

-- Display: Order Added Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_added_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_added_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = n24x_24xequities_memoirdepthfeed_sbe_v2_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: uint32
  index, quantity = n24x_24xequities_memoirdepthfeed_sbe_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = n24x_24xequities_memoirdepthfeed_sbe_v2_0.price.dissect(buffer, index, packet, parent)

  -- Order Flags: Struct of 2 fields
  index, order_flags = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_added_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.order_added_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_added_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_added_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_added_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session_status_message = {}

-- Size: Trading Session Status Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session_status_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session.size

-- Display: Trading Session Status Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Trading Session: TradingSessionType
  index, trading_session = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.trading_session_status_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Trading Status Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_message = {}

-- Size: Security Trading Status Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_reason.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.halt_reason.size

-- Display: Security Trading Status Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Status Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: SecurityTradingStatusType
  index, security_trading_status = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status.dissect(buffer, index, packet, parent)

  -- Security Trading Status Reason: SecurityTradingStatusReasonType
  index, security_trading_status_reason = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_reason.dissect(buffer, index, packet, parent)

  -- Halt Reason: HaltReasonType
  index, halt_reason = n24x_24xequities_memoirdepthfeed_sbe_v2_0.halt_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.security_trading_status_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Restriction Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reg_sho_restriction_message = {}

-- Size: Reg Sho Restriction Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reg_sho_restriction_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.short_sale_restriction.size

-- Display: Reg Sho Restriction Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reg_sho_restriction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reg_sho_restriction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction: BooleanType
  index, short_sale_restriction = n24x_24xequities_memoirdepthfeed_sbe_v2_0.short_sale_restriction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.reg_sho_restriction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.reg_sho_restriction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Directory Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.instrument_directory_message = {}

-- Size: Instrument Directory Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.instrument_directory_message.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol_sfx.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.round_lot.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.is_test_symbol.size

-- Display: Instrument Directory Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = n24x_24xequities_memoirdepthfeed_sbe_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Security Id: uint16
  index, security_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_id.dissect(buffer, index, packet, parent)

  -- Symbol: InstrumentDirectorySymbol
  index, symbol = n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: InstrumentDirectorySymbolSfx
  index, symbol_sfx = n24x_24xequities_memoirdepthfeed_sbe_v2_0.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Round Lot: uint32
  index, round_lot = n24x_24xequities_memoirdepthfeed_sbe_v2_0.round_lot.dissect(buffer, index, packet, parent)

  -- Is Test Symbol: BooleanType
  index, is_test_symbol = n24x_24xequities_memoirdepthfeed_sbe_v2_0.is_test_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.instrument_directory_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
n24x_24xequities_memoirdepthfeed_sbe_v2_0.payload = {}

-- Dissect: Payload
n24x_24xequities_memoirdepthfeed_sbe_v2_0.payload.dispatch = {
  [1] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.instrument_directory_message.dissect,
  [2] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.reg_sho_restriction_message.dissect,
  [3] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.security_trading_status_message.dissect,
  [5] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trading_session_status_message.dissect,
  [10] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_added_message.dissect,
  [11] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_deleted_message.dissect,
  [12] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_reduced_message.dissect,
  [13] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.order_executed_message.dissect,
  [14] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.trade_message.dissect,
  [15] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_trade_message.dissect,
  [16] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_trade_message.dissect,
  [18] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.clear_book_message.dissect,
  [19] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_status_message.dissect,
  [20] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.auction_trade_message.dissect,
  [21] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.broken_auction_trade_message.dissect,
  [22] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.corrected_auction_trade_message.dissect,
  [100] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.snapshot_complete_message.dissect,
}

n24x_24xequities_memoirdepthfeed_sbe_v2_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  local dissect = n24x_24xequities_memoirdepthfeed_sbe_v2_0.payload.dispatch[template_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sbe Header
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_header = {}

-- Size: Sbe Header
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_header.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.block_length.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.template_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.schema_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.version.size

-- Display: Sbe Header
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, template_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = n24x_24xequities_memoirdepthfeed_sbe_v2_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sbe_header, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_message = {}

-- Display: Sbe Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 17 branches
  index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sbe_message, buffer(offset, 0))
    local current = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message = {}

-- Display: Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_length.dissect(buffer, index, packet, parent)

  -- Dependency element: Block Length
  local block_length = buffer(index, 2):uint()

  -- Runtime Size Of: Sbe Message
  local size_of_sbe_message = block_length + 6

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)

  return index
end

-- Dissect: Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.message, buffer(offset, 0))
    local current = n24x_24xequities_memoirdepthfeed_sbe_v2_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    n24x_24xequities_memoirdepthfeed_sbe_v2_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Sequenced Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequenced_message = {}

-- Calculate size of: Sequenced Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_count.size

  -- Parse runtime size of: Message
  index = index + buffer(offset + index - 0, 2):uint()

  return index
end

-- Display: Sequenced Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_count.dissect(buffer, index, packet, parent)

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = n24x_24xequities_memoirdepthfeed_sbe_v2_0.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end

-- Dissect: Sequenced Message
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequenced_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.sequenced_message, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequenced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequenced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequenced_message.fields(buffer, offset, packet, parent)
  end
end

-- Session Shutdown
n24x_24xequities_memoirdepthfeed_sbe_v2_0.session_shutdown = {}

-- Display: Session Shutdown
n24x_24xequities_memoirdepthfeed_sbe_v2_0.session_shutdown.display = function(packet, parent, length)
  return "Session Shutdown"
end


-- Dissect: Session Shutdown
n24x_24xequities_memoirdepthfeed_sbe_v2_0.session_shutdown.dissect = function(buffer, offset, packet, parent)
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.session_shutdown.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
n24x_24xequities_memoirdepthfeed_sbe_v2_0.heartbeat = {}

-- Display: Heartbeat
n24x_24xequities_memoirdepthfeed_sbe_v2_0.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
n24x_24xequities_memoirdepthfeed_sbe_v2_0.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Sequenced Messages
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequenced_messages = {}

-- Dissect: Sequenced Messages
n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequenced_messages.dispatch = {
  [0] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.heartbeat.dissect,
  [1] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.session_shutdown.dissect,
  [2] = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequenced_message.dissect,
}

n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequenced_messages.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequenced_messages.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Common Header
n24x_24xequities_memoirdepthfeed_sbe_v2_0.common_header = {}

-- Size: Common Header
n24x_24xequities_memoirdepthfeed_sbe_v2_0.common_header.size =
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_type.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.header_length.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.session_id.size + 
  n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequence_number.size

-- Display: Common Header
n24x_24xequities_memoirdepthfeed_sbe_v2_0.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
n24x_24xequities_memoirdepthfeed_sbe_v2_0.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = n24x_24xequities_memoirdepthfeed_sbe_v2_0.message_type.dissect(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = n24x_24xequities_memoirdepthfeed_sbe_v2_0.header_length.dissect(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = n24x_24xequities_memoirdepthfeed_sbe_v2_0.session_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
n24x_24xequities_memoirdepthfeed_sbe_v2_0.common_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.fields.common_header, buffer(offset, 0))
    local index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_24xequities_memoirdepthfeed_sbe_v2_0.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_24xequities_memoirdepthfeed_sbe_v2_0.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
n24x_24xequities_memoirdepthfeed_sbe_v2_0.packet = {}

-- Verify required size of Udp packet
n24x_24xequities_memoirdepthfeed_sbe_v2_0.packet.requiredsize = function(buffer)
  return buffer:len() >= n24x_24xequities_memoirdepthfeed_sbe_v2_0.common_header.size
end

-- Dissect Packet
n24x_24xequities_memoirdepthfeed_sbe_v2_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = n24x_24xequities_memoirdepthfeed_sbe_v2_0.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 3 branches
  index = n24x_24xequities_memoirdepthfeed_sbe_v2_0.sequenced_messages.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.init()
end

-- Dissector for 24X 24XEquities MemoirDepthFeed Sbe 2.0
function omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0, buffer(), omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.description, "("..buffer:len().." Bytes)")
  return n24x_24xequities_memoirdepthfeed_sbe_v2_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for 24X 24XEquities MemoirDepthFeed Sbe 2.0 (Udp)
local function omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not n24x_24xequities_memoirdepthfeed_sbe_v2_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0
  omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for 24X 24XEquities MemoirDepthFeed Sbe 2.0
omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0:register_heuristic("udp", omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0_udp_heuristic)

-- Register 24X 24XEquities MemoirDepthFeed Sbe 2.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_n24x_24xequities_memoirdepthfeed_sbe_v2_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: 24 National Exchange
--   Version: 2.0
--   Date: Friday, September 25, 2026
--   Specification: MEMOIR Depth Feed-v2.0a.pdf
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
