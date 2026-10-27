-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseCm Broadcast NnfBcast 6.6 Protocol
local omi_nse_nsecm_broadcast_nnfbcast_v6_6 = Proto("Omi.Nse.NseCm.Broadcast.NnfBcast.v6.6", "Nse NseCm Broadcast NnfBcast 6.6")

-- Protocol table
local nse_nsecm_broadcast_nnfbcast_v6_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseCm Broadcast NnfBcast 6.6 Fields
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.action_code_char_3 = ProtoField.new("Action Code Char 3", "nse.nsecm.broadcast.nnfbcast.v6.6.actioncodechar3", ftypes.STRING, nil, nil, nil, "Indicates the action taken.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.action_code_short_2 = ProtoField.new("Action Code Short 2", "nse.nsecm.broadcast.nnfbcast.v6.6.actioncodeshort2", ftypes.INT16, nil, nil, nil, "Action code indicating the status the security moved to.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.agm = ProtoField.new("Agm", "nse.nsecm.broadcast.nnfbcast.v6.6.agm", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800, "Annual General Meeting")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.alpha_char = ProtoField.new("Alpha Char", "nse.nsecm.broadcast.nnfbcast.v6.6.alphachar", ftypes.STRING, nil, nil, nil, "First two characters of Symbol when the message carries one")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.aon = ProtoField.new("Aon", "nse.nsecm.broadcast.nnfbcast.v6.6.aon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "All Or None attribute is allowed in orders of this security")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_number = ProtoField.new("Auction Number", "nse.nsecm.broadcast.nnfbcast.v6.6.auctionnumber", ftypes.INT16, nil, nil, nil, "Auction number.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_price = ProtoField.new("Auction Price", "nse.nsecm.broadcast.nnfbcast.v6.6.auctionprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the auction trade has taken place.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_qty = ProtoField.new("Auction Qty", "nse.nsecm.broadcast.nnfbcast.v6.6.auctionqty", ftypes.INT32, nil, nil, nil, "Quantity of securities that have been auctioned.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_quantity = ProtoField.new("Auction Quantity", "nse.nsecm.broadcast.nnfbcast.v6.6.auctionquantity", ftypes.INT32, nil, nil, nil, "Quantity at which the auction in the security takes place, otherwise zero.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_status_char_1 = ProtoField.new("Auction Status Char 1", "nse.nsecm.broadcast.nnfbcast.v6.6.auctionstatuschar1", ftypes.STRING, nil, nil, nil, "Status of the auction.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_status_short_2 = ProtoField.new("Auction Status Short 2", "nse.nsecm.broadcast.nnfbcast.v6.6.auctionstatusshort2", ftypes.INT16, nil, nil, nil, "Status of the auction.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.average_trade_price = ProtoField.new("Average Trade Price", "nse.nsecm.broadcast.nnfbcast.v6.6.averagetradeprice", ftypes.DOUBLE, nil, nil, nil, "Average price of all the trades in the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bb_buy_sell_flag = ProtoField.new("Bb Buy Sell Flag", "nse.nsecm.broadcast.nnfbcast.v6.6.bbbuysellflag", ftypes.INT16, nil, nil, nil, "Whether there is a buyback or market maker order on the buy or sell side at the price point.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bb_total_buy_flag = ProtoField.new("Bb Total Buy Flag", "nse.nsecm.broadcast.nnfbcast.v6.6.bbtotalbuyflag", ftypes.INT16, nil, nil, nil, "Whether there is a buyback or market maker order on the buy side.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bb_total_sell_flag = ProtoField.new("Bb Total Sell Flag", "nse.nsecm.broadcast.nnfbcast.v6.6.bbtotalsellflag", ftypes.INT16, nil, nil, nil, "Currently set to zero.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bc_seq_no = ProtoField.new("Bc Seq No", "nse.nsecm.broadcast.nnfbcast.v6.6.bcseqno", ftypes.INT32, nil, nil, nil, "Broadcast sequence number, used to detect a gap in the stream")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bcast_header = ProtoField.new("Bcast Header", "nse.nsecm.broadcast.nnfbcast.v6.6.bcastheader", ftypes.STRING, nil, nil, nil, "BCAST_HEADER")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bcast_market_type = ProtoField.new("Bcast Market Type", "nse.nsecm.broadcast.nnfbcast.v6.6.bcastmarkettype", ftypes.STRING, nil, nil, nil, "Market the broadcast belongs to, 2 for Futures and Options")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bcast_pack_data = ProtoField.new("Bcast Pack Data", "nse.nsecm.broadcast.nnfbcast.v6.6.bcastpackdata", ftypes.STRING, nil, nil, nil, "BcastPackData sequential packing envelope")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bcast_reserved = ProtoField.new("Bcast Reserved", "nse.nsecm.broadcast.nnfbcast.v6.6.bcastreserved", ftypes.BYTES, nil, nil, nil, "Ignored, the header begins at the ninth byte")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.best_buy_price = ProtoField.new("Best Buy Price", "nse.nsecm.broadcast.nnfbcast.v6.6.bestbuyprice", ftypes.DOUBLE, nil, nil, nil, "Best buy price, the highest price for a buy auction.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.best_sell_price = ProtoField.new("Best Sell Price", "nse.nsecm.broadcast.nnfbcast.v6.6.bestsellprice", ftypes.DOUBLE, nil, nil, nil, "Best sell price, the lowest price for a sell auction.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.board_lot_quantity = ProtoField.new("Board Lot Quantity", "nse.nsecm.broadcast.nnfbcast.v6.6.boardlotquantity", ftypes.INT32, nil, nil, nil, "Regular lot size.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bonus = ProtoField.new("Bonus", "nse.nsecm.broadcast.nnfbcast.v6.6.bonus", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.book_closure_end_date = ProtoField.new("Book Closure End Date", "nse.nsecm.broadcast.nnfbcast.v6.6.bookclosureenddate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date when the record books in the company for shareholder names ends.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.book_closure_end_date_utc = ProtoField.new("Book Closure End Date", "nse.nsecm.broadcast.nnfbcast.v6.6.bookclosureenddate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date when the record books in the company for shareholder names ends.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.book_closure_start_date = ProtoField.new("Book Closure Start Date", "nse.nsecm.broadcast.nnfbcast.v6.6.bookclosurestartdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date when the record books in the company for shareholder names starts.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.book_closure_start_date_utc = ProtoField.new("Book Closure Start Date", "nse.nsecm.broadcast.nnfbcast.v6.6.bookclosurestartdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date when the record books in the company for shareholder names starts.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.book_type = ProtoField.new("Book Type", "nse.nsecm.broadcast.nnfbcast.v6.6.booktype", ftypes.INT16, nil, nil, nil, "Book type of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.branch_number = ProtoField.new("Branch Number", "nse.nsecm.broadcast.nnfbcast.v6.6.branchnumber", ftypes.INT16, nil, nil, nil, "Branch number of the trader or broker.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broadcast_data = ProtoField.new("Broadcast Data", "nse.nsecm.broadcast.nnfbcast.v6.6.broadcastdata", ftypes.STRING, nil, nil, nil, "Broadcast data, inflated first when it arrives compressed")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broadcast_destination = ProtoField.new("Broadcast Destination", "nse.nsecm.broadcast.nnfbcast.v6.6.broadcastdestination", ftypes.STRING, nil, nil, nil, "Destination the broadcast is intended for")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broadcast_message = ProtoField.new("Broadcast Message", "nse.nsecm.broadcast.nnfbcast.v6.6.broadcastmessage", ftypes.STRING, nil, nil, nil, "Contents of the broadcast message.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broadcast_message_length = ProtoField.new("Broadcast Message Length", "nse.nsecm.broadcast.nnfbcast.v6.6.broadcastmessagelength", ftypes.INT16, nil, nil, nil, "Length of the broadcast message.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broker_code = ProtoField.new("Broker Code", "nse.nsecm.broadcast.nnfbcast.v6.6.brokercode", ftypes.STRING, nil, nil, nil, "Broker code who is about to exceed or has already exceeded the turnover limit.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broker_number = ProtoField.new("Broker Number", "nse.nsecm.broadcast.nnfbcast.v6.6.brokernumber", ftypes.STRING, nil, nil, nil, "Trading Member Id of the broker.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buy = ProtoField.new("Buy", "nse.nsecm.broadcast.nnfbcast.v6.6.buy", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Buy side")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buy_ord_cxl_count = ProtoField.new("Buy Ord Cxl Count", "nse.nsecm.broadcast.nnfbcast.v6.6.buyordcxlcount", ftypes.INT64, nil, nil, nil, "Total count of buy orders cancelled for the security during the session.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buy_ord_cxl_vol = ProtoField.new("Buy Ord Cxl Vol", "nse.nsecm.broadcast.nnfbcast.v6.6.buyordcxlvol", ftypes.INT64, nil, nil, nil, "Total quantity of buy orders cancelled for the security during the session.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buy_price = ProtoField.new("Buy Price", "nse.nsecm.broadcast.nnfbcast.v6.6.buyprice", ftypes.DOUBLE, nil, nil, nil, "Price of the best buy order.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buy_volume = ProtoField.new("Buy Volume", "nse.nsecm.broadcast.nnfbcast.v6.6.buyvolume", ftypes.INT64, nil, nil, nil, "Quantity of the best buy order.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buybackdata = ProtoField.new("Buybackdata", "nse.nsecm.broadcast.nnfbcast.v6.6.buybackdata", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.ca_marketwatchbroadcast = ProtoField.new("Ca Marketwatchbroadcast", "nse.nsecm.broadcast.nnfbcast.v6.6.camarketwatchbroadcast", ftypes.STRING, nil, nil, nil, "CA_MARKETWATCHBROADCAST")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.call_auction_1_flag = ProtoField.new("Call Auction 1 Flag", "nse.nsecm.broadcast.nnfbcast.v6.6.callauction1flag", ftypes.INT16, nil, nil, nil, "Whether the security participates in Call Auction 1.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cday_cum_vol = ProtoField.new("Cday Cum Vol", "nse.nsecm.broadcast.nnfbcast.v6.6.cdaycumvol", ftypes.DOUBLE, nil, nil, nil, "Current day cumulative volume.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cday_high_price = ProtoField.new("Cday High Price", "nse.nsecm.broadcast.nnfbcast.v6.6.cdayhighprice", ftypes.DOUBLE, nil, nil, nil, "Current day high price.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cday_low_price = ProtoField.new("Cday Low Price", "nse.nsecm.broadcast.nnfbcast.v6.6.cdaylowprice", ftypes.DOUBLE, nil, nil, nil, "Current day low price.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cday_wt_avg = ProtoField.new("Cday Wt Avg", "nse.nsecm.broadcast.nnfbcast.v6.6.cdaywtavg", ftypes.DOUBLE, nil, nil, nil, "Current day weighted average price.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.change = ProtoField.new("Change", "nse.nsecm.broadcast.nnfbcast.v6.6.change", ftypes.INT32, nil, nil, nil, "Absolute difference between the indicative closing value and the previous day closing value.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.closing_index = ProtoField.new("Closing Index", "nse.nsecm.broadcast.nnfbcast.v6.6.closingindex", ftypes.INT32, nil, nil, nil, "Previous day closing index while the market is open.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.closing_price = ProtoField.new("Closing Price", "nse.nsecm.broadcast.nnfbcast.v6.6.closingprice", ftypes.DOUBLE, nil, nil, nil, "Closing price of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.compression_length = ProtoField.new("Compression Length", "nse.nsecm.broadcast.nnfbcast.v6.6.compressionlength", ftypes.INT16, nil, nil, nil, "Length after compression, zero when the data is uncompressed")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.counter_broker_code = ProtoField.new("Counter Broker Code", "nse.nsecm.broadcast.nnfbcast.v6.6.counterbrokercode", ftypes.STRING, nil, nil, nil, "Not in use.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.credit_rating = ProtoField.new("Credit Rating", "nse.nsecm.broadcast.nnfbcast.v6.6.creditrating", ftypes.STRING, nil, nil, nil, "Daily price range of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.delete_flag = ProtoField.new("Delete Flag", "nse.nsecm.broadcast.nnfbcast.v6.6.deleteflag", ftypes.STRING, nil, nil, nil, "Whether the security is deleted.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.dividend = ProtoField.new("Dividend", "nse.nsecm.broadcast.nnfbcast.v6.6.dividend", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.egm = ProtoField.new("Egm", "nse.nsecm.broadcast.nnfbcast.v6.6.egm", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400, "Extraordinary General Meeting")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.eligibility = ProtoField.new("Eligibility", "nse.nsecm.broadcast.nnfbcast.v6.6.eligibility", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80, "Security is allowed to trade in this market")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.eligiblity_indicators = ProtoField.new("Eligiblity Indicators", "nse.nsecm.broadcast.nnfbcast.v6.6.eligiblityindicators", ftypes.STRING, nil, nil, nil, "Order attributes allowed on this security")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.end_date = ProtoField.new("End Date", "nse.nsecm.broadcast.nnfbcast.v6.6.enddate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "End date of the buyback period.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.end_date_utc = ProtoField.new("End Date", "nse.nsecm.broadcast.nnfbcast.v6.6.enddate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "End date of the buyback period.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.error_code = ProtoField.new("Error Code", "nse.nsecm.broadcast.nnfbcast.v6.6.errorcode", ftypes.INT16, nil, nil, nil, "Zero on broadcast messages")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.expiry_date = ProtoField.new("Expiry Date", "nse.nsecm.broadcast.nnfbcast.v6.6.expirydate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Last date of trading before any corporate action.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.expiry_date_utc = ProtoField.new("Expiry Date", "nse.nsecm.broadcast.nnfbcast.v6.6.expirydate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last date of trading before any corporate action.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.expulsion_date = ProtoField.new("Expulsion Date", "nse.nsecm.broadcast.nnfbcast.v6.6.expulsiondate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of expulsion.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.expulsion_date_utc = ProtoField.new("Expulsion Date", "nse.nsecm.broadcast.nnfbcast.v6.6.expulsiondate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of expulsion.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.face_value = ProtoField.new("Face Value", "nse.nsecm.broadcast.nnfbcast.v6.6.facevalue", ftypes.INT32, nil, nil, nil, "Face value of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.fifth_reserved_4 = ProtoField.new("Fifth Reserved 4", "nse.nsecm.broadcast.nnfbcast.v6.6.fifthreserved4", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.fill_price = ProtoField.new("Fill Price", "nse.nsecm.broadcast.nnfbcast.v6.6.fillprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the order has been traded.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.fill_volume = ProtoField.new("Fill Volume", "nse.nsecm.broadcast.nnfbcast.v6.6.fillvolume", ftypes.INT32, nil, nil, nil, "Quantity of security traded.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.filler_1 = ProtoField.new("Filler 1", "nse.nsecm.broadcast.nnfbcast.v6.6.filler1", ftypes.STRING, nil, nil, nil, "Filler.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.filler_2 = ProtoField.new("Filler 2", "nse.nsecm.broadcast.nnfbcast.v6.6.filler2", ftypes.BYTES, nil, nil, nil, "Padding, documented as Byte but eight bytes wide")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.filler_4 = ProtoField.new("Filler 4", "nse.nsecm.broadcast.nnfbcast.v6.6.filler4", ftypes.STRING, nil, nil, nil, "Filler.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.final = ProtoField.new("Final", "nse.nsecm.broadcast.nnfbcast.v6.6.final", ftypes.STRING, nil, nil, nil, "Whether it is the final auction trade.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.first_open_price = ProtoField.new("First Open Price", "nse.nsecm.broadcast.nnfbcast.v6.6.firstopenprice", ftypes.DOUBLE, nil, nil, nil, "First open price.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.fourth_reserved_4 = ProtoField.new("Fourth Reserved 4", "nse.nsecm.broadcast.nnfbcast.v6.6.fourthreserved4", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.freeze_percent = ProtoField.new("Freeze Percent", "nse.nsecm.broadcast.nnfbcast.v6.6.freezepercent", ftypes.DOUBLE, nil, nil, nil, "Volume freeze percent with respect to issued capital, interpreted as freeze percent divided by 10000.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.high_index_value = ProtoField.new("High Index Value", "nse.nsecm.broadcast.nnfbcast.v6.6.highindexvalue", ftypes.INT32, nil, nil, nil, "Day highest index value at the time of broadcast.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.high_price = ProtoField.new("High Price", "nse.nsecm.broadcast.nnfbcast.v6.6.highprice", ftypes.DOUBLE, nil, nil, nil, "Highest trade price.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.index_name = ProtoField.new("Index Name", "nse.nsecm.broadcast.nnfbcast.v6.6.indexname", ftypes.STRING, nil, nil, nil, "Name of the index.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.index_value = ProtoField.new("Index Value", "nse.nsecm.broadcast.nnfbcast.v6.6.indexvalue", ftypes.INT32, nil, nil, nil, "Online market index value at that instance of broadcast.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indicative_close_price = ProtoField.new("Indicative Close Price", "nse.nsecm.broadcast.nnfbcast.v6.6.indicativecloseprice", ftypes.DOUBLE, nil, nil, nil, "Indicative close price.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indicative_close_value = ProtoField.new("Indicative Close Value", "nse.nsecm.broadcast.nnfbcast.v6.6.indicativeclosevalue", ftypes.INT32, nil, nil, nil, "Indicative index close value.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indicative_imbalance_qty = ProtoField.new("Indicative Imbalance Qty", "nse.nsecm.broadcast.nnfbcast.v6.6.indicativeimbalanceqty", ftypes.INT64, nil, nil, nil, "Indicative imbalance quantity.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indicative_indices = ProtoField.new("Indicative Indices", "nse.nsecm.broadcast.nnfbcast.v6.6.indicativeindices", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indicative_traded_qty = ProtoField.new("Indicative Traded Qty", "nse.nsecm.broadcast.nnfbcast.v6.6.indicativetradedqty", ftypes.INT64, nil, nil, nil, "Indicative traded quantity.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indices = ProtoField.new("Indices", "nse.nsecm.broadcast.nnfbcast.v6.6.indices", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.industry_indices = ProtoField.new("Industry Indices", "nse.nsecm.broadcast.nnfbcast.v6.6.industryindices", ftypes.STRING, nil, nil, nil, "INDUSTRY_INDICES")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.industry_name = ProtoField.new("Industry Name", "nse.nsecm.broadcast.nnfbcast.v6.6.industryname", ftypes.STRING, nil, nil, nil, "Name of the index.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.initiator_price = ProtoField.new("Initiator Price", "nse.nsecm.broadcast.nnfbcast.v6.6.initiatorprice", ftypes.DOUBLE, nil, nil, nil, "Price of the security of the initiator auction order, otherwise zero.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.initiator_quantity = ProtoField.new("Initiator Quantity", "nse.nsecm.broadcast.nnfbcast.v6.6.initiatorquantity", ftypes.INT32, nil, nil, nil, "Quantity of the security of the initiator auction order, otherwise zero.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.initiator_type = ProtoField.new("Initiator Type", "nse.nsecm.broadcast.nnfbcast.v6.6.initiatortype", ftypes.INT16, nil, nil, nil, "Whether the auction is initiated by trader or control.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.instrument_type = ProtoField.new("Instrument Type", "nse.nsecm.broadcast.nnfbcast.v6.6.instrumenttype", ftypes.INT16, nil, nil, nil, "Instrument type of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interactive_call_auction_mbp_data = ProtoField.new("Interactive Call Auction Mbp Data", "nse.nsecm.broadcast.nnfbcast.v6.6.interactivecallauctionmbpdata", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interactive_mbo_data = ProtoField.new("Interactive Mbo Data", "nse.nsecm.broadcast.nnfbcast.v6.6.interactivembodata", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interactive_only_mbp_data = ProtoField.new("Interactive Only Mbp Data", "nse.nsecm.broadcast.nnfbcast.v6.6.interactiveonlymbpdata", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interactive_ord_cxl_details = ProtoField.new("Interactive Ord Cxl Details", "nse.nsecm.broadcast.nnfbcast.v6.6.interactiveordcxldetails", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interest = ProtoField.new("Interest", "nse.nsecm.broadcast.nnfbcast.v6.6.interest", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interest_payment_date = ProtoField.new("Interest Payment Date", "nse.nsecm.broadcast.nnfbcast.v6.6.interestpaymentdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Interest payment date of the issue.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interest_payment_date_utc = ProtoField.new("Interest Payment Date", "nse.nsecm.broadcast.nnfbcast.v6.6.interestpaymentdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Interest payment date of the issue.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.isin_number = ProtoField.new("Isin Number", "nse.nsecm.broadcast.nnfbcast.v6.6.isinnumber", ftypes.STRING, nil, nil, nil, "ISIN number of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.issue_maturity_date = ProtoField.new("Issue Maturity Date", "nse.nsecm.broadcast.nnfbcast.v6.6.issuematuritydate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Maturity date.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.issue_maturity_date_utc = ProtoField.new("Issue Maturity Date", "nse.nsecm.broadcast.nnfbcast.v6.6.issuematuritydate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Maturity date.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.issue_start_date = ProtoField.new("Issue Start Date", "nse.nsecm.broadcast.nnfbcast.v6.6.issuestartdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of issue of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.issue_start_date_utc = ProtoField.new("Issue Start Date", "nse.nsecm.broadcast.nnfbcast.v6.6.issuestartdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of issue of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.issued_capital = ProtoField.new("Issued Capital", "nse.nsecm.broadcast.nnfbcast.v6.6.issuedcapital", ftypes.DOUBLE, nil, nil, nil, "Issue size of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_trade_less = ProtoField.new("Last Trade Less", "nse.nsecm.broadcast.nnfbcast.v6.6.lasttradeless", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Latest trade is less than the immediately previous last traded price")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_trade_more = ProtoField.new("Last Trade More", "nse.nsecm.broadcast.nnfbcast.v6.6.lasttrademore", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Latest trade is greater than the immediately previous last traded price")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_trade_price = ProtoField.new("Last Trade Price", "nse.nsecm.broadcast.nnfbcast.v6.6.lasttradeprice", ftypes.DOUBLE, nil, nil, nil, "Latest trade price of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_trade_quantity = ProtoField.new("Last Trade Quantity", "nse.nsecm.broadcast.nnfbcast.v6.6.lasttradequantity", ftypes.INT32, nil, nil, nil, "Quantity at which the last trade took place in the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_trade_time = ProtoField.new("Last Trade Time", "nse.nsecm.broadcast.nnfbcast.v6.6.lasttradetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time when the last trade took place in the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_trade_time_utc = ProtoField.new("Last Trade Time", "nse.nsecm.broadcast.nnfbcast.v6.6.lasttradetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time when the last trade took place in the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_traded_price = ProtoField.new("Last Traded Price", "nse.nsecm.broadcast.nnfbcast.v6.6.lasttradedprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the latest trade in the security has taken place.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.listing_date = ProtoField.new("Listing Date", "nse.nsecm.broadcast.nnfbcast.v6.6.listingdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of listing.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.listing_date_utc = ProtoField.new("Listing Date", "nse.nsecm.broadcast.nnfbcast.v6.6.listingdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of listing.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.local_update_date_time = ProtoField.new("Local Update Date Time", "nse.nsecm.broadcast.nnfbcast.v6.6.localupdatedatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Local database update date and time.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.local_update_date_time_utc = ProtoField.new("Local Update Date Time", "nse.nsecm.broadcast.nnfbcast.v6.6.localupdatedatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Local database update date and time.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.log_time = ProtoField.new("Log Time", "nse.nsecm.broadcast.nnfbcast.v6.6.logtime", ftypes.INT32, nil, nil, nil, "Time the message was generated by the trading system")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.low_index_value = ProtoField.new("Low Index Value", "nse.nsecm.broadcast.nnfbcast.v6.6.lowindexvalue", ftypes.INT32, nil, nil, nil, "Day lowest index value at the time of broadcast.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.low_price = ProtoField.new("Low Price", "nse.nsecm.broadcast.nnfbcast.v6.6.lowprice", ftypes.DOUBLE, nil, nil, nil, "Lowest trade price.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_capitalisation = ProtoField.new("Market Capitalisation", "nse.nsecm.broadcast.nnfbcast.v6.6.marketcapitalisation", ftypes.DOUBLE, nil, nil, nil, "Market capitalisation of securities participating in the index.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_capitalization = ProtoField.new("Market Capitalization", "nse.nsecm.broadcast.nnfbcast.v6.6.marketcapitalization", ftypes.DOUBLE, nil, nil, nil, "Market capitalisation of securities participating during the indicative close session.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_index_value = ProtoField.new("Market Index Value", "nse.nsecm.broadcast.nnfbcast.v6.6.marketindexvalue", ftypes.INT32, nil, nil, nil, "Value of the market index.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_type = ProtoField.new("Market Type", "nse.nsecm.broadcast.nnfbcast.v6.6.markettype", ftypes.INT16, nil, nil, nil, "Type of market.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_wise_information = ProtoField.new("Market Wise Information", "nse.nsecm.broadcast.nnfbcast.v6.6.marketwiseinformation", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.marketwatchbroadcast = ProtoField.new("Marketwatchbroadcast", "nse.nsecm.broadcast.nnfbcast.v6.6.marketwatchbroadcast", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mbo_information = ProtoField.new("Mbo Information", "nse.nsecm.broadcast.nnfbcast.v6.6.mboinformation", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mbo_mbp_indicator = ProtoField.new("Mbo Mbp Indicator", "nse.nsecm.broadcast.nnfbcast.v6.6.mbombpindicator", ftypes.STRING, nil, nil, nil, "Flags indicating buy, sell and whether the latest trade is less or greater than the previous one")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mbp_indicator = ProtoField.new("Mbp Indicator", "nse.nsecm.broadcast.nnfbcast.v6.6.mbpindicator", ftypes.STRING, nil, nil, nil, "Flags indicating buy, sell and whether the latest trade is less or greater than the previous one")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mbp_information = ProtoField.new("Mbp Information", "nse.nsecm.broadcast.nnfbcast.v6.6.mbpinformation", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.message_length = ProtoField.new("Message Length", "nse.nsecm.broadcast.nnfbcast.v6.6.messagelength", ftypes.INT16, nil, nil, nil, "Length of the entire message including the broadcast header")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mf = ProtoField.new("Mf", "nse.nsecm.broadcast.nnfbcast.v6.6.mf", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Minimum Fill order")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.min_fill_qty = ProtoField.new("Min Fill Qty", "nse.nsecm.broadcast.nnfbcast.v6.6.minfillqty", ftypes.INT32, nil, nil, nil, "Minimum fill quantity.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.minimum_fill = ProtoField.new("Minimum Fill", "nse.nsecm.broadcast.nnfbcast.v6.6.minimumfill", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Minimum Fill attribute is allowed in orders of this security")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mkt_maker_min_qty = ProtoField.new("Mkt Maker Min Qty", "nse.nsecm.broadcast.nnfbcast.v6.6.mktmakerminqty", ftypes.INT32, nil, nil, nil, "Minimum quantity for the security, used by a market maker for a market maker order.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mkt_maker_spread = ProtoField.new("Mkt Maker Spread", "nse.nsecm.broadcast.nnfbcast.v6.6.mktmakerspread", ftypes.INT32, nil, nil, nil, "Spread value of the security, used by a market maker to place two way quotes.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mkt_type = ProtoField.new("Mkt Type", "nse.nsecm.broadcast.nnfbcast.v6.6.mkttype", ftypes.INT16, nil, nil, nil, "Market type, five for Call Auction 1 and six for Call Auction 2.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.name = ProtoField.new("Name", "nse.nsecm.broadcast.nnfbcast.v6.6.name", ftypes.STRING, nil, nil, nil, "Security name.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.net_change_indicator = ProtoField.new("Net Change Indicator", "nse.nsecm.broadcast.nnfbcast.v6.6.netchangeindicator", ftypes.STRING, nil, nil, nil, "Direction of the change of the order price from the last traded price.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.net_id = ProtoField.new("Net Id", "nse.nsecm.broadcast.nnfbcast.v6.6.netid", ftypes.STRING, nil, nil, nil, "Identifies the segment, 2 for Equity Derivative")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.net_price_change_from_closing_price = ProtoField.new("Net Price Change From Closing Price", "nse.nsecm.broadcast.nnfbcast.v6.6.netpricechangefromclosingprice", ftypes.DOUBLE, nil, nil, nil, "Net change between the order price and the last traded price.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.no_delivery_end_date = ProtoField.new("No Delivery End Date", "nse.nsecm.broadcast.nnfbcast.v6.6.nodeliveryenddate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date from when physical delivery of share certificates starts after book closure.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.no_delivery_end_date_utc = ProtoField.new("No Delivery End Date", "nse.nsecm.broadcast.nnfbcast.v6.6.nodeliveryenddate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date from when physical delivery of share certificates starts after book closure.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.no_delivery_start_date = ProtoField.new("No Delivery Start Date", "nse.nsecm.broadcast.nnfbcast.v6.6.nodeliverystartdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date from when physical delivery of share certificates is stopped for book closure.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.no_delivery_start_date_utc = ProtoField.new("No Delivery Start Date", "nse.nsecm.broadcast.nnfbcast.v6.6.nodeliverystartdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date from when physical delivery of share certificates is stopped for book closure.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.no_of_downmoves = ProtoField.new("No Of Downmoves", "nse.nsecm.broadcast.nnfbcast.v6.6.noofdownmoves", ftypes.INT32, nil, nil, nil, "Number of times the index has moved down with respect to the previous index.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.no_of_records = ProtoField.new("No Of Records", "nse.nsecm.broadcast.nnfbcast.v6.6.noofrecords", ftypes.INT16, nil, nil, nil, "Number of securities sent.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.no_of_upmoves = ProtoField.new("No Of Upmoves", "nse.nsecm.broadcast.nnfbcast.v6.6.noofupmoves", ftypes.INT32, nil, nil, nil, "Number of times the index has moved up with respect to the previous index.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.number_of_orders = ProtoField.new("Number Of Orders", "nse.nsecm.broadcast.nnfbcast.v6.6.numberoforders", ftypes.INT16, nil, nil, nil, "Number of orders at the price point.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.number_of_packets = ProtoField.new("Number Of Packets", "nse.nsecm.broadcast.nnfbcast.v6.6.numberofpackets", ftypes.INT16, nil, nil, nil, "Number of packets sequentially packed in this datagram")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.number_of_records = ProtoField.new("Number Of Records", "nse.nsecm.broadcast.nnfbcast.v6.6.numberofrecords", ftypes.INT16, nil, nil, nil, "Number of records of the structure TOKEN AND ELIGIBILITY.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.open_price = ProtoField.new("Open Price", "nse.nsecm.broadcast.nnfbcast.v6.6.openprice", ftypes.DOUBLE, nil, nil, nil, "Open price of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.opening_index = ProtoField.new("Opening Index", "nse.nsecm.broadcast.nnfbcast.v6.6.openingindex", ftypes.INT32, nil, nil, nil, "Opening index value at the time of market open.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.opening_price = ProtoField.new("Opening Price", "nse.nsecm.broadcast.nnfbcast.v6.6.openingprice", ftypes.DOUBLE, nil, nil, nil, "Open price of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.participant_id = ProtoField.new("Participant Id", "nse.nsecm.broadcast.nnfbcast.v6.6.participantid", ftypes.STRING, nil, nil, nil, "Participant Id.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.participant_name = ProtoField.new("Participant Name", "nse.nsecm.broadcast.nnfbcast.v6.6.participantname", ftypes.STRING, nil, nil, nil, "Name of the participant that is changed.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.participant_status = ProtoField.new("Participant Status", "nse.nsecm.broadcast.nnfbcast.v6.6.participantstatus", ftypes.STRING, nil, nil, nil, "Status of the participant which is changed.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.participant_update_date_time = ProtoField.new("Participant Update Date Time", "nse.nsecm.broadcast.nnfbcast.v6.6.participantupdatedatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time when the participant information was changed.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.participant_update_date_time_utc = ProtoField.new("Participant Update Date Time", "nse.nsecm.broadcast.nnfbcast.v6.6.participantupdatedatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time when the participant information was changed.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.participate_in_market_index = ProtoField.new("Participate In Market Index", "nse.nsecm.broadcast.nnfbcast.v6.6.participateinmarketindex", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Security participates in the market index")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.pday_cum_vol = ProtoField.new("Pday Cum Vol", "nse.nsecm.broadcast.nnfbcast.v6.6.pdaycumvol", ftypes.DOUBLE, nil, nil, nil, "Previous day cumulative volume.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.pday_high_price = ProtoField.new("Pday High Price", "nse.nsecm.broadcast.nnfbcast.v6.6.pdayhighprice", ftypes.DOUBLE, nil, nil, nil, "Previous day high price.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.pday_low_price = ProtoField.new("Pday Low Price", "nse.nsecm.broadcast.nnfbcast.v6.6.pdaylowprice", ftypes.DOUBLE, nil, nil, nil, "Previous day low price.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.pday_wt_avg = ProtoField.new("Pday Wt Avg", "nse.nsecm.broadcast.nnfbcast.v6.6.pdaywtavg", ftypes.DOUBLE, nil, nil, nil, "Previous day weighted average price.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.percent_change = ProtoField.new("Percent Change", "nse.nsecm.broadcast.nnfbcast.v6.6.percentchange", ftypes.INT32, nil, nil, nil, "Percent change in the current index with respect to yesterday closing index.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.permitted_to_trade = ProtoField.new("Permitted To Trade", "nse.nsecm.broadcast.nnfbcast.v6.6.permittedtotrade", ftypes.INT16, nil, nil, nil, "Whether the security is permitted to trade.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.price = ProtoField.new("Price", "nse.nsecm.broadcast.nnfbcast.v6.6.price", ftypes.DOUBLE, nil, nil, nil, "Price of the order.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.purpose = ProtoField.new("Purpose", "nse.nsecm.broadcast.nnfbcast.v6.6.purpose", ftypes.STRING, nil, nil, nil, "Corporate action the security update carries")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.qty = ProtoField.new("Qty", "nse.nsecm.broadcast.nnfbcast.v6.6.qty", ftypes.INT32, nil, nil, nil, "Quantity at the order.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.quantity = ProtoField.new("Quantity", "nse.nsecm.broadcast.nnfbcast.v6.6.quantity", ftypes.INT64, nil, nil, nil, "Quantity at the price point.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.re_admission_date = ProtoField.new("Re Admission Date", "nse.nsecm.broadcast.nnfbcast.v6.6.readmissiondate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of readmission.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.re_admission_date_utc = ProtoField.new("Re Admission Date", "nse.nsecm.broadcast.nnfbcast.v6.6.readmissiondate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of readmission.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.record_date = ProtoField.new("Record Date", "nse.nsecm.broadcast.nnfbcast.v6.6.recorddate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of record changed.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.record_date_utc = ProtoField.new("Record Date", "nse.nsecm.broadcast.nnfbcast.v6.6.recorddate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of record changed.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reference_price = ProtoField.new("Reference Price", "nse.nsecm.broadcast.nnfbcast.v6.6.referenceprice", ftypes.DOUBLE, nil, nil, nil, "Reference price of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.remark = ProtoField.new("Remark", "nse.nsecm.broadcast.nnfbcast.v6.6.remark", ftypes.STRING, nil, nil, nil, "Remarks.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_0 = ProtoField.new("Reserved 0", "nse.nsecm.broadcast.nnfbcast.v6.6.reserved0", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_1 = ProtoField.new("Reserved 1", "nse.nsecm.broadcast.nnfbcast.v6.6.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_110 = ProtoField.new("Reserved 110", "nse.nsecm.broadcast.nnfbcast.v6.6.reserved110", ftypes.UINT16, nil, base.DEC, 0x03FF, "Reserved")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_112 = ProtoField.new("Reserved 112", "nse.nsecm.broadcast.nnfbcast.v6.6.reserved112", ftypes.UINT16, nil, base.DEC, 0x0FFF, "Reserved")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_113 = ProtoField.new("Reserved 113", "nse.nsecm.broadcast.nnfbcast.v6.6.reserved113", ftypes.UINT16, nil, base.DEC, 0x1FFF, "Reserved")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_114 = ProtoField.new("Reserved 114", "nse.nsecm.broadcast.nnfbcast.v6.6.reserved114", ftypes.UINT16, nil, base.DEC, 0x3FFF, "Reserved")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_115 = ProtoField.new("Reserved 115", "nse.nsecm.broadcast.nnfbcast.v6.6.reserved115", ftypes.UINT16, nil, base.DEC, 0x7FFF, "Reserved")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_14 = ProtoField.new("Reserved 14", "nse.nsecm.broadcast.nnfbcast.v6.6.reserved14", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_16 = ProtoField.new("Reserved 16", "nse.nsecm.broadcast.nnfbcast.v6.6.reserved16", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_17 = ProtoField.new("Reserved 17", "nse.nsecm.broadcast.nnfbcast.v6.6.reserved17", ftypes.UINT8, nil, base.DEC, 0x7F, "Reserved")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_18 = ProtoField.new("Reserved 18", "nse.nsecm.broadcast.nnfbcast.v6.6.reserved18", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_19 = ProtoField.new("Reserved 19", "nse.nsecm.broadcast.nnfbcast.v6.6.reserved19", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_2 = ProtoField.new("Reserved 2", "nse.nsecm.broadcast.nnfbcast.v6.6.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_4 = ProtoField.new("Reserved 4", "nse.nsecm.broadcast.nnfbcast.v6.6.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.rights = ProtoField.new("Rights", "nse.nsecm.broadcast.nnfbcast.v6.6.rights", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.sec_info = ProtoField.new("Sec Info", "nse.nsecm.broadcast.nnfbcast.v6.6.secinfo", ftypes.STRING, nil, nil, nil, "SEC_INFO")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "nse.nsecm.broadcast.nnfbcast.v6.6.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.second_reserved_4 = ProtoField.new("Second Reserved 4", "nse.nsecm.broadcast.nnfbcast.v6.6.secondreserved4", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_eligibility_flags = ProtoField.new("Security Eligibility Flags", "nse.nsecm.broadcast.nnfbcast.v6.6.securityeligibilityflags", ftypes.STRING, nil, nil, nil, "Whether the security is eligible in this market")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_eligibility_per_market = ProtoField.new("Security Eligibility Per Market", "nse.nsecm.broadcast.nnfbcast.v6.6.securityeligibilitypermarket", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_status_per_market = ProtoField.new("Security Status Per Market", "nse.nsecm.broadcast.nnfbcast.v6.6.securitystatuspermarket", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.sell = ProtoField.new("Sell", "nse.nsecm.broadcast.nnfbcast.v6.6.sell", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000, "Sell side")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.sell_ord_cxl_count = ProtoField.new("Sell Ord Cxl Count", "nse.nsecm.broadcast.nnfbcast.v6.6.sellordcxlcount", ftypes.INT64, nil, nil, nil, "Total count of sell orders cancelled for the security during the session.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.sell_ord_cxl_vol = ProtoField.new("Sell Ord Cxl Vol", "nse.nsecm.broadcast.nnfbcast.v6.6.sellordcxlvol", ftypes.INT64, nil, nil, nil, "Total quantity of sell orders cancelled for the security during the session.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.sell_price = ProtoField.new("Sell Price", "nse.nsecm.broadcast.nnfbcast.v6.6.sellprice", ftypes.DOUBLE, nil, nil, nil, "Price of the best sell order.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.sell_volume = ProtoField.new("Sell Volume", "nse.nsecm.broadcast.nnfbcast.v6.6.sellvolume", ftypes.INT64, nil, nil, nil, "Quantity of the best sell order.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.series = ProtoField.new("Series", "nse.nsecm.broadcast.nnfbcast.v6.6.series", ftypes.STRING, nil, nil, nil, "Series of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.settlement_period = ProtoField.new("Settlement Period", "nse.nsecm.broadcast.nnfbcast.v6.6.settlementperiod", ftypes.INT16, nil, nil, nil, "Period by which settlement between the parties should take place.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.settlement_type = ProtoField.new("Settlement Type", "nse.nsecm.broadcast.nnfbcast.v6.6.settlementtype", ftypes.INT16, nil, nil, nil, "Settlement type.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.sixth_reserved_4 = ProtoField.new("Sixth Reserved 4", "nse.nsecm.broadcast.nnfbcast.v6.6.sixthreserved4", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.st_auction_inq_info = ProtoField.new("St Auction Inq Info", "nse.nsecm.broadcast.nnfbcast.v6.6.stauctioninqinfo", ftypes.STRING, nil, nil, nil, "ST_AUCTION_INQ_INFO")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.st_mbo_mbp_terms = ProtoField.new("St Mbo Mbp Terms", "nse.nsecm.broadcast.nnfbcast.v6.6.stmbombpterms", ftypes.STRING, nil, nil, nil, "Order terms carried with a market by order record")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.start_date = ProtoField.new("Start Date", "nse.nsecm.broadcast.nnfbcast.v6.6.startdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Start date of the buyback period.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.start_date_utc = ProtoField.new("Start Date", "nse.nsecm.broadcast.nnfbcast.v6.6.startdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Start date of the buyback period.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.status = ProtoField.new("Status", "nse.nsecm.broadcast.nnfbcast.v6.6.status", ftypes.INT16, nil, nil, nil, "Status of the security in this market.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.surv_ind = ProtoField.new("Surv Ind", "nse.nsecm.broadcast.nnfbcast.v6.6.survind", ftypes.INT16, nil, nil, nil, "Indicator for a security in Surveillance Measure.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.symbol = ProtoField.new("Symbol", "nse.nsecm.broadcast.nnfbcast.v6.6.symbol", ftypes.STRING, nil, nil, nil, "Symbol of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.third_reserved_4 = ProtoField.new("Third Reserved 4", "nse.nsecm.broadcast.nnfbcast.v6.6.thirdreserved4", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.tick_size = ProtoField.new("Tick Size", "nse.nsecm.broadcast.nnfbcast.v6.6.ticksize", ftypes.INT32, nil, nil, nil, "Tick size or minimum spread size.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.ticker_index_information = ProtoField.new("Ticker Index Information", "nse.nsecm.broadcast.nnfbcast.v6.6.tickerindexinformation", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.time_stamp_2 = ProtoField.new("Time Stamp 2", "nse.nsecm.broadcast.nnfbcast.v6.6.timestamp2", ftypes.STRING, nil, nil, nil, "Time the message reached the gateway")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.token_and_eligibility = ProtoField.new("Token And Eligibility", "nse.nsecm.broadcast.nnfbcast.v6.6.tokenandeligibility", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.token_and_refprice = ProtoField.new("Token And Refprice", "nse.nsecm.broadcast.nnfbcast.v6.6.tokenandrefprice", ftypes.STRING)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.token_long_4 = ProtoField.new("Token Long 4", "nse.nsecm.broadcast.nnfbcast.v6.6.tokenlong4", ftypes.INT32, nil, nil, nil, "Token number of the security being updated.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.token_short_2 = ProtoField.new("Token Short 2", "nse.nsecm.broadcast.nnfbcast.v6.6.tokenshort2", ftypes.INT16, nil, nil, nil, "Unique number given to a particular symbol series combination.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.total_buy_qty = ProtoField.new("Total Buy Qty", "nse.nsecm.broadcast.nnfbcast.v6.6.totalbuyqty", ftypes.INT32, nil, nil, nil, "Total buy quantity for the auction.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.total_buy_quantity = ProtoField.new("Total Buy Quantity", "nse.nsecm.broadcast.nnfbcast.v6.6.totalbuyquantity", ftypes.INT64, nil, nil, nil, "Total quantity of buy orders in the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.total_sell_qty = ProtoField.new("Total Sell Qty", "nse.nsecm.broadcast.nnfbcast.v6.6.totalsellqty", ftypes.INT32, nil, nil, nil, "Total sell quantity for the auction.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.total_sell_quantity = ProtoField.new("Total Sell Quantity", "nse.nsecm.broadcast.nnfbcast.v6.6.totalsellquantity", ftypes.INT64, nil, nil, nil, "Total quantity of sell orders in the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.trade_number = ProtoField.new("Trade Number", "nse.nsecm.broadcast.nnfbcast.v6.6.tradenumber", ftypes.INT32, nil, nil, nil, "Trade number in which the broker has last traded.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.trade_price = ProtoField.new("Trade Price", "nse.nsecm.broadcast.nnfbcast.v6.6.tradeprice", ftypes.DOUBLE, nil, nil, nil, "Price of the trade.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.trade_volume = ProtoField.new("Trade Volume", "nse.nsecm.broadcast.nnfbcast.v6.6.tradevolume", ftypes.INT32, nil, nil, nil, "Trade quantity of the trade.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.trader_id = ProtoField.new("Trader Id", "nse.nsecm.broadcast.nnfbcast.v6.6.traderid", ftypes.INT32, nil, nil, nil, "Trader Id.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.trader_ws = ProtoField.new("Trader Ws", "nse.nsecm.broadcast.nnfbcast.v6.6.traderws", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Destined for the trader workstation")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.trading_status = ProtoField.new("Trading Status", "nse.nsecm.broadcast.nnfbcast.v6.6.tradingstatus", ftypes.INT16, nil, nil, nil, "Trading status of the security.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nsecm.broadcast.nnfbcast.v6.6.transactioncode", ftypes.INT16, nil, nil, nil, "Type of broadcast message")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.volume_traded_today = ProtoField.new("Volume Traded Today", "nse.nsecm.broadcast.nnfbcast.v6.6.volumetradedtoday", ftypes.INT64, nil, nil, nil, "Total quantity of the security traded on the current day.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.warning_type = ProtoField.new("Warning Type", "nse.nsecm.broadcast.nnfbcast.v6.6.warningtype", ftypes.INT16, nil, nil, nil, "One if the turnover limit is about to be exceeded, two if it is exceeded and the broker is deactivated.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.yearly_high = ProtoField.new("Yearly High", "nse.nsecm.broadcast.nnfbcast.v6.6.yearlyhigh", ftypes.INT32, nil, nil, nil, "Highest index in the year.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.yearly_low = ProtoField.new("Yearly Low", "nse.nsecm.broadcast.nnfbcast.v6.6.yearlylow", ftypes.INT32, nil, nil, nil, "Lowest index in the year.")

-- Nse NseCm Broadcast NnfBcast 6.6 Framing
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.packed_packet = ProtoField.new("Packed Packet", "nse.nsecm.broadcast.nnfbcast.v6.6.packedpacket", ftypes.STRING, nil, nil, nil, "One sequentially packed broadcast packet")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.packet = ProtoField.new("Packet", "nse.nsecm.broadcast.nnfbcast.v6.6.packet", ftypes.STRING, nil, nil, nil, "NnfBcast Udp datagram")

-- Nse NseCm Broadcast 6.6 Application Messages
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_inquiry_message = ProtoField.new("Auction Inquiry Message", "nse.nsecm.broadcast.nnfbcast.v6.6.auctioninquirymessage", ftypes.STRING, nil, nil, nil, "Sent whenever there is any auction related activity, including a change in the auction market by order")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_status_change_message = ProtoField.new("Auction Status Change Message", "nse.nsecm.broadcast.nnfbcast.v6.6.auctionstatuschangemessage", ftypes.STRING, nil, nil, nil, "Sent when the status of an auction changes")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broadcast_journal_vct_message = ProtoField.new("Broadcast Journal Vct Message", "nse.nsecm.broadcast.nnfbcast.v6.6.broadcastjournalvctmessage", ftypes.STRING, nil, nil, nil, "Carries a general message broadcast to the trading terminals")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broker_reactivated_message = ProtoField.new("Broker Reactivated Message", "nse.nsecm.broadcast.nnfbcast.v6.6.brokerreactivatedmessage", ftypes.STRING, nil, nil, nil, "Sent when a broker is reactivated after being deactivated")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buy_back_message = ProtoField.new("Buy Back Message", "nse.nsecm.broadcast.nnfbcast.v6.6.buybackmessage", ftypes.STRING, nil, nil, nil, "Carries the buyback information running on that day, broadcast every hour from market open until market close")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.call_auction_market_by_price_message = ProtoField.new("Call Auction Market By Price Message", "nse.nsecm.broadcast.nnfbcast.v6.6.callauctionmarketbypricemessage", ftypes.STRING, nil, nil, nil, "Carries Call Auction 2 market data during the preopen session")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.call_auction_market_watch_message = ProtoField.new("Call Auction Market Watch Message", "nse.nsecm.broadcast.nnfbcast.v6.6.callauctionmarketwatchmessage", ftypes.STRING, nil, nil, nil, "Carries the market watch data for the Call Auction market")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.call_auction_order_cancel_update_message = ProtoField.new("Call Auction Order Cancel Update Message", "nse.nsecm.broadcast.nnfbcast.v6.6.callauctionordercancelupdatemessage", ftypes.STRING, nil, nil, nil, "Carries order cancellation statistics during the Special Preopen Session order collection period")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cas_end_message = ProtoField.new("Cas End Message", "nse.nsecm.broadcast.nnfbcast.v6.6.casendmessage", ftypes.STRING, nil, nil, nil, "Sent when the closing auction session has ended.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cas_reference_price_message = ProtoField.new("Cas Reference Price Message", "nse.nsecm.broadcast.nnfbcast.v6.6.casreferencepricemessage", ftypes.STRING, nil, nil, nil, "Sent for CAS enabled securities at the conclusion of the continuous trading session and before the CAS session starts")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cas_start_message = ProtoField.new("Cas Start Message", "nse.nsecm.broadcast.nnfbcast.v6.6.casstartmessage", ftypes.STRING, nil, nil, nil, "Sent when the closing auction session has started.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.circuit_check_message = ProtoField.new("Circuit Check Message", "nse.nsecm.broadcast.nnfbcast.v6.6.circuitcheckmessage", ftypes.BYTES)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.closing_end_message = ProtoField.new("Closing End Message", "nse.nsecm.broadcast.nnfbcast.v6.6.closingendmessage", ftypes.STRING, nil, nil, nil, "Sent when the closing session is closed.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.closing_start_message = ProtoField.new("Closing Start Message", "nse.nsecm.broadcast.nnfbcast.v6.6.closingstartmessage", ftypes.STRING, nil, nil, nil, "Sent when the closing session is opened.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cts_close_for_cas_message = ProtoField.new("Cts Close For Cas Message", "nse.nsecm.broadcast.nnfbcast.v6.6.ctscloseforcasmessage", ftypes.STRING, nil, nil, nil, "Sent when the normal market has closed for securities participating in the closing auction session.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indicative_indices_message = ProtoField.new("Indicative Indices Message", "nse.nsecm.broadcast.nnfbcast.v6.6.indicativeindicesmessage", ftypes.STRING, nil, nil, nil, "Carries the multiple indicative index broadcast, starting half an hour before market close")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indices_message = ProtoField.new("Indices Message", "nse.nsecm.broadcast.nnfbcast.v6.6.indicesmessage", ftypes.STRING, nil, nil, nil, "Carries the multiple index broadcast")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indices_vix_message = ProtoField.new("Indices Vix Message", "nse.nsecm.broadcast.nnfbcast.v6.6.indicesvixmessage", ftypes.STRING, nil, nil, nil, "Carries the multiple index broadcast for India VIX")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.industry_indices_message = ProtoField.new("Industry Indices Message", "nse.nsecm.broadcast.nnfbcast.v6.6.industryindicesmessage", ftypes.STRING, nil, nil, nil, "Carries the index values of seventeen industry indices with their names")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_by_order_and_market_by_price_message = ProtoField.new("Market By Order And Market By Price Message", "nse.nsecm.broadcast.nnfbcast.v6.6.marketbyorderandmarketbypricemessage", ftypes.STRING, nil, nil, nil, "Carries the best buy orders and the best sell orders of a security")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_close_message = ProtoField.new("Market Close Message", "nse.nsecm.broadcast.nnfbcast.v6.6.marketclosemessage", ftypes.STRING, nil, nil, nil, "Sent when the market is closed.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_open_message = ProtoField.new("Market Open Message", "nse.nsecm.broadcast.nnfbcast.v6.6.marketopenmessage", ftypes.STRING, nil, nil, nil, "Sent when the market is opened.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_order_restricted_message = ProtoField.new("Market Order Restricted Message", "nse.nsecm.broadcast.nnfbcast.v6.6.marketorderrestrictedmessage", ftypes.STRING, nil, nil, nil, "Sent when market orders restriction starts during the closing auction session.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_watch_round_robin_message = ProtoField.new("Market Watch Round Robin Message", "nse.nsecm.broadcast.nnfbcast.v6.6.marketwatchroundrobinmessage", ftypes.STRING, nil, nil, nil, "Carries the best buy and sell order, their quantities and the last trade price")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.normal_market_preopen_ended_message = ProtoField.new("Normal Market Preopen Ended Message", "nse.nsecm.broadcast.nnfbcast.v6.6.normalmarketpreopenendedmessage", ftypes.STRING, nil, nil, nil, "Sent when the preopen period ends.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.only_market_by_price_message = ProtoField.new("Only Market By Price Message", "nse.nsecm.broadcast.nnfbcast.v6.6.onlymarketbypricemessage", ftypes.STRING, nil, nil, nil, "Carries the best buy and sell prices of a security without the order level detail")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.participant_master_change_message = ProtoField.new("Participant Master Change Message", "nse.nsecm.broadcast.nnfbcast.v6.6.participantmasterchangemessage", ftypes.STRING, nil, nil, nil, "Sent whenever there is any participant change")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.preopen_market_order_restricted_message = ProtoField.new("Preopen Market Order Restricted Message", "nse.nsecm.broadcast.nnfbcast.v6.6.preopenmarketorderrestrictedmessage", ftypes.STRING, nil, nil, nil, "Sent when market orders restriction starts during the preopen session.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.preopen_shutdown_message = ProtoField.new("Preopen Shutdown Message", "nse.nsecm.broadcast.nnfbcast.v6.6.preopenshutdownmessage", ftypes.STRING, nil, nil, nil, "Sent when the market is preopened.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.revised_price_band_completed_message = ProtoField.new("Revised Price Band Completed Message", "nse.nsecm.broadcast.nnfbcast.v6.6.revisedpricebandcompletedmessage", ftypes.STRING, nil, nil, nil, "Sent when the price band of securities is revised for the Closing Auction Session.")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_master_change_message = ProtoField.new("Security Master Change Message", "nse.nsecm.broadcast.nnfbcast.v6.6.securitymasterchangemessage", ftypes.STRING, nil, nil, nil, "Sent whenever a parameter of any security is changed")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_open_price_message = ProtoField.new("Security Open Price Message", "nse.nsecm.broadcast.nnfbcast.v6.6.securityopenpricemessage", ftypes.STRING, nil, nil, nil, "Carries the open price of a security when the market opens. The document states this transaction code is not sent by the exchange")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_status_change_message = ProtoField.new("Security Status Change Message", "nse.nsecm.broadcast.nnfbcast.v6.6.securitystatuschangemessage", ftypes.STRING, nil, nil, nil, "Sent whenever the status of any security changes")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_status_change_preopen_message = ProtoField.new("Security Status Change Preopen Message", "nse.nsecm.broadcast.nnfbcast.v6.6.securitystatuschangepreopenmessage", ftypes.STRING, nil, nil, nil, "Sent whenever the status of any security changes during the preopen session")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.symbol_status_change_action_message = ProtoField.new("Symbol Status Change Action Message", "nse.nsecm.broadcast.nnfbcast.v6.6.symbolstatuschangeactionmessage", ftypes.STRING, nil, nil, nil, "Carries a security level trading or market status change")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.ticker_and_market_index_message = ProtoField.new("Ticker And Market Index Message", "nse.nsecm.broadcast.nnfbcast.v6.6.tickerandmarketindexmessage", ftypes.STRING, nil, nil, nil, "Carries ticker and market index information")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.turnover_exceeded_message = ProtoField.new("Turnover Exceeded Message", "nse.nsecm.broadcast.nnfbcast.v6.6.turnoverexceededmessage", ftypes.STRING, nil, nil, nil, "Sent when a broker turnover is about to exceed or has already exceeded the limit, deactivating the broker")

-- Nse NseCm Broadcast NnfBcast 6.6 Generated Fields
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buybackdata_index = ProtoField.new("Buybackdata Index", "nse.nsecm.broadcast.nnfbcast.v6.6.buybackdataindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.ca_marketwatchbroadcast_index = ProtoField.new("Ca Marketwatchbroadcast Index", "nse.nsecm.broadcast.nnfbcast.v6.6.camarketwatchbroadcastindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indicative_indices_index = ProtoField.new("Indicative Indices Index", "nse.nsecm.broadcast.nnfbcast.v6.6.indicativeindicesindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indices_index = ProtoField.new("Indices Index", "nse.nsecm.broadcast.nnfbcast.v6.6.indicesindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.industry_indices_index = ProtoField.new("Industry Indices Index", "nse.nsecm.broadcast.nnfbcast.v6.6.industryindicesindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interactive_call_auction_mbp_data_index = ProtoField.new("Interactive Call Auction Mbp Data Index", "nse.nsecm.broadcast.nnfbcast.v6.6.interactivecallauctionmbpdataindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interactive_only_mbp_data_index = ProtoField.new("Interactive Only Mbp Data Index", "nse.nsecm.broadcast.nnfbcast.v6.6.interactiveonlymbpdataindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interactive_ord_cxl_details_index = ProtoField.new("Interactive Ord Cxl Details Index", "nse.nsecm.broadcast.nnfbcast.v6.6.interactiveordcxldetailsindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_wise_information_index = ProtoField.new("Market Wise Information Index", "nse.nsecm.broadcast.nnfbcast.v6.6.marketwiseinformationindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.marketwatchbroadcast_index = ProtoField.new("Marketwatchbroadcast Index", "nse.nsecm.broadcast.nnfbcast.v6.6.marketwatchbroadcastindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mbo_information_index = ProtoField.new("Mbo Information Index", "nse.nsecm.broadcast.nnfbcast.v6.6.mboinformationindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mbp_information_index = ProtoField.new("Mbp Information Index", "nse.nsecm.broadcast.nnfbcast.v6.6.mbpinformationindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.packed_packet_index = ProtoField.new("Packed Packet Index", "nse.nsecm.broadcast.nnfbcast.v6.6.packedpacketindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_eligibility_per_market_index = ProtoField.new("Security Eligibility Per Market Index", "nse.nsecm.broadcast.nnfbcast.v6.6.securityeligibilitypermarketindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_status_per_market_index = ProtoField.new("Security Status Per Market Index", "nse.nsecm.broadcast.nnfbcast.v6.6.securitystatuspermarketindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.ticker_index_information_index = ProtoField.new("Ticker Index Information Index", "nse.nsecm.broadcast.nnfbcast.v6.6.tickerindexinformationindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.token_and_eligibility_index = ProtoField.new("Token And Eligibility Index", "nse.nsecm.broadcast.nnfbcast.v6.6.tokenandeligibilityindex", ftypes.UINT16)
omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.token_and_refprice_index = ProtoField.new("Token And Refprice Index", "nse.nsecm.broadcast.nnfbcast.v6.6.tokenandrefpriceindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Nse NseCm Broadcast NnfBcast 6.6 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nse NseCm Broadcast NnfBcast 6.6 Element Dissection Options
show.application_messages = true
show.structs = true
show.indexes = true

-- Register Nse NseCm Broadcast NnfBcast 6.6 Show Options
omi_nse_nsecm_broadcast_nnfbcast_v6_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nsecm_broadcast_nnfbcast_v6_6.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nse_nsecm_broadcast_nnfbcast_v6_6.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nse_nsecm_broadcast_nnfbcast_v6_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nsecm_broadcast_nnfbcast_v6_6.prefs.show_application_messages then
    show.application_messages = omi_nse_nsecm_broadcast_nnfbcast_v6_6.prefs.show_application_messages
  end
  if show.structs ~= omi_nse_nsecm_broadcast_nnfbcast_v6_6.prefs.show_structs then
    show.structs = omi_nse_nsecm_broadcast_nnfbcast_v6_6.prefs.show_structs
  end
  if show.indexes ~= omi_nse_nsecm_broadcast_nnfbcast_v6_6.prefs.show_indexes then
    show.indexes = omi_nse_nsecm_broadcast_nnfbcast_v6_6.prefs.show_indexes
  end
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base ~= omi_nse_nsecm_broadcast_nnfbcast_v6_6.prefs.absolute_time_base then
    nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base = omi_nse_nsecm_broadcast_nnfbcast_v6_6.prefs.absolute_time_base
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


-- LZO1Z decompression
local function lzo1z_decompress(input, decompressed_size)
  local output = ByteArray.new()
  output:set_size(decompressed_size)

  local input_position = 0
  local output_position = 0

  -- Lzo1z can reuse the offset of the previous match instead of respelling it
  local last_offset = 0

  local m2_max_offset = 0x0700

  local function next_byte()
    local value = input:get_index(input_position)
    input_position = input_position + 1
    return value
  end

  -- Lengths above the token's field are spelled as a run of zero bytes worth
  -- 255 each, closed by a non zero byte
  local function extended_length(base)
    local length = 0
    while input:get_index(input_position) == 0 do
      length = length + 255
      input_position = input_position + 1
    end
    return length + base + next_byte()
  end

  local function copy_literals(count)
    for _ = 1, count do
      output:set_index(output_position, input:get_index(input_position))
      output_position = output_position + 1
      input_position = input_position + 1
    end
  end

  -- Copied one byte at a time because a match is allowed to overlap the bytes
  -- it is still producing
  local function copy_match(offset, count)
    local from = output_position - offset
    for _ = 1, count do
      output:set_index(output_position, output:get_index(from))
      output_position = output_position + 1
      from = from + 1
    end
  end

  local token
  local state

  -- A first byte above 17 carries a leading literal run in its own encoding
  if input:get_index(0) > 17 then
    token = next_byte() - 17
    if token < 4 then
      state = "match_next"
    else
      copy_literals(token)
      state = "first_literal_run"
    end
  else
    state = "literal_run"
  end

  while true do

    if state == "literal_run" then
      token = next_byte()
      if token >= 16 then
        state = "match"
      else
        if token == 0 then
          token = extended_length(15)
        end
        copy_literals(token + 3)
        state = "first_literal_run"
      end
    end

    -- A short match may follow a literal run directly, with the wider base offset
    if state == "first_literal_run" then
      token = next_byte()
      if token >= 16 then
        state = "match"
      else
        local offset = (1 + m2_max_offset) + bit.lshift(token, 6) + bit.rshift(next_byte(), 2)
        copy_match(offset, 3)
        last_offset = offset
        state = "match_done"
      end
    end

    while true do

      if state == "match" then

        if token >= 64 then
          -- M2: length in the top three bits, offset in the low five
          local offset = bit.band(token, 0x1f)
          if offset >= 0x1c then
            offset = last_offset
          else
            offset = 1 + bit.lshift(offset, 6) + bit.rshift(next_byte(), 2)
            last_offset = offset
          end
          copy_match(offset, bit.rshift(token, 5) - 1 + 2)
          state = "match_done"

        elseif token >= 32 then
          -- M3: length in the low five bits, offset in the next two bytes
          local length = bit.band(token, 31)
          if length == 0 then
            length = extended_length(31)
          end
          local offset = 1 + bit.lshift(input:get_index(input_position), 6)
                           + bit.rshift(input:get_index(input_position + 1), 2)
          input_position = input_position + 2
          last_offset = offset
          copy_match(offset, length + 2)
          state = "match_done"

        elseif token >= 16 then
          -- M4: the widest offset, and the form that spells end of stream
          local high = bit.lshift(bit.band(token, 8), 11)
          local length = bit.band(token, 7)
          if length == 0 then
            length = extended_length(7)
          end
          local offset = high + bit.lshift(input:get_index(input_position), 6)
                              + bit.rshift(input:get_index(input_position + 1), 2)
          input_position = input_position + 2
          if offset == 0 then
            output:set_size(output_position)
            return output
          end
          offset = offset + 0x4000
          last_offset = offset
          copy_match(offset, length + 2)
          state = "match_done"

        else
          -- M1: a two byte match
          local offset = 1 + bit.lshift(token, 6) + bit.rshift(next_byte(), 2)
          copy_match(offset, 2)
          last_offset = offset
          state = "match_done"
        end
      end

      -- The low two bits of the last byte consumed carry any literals that
      -- follow the match without a token of their own
      if state ~= "match_next" then
        token = bit.band(input:get_index(input_position - 1), 3)
        if token == 0 then
          state = "literal_run"
          break
        end
      end

      copy_literals(token)
      token = next_byte()
      state = "match"
    end
  end
end
-----------------------------------------------------------------------
-- Nse NseCm Broadcast NnfBcast 6.6 Fields
-----------------------------------------------------------------------

-- Action Code Char 3
nse_nsecm_broadcast_nnfbcast_v6_6.action_code_char_3 = {}

-- Size: Action Code Char 3
nse_nsecm_broadcast_nnfbcast_v6_6.action_code_char_3.size = 3

-- Display: Action Code Char 3
nse_nsecm_broadcast_nnfbcast_v6_6.action_code_char_3.display = function(value)
  return "Action Code Char 3: "..value
end

-- Dissect: Action Code Char 3
nse_nsecm_broadcast_nnfbcast_v6_6.action_code_char_3.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.action_code_char_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.action_code_char_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.action_code_char_3, range, value, display)

  return offset + length, value
end

-- Action Code Short 2
nse_nsecm_broadcast_nnfbcast_v6_6.action_code_short_2 = {}

-- Size: Action Code Short 2
nse_nsecm_broadcast_nnfbcast_v6_6.action_code_short_2.size = 2

-- Display: Action Code Short 2
nse_nsecm_broadcast_nnfbcast_v6_6.action_code_short_2.labels = {
  [6531] = "Action Code Short 2: Security Preopened (6531)",
  [6571] = "Action Code Short 2: Security Preopen Period Ended (6571)",
  [6511] = "Action Code Short 2: Security Opened (6511)",
  [6521] = "Action Code Short 2: Security Closed (6521)",
  [6583] = "Action Code Short 2: Security Closing Session Opened (6583)",
  [6584] = "Action Code Short 2: Security Closing Session Closed (6584)",
  [6651] = "Action Code Short 2: Normal Market Closed For Securities Participating In The Closing Auction Session (6651)",
  [6652] = "Action Code Short 2: Price Band Of Securities Revised For The Closing Auction Session (6652)",
  [6653] = "Action Code Short 2: Closing Auction Session Started (6653)",
  [6654] = "Action Code Short 2: Market Orders Restricted For The Closing Auction Session (6654)",
  [6655] = "Action Code Short 2: Closing Auction Session Ended (6655)",
}

nse_nsecm_broadcast_nnfbcast_v6_6.action_code_short_2.display = function(value)
  return nse_nsecm_broadcast_nnfbcast_v6_6.action_code_short_2.labels[value] or "Action Code Short 2: Unknown("..value..")"
end

-- Dissect: Action Code Short 2
nse_nsecm_broadcast_nnfbcast_v6_6.action_code_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.action_code_short_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.action_code_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.action_code_short_2, range, value, display)

  return offset + length, value
end

-- Alpha Char
nse_nsecm_broadcast_nnfbcast_v6_6.alpha_char = {}

-- Size: Alpha Char
nse_nsecm_broadcast_nnfbcast_v6_6.alpha_char.size = 2

-- Display: Alpha Char
nse_nsecm_broadcast_nnfbcast_v6_6.alpha_char.display = function(value)
  return "Alpha Char: "..value
end

-- Dissect: Alpha Char
nse_nsecm_broadcast_nnfbcast_v6_6.alpha_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.alpha_char.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.alpha_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.alpha_char, range, value, display)

  return offset + length, value
end

-- Auction Number
nse_nsecm_broadcast_nnfbcast_v6_6.auction_number = {}

-- Size: Auction Number
nse_nsecm_broadcast_nnfbcast_v6_6.auction_number.size = 2

-- Display: Auction Number
nse_nsecm_broadcast_nnfbcast_v6_6.auction_number.display = function(value)
  return "Auction Number: "..value
end

-- Dissect: Auction Number
nse_nsecm_broadcast_nnfbcast_v6_6.auction_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.auction_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.auction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_number, range, value, display)

  return offset + length, value
end

-- Auction Price
nse_nsecm_broadcast_nnfbcast_v6_6.auction_price = {}

-- Size: Auction Price
nse_nsecm_broadcast_nnfbcast_v6_6.auction_price.size = 4

-- Display: Auction Price
nse_nsecm_broadcast_nnfbcast_v6_6.auction_price.display = function(value)
  return "Auction Price: "..value
end

-- Translate: Auction Price
nse_nsecm_broadcast_nnfbcast_v6_6.auction_price.translate = function(raw)
  return raw/100
end

-- Dissect: Auction Price
nse_nsecm_broadcast_nnfbcast_v6_6.auction_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.auction_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.auction_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.auction_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_price, range, value, display)

  return offset + length, value
end

-- Auction Qty
nse_nsecm_broadcast_nnfbcast_v6_6.auction_qty = {}

-- Size: Auction Qty
nse_nsecm_broadcast_nnfbcast_v6_6.auction_qty.size = 4

-- Display: Auction Qty
nse_nsecm_broadcast_nnfbcast_v6_6.auction_qty.display = function(value)
  return "Auction Qty: "..value
end

-- Dissect: Auction Qty
nse_nsecm_broadcast_nnfbcast_v6_6.auction_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.auction_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.auction_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_qty, range, value, display)

  return offset + length, value
end

-- Auction Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.auction_quantity = {}

-- Size: Auction Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.auction_quantity.size = 4

-- Display: Auction Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.auction_quantity.display = function(value)
  return "Auction Quantity: "..value
end

-- Dissect: Auction Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.auction_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.auction_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.auction_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_quantity, range, value, display)

  return offset + length, value
end

-- Auction Status Char 1
nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_char_1 = {}

-- Size: Auction Status Char 1
nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_char_1.size = 1

-- Display: Auction Status Char 1
nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_char_1.display = function(value)
  return "Auction Status Char 1: "..value
end

-- Dissect: Auction Status Char 1
nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_char_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_char_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_char_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_status_char_1, range, value, display)

  return offset + length, value
end

-- Auction Status Short 2
nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_short_2 = {}

-- Size: Auction Status Short 2
nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_short_2.size = 2

-- Display: Auction Status Short 2
nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_short_2.display = function(value)
  return "Auction Status Short 2: "..value
end

-- Dissect: Auction Status Short 2
nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_short_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_status_short_2, range, value, display)

  return offset + length, value
end

-- Average Trade Price
nse_nsecm_broadcast_nnfbcast_v6_6.average_trade_price = {}

-- Size: Average Trade Price
nse_nsecm_broadcast_nnfbcast_v6_6.average_trade_price.size = 4

-- Display: Average Trade Price
nse_nsecm_broadcast_nnfbcast_v6_6.average_trade_price.display = function(value)
  return "Average Trade Price: "..value
end

-- Translate: Average Trade Price
nse_nsecm_broadcast_nnfbcast_v6_6.average_trade_price.translate = function(raw)
  return raw/100
end

-- Dissect: Average Trade Price
nse_nsecm_broadcast_nnfbcast_v6_6.average_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.average_trade_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.average_trade_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.average_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.average_trade_price, range, value, display)

  return offset + length, value
end

-- Bb Buy Sell Flag
nse_nsecm_broadcast_nnfbcast_v6_6.bb_buy_sell_flag = {}

-- Size: Bb Buy Sell Flag
nse_nsecm_broadcast_nnfbcast_v6_6.bb_buy_sell_flag.size = 2

-- Display: Bb Buy Sell Flag
nse_nsecm_broadcast_nnfbcast_v6_6.bb_buy_sell_flag.labels = {
  [0] = "Bb Buy Sell Flag: No Buyback Order And No Market Maker Order (0)",
  [1] = "Bb Buy Sell Flag: Buyback Order (1)",
  [2] = "Bb Buy Sell Flag: Market Maker Order (2)",
  [3] = "Bb Buy Sell Flag: Buyback Order And Market Maker Order (3)",
}

nse_nsecm_broadcast_nnfbcast_v6_6.bb_buy_sell_flag.display = function(value)
  return nse_nsecm_broadcast_nnfbcast_v6_6.bb_buy_sell_flag.labels[value] or "Bb Buy Sell Flag: Unknown("..value..")"
end

-- Dissect: Bb Buy Sell Flag
nse_nsecm_broadcast_nnfbcast_v6_6.bb_buy_sell_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.bb_buy_sell_flag.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.bb_buy_sell_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bb_buy_sell_flag, range, value, display)

  return offset + length, value
end

-- Bb Total Buy Flag
nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_buy_flag = {}

-- Size: Bb Total Buy Flag
nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_buy_flag.size = 2

-- Display: Bb Total Buy Flag
nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_buy_flag.labels = {
  [0] = "Bb Total Buy Flag: No Buyback Order And No Market Maker Order (0)",
  [1] = "Bb Total Buy Flag: Buyback Order (1)",
  [2] = "Bb Total Buy Flag: Market Maker Order (2)",
  [3] = "Bb Total Buy Flag: Buyback Order And Market Maker Order (3)",
}

nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_buy_flag.display = function(value)
  return nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_buy_flag.labels[value] or "Bb Total Buy Flag: Unknown("..value..")"
end

-- Dissect: Bb Total Buy Flag
nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_buy_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_buy_flag.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_buy_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bb_total_buy_flag, range, value, display)

  return offset + length, value
end

-- Bb Total Sell Flag
nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_sell_flag = {}

-- Size: Bb Total Sell Flag
nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_sell_flag.size = 2

-- Display: Bb Total Sell Flag
nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_sell_flag.labels = {
  [0] = "Bb Total Sell Flag: No Buyback Order And No Market Maker Order (0)",
  [1] = "Bb Total Sell Flag: Buyback Order (1)",
  [2] = "Bb Total Sell Flag: Market Maker Order (2)",
  [3] = "Bb Total Sell Flag: Buyback Order And Market Maker Order (3)",
}

nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_sell_flag.display = function(value)
  return nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_sell_flag.labels[value] or "Bb Total Sell Flag: Unknown("..value..")"
end

-- Dissect: Bb Total Sell Flag
nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_sell_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_sell_flag.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_sell_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bb_total_sell_flag, range, value, display)

  return offset + length, value
end

-- Bc Seq No
nse_nsecm_broadcast_nnfbcast_v6_6.bc_seq_no = {}

-- Size: Bc Seq No
nse_nsecm_broadcast_nnfbcast_v6_6.bc_seq_no.size = 4

-- Display: Bc Seq No
nse_nsecm_broadcast_nnfbcast_v6_6.bc_seq_no.display = function(value)
  return "Bc Seq No: "..value
end

-- Dissect: Bc Seq No
nse_nsecm_broadcast_nnfbcast_v6_6.bc_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.bc_seq_no.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.bc_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bc_seq_no, range, value, display)

  return offset + length, value
end

-- Bcast Market Type
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_market_type = {}

-- Size: Bcast Market Type
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_market_type.size = 1

-- Display: Bcast Market Type
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_market_type.display = function(value)
  return "Bcast Market Type: "..value
end

-- Dissect: Bcast Market Type
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_market_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.bcast_market_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.bcast_market_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bcast_market_type, range, value, display)

  return offset + length, value
end

-- Bcast Reserved
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_reserved = {}

-- Size: Bcast Reserved
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_reserved.size = 7

-- Display: Bcast Reserved
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_reserved.display = function(value)
  return "Bcast Reserved: "..value
end

-- Dissect: Bcast Reserved
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_reserved.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.bcast_reserved.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.bcast_reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bcast_reserved, range, value, display)

  return offset + length, value
end

-- Best Buy Price
nse_nsecm_broadcast_nnfbcast_v6_6.best_buy_price = {}

-- Size: Best Buy Price
nse_nsecm_broadcast_nnfbcast_v6_6.best_buy_price.size = 4

-- Display: Best Buy Price
nse_nsecm_broadcast_nnfbcast_v6_6.best_buy_price.display = function(value)
  return "Best Buy Price: "..value
end

-- Translate: Best Buy Price
nse_nsecm_broadcast_nnfbcast_v6_6.best_buy_price.translate = function(raw)
  return raw/100
end

-- Dissect: Best Buy Price
nse_nsecm_broadcast_nnfbcast_v6_6.best_buy_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.best_buy_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.best_buy_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.best_buy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.best_buy_price, range, value, display)

  return offset + length, value
end

-- Best Sell Price
nse_nsecm_broadcast_nnfbcast_v6_6.best_sell_price = {}

-- Size: Best Sell Price
nse_nsecm_broadcast_nnfbcast_v6_6.best_sell_price.size = 4

-- Display: Best Sell Price
nse_nsecm_broadcast_nnfbcast_v6_6.best_sell_price.display = function(value)
  return "Best Sell Price: "..value
end

-- Translate: Best Sell Price
nse_nsecm_broadcast_nnfbcast_v6_6.best_sell_price.translate = function(raw)
  return raw/100
end

-- Dissect: Best Sell Price
nse_nsecm_broadcast_nnfbcast_v6_6.best_sell_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.best_sell_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.best_sell_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.best_sell_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.best_sell_price, range, value, display)

  return offset + length, value
end

-- Board Lot Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.board_lot_quantity = {}

-- Size: Board Lot Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.board_lot_quantity.size = 4

-- Display: Board Lot Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.board_lot_quantity.display = function(value)
  return "Board Lot Quantity: "..value
end

-- Dissect: Board Lot Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.board_lot_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.board_lot_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.board_lot_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.board_lot_quantity, range, value, display)

  return offset + length, value
end

-- Book Closure End Date
nse_nsecm_broadcast_nnfbcast_v6_6.book_closure_end_date = {}

-- Size: Book Closure End Date
nse_nsecm_broadcast_nnfbcast_v6_6.book_closure_end_date.size = 4

-- Dissect: Book Closure End Date
nse_nsecm_broadcast_nnfbcast_v6_6.book_closure_end_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.book_closure_end_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.book_closure_end_date
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.book_closure_end_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Book Closure Start Date
nse_nsecm_broadcast_nnfbcast_v6_6.book_closure_start_date = {}

-- Size: Book Closure Start Date
nse_nsecm_broadcast_nnfbcast_v6_6.book_closure_start_date.size = 4

-- Dissect: Book Closure Start Date
nse_nsecm_broadcast_nnfbcast_v6_6.book_closure_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.book_closure_start_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.book_closure_start_date
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.book_closure_start_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Book Type
nse_nsecm_broadcast_nnfbcast_v6_6.book_type = {}

-- Size: Book Type
nse_nsecm_broadcast_nnfbcast_v6_6.book_type.size = 2

-- Display: Book Type
nse_nsecm_broadcast_nnfbcast_v6_6.book_type.display = function(value)
  return "Book Type: "..value
end

-- Dissect: Book Type
nse_nsecm_broadcast_nnfbcast_v6_6.book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.book_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.book_type, range, value, display)

  return offset + length, value
end

-- Branch Number
nse_nsecm_broadcast_nnfbcast_v6_6.branch_number = {}

-- Size: Branch Number
nse_nsecm_broadcast_nnfbcast_v6_6.branch_number.size = 2

-- Display: Branch Number
nse_nsecm_broadcast_nnfbcast_v6_6.branch_number.display = function(value)
  return "Branch Number: "..value
end

-- Dissect: Branch Number
nse_nsecm_broadcast_nnfbcast_v6_6.branch_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.branch_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.branch_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.branch_number, range, value, display)

  return offset + length, value
end

-- Broadcast Message
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message = {}

-- Size: Broadcast Message
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size = 240

-- Display: Broadcast Message
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.display = function(value)
  return "Broadcast Message: "..value
end

-- Dissect: Broadcast Message
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broadcast_message, range, value, display)

  return offset + length, value
end

-- Broadcast Message Length
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length = {}

-- Size: Broadcast Message Length
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size = 2

-- Display: Broadcast Message Length
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.display = function(value)
  return "Broadcast Message Length: "..value
end

-- Dissect: Broadcast Message Length
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broadcast_message_length, range, value, display)

  return offset + length, value
end

-- Broker Code
nse_nsecm_broadcast_nnfbcast_v6_6.broker_code = {}

-- Size: Broker Code
nse_nsecm_broadcast_nnfbcast_v6_6.broker_code.size = 5

-- Display: Broker Code
nse_nsecm_broadcast_nnfbcast_v6_6.broker_code.display = function(value)
  return "Broker Code: "..value
end

-- Dissect: Broker Code
nse_nsecm_broadcast_nnfbcast_v6_6.broker_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.broker_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.broker_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broker_code, range, value, display)

  return offset + length, value
end

-- Broker Number
nse_nsecm_broadcast_nnfbcast_v6_6.broker_number = {}

-- Size: Broker Number
nse_nsecm_broadcast_nnfbcast_v6_6.broker_number.size = 5

-- Display: Broker Number
nse_nsecm_broadcast_nnfbcast_v6_6.broker_number.display = function(value)
  return "Broker Number: "..value
end

-- Dissect: Broker Number
nse_nsecm_broadcast_nnfbcast_v6_6.broker_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.broker_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broker_number, range, value, display)

  return offset + length, value
end

-- Buy Ord Cxl Count
nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_count = {}

-- Size: Buy Ord Cxl Count
nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_count.size = 8

-- Display: Buy Ord Cxl Count
nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_count.display = function(value)
  return "Buy Ord Cxl Count: "..value
end

-- Dissect: Buy Ord Cxl Count
nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_count.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_count.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buy_ord_cxl_count, range, value, display)

  return offset + length, value
end

-- Buy Ord Cxl Vol
nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_vol = {}

-- Size: Buy Ord Cxl Vol
nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_vol.size = 8

-- Display: Buy Ord Cxl Vol
nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_vol.display = function(value)
  return "Buy Ord Cxl Vol: "..value
end

-- Dissect: Buy Ord Cxl Vol
nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_vol.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buy_ord_cxl_vol, range, value, display)

  return offset + length, value
end

-- Buy Price
nse_nsecm_broadcast_nnfbcast_v6_6.buy_price = {}

-- Size: Buy Price
nse_nsecm_broadcast_nnfbcast_v6_6.buy_price.size = 4

-- Display: Buy Price
nse_nsecm_broadcast_nnfbcast_v6_6.buy_price.display = function(value)
  return "Buy Price: "..value
end

-- Translate: Buy Price
nse_nsecm_broadcast_nnfbcast_v6_6.buy_price.translate = function(raw)
  return raw/100
end

-- Dissect: Buy Price
nse_nsecm_broadcast_nnfbcast_v6_6.buy_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.buy_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.buy_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.buy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buy_price, range, value, display)

  return offset + length, value
end

-- Buy Volume
nse_nsecm_broadcast_nnfbcast_v6_6.buy_volume = {}

-- Size: Buy Volume
nse_nsecm_broadcast_nnfbcast_v6_6.buy_volume.size = 8

-- Display: Buy Volume
nse_nsecm_broadcast_nnfbcast_v6_6.buy_volume.display = function(value)
  return "Buy Volume: "..value
end

-- Dissect: Buy Volume
nse_nsecm_broadcast_nnfbcast_v6_6.buy_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.buy_volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.buy_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buy_volume, range, value, display)

  return offset + length, value
end

-- Call Auction 1 Flag
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_1_flag = {}

-- Size: Call Auction 1 Flag
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_1_flag.size = 2

-- Display: Call Auction 1 Flag
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_1_flag.display = function(value)
  return "Call Auction 1 Flag: "..value
end

-- Dissect: Call Auction 1 Flag
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_1_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_1_flag.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_1_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.call_auction_1_flag, range, value, display)

  return offset + length, value
end

-- Cday Cum Vol
nse_nsecm_broadcast_nnfbcast_v6_6.cday_cum_vol = {}

-- Size: Cday Cum Vol
nse_nsecm_broadcast_nnfbcast_v6_6.cday_cum_vol.size = 8

-- Display: Cday Cum Vol
nse_nsecm_broadcast_nnfbcast_v6_6.cday_cum_vol.display = function(value)
  return "Cday Cum Vol: "..string.format("%.0f", value)
end

-- Dissect: Cday Cum Vol
nse_nsecm_broadcast_nnfbcast_v6_6.cday_cum_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.cday_cum_vol.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.cday_cum_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cday_cum_vol, range, value, display)

  return offset + length, value
end

-- Cday High Price
nse_nsecm_broadcast_nnfbcast_v6_6.cday_high_price = {}

-- Size: Cday High Price
nse_nsecm_broadcast_nnfbcast_v6_6.cday_high_price.size = 4

-- Display: Cday High Price
nse_nsecm_broadcast_nnfbcast_v6_6.cday_high_price.display = function(value)
  return "Cday High Price: "..value
end

-- Translate: Cday High Price
nse_nsecm_broadcast_nnfbcast_v6_6.cday_high_price.translate = function(raw)
  return raw/100
end

-- Dissect: Cday High Price
nse_nsecm_broadcast_nnfbcast_v6_6.cday_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.cday_high_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.cday_high_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.cday_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cday_high_price, range, value, display)

  return offset + length, value
end

-- Cday Low Price
nse_nsecm_broadcast_nnfbcast_v6_6.cday_low_price = {}

-- Size: Cday Low Price
nse_nsecm_broadcast_nnfbcast_v6_6.cday_low_price.size = 4

-- Display: Cday Low Price
nse_nsecm_broadcast_nnfbcast_v6_6.cday_low_price.display = function(value)
  return "Cday Low Price: "..value
end

-- Translate: Cday Low Price
nse_nsecm_broadcast_nnfbcast_v6_6.cday_low_price.translate = function(raw)
  return raw/100
end

-- Dissect: Cday Low Price
nse_nsecm_broadcast_nnfbcast_v6_6.cday_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.cday_low_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.cday_low_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.cday_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cday_low_price, range, value, display)

  return offset + length, value
end

-- Cday Wt Avg
nse_nsecm_broadcast_nnfbcast_v6_6.cday_wt_avg = {}

-- Size: Cday Wt Avg
nse_nsecm_broadcast_nnfbcast_v6_6.cday_wt_avg.size = 4

-- Display: Cday Wt Avg
nse_nsecm_broadcast_nnfbcast_v6_6.cday_wt_avg.display = function(value)
  return "Cday Wt Avg: "..value
end

-- Translate: Cday Wt Avg
nse_nsecm_broadcast_nnfbcast_v6_6.cday_wt_avg.translate = function(raw)
  return raw/100
end

-- Dissect: Cday Wt Avg
nse_nsecm_broadcast_nnfbcast_v6_6.cday_wt_avg.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.cday_wt_avg.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.cday_wt_avg.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.cday_wt_avg.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cday_wt_avg, range, value, display)

  return offset + length, value
end

-- Change
nse_nsecm_broadcast_nnfbcast_v6_6.change = {}

-- Size: Change
nse_nsecm_broadcast_nnfbcast_v6_6.change.size = 4

-- Display: Change
nse_nsecm_broadcast_nnfbcast_v6_6.change.display = function(value)
  return "Change: "..value
end

-- Dissect: Change
nse_nsecm_broadcast_nnfbcast_v6_6.change.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.change.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.change.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.change, range, value, display)

  return offset + length, value
end

-- Closing Index
nse_nsecm_broadcast_nnfbcast_v6_6.closing_index = {}

-- Size: Closing Index
nse_nsecm_broadcast_nnfbcast_v6_6.closing_index.size = 4

-- Display: Closing Index
nse_nsecm_broadcast_nnfbcast_v6_6.closing_index.display = function(value)
  return "Closing Index: "..value
end

-- Dissect: Closing Index
nse_nsecm_broadcast_nnfbcast_v6_6.closing_index.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.closing_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.closing_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.closing_index, range, value, display)

  return offset + length, value
end

-- Closing Price
nse_nsecm_broadcast_nnfbcast_v6_6.closing_price = {}

-- Size: Closing Price
nse_nsecm_broadcast_nnfbcast_v6_6.closing_price.size = 4

-- Display: Closing Price
nse_nsecm_broadcast_nnfbcast_v6_6.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Translate: Closing Price
nse_nsecm_broadcast_nnfbcast_v6_6.closing_price.translate = function(raw)
  return raw/100
end

-- Dissect: Closing Price
nse_nsecm_broadcast_nnfbcast_v6_6.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.closing_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.closing_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Compression Length
nse_nsecm_broadcast_nnfbcast_v6_6.compression_length = {}

-- Size: Compression Length
nse_nsecm_broadcast_nnfbcast_v6_6.compression_length.size = 2

-- Display: Compression Length
nse_nsecm_broadcast_nnfbcast_v6_6.compression_length.display = function(value)
  return "Compression Length: "..value
end

-- Dissect: Compression Length
nse_nsecm_broadcast_nnfbcast_v6_6.compression_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.compression_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.compression_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.compression_length, range, value, display)

  return offset + length, value
end

-- Counter Broker Code
nse_nsecm_broadcast_nnfbcast_v6_6.counter_broker_code = {}

-- Size: Counter Broker Code
nse_nsecm_broadcast_nnfbcast_v6_6.counter_broker_code.size = 5

-- Display: Counter Broker Code
nse_nsecm_broadcast_nnfbcast_v6_6.counter_broker_code.display = function(value)
  return "Counter Broker Code: "..value
end

-- Dissect: Counter Broker Code
nse_nsecm_broadcast_nnfbcast_v6_6.counter_broker_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.counter_broker_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.counter_broker_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.counter_broker_code, range, value, display)

  return offset + length, value
end

-- Credit Rating
nse_nsecm_broadcast_nnfbcast_v6_6.credit_rating = {}

-- Size: Credit Rating
nse_nsecm_broadcast_nnfbcast_v6_6.credit_rating.size = 19

-- Display: Credit Rating
nse_nsecm_broadcast_nnfbcast_v6_6.credit_rating.display = function(value)
  return "Credit Rating: "..value
end

-- Dissect: Credit Rating
nse_nsecm_broadcast_nnfbcast_v6_6.credit_rating.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.credit_rating.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.credit_rating.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.credit_rating, range, value, display)

  return offset + length, value
end

-- Delete Flag
nse_nsecm_broadcast_nnfbcast_v6_6.delete_flag = {}

-- Size: Delete Flag
nse_nsecm_broadcast_nnfbcast_v6_6.delete_flag.size = 1

-- Display: Delete Flag
nse_nsecm_broadcast_nnfbcast_v6_6.delete_flag.display = function(value)
  return "Delete Flag: "..value
end

-- Dissect: Delete Flag
nse_nsecm_broadcast_nnfbcast_v6_6.delete_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.delete_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.delete_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.delete_flag, range, value, display)

  return offset + length, value
end

-- End Date
nse_nsecm_broadcast_nnfbcast_v6_6.end_date = {}

-- Size: End Date
nse_nsecm_broadcast_nnfbcast_v6_6.end_date.size = 4

-- Dissect: End Date
nse_nsecm_broadcast_nnfbcast_v6_6.end_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.end_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.end_date
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.end_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Error Code
nse_nsecm_broadcast_nnfbcast_v6_6.error_code = {}

-- Size: Error Code
nse_nsecm_broadcast_nnfbcast_v6_6.error_code.size = 2

-- Display: Error Code
nse_nsecm_broadcast_nnfbcast_v6_6.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
nse_nsecm_broadcast_nnfbcast_v6_6.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.error_code, range, value, display)

  return offset + length, value
end

-- Expiry Date
nse_nsecm_broadcast_nnfbcast_v6_6.expiry_date = {}

-- Size: Expiry Date
nse_nsecm_broadcast_nnfbcast_v6_6.expiry_date.size = 4

-- Dissect: Expiry Date
nse_nsecm_broadcast_nnfbcast_v6_6.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.expiry_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.expiry_date
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.expiry_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Expulsion Date
nse_nsecm_broadcast_nnfbcast_v6_6.expulsion_date = {}

-- Size: Expulsion Date
nse_nsecm_broadcast_nnfbcast_v6_6.expulsion_date.size = 4

-- Dissect: Expulsion Date
nse_nsecm_broadcast_nnfbcast_v6_6.expulsion_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.expulsion_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.expulsion_date
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.expulsion_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Face Value
nse_nsecm_broadcast_nnfbcast_v6_6.face_value = {}

-- Size: Face Value
nse_nsecm_broadcast_nnfbcast_v6_6.face_value.size = 4

-- Display: Face Value
nse_nsecm_broadcast_nnfbcast_v6_6.face_value.display = function(value)
  return "Face Value: "..value
end

-- Dissect: Face Value
nse_nsecm_broadcast_nnfbcast_v6_6.face_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.face_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.face_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.face_value, range, value, display)

  return offset + length, value
end

-- Fifth Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.fifth_reserved_4 = {}

-- Size: Fifth Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.fifth_reserved_4.size = 4

-- Display: Fifth Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.fifth_reserved_4.display = function(value)
  return "Fifth Reserved 4: "..value
end

-- Dissect: Fifth Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.fifth_reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.fifth_reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.fifth_reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.fifth_reserved_4, range, value, display)

  return offset + length, value
end

-- Fill Price
nse_nsecm_broadcast_nnfbcast_v6_6.fill_price = {}

-- Size: Fill Price
nse_nsecm_broadcast_nnfbcast_v6_6.fill_price.size = 4

-- Display: Fill Price
nse_nsecm_broadcast_nnfbcast_v6_6.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Translate: Fill Price
nse_nsecm_broadcast_nnfbcast_v6_6.fill_price.translate = function(raw)
  return raw/100
end

-- Dissect: Fill Price
nse_nsecm_broadcast_nnfbcast_v6_6.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.fill_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.fill_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Volume
nse_nsecm_broadcast_nnfbcast_v6_6.fill_volume = {}

-- Size: Fill Volume
nse_nsecm_broadcast_nnfbcast_v6_6.fill_volume.size = 4

-- Display: Fill Volume
nse_nsecm_broadcast_nnfbcast_v6_6.fill_volume.display = function(value)
  return "Fill Volume: "..value
end

-- Dissect: Fill Volume
nse_nsecm_broadcast_nnfbcast_v6_6.fill_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.fill_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.fill_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.fill_volume, range, value, display)

  return offset + length, value
end

-- Filler 1
nse_nsecm_broadcast_nnfbcast_v6_6.filler_1 = {}

-- Size: Filler 1
nse_nsecm_broadcast_nnfbcast_v6_6.filler_1.size = 1

-- Display: Filler 1
nse_nsecm_broadcast_nnfbcast_v6_6.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
nse_nsecm_broadcast_nnfbcast_v6_6.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.filler_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 2
nse_nsecm_broadcast_nnfbcast_v6_6.filler_2 = {}

-- Size: Filler 2
nse_nsecm_broadcast_nnfbcast_v6_6.filler_2.size = 8

-- Display: Filler 2
nse_nsecm_broadcast_nnfbcast_v6_6.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
nse_nsecm_broadcast_nnfbcast_v6_6.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.filler_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Filler 4
nse_nsecm_broadcast_nnfbcast_v6_6.filler_4 = {}

-- Size: Filler 4
nse_nsecm_broadcast_nnfbcast_v6_6.filler_4.size = 4

-- Display: Filler 4
nse_nsecm_broadcast_nnfbcast_v6_6.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
nse_nsecm_broadcast_nnfbcast_v6_6.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.filler_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.filler_4, range, value, display)

  return offset + length, value
end

-- Final
nse_nsecm_broadcast_nnfbcast_v6_6.final = {}

-- Size: Final
nse_nsecm_broadcast_nnfbcast_v6_6.final.size = 1

-- Display: Final
nse_nsecm_broadcast_nnfbcast_v6_6.final.display = function(value)
  return "Final: "..value
end

-- Dissect: Final
nse_nsecm_broadcast_nnfbcast_v6_6.final.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.final.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.final.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.final, range, value, display)

  return offset + length, value
end

-- First Open Price
nse_nsecm_broadcast_nnfbcast_v6_6.first_open_price = {}

-- Size: First Open Price
nse_nsecm_broadcast_nnfbcast_v6_6.first_open_price.size = 4

-- Display: First Open Price
nse_nsecm_broadcast_nnfbcast_v6_6.first_open_price.display = function(value)
  return "First Open Price: "..value
end

-- Translate: First Open Price
nse_nsecm_broadcast_nnfbcast_v6_6.first_open_price.translate = function(raw)
  return raw/100
end

-- Dissect: First Open Price
nse_nsecm_broadcast_nnfbcast_v6_6.first_open_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.first_open_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.first_open_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.first_open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.first_open_price, range, value, display)

  return offset + length, value
end

-- Fourth Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.fourth_reserved_4 = {}

-- Size: Fourth Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.fourth_reserved_4.size = 4

-- Display: Fourth Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.fourth_reserved_4.display = function(value)
  return "Fourth Reserved 4: "..value
end

-- Dissect: Fourth Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.fourth_reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.fourth_reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.fourth_reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.fourth_reserved_4, range, value, display)

  return offset + length, value
end

-- Freeze Percent
nse_nsecm_broadcast_nnfbcast_v6_6.freeze_percent = {}

-- Size: Freeze Percent
nse_nsecm_broadcast_nnfbcast_v6_6.freeze_percent.size = 2

-- Display: Freeze Percent
nse_nsecm_broadcast_nnfbcast_v6_6.freeze_percent.display = function(value)
  return "Freeze Percent: "..value
end

-- Translate: Freeze Percent
nse_nsecm_broadcast_nnfbcast_v6_6.freeze_percent.translate = function(raw)
  return raw/10000
end

-- Dissect: Freeze Percent
nse_nsecm_broadcast_nnfbcast_v6_6.freeze_percent.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.freeze_percent.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.freeze_percent.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.freeze_percent.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.freeze_percent, range, value, display)

  return offset + length, value
end

-- High Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.high_index_value = {}

-- Size: High Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.high_index_value.size = 4

-- Display: High Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.high_index_value.display = function(value)
  return "High Index Value: "..value
end

-- Dissect: High Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.high_index_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.high_index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.high_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.high_index_value, range, value, display)

  return offset + length, value
end

-- High Price
nse_nsecm_broadcast_nnfbcast_v6_6.high_price = {}

-- Size: High Price
nse_nsecm_broadcast_nnfbcast_v6_6.high_price.size = 4

-- Display: High Price
nse_nsecm_broadcast_nnfbcast_v6_6.high_price.display = function(value)
  return "High Price: "..value
end

-- Translate: High Price
nse_nsecm_broadcast_nnfbcast_v6_6.high_price.translate = function(raw)
  return raw/100
end

-- Dissect: High Price
nse_nsecm_broadcast_nnfbcast_v6_6.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.high_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.high_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.high_price, range, value, display)

  return offset + length, value
end

-- Index Name
nse_nsecm_broadcast_nnfbcast_v6_6.index_name = {}

-- Size: Index Name
nse_nsecm_broadcast_nnfbcast_v6_6.index_name.size = 21

-- Display: Index Name
nse_nsecm_broadcast_nnfbcast_v6_6.index_name.display = function(value)
  return "Index Name: "..value
end

-- Dissect: Index Name
nse_nsecm_broadcast_nnfbcast_v6_6.index_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.index_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.index_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.index_name, range, value, display)

  return offset + length, value
end

-- Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.index_value = {}

-- Size: Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.index_value.size = 4

-- Display: Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.index_value.display = function(value)
  return "Index Value: "..value
end

-- Dissect: Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.index_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.index_value, range, value, display)

  return offset + length, value
end

-- Indicative Close Price
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_price = {}

-- Size: Indicative Close Price
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_price.size = 4

-- Display: Indicative Close Price
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_price.display = function(value)
  return "Indicative Close Price: "..value
end

-- Translate: Indicative Close Price
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_price.translate = function(raw)
  return raw/100
end

-- Dissect: Indicative Close Price
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indicative_close_price, range, value, display)

  return offset + length, value
end

-- Indicative Close Value
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_value = {}

-- Size: Indicative Close Value
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_value.size = 4

-- Display: Indicative Close Value
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_value.display = function(value)
  return "Indicative Close Value: "..value
end

-- Dissect: Indicative Close Value
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indicative_close_value, range, value, display)

  return offset + length, value
end

-- Indicative Imbalance Qty
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_imbalance_qty = {}

-- Size: Indicative Imbalance Qty
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_imbalance_qty.size = 8

-- Display: Indicative Imbalance Qty
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_imbalance_qty.display = function(value)
  return "Indicative Imbalance Qty: "..value
end

-- Dissect: Indicative Imbalance Qty
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indicative_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Indicative Traded Qty
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_traded_qty = {}

-- Size: Indicative Traded Qty
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_traded_qty.size = 8

-- Display: Indicative Traded Qty
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_traded_qty.display = function(value)
  return "Indicative Traded Qty: "..value
end

-- Dissect: Indicative Traded Qty
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_traded_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_traded_qty.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_traded_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indicative_traded_qty, range, value, display)

  return offset + length, value
end

-- Industry Name
nse_nsecm_broadcast_nnfbcast_v6_6.industry_name = {}

-- Size: Industry Name
nse_nsecm_broadcast_nnfbcast_v6_6.industry_name.size = 21

-- Display: Industry Name
nse_nsecm_broadcast_nnfbcast_v6_6.industry_name.display = function(value)
  return "Industry Name: "..value
end

-- Dissect: Industry Name
nse_nsecm_broadcast_nnfbcast_v6_6.industry_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.industry_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.industry_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.industry_name, range, value, display)

  return offset + length, value
end

-- Initiator Price
nse_nsecm_broadcast_nnfbcast_v6_6.initiator_price = {}

-- Size: Initiator Price
nse_nsecm_broadcast_nnfbcast_v6_6.initiator_price.size = 4

-- Display: Initiator Price
nse_nsecm_broadcast_nnfbcast_v6_6.initiator_price.display = function(value)
  return "Initiator Price: "..value
end

-- Translate: Initiator Price
nse_nsecm_broadcast_nnfbcast_v6_6.initiator_price.translate = function(raw)
  return raw/100
end

-- Dissect: Initiator Price
nse_nsecm_broadcast_nnfbcast_v6_6.initiator_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.initiator_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.initiator_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.initiator_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.initiator_price, range, value, display)

  return offset + length, value
end

-- Initiator Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.initiator_quantity = {}

-- Size: Initiator Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.initiator_quantity.size = 4

-- Display: Initiator Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.initiator_quantity.display = function(value)
  return "Initiator Quantity: "..value
end

-- Dissect: Initiator Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.initiator_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.initiator_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.initiator_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.initiator_quantity, range, value, display)

  return offset + length, value
end

-- Initiator Type
nse_nsecm_broadcast_nnfbcast_v6_6.initiator_type = {}

-- Size: Initiator Type
nse_nsecm_broadcast_nnfbcast_v6_6.initiator_type.size = 2

-- Display: Initiator Type
nse_nsecm_broadcast_nnfbcast_v6_6.initiator_type.display = function(value)
  return "Initiator Type: "..value
end

-- Dissect: Initiator Type
nse_nsecm_broadcast_nnfbcast_v6_6.initiator_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.initiator_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.initiator_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.initiator_type, range, value, display)

  return offset + length, value
end

-- Instrument Type
nse_nsecm_broadcast_nnfbcast_v6_6.instrument_type = {}

-- Size: Instrument Type
nse_nsecm_broadcast_nnfbcast_v6_6.instrument_type.size = 2

-- Display: Instrument Type
nse_nsecm_broadcast_nnfbcast_v6_6.instrument_type.labels = {
  [0] = "Instrument Type: Equities (0)",
  [1] = "Instrument Type: Preference Shares (1)",
  [2] = "Instrument Type: Debentures (2)",
  [3] = "Instrument Type: Warrants (3)",
  [4] = "Instrument Type: Miscellaneous (4)",
}

nse_nsecm_broadcast_nnfbcast_v6_6.instrument_type.display = function(value)
  return nse_nsecm_broadcast_nnfbcast_v6_6.instrument_type.labels[value] or "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
nse_nsecm_broadcast_nnfbcast_v6_6.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.instrument_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Interest Payment Date
nse_nsecm_broadcast_nnfbcast_v6_6.interest_payment_date = {}

-- Size: Interest Payment Date
nse_nsecm_broadcast_nnfbcast_v6_6.interest_payment_date.size = 4

-- Dissect: Interest Payment Date
nse_nsecm_broadcast_nnfbcast_v6_6.interest_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.interest_payment_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interest_payment_date
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interest_payment_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Isin Number
nse_nsecm_broadcast_nnfbcast_v6_6.isin_number = {}

-- Size: Isin Number
nse_nsecm_broadcast_nnfbcast_v6_6.isin_number.size = 12

-- Display: Isin Number
nse_nsecm_broadcast_nnfbcast_v6_6.isin_number.display = function(value)
  return "Isin Number: "..value
end

-- Dissect: Isin Number
nse_nsecm_broadcast_nnfbcast_v6_6.isin_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.isin_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.isin_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.isin_number, range, value, display)

  return offset + length, value
end

-- Issue Maturity Date
nse_nsecm_broadcast_nnfbcast_v6_6.issue_maturity_date = {}

-- Size: Issue Maturity Date
nse_nsecm_broadcast_nnfbcast_v6_6.issue_maturity_date.size = 4

-- Dissect: Issue Maturity Date
nse_nsecm_broadcast_nnfbcast_v6_6.issue_maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.issue_maturity_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.issue_maturity_date
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.issue_maturity_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Issue Start Date
nse_nsecm_broadcast_nnfbcast_v6_6.issue_start_date = {}

-- Size: Issue Start Date
nse_nsecm_broadcast_nnfbcast_v6_6.issue_start_date.size = 4

-- Dissect: Issue Start Date
nse_nsecm_broadcast_nnfbcast_v6_6.issue_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.issue_start_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.issue_start_date
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.issue_start_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Issued Capital
nse_nsecm_broadcast_nnfbcast_v6_6.issued_capital = {}

-- Size: Issued Capital
nse_nsecm_broadcast_nnfbcast_v6_6.issued_capital.size = 8

-- Display: Issued Capital
nse_nsecm_broadcast_nnfbcast_v6_6.issued_capital.display = function(value)
  return "Issued Capital: "..string.format("%.0f", value)
end

-- Dissect: Issued Capital
nse_nsecm_broadcast_nnfbcast_v6_6.issued_capital.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.issued_capital.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.issued_capital.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.issued_capital, range, value, display)

  return offset + length, value
end

-- Last Trade Price
nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_price = {}

-- Size: Last Trade Price
nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_price.size = 4

-- Display: Last Trade Price
nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_price.display = function(value)
  return "Last Trade Price: "..value
end

-- Translate: Last Trade Price
nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_price.translate = function(raw)
  return raw/100
end

-- Dissect: Last Trade Price
nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_trade_price, range, value, display)

  return offset + length, value
end

-- Last Trade Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_quantity = {}

-- Size: Last Trade Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_quantity.size = 4

-- Display: Last Trade Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_quantity.display = function(value)
  return "Last Trade Quantity: "..value
end

-- Dissect: Last Trade Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_trade_quantity, range, value, display)

  return offset + length, value
end

-- Last Trade Time
nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_time = {}

-- Size: Last Trade Time
nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_time.size = 4

-- Dissect: Last Trade Time
nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_trade_time
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_trade_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Last Traded Price
nse_nsecm_broadcast_nnfbcast_v6_6.last_traded_price = {}

-- Size: Last Traded Price
nse_nsecm_broadcast_nnfbcast_v6_6.last_traded_price.size = 4

-- Display: Last Traded Price
nse_nsecm_broadcast_nnfbcast_v6_6.last_traded_price.display = function(value)
  return "Last Traded Price: "..value
end

-- Translate: Last Traded Price
nse_nsecm_broadcast_nnfbcast_v6_6.last_traded_price.translate = function(raw)
  return raw/100
end

-- Dissect: Last Traded Price
nse_nsecm_broadcast_nnfbcast_v6_6.last_traded_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.last_traded_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.last_traded_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.last_traded_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_traded_price, range, value, display)

  return offset + length, value
end

-- Listing Date
nse_nsecm_broadcast_nnfbcast_v6_6.listing_date = {}

-- Size: Listing Date
nse_nsecm_broadcast_nnfbcast_v6_6.listing_date.size = 4

-- Dissect: Listing Date
nse_nsecm_broadcast_nnfbcast_v6_6.listing_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.listing_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.listing_date
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.listing_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Local Update Date Time
nse_nsecm_broadcast_nnfbcast_v6_6.local_update_date_time = {}

-- Size: Local Update Date Time
nse_nsecm_broadcast_nnfbcast_v6_6.local_update_date_time.size = 4

-- Dissect: Local Update Date Time
nse_nsecm_broadcast_nnfbcast_v6_6.local_update_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.local_update_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.local_update_date_time
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.local_update_date_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Log Time
nse_nsecm_broadcast_nnfbcast_v6_6.log_time = {}

-- Size: Log Time
nse_nsecm_broadcast_nnfbcast_v6_6.log_time.size = 4

-- Display: Log Time
nse_nsecm_broadcast_nnfbcast_v6_6.log_time.display = function(value)
  return "Log Time: "..value
end

-- Dissect: Log Time
nse_nsecm_broadcast_nnfbcast_v6_6.log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.log_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.log_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.log_time, range, value, display)

  return offset + length, value
end

-- Low Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.low_index_value = {}

-- Size: Low Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.low_index_value.size = 4

-- Display: Low Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.low_index_value.display = function(value)
  return "Low Index Value: "..value
end

-- Dissect: Low Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.low_index_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.low_index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.low_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.low_index_value, range, value, display)

  return offset + length, value
end

-- Low Price
nse_nsecm_broadcast_nnfbcast_v6_6.low_price = {}

-- Size: Low Price
nse_nsecm_broadcast_nnfbcast_v6_6.low_price.size = 4

-- Display: Low Price
nse_nsecm_broadcast_nnfbcast_v6_6.low_price.display = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
nse_nsecm_broadcast_nnfbcast_v6_6.low_price.translate = function(raw)
  return raw/100
end

-- Dissect: Low Price
nse_nsecm_broadcast_nnfbcast_v6_6.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.low_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.low_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.low_price, range, value, display)

  return offset + length, value
end

-- Market Capitalisation
nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalisation = {}

-- Size: Market Capitalisation
nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalisation.size = 8

-- Display: Market Capitalisation
nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalisation.display = function(value)
  return "Market Capitalisation: "..string.format("%.0f", value)
end

-- Dissect: Market Capitalisation
nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalisation.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalisation.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalisation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_capitalisation, range, value, display)

  return offset + length, value
end

-- Market Capitalization
nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalization = {}

-- Size: Market Capitalization
nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalization.size = 8

-- Display: Market Capitalization
nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalization.display = function(value)
  return "Market Capitalization: "..string.format("%.0f", value)
end

-- Dissect: Market Capitalization
nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalization.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalization.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalization.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_capitalization, range, value, display)

  return offset + length, value
end

-- Market Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.market_index_value = {}

-- Size: Market Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.market_index_value.size = 4

-- Display: Market Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.market_index_value.display = function(value)
  return "Market Index Value: "..value
end

-- Dissect: Market Index Value
nse_nsecm_broadcast_nnfbcast_v6_6.market_index_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.market_index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.market_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_index_value, range, value, display)

  return offset + length, value
end

-- Market Type
nse_nsecm_broadcast_nnfbcast_v6_6.market_type = {}

-- Size: Market Type
nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size = 2

-- Display: Market Type
nse_nsecm_broadcast_nnfbcast_v6_6.market_type.labels = {
  [1] = "Market Type: Normal (1)",
  [2] = "Market Type: Odd Lot (2)",
  [3] = "Market Type: Spot (3)",
  [4] = "Market Type: Auction (4)",
  [5] = "Market Type: Call Auction One (5)",
  [6] = "Market Type: Call Auction Two (6)",
}

nse_nsecm_broadcast_nnfbcast_v6_6.market_type.display = function(value)
  return nse_nsecm_broadcast_nnfbcast_v6_6.market_type.labels[value] or "Market Type: Unknown("..value..")"
end

-- Dissect: Market Type
nse_nsecm_broadcast_nnfbcast_v6_6.market_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_type, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nsecm_broadcast_nnfbcast_v6_6.message_length = {}

-- Size: Message Length
nse_nsecm_broadcast_nnfbcast_v6_6.message_length.size = 2

-- Display: Message Length
nse_nsecm_broadcast_nnfbcast_v6_6.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nsecm_broadcast_nnfbcast_v6_6.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Min Fill Qty
nse_nsecm_broadcast_nnfbcast_v6_6.min_fill_qty = {}

-- Size: Min Fill Qty
nse_nsecm_broadcast_nnfbcast_v6_6.min_fill_qty.size = 4

-- Display: Min Fill Qty
nse_nsecm_broadcast_nnfbcast_v6_6.min_fill_qty.display = function(value)
  return "Min Fill Qty: "..value
end

-- Dissect: Min Fill Qty
nse_nsecm_broadcast_nnfbcast_v6_6.min_fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.min_fill_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.min_fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.min_fill_qty, range, value, display)

  return offset + length, value
end

-- Mkt Maker Min Qty
nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_min_qty = {}

-- Size: Mkt Maker Min Qty
nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_min_qty.size = 4

-- Display: Mkt Maker Min Qty
nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_min_qty.display = function(value)
  return "Mkt Maker Min Qty: "..value
end

-- Dissect: Mkt Maker Min Qty
nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_min_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_min_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mkt_maker_min_qty, range, value, display)

  return offset + length, value
end

-- Mkt Maker Spread
nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_spread = {}

-- Size: Mkt Maker Spread
nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_spread.size = 4

-- Display: Mkt Maker Spread
nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_spread.display = function(value)
  return "Mkt Maker Spread: "..value
end

-- Dissect: Mkt Maker Spread
nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_spread.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_spread.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mkt_maker_spread, range, value, display)

  return offset + length, value
end

-- Mkt Type
nse_nsecm_broadcast_nnfbcast_v6_6.mkt_type = {}

-- Size: Mkt Type
nse_nsecm_broadcast_nnfbcast_v6_6.mkt_type.size = 2

-- Display: Mkt Type
nse_nsecm_broadcast_nnfbcast_v6_6.mkt_type.labels = {
  [5] = "Mkt Type: Call Auction One (5)",
  [6] = "Mkt Type: Call Auction Two (6)",
}

nse_nsecm_broadcast_nnfbcast_v6_6.mkt_type.display = function(value)
  return nse_nsecm_broadcast_nnfbcast_v6_6.mkt_type.labels[value] or "Mkt Type: Unknown("..value..")"
end

-- Dissect: Mkt Type
nse_nsecm_broadcast_nnfbcast_v6_6.mkt_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.mkt_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.mkt_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mkt_type, range, value, display)

  return offset + length, value
end

-- Name
nse_nsecm_broadcast_nnfbcast_v6_6.name = {}

-- Size: Name
nse_nsecm_broadcast_nnfbcast_v6_6.name.size = 25

-- Display: Name
nse_nsecm_broadcast_nnfbcast_v6_6.name.display = function(value)
  return "Name: "..value
end

-- Dissect: Name
nse_nsecm_broadcast_nnfbcast_v6_6.name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.name, range, value, display)

  return offset + length, value
end

-- Net Change Indicator
nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator = {}

-- Size: Net Change Indicator
nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.size = 1

-- Display: Net Change Indicator
nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.labels = {
  ["+"] = "Net Change Indicator: Increase (+)",
  ["-"] = "Net Change Indicator: Decrease (-)",
}

nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.display = function(value)
  return nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.labels[value] or "Net Change Indicator: Unknown("..value..")"
end

-- Dissect: Net Change Indicator
nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.net_change_indicator, range, value, display)

  return offset + length, value
end

-- Net Id
nse_nsecm_broadcast_nnfbcast_v6_6.net_id = {}

-- Size: Net Id
nse_nsecm_broadcast_nnfbcast_v6_6.net_id.size = 2

-- Display: Net Id
nse_nsecm_broadcast_nnfbcast_v6_6.net_id.display = function(value)
  return "Net Id: "..value
end

-- Dissect: Net Id
nse_nsecm_broadcast_nnfbcast_v6_6.net_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.net_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.net_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.net_id, range, value, display)

  return offset + length, value
end

-- Net Price Change From Closing Price
nse_nsecm_broadcast_nnfbcast_v6_6.net_price_change_from_closing_price = {}

-- Size: Net Price Change From Closing Price
nse_nsecm_broadcast_nnfbcast_v6_6.net_price_change_from_closing_price.size = 4

-- Display: Net Price Change From Closing Price
nse_nsecm_broadcast_nnfbcast_v6_6.net_price_change_from_closing_price.display = function(value)
  return "Net Price Change From Closing Price: "..value
end

-- Translate: Net Price Change From Closing Price
nse_nsecm_broadcast_nnfbcast_v6_6.net_price_change_from_closing_price.translate = function(raw)
  return raw/100
end

-- Dissect: Net Price Change From Closing Price
nse_nsecm_broadcast_nnfbcast_v6_6.net_price_change_from_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.net_price_change_from_closing_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.net_price_change_from_closing_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.net_price_change_from_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.net_price_change_from_closing_price, range, value, display)

  return offset + length, value
end

-- No Delivery End Date
nse_nsecm_broadcast_nnfbcast_v6_6.no_delivery_end_date = {}

-- Size: No Delivery End Date
nse_nsecm_broadcast_nnfbcast_v6_6.no_delivery_end_date.size = 4

-- Dissect: No Delivery End Date
nse_nsecm_broadcast_nnfbcast_v6_6.no_delivery_end_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.no_delivery_end_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.no_delivery_end_date
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.no_delivery_end_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- No Delivery Start Date
nse_nsecm_broadcast_nnfbcast_v6_6.no_delivery_start_date = {}

-- Size: No Delivery Start Date
nse_nsecm_broadcast_nnfbcast_v6_6.no_delivery_start_date.size = 4

-- Dissect: No Delivery Start Date
nse_nsecm_broadcast_nnfbcast_v6_6.no_delivery_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.no_delivery_start_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.no_delivery_start_date
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.no_delivery_start_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- No Of Downmoves
nse_nsecm_broadcast_nnfbcast_v6_6.no_of_downmoves = {}

-- Size: No Of Downmoves
nse_nsecm_broadcast_nnfbcast_v6_6.no_of_downmoves.size = 4

-- Display: No Of Downmoves
nse_nsecm_broadcast_nnfbcast_v6_6.no_of_downmoves.display = function(value)
  return "No Of Downmoves: "..value
end

-- Dissect: No Of Downmoves
nse_nsecm_broadcast_nnfbcast_v6_6.no_of_downmoves.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.no_of_downmoves.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.no_of_downmoves.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.no_of_downmoves, range, value, display)

  return offset + length, value
end

-- No Of Records
nse_nsecm_broadcast_nnfbcast_v6_6.no_of_records = {}

-- Size: No Of Records
nse_nsecm_broadcast_nnfbcast_v6_6.no_of_records.size = 2

-- Display: No Of Records
nse_nsecm_broadcast_nnfbcast_v6_6.no_of_records.display = function(value)
  return "No Of Records: "..value
end

-- Dissect: No Of Records
nse_nsecm_broadcast_nnfbcast_v6_6.no_of_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.no_of_records.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.no_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.no_of_records, range, value, display)

  return offset + length, value
end

-- No Of Upmoves
nse_nsecm_broadcast_nnfbcast_v6_6.no_of_upmoves = {}

-- Size: No Of Upmoves
nse_nsecm_broadcast_nnfbcast_v6_6.no_of_upmoves.size = 4

-- Display: No Of Upmoves
nse_nsecm_broadcast_nnfbcast_v6_6.no_of_upmoves.display = function(value)
  return "No Of Upmoves: "..value
end

-- Dissect: No Of Upmoves
nse_nsecm_broadcast_nnfbcast_v6_6.no_of_upmoves.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.no_of_upmoves.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.no_of_upmoves.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.no_of_upmoves, range, value, display)

  return offset + length, value
end

-- Number Of Orders
nse_nsecm_broadcast_nnfbcast_v6_6.number_of_orders = {}

-- Size: Number Of Orders
nse_nsecm_broadcast_nnfbcast_v6_6.number_of_orders.size = 2

-- Display: Number Of Orders
nse_nsecm_broadcast_nnfbcast_v6_6.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
nse_nsecm_broadcast_nnfbcast_v6_6.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Number Of Packets
nse_nsecm_broadcast_nnfbcast_v6_6.number_of_packets = {}

-- Size: Number Of Packets
nse_nsecm_broadcast_nnfbcast_v6_6.number_of_packets.size = 2

-- Display: Number Of Packets
nse_nsecm_broadcast_nnfbcast_v6_6.number_of_packets.display = function(value)
  return "Number Of Packets: "..value
end

-- Dissect: Number Of Packets
nse_nsecm_broadcast_nnfbcast_v6_6.number_of_packets.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_packets.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_packets.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.number_of_packets, range, value, display)

  return offset + length, value
end

-- Number Of Records
nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records = {}

-- Size: Number Of Records
nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.size = 2

-- Display: Number Of Records
nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.display = function(value)
  return "Number Of Records: "..value
end

-- Dissect: Number Of Records
nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.number_of_records, range, value, display)

  return offset + length, value
end

-- Open Price
nse_nsecm_broadcast_nnfbcast_v6_6.open_price = {}

-- Size: Open Price
nse_nsecm_broadcast_nnfbcast_v6_6.open_price.size = 4

-- Display: Open Price
nse_nsecm_broadcast_nnfbcast_v6_6.open_price.display = function(value)
  return "Open Price: "..value
end

-- Translate: Open Price
nse_nsecm_broadcast_nnfbcast_v6_6.open_price.translate = function(raw)
  return raw/100
end

-- Dissect: Open Price
nse_nsecm_broadcast_nnfbcast_v6_6.open_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.open_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.open_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.open_price, range, value, display)

  return offset + length, value
end

-- Opening Index
nse_nsecm_broadcast_nnfbcast_v6_6.opening_index = {}

-- Size: Opening Index
nse_nsecm_broadcast_nnfbcast_v6_6.opening_index.size = 4

-- Display: Opening Index
nse_nsecm_broadcast_nnfbcast_v6_6.opening_index.display = function(value)
  return "Opening Index: "..value
end

-- Dissect: Opening Index
nse_nsecm_broadcast_nnfbcast_v6_6.opening_index.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.opening_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.opening_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.opening_index, range, value, display)

  return offset + length, value
end

-- Opening Price
nse_nsecm_broadcast_nnfbcast_v6_6.opening_price = {}

-- Size: Opening Price
nse_nsecm_broadcast_nnfbcast_v6_6.opening_price.size = 4

-- Display: Opening Price
nse_nsecm_broadcast_nnfbcast_v6_6.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Translate: Opening Price
nse_nsecm_broadcast_nnfbcast_v6_6.opening_price.translate = function(raw)
  return raw/100
end

-- Dissect: Opening Price
nse_nsecm_broadcast_nnfbcast_v6_6.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.opening_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.opening_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Participant Id
nse_nsecm_broadcast_nnfbcast_v6_6.participant_id = {}

-- Size: Participant Id
nse_nsecm_broadcast_nnfbcast_v6_6.participant_id.size = 12

-- Display: Participant Id
nse_nsecm_broadcast_nnfbcast_v6_6.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
nse_nsecm_broadcast_nnfbcast_v6_6.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Participant Name
nse_nsecm_broadcast_nnfbcast_v6_6.participant_name = {}

-- Size: Participant Name
nse_nsecm_broadcast_nnfbcast_v6_6.participant_name.size = 25

-- Display: Participant Name
nse_nsecm_broadcast_nnfbcast_v6_6.participant_name.display = function(value)
  return "Participant Name: "..value
end

-- Dissect: Participant Name
nse_nsecm_broadcast_nnfbcast_v6_6.participant_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.participant_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.participant_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.participant_name, range, value, display)

  return offset + length, value
end

-- Participant Status
nse_nsecm_broadcast_nnfbcast_v6_6.participant_status = {}

-- Size: Participant Status
nse_nsecm_broadcast_nnfbcast_v6_6.participant_status.size = 1

-- Display: Participant Status
nse_nsecm_broadcast_nnfbcast_v6_6.participant_status.labels = {
  ["S"] = "Participant Status: Suspended (S)",
  ["A"] = "Participant Status: Active (A)",
}

nse_nsecm_broadcast_nnfbcast_v6_6.participant_status.display = function(value)
  return nse_nsecm_broadcast_nnfbcast_v6_6.participant_status.labels[value] or "Participant Status: Unknown("..value..")"
end

-- Dissect: Participant Status
nse_nsecm_broadcast_nnfbcast_v6_6.participant_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.participant_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.participant_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.participant_status, range, value, display)

  return offset + length, value
end

-- Participant Update Date Time
nse_nsecm_broadcast_nnfbcast_v6_6.participant_update_date_time = {}

-- Size: Participant Update Date Time
nse_nsecm_broadcast_nnfbcast_v6_6.participant_update_date_time.size = 4

-- Dissect: Participant Update Date Time
nse_nsecm_broadcast_nnfbcast_v6_6.participant_update_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.participant_update_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.participant_update_date_time
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.participant_update_date_time_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Pday Cum Vol
nse_nsecm_broadcast_nnfbcast_v6_6.pday_cum_vol = {}

-- Size: Pday Cum Vol
nse_nsecm_broadcast_nnfbcast_v6_6.pday_cum_vol.size = 8

-- Display: Pday Cum Vol
nse_nsecm_broadcast_nnfbcast_v6_6.pday_cum_vol.display = function(value)
  return "Pday Cum Vol: "..string.format("%.0f", value)
end

-- Dissect: Pday Cum Vol
nse_nsecm_broadcast_nnfbcast_v6_6.pday_cum_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.pday_cum_vol.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.pday_cum_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.pday_cum_vol, range, value, display)

  return offset + length, value
end

-- Pday High Price
nse_nsecm_broadcast_nnfbcast_v6_6.pday_high_price = {}

-- Size: Pday High Price
nse_nsecm_broadcast_nnfbcast_v6_6.pday_high_price.size = 4

-- Display: Pday High Price
nse_nsecm_broadcast_nnfbcast_v6_6.pday_high_price.display = function(value)
  return "Pday High Price: "..value
end

-- Translate: Pday High Price
nse_nsecm_broadcast_nnfbcast_v6_6.pday_high_price.translate = function(raw)
  return raw/100
end

-- Dissect: Pday High Price
nse_nsecm_broadcast_nnfbcast_v6_6.pday_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.pday_high_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.pday_high_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.pday_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.pday_high_price, range, value, display)

  return offset + length, value
end

-- Pday Low Price
nse_nsecm_broadcast_nnfbcast_v6_6.pday_low_price = {}

-- Size: Pday Low Price
nse_nsecm_broadcast_nnfbcast_v6_6.pday_low_price.size = 4

-- Display: Pday Low Price
nse_nsecm_broadcast_nnfbcast_v6_6.pday_low_price.display = function(value)
  return "Pday Low Price: "..value
end

-- Translate: Pday Low Price
nse_nsecm_broadcast_nnfbcast_v6_6.pday_low_price.translate = function(raw)
  return raw/100
end

-- Dissect: Pday Low Price
nse_nsecm_broadcast_nnfbcast_v6_6.pday_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.pday_low_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.pday_low_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.pday_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.pday_low_price, range, value, display)

  return offset + length, value
end

-- Pday Wt Avg
nse_nsecm_broadcast_nnfbcast_v6_6.pday_wt_avg = {}

-- Size: Pday Wt Avg
nse_nsecm_broadcast_nnfbcast_v6_6.pday_wt_avg.size = 4

-- Display: Pday Wt Avg
nse_nsecm_broadcast_nnfbcast_v6_6.pday_wt_avg.display = function(value)
  return "Pday Wt Avg: "..value
end

-- Translate: Pday Wt Avg
nse_nsecm_broadcast_nnfbcast_v6_6.pday_wt_avg.translate = function(raw)
  return raw/100
end

-- Dissect: Pday Wt Avg
nse_nsecm_broadcast_nnfbcast_v6_6.pday_wt_avg.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.pday_wt_avg.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.pday_wt_avg.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.pday_wt_avg.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.pday_wt_avg, range, value, display)

  return offset + length, value
end

-- Percent Change
nse_nsecm_broadcast_nnfbcast_v6_6.percent_change = {}

-- Size: Percent Change
nse_nsecm_broadcast_nnfbcast_v6_6.percent_change.size = 4

-- Display: Percent Change
nse_nsecm_broadcast_nnfbcast_v6_6.percent_change.display = function(value)
  return "Percent Change: "..value
end

-- Dissect: Percent Change
nse_nsecm_broadcast_nnfbcast_v6_6.percent_change.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.percent_change.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.percent_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.percent_change, range, value, display)

  return offset + length, value
end

-- Permitted To Trade
nse_nsecm_broadcast_nnfbcast_v6_6.permitted_to_trade = {}

-- Size: Permitted To Trade
nse_nsecm_broadcast_nnfbcast_v6_6.permitted_to_trade.size = 2

-- Display: Permitted To Trade
nse_nsecm_broadcast_nnfbcast_v6_6.permitted_to_trade.labels = {
  [0] = "Permitted To Trade: Listed But Not Permitted To Trade (0)",
  [1] = "Permitted To Trade: Permitted To Trade (1)",
  [2] = "Permitted To Trade: Bse Listed (2)",
}

nse_nsecm_broadcast_nnfbcast_v6_6.permitted_to_trade.display = function(value)
  return nse_nsecm_broadcast_nnfbcast_v6_6.permitted_to_trade.labels[value] or "Permitted To Trade: Unknown("..value..")"
end

-- Dissect: Permitted To Trade
nse_nsecm_broadcast_nnfbcast_v6_6.permitted_to_trade.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.permitted_to_trade.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.permitted_to_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.permitted_to_trade, range, value, display)

  return offset + length, value
end

-- Price
nse_nsecm_broadcast_nnfbcast_v6_6.price = {}

-- Size: Price
nse_nsecm_broadcast_nnfbcast_v6_6.price.size = 4

-- Display: Price
nse_nsecm_broadcast_nnfbcast_v6_6.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nsecm_broadcast_nnfbcast_v6_6.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
nse_nsecm_broadcast_nnfbcast_v6_6.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.price, range, value, display)

  return offset + length, value
end

-- Qty
nse_nsecm_broadcast_nnfbcast_v6_6.qty = {}

-- Size: Qty
nse_nsecm_broadcast_nnfbcast_v6_6.qty.size = 4

-- Display: Qty
nse_nsecm_broadcast_nnfbcast_v6_6.qty.display = function(value)
  return "Qty: "..value
end

-- Dissect: Qty
nse_nsecm_broadcast_nnfbcast_v6_6.qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.qty, range, value, display)

  return offset + length, value
end

-- Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.quantity = {}

-- Size: Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.quantity.size = 8

-- Display: Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.quantity.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.quantity, range, value, display)

  return offset + length, value
end

-- Re Admission Date
nse_nsecm_broadcast_nnfbcast_v6_6.re_admission_date = {}

-- Size: Re Admission Date
nse_nsecm_broadcast_nnfbcast_v6_6.re_admission_date.size = 4

-- Dissect: Re Admission Date
nse_nsecm_broadcast_nnfbcast_v6_6.re_admission_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.re_admission_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.re_admission_date
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.re_admission_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Record Date
nse_nsecm_broadcast_nnfbcast_v6_6.record_date = {}

-- Size: Record Date
nse_nsecm_broadcast_nnfbcast_v6_6.record_date.size = 4

-- Dissect: Record Date
nse_nsecm_broadcast_nnfbcast_v6_6.record_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.record_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.record_date
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.record_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Reference Price
nse_nsecm_broadcast_nnfbcast_v6_6.reference_price = {}

-- Size: Reference Price
nse_nsecm_broadcast_nnfbcast_v6_6.reference_price.size = 4

-- Display: Reference Price
nse_nsecm_broadcast_nnfbcast_v6_6.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
nse_nsecm_broadcast_nnfbcast_v6_6.reference_price.translate = function(raw)
  return raw/100
end

-- Dissect: Reference Price
nse_nsecm_broadcast_nnfbcast_v6_6.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.reference_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.reference_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Remark
nse_nsecm_broadcast_nnfbcast_v6_6.remark = {}

-- Size: Remark
nse_nsecm_broadcast_nnfbcast_v6_6.remark.size = 25

-- Display: Remark
nse_nsecm_broadcast_nnfbcast_v6_6.remark.display = function(value)
  return "Remark: "..value
end

-- Dissect: Remark
nse_nsecm_broadcast_nnfbcast_v6_6.remark.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.remark.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.remark.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.remark, range, value, display)

  return offset + length, value
end

-- Reserved 0
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_0 = {}

-- Size: Reserved 0
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_0.size = 2

-- Display: Reserved 0
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_0.display = function(value)
  return "Reserved 0: "..value
end

-- Dissect: Reserved 0
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_0.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_0.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_0.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_0, range, value, display)

  return offset + length, value
end

-- Reserved 1
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_1 = {}

-- Size: Reserved 1
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_1.size = 1

-- Display: Reserved 1
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 14
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_14 = {}

-- Size: Reserved 14
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_14.size = 14

-- Display: Reserved 14
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_14.display = function(value)
  return "Reserved 14: "..value
end

-- Dissect: Reserved 14
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_14.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_14.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_14, range, value, display)

  return offset + length, value
end

-- Reserved 16
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_16 = {}

-- Size: Reserved 16
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_16.size = 16

-- Display: Reserved 16
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 18
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_18 = {}

-- Size: Reserved 18
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_18.size = 1

-- Display: Reserved 18
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_18.display = function(value)
  return "Reserved 18: "..value
end

-- Dissect: Reserved 18
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_18.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_18.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_18.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_18, range, value, display)

  return offset + length, value
end

-- Reserved 19
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_19 = {}

-- Size: Reserved 19
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_19.size = 3

-- Display: Reserved 19
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_19.display = function(value)
  return "Reserved 19: "..value
end

-- Dissect: Reserved 19
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_19.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_19.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_19.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_19, range, value, display)

  return offset + length, value
end

-- Reserved 2
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_2 = {}

-- Size: Reserved 2
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_2.size = 2

-- Display: Reserved 2
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_4 = {}

-- Size: Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_4.size = 4

-- Display: Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_1 = {}

-- Size: Second Reserved 1
nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_1.size = 1

-- Display: Second Reserved 1
nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Second Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_4 = {}

-- Size: Second Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_4.size = 4

-- Display: Second Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_4.display = function(value)
  return "Second Reserved 4: "..value
end

-- Dissect: Second Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.second_reserved_4, range, value, display)

  return offset + length, value
end

-- Sell Ord Cxl Count
nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_count = {}

-- Size: Sell Ord Cxl Count
nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_count.size = 8

-- Display: Sell Ord Cxl Count
nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_count.display = function(value)
  return "Sell Ord Cxl Count: "..value
end

-- Dissect: Sell Ord Cxl Count
nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_count.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_count.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.sell_ord_cxl_count, range, value, display)

  return offset + length, value
end

-- Sell Ord Cxl Vol
nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_vol = {}

-- Size: Sell Ord Cxl Vol
nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_vol.size = 8

-- Display: Sell Ord Cxl Vol
nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_vol.display = function(value)
  return "Sell Ord Cxl Vol: "..value
end

-- Dissect: Sell Ord Cxl Vol
nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_vol.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.sell_ord_cxl_vol, range, value, display)

  return offset + length, value
end

-- Sell Price
nse_nsecm_broadcast_nnfbcast_v6_6.sell_price = {}

-- Size: Sell Price
nse_nsecm_broadcast_nnfbcast_v6_6.sell_price.size = 4

-- Display: Sell Price
nse_nsecm_broadcast_nnfbcast_v6_6.sell_price.display = function(value)
  return "Sell Price: "..value
end

-- Translate: Sell Price
nse_nsecm_broadcast_nnfbcast_v6_6.sell_price.translate = function(raw)
  return raw/100
end

-- Dissect: Sell Price
nse_nsecm_broadcast_nnfbcast_v6_6.sell_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.sell_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.sell_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.sell_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.sell_price, range, value, display)

  return offset + length, value
end

-- Sell Volume
nse_nsecm_broadcast_nnfbcast_v6_6.sell_volume = {}

-- Size: Sell Volume
nse_nsecm_broadcast_nnfbcast_v6_6.sell_volume.size = 8

-- Display: Sell Volume
nse_nsecm_broadcast_nnfbcast_v6_6.sell_volume.display = function(value)
  return "Sell Volume: "..value
end

-- Dissect: Sell Volume
nse_nsecm_broadcast_nnfbcast_v6_6.sell_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.sell_volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.sell_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.sell_volume, range, value, display)

  return offset + length, value
end

-- Series
nse_nsecm_broadcast_nnfbcast_v6_6.series = {}

-- Size: Series
nse_nsecm_broadcast_nnfbcast_v6_6.series.size = 2

-- Display: Series
nse_nsecm_broadcast_nnfbcast_v6_6.series.display = function(value)
  return "Series: "..value
end

-- Dissect: Series
nse_nsecm_broadcast_nnfbcast_v6_6.series.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.series, range, value, display)

  return offset + length, value
end

-- Settlement Period
nse_nsecm_broadcast_nnfbcast_v6_6.settlement_period = {}

-- Size: Settlement Period
nse_nsecm_broadcast_nnfbcast_v6_6.settlement_period.size = 2

-- Display: Settlement Period
nse_nsecm_broadcast_nnfbcast_v6_6.settlement_period.display = function(value)
  return "Settlement Period: "..value
end

-- Dissect: Settlement Period
nse_nsecm_broadcast_nnfbcast_v6_6.settlement_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.settlement_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.settlement_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.settlement_period, range, value, display)

  return offset + length, value
end

-- Settlement Type
nse_nsecm_broadcast_nnfbcast_v6_6.settlement_type = {}

-- Size: Settlement Type
nse_nsecm_broadcast_nnfbcast_v6_6.settlement_type.size = 2

-- Display: Settlement Type
nse_nsecm_broadcast_nnfbcast_v6_6.settlement_type.labels = {
  [0] = "Settlement Type: T Plus Zero Settlement (0)",
  [1] = "Settlement Type: T Plus One Settlement (1)",
}

nse_nsecm_broadcast_nnfbcast_v6_6.settlement_type.display = function(value)
  return nse_nsecm_broadcast_nnfbcast_v6_6.settlement_type.labels[value] or "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
nse_nsecm_broadcast_nnfbcast_v6_6.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.settlement_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Sixth Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.sixth_reserved_4 = {}

-- Size: Sixth Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.sixth_reserved_4.size = 4

-- Display: Sixth Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.sixth_reserved_4.display = function(value)
  return "Sixth Reserved 4: "..value
end

-- Dissect: Sixth Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.sixth_reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.sixth_reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.sixth_reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.sixth_reserved_4, range, value, display)

  return offset + length, value
end

-- Start Date
nse_nsecm_broadcast_nnfbcast_v6_6.start_date = {}

-- Size: Start Date
nse_nsecm_broadcast_nnfbcast_v6_6.start_date.size = 4

-- Dissect: Start Date
nse_nsecm_broadcast_nnfbcast_v6_6.start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.start_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.start_date
  if nse_nsecm_broadcast_nnfbcast_v6_6.absolute_time_base == 1 then field = omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.start_date_utc end

  local seconds = value + 315532800
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Status
nse_nsecm_broadcast_nnfbcast_v6_6.status = {}

-- Size: Status
nse_nsecm_broadcast_nnfbcast_v6_6.status.size = 2

-- Display: Status
nse_nsecm_broadcast_nnfbcast_v6_6.status.labels = {
  [1] = "Status: Preopen (1)",
  [2] = "Status: Open (2)",
  [3] = "Status: Suspended (3)",
  [4] = "Status: Preopen Extended (4)",
  [6] = "Status: Price Discovery (6)",
}

nse_nsecm_broadcast_nnfbcast_v6_6.status.display = function(value)
  return nse_nsecm_broadcast_nnfbcast_v6_6.status.labels[value] or "Status: Unknown("..value..")"
end

-- Dissect: Status
nse_nsecm_broadcast_nnfbcast_v6_6.status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.status, range, value, display)

  return offset + length, value
end

-- Surv Ind
nse_nsecm_broadcast_nnfbcast_v6_6.surv_ind = {}

-- Size: Surv Ind
nse_nsecm_broadcast_nnfbcast_v6_6.surv_ind.size = 2

-- Display: Surv Ind
nse_nsecm_broadcast_nnfbcast_v6_6.surv_ind.display = function(value)
  return "Surv Ind: "..value
end

-- Dissect: Surv Ind
nse_nsecm_broadcast_nnfbcast_v6_6.surv_ind.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.surv_ind.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.surv_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.surv_ind, range, value, display)

  return offset + length, value
end

-- Symbol
nse_nsecm_broadcast_nnfbcast_v6_6.symbol = {}

-- Size: Symbol
nse_nsecm_broadcast_nnfbcast_v6_6.symbol.size = 10

-- Display: Symbol
nse_nsecm_broadcast_nnfbcast_v6_6.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nse_nsecm_broadcast_nnfbcast_v6_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Third Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.third_reserved_4 = {}

-- Size: Third Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.third_reserved_4.size = 4

-- Display: Third Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.third_reserved_4.display = function(value)
  return "Third Reserved 4: "..value
end

-- Dissect: Third Reserved 4
nse_nsecm_broadcast_nnfbcast_v6_6.third_reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.third_reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.third_reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.third_reserved_4, range, value, display)

  return offset + length, value
end

-- Tick Size
nse_nsecm_broadcast_nnfbcast_v6_6.tick_size = {}

-- Size: Tick Size
nse_nsecm_broadcast_nnfbcast_v6_6.tick_size.size = 4

-- Display: Tick Size
nse_nsecm_broadcast_nnfbcast_v6_6.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
nse_nsecm_broadcast_nnfbcast_v6_6.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.tick_size.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Time Stamp 2
nse_nsecm_broadcast_nnfbcast_v6_6.time_stamp_2 = {}

-- Size: Time Stamp 2
nse_nsecm_broadcast_nnfbcast_v6_6.time_stamp_2.size = 8

-- Display: Time Stamp 2
nse_nsecm_broadcast_nnfbcast_v6_6.time_stamp_2.display = function(value)
  return "Time Stamp 2: "..value
end

-- Dissect: Time Stamp 2
nse_nsecm_broadcast_nnfbcast_v6_6.time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.time_stamp_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.time_stamp_2, range, value, display)

  return offset + length, value
end

-- Token Long 4
nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4 = {}

-- Size: Token Long 4
nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.size = 4

-- Display: Token Long 4
nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.display = function(value)
  return "Token Long 4: "..value
end

-- Dissect: Token Long 4
nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.token_long_4, range, value, display)

  return offset + length, value
end

-- Token Short 2
nse_nsecm_broadcast_nnfbcast_v6_6.token_short_2 = {}

-- Size: Token Short 2
nse_nsecm_broadcast_nnfbcast_v6_6.token_short_2.size = 2

-- Display: Token Short 2
nse_nsecm_broadcast_nnfbcast_v6_6.token_short_2.display = function(value)
  return "Token Short 2: "..value
end

-- Dissect: Token Short 2
nse_nsecm_broadcast_nnfbcast_v6_6.token_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.token_short_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.token_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.token_short_2, range, value, display)

  return offset + length, value
end

-- Total Buy Qty
nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_qty = {}

-- Size: Total Buy Qty
nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_qty.size = 4

-- Display: Total Buy Qty
nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_qty.display = function(value)
  return "Total Buy Qty: "..value
end

-- Dissect: Total Buy Qty
nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.total_buy_qty, range, value, display)

  return offset + length, value
end

-- Total Buy Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_quantity = {}

-- Size: Total Buy Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_quantity.size = 8

-- Display: Total Buy Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_quantity.display = function(value)
  return "Total Buy Quantity: "..value
end

-- Dissect: Total Buy Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_quantity.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.total_buy_quantity, range, value, display)

  return offset + length, value
end

-- Total Sell Qty
nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_qty = {}

-- Size: Total Sell Qty
nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_qty.size = 4

-- Display: Total Sell Qty
nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_qty.display = function(value)
  return "Total Sell Qty: "..value
end

-- Dissect: Total Sell Qty
nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.total_sell_qty, range, value, display)

  return offset + length, value
end

-- Total Sell Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_quantity = {}

-- Size: Total Sell Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_quantity.size = 8

-- Display: Total Sell Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_quantity.display = function(value)
  return "Total Sell Quantity: "..value
end

-- Dissect: Total Sell Quantity
nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_quantity.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.total_sell_quantity, range, value, display)

  return offset + length, value
end

-- Trade Number
nse_nsecm_broadcast_nnfbcast_v6_6.trade_number = {}

-- Size: Trade Number
nse_nsecm_broadcast_nnfbcast_v6_6.trade_number.size = 4

-- Display: Trade Number
nse_nsecm_broadcast_nnfbcast_v6_6.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
nse_nsecm_broadcast_nnfbcast_v6_6.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.trade_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Price
nse_nsecm_broadcast_nnfbcast_v6_6.trade_price = {}

-- Size: Trade Price
nse_nsecm_broadcast_nnfbcast_v6_6.trade_price.size = 4

-- Display: Trade Price
nse_nsecm_broadcast_nnfbcast_v6_6.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
nse_nsecm_broadcast_nnfbcast_v6_6.trade_price.translate = function(raw)
  return raw/100
end

-- Dissect: Trade Price
nse_nsecm_broadcast_nnfbcast_v6_6.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.trade_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsecm_broadcast_nnfbcast_v6_6.trade_price.translate(raw)
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Volume
nse_nsecm_broadcast_nnfbcast_v6_6.trade_volume = {}

-- Size: Trade Volume
nse_nsecm_broadcast_nnfbcast_v6_6.trade_volume.size = 4

-- Display: Trade Volume
nse_nsecm_broadcast_nnfbcast_v6_6.trade_volume.display = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
nse_nsecm_broadcast_nnfbcast_v6_6.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.trade_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nsecm_broadcast_nnfbcast_v6_6.trader_id = {}

-- Size: Trader Id
nse_nsecm_broadcast_nnfbcast_v6_6.trader_id.size = 4

-- Display: Trader Id
nse_nsecm_broadcast_nnfbcast_v6_6.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nsecm_broadcast_nnfbcast_v6_6.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trading Status
nse_nsecm_broadcast_nnfbcast_v6_6.trading_status = {}

-- Size: Trading Status
nse_nsecm_broadcast_nnfbcast_v6_6.trading_status.size = 2

-- Display: Trading Status
nse_nsecm_broadcast_nnfbcast_v6_6.trading_status.labels = {
  [1] = "Trading Status: Preopen (1)",
  [2] = "Trading Status: Open (2)",
  [3] = "Trading Status: Suspended (3)",
  [4] = "Trading Status: Preopen Extended (4)",
  [6] = "Trading Status: Price Discovery (6)",
}

nse_nsecm_broadcast_nnfbcast_v6_6.trading_status.display = function(value)
  return nse_nsecm_broadcast_nnfbcast_v6_6.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
nse_nsecm_broadcast_nnfbcast_v6_6.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.trading_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nsecm_broadcast_nnfbcast_v6_6.transaction_code = {}

-- Size: Transaction Code
nse_nsecm_broadcast_nnfbcast_v6_6.transaction_code.size = 2

-- Display: Transaction Code
nse_nsecm_broadcast_nnfbcast_v6_6.transaction_code.labels = {
  [6501] = "Transaction Code: Broadcast Journal Vct Message (6501)",
  [18720] = "Transaction Code: Security Master Change Message (18720)",
  [7306] = "Transaction Code: Participant Master Change Message (7306)",
  [18130] = "Transaction Code: Security Status Change Message (18130)",
  [18707] = "Transaction Code: Security Status Change Preopen Message (18707)",
  [9010] = "Transaction Code: Turnover Exceeded Message (9010)",
  [9011] = "Transaction Code: Broker Reactivated Message (9011)",
  [18700] = "Transaction Code: Auction Inquiry Message (18700)",
  [6581] = "Transaction Code: Auction Status Change Message (6581)",
  [6531] = "Transaction Code: Preopen Shutdown Message (6531)",
  [6664] = "Transaction Code: Preopen Market Order Restricted Message (6664)",
  [6571] = "Transaction Code: Normal Market Preopen Ended Message (6571)",
  [6511] = "Transaction Code: Market Open Message (6511)",
  [6651] = "Transaction Code: Cts Close For Cas Message (6651)",
  [6652] = "Transaction Code: Revised Price Band Completed Message (6652)",
  [6653] = "Transaction Code: Cas Start Message (6653)",
  [6654] = "Transaction Code: Market Order Restricted Message (6654)",
  [6655] = "Transaction Code: Cas End Message (6655)",
  [6521] = "Transaction Code: Market Close Message (6521)",
  [6583] = "Transaction Code: Closing Start Message (6583)",
  [6584] = "Transaction Code: Closing End Message (6584)",
  [7764] = "Transaction Code: Symbol Status Change Action Message (7764)",
  [18703] = "Transaction Code: Ticker And Market Index Message (18703)",
  [7200] = "Transaction Code: Market By Order And Market By Price Message (7200)",
  [7208] = "Transaction Code: Only Market By Price Message (7208)",
  [7201] = "Transaction Code: Market Watch Round Robin Message (7201)",
  [7214] = "Transaction Code: Call Auction Market By Price Message (7214)",
  [7215] = "Transaction Code: Call Auction Market Watch Message (7215)",
  [6013] = "Transaction Code: Security Open Price Message (6013)",
  [6541] = "Transaction Code: Circuit Check Message (6541)",
  [7207] = "Transaction Code: Indices Message (7207)",
  [8207] = "Transaction Code: Indicative Indices Message (8207)",
  [7216] = "Transaction Code: Indices Vix Message (7216)",
  [7203] = "Transaction Code: Industry Indices Message (7203)",
  [18708] = "Transaction Code: Buy Back Message (18708)",
  [7210] = "Transaction Code: Call Auction Order Cancel Update Message (7210)",
  [7338] = "Transaction Code: Cas Reference Price Message (7338)",
}

nse_nsecm_broadcast_nnfbcast_v6_6.transaction_code.display = function(value)
  return nse_nsecm_broadcast_nnfbcast_v6_6.transaction_code.labels[value] or "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nsecm_broadcast_nnfbcast_v6_6.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.transaction_code, range, value, display)

  return offset + length, value
end

-- Volume Traded Today
nse_nsecm_broadcast_nnfbcast_v6_6.volume_traded_today = {}

-- Size: Volume Traded Today
nse_nsecm_broadcast_nnfbcast_v6_6.volume_traded_today.size = 8

-- Display: Volume Traded Today
nse_nsecm_broadcast_nnfbcast_v6_6.volume_traded_today.display = function(value)
  return "Volume Traded Today: "..value
end

-- Dissect: Volume Traded Today
nse_nsecm_broadcast_nnfbcast_v6_6.volume_traded_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.volume_traded_today.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.volume_traded_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.volume_traded_today, range, value, display)

  return offset + length, value
end

-- Warning Type
nse_nsecm_broadcast_nnfbcast_v6_6.warning_type = {}

-- Size: Warning Type
nse_nsecm_broadcast_nnfbcast_v6_6.warning_type.size = 2

-- Display: Warning Type
nse_nsecm_broadcast_nnfbcast_v6_6.warning_type.labels = {
  [1] = "Warning Type: Turnover Limit About To Be Exceeded (1)",
  [2] = "Warning Type: Turnover Limit Exceeded And The Broker Deactivated (2)",
}

nse_nsecm_broadcast_nnfbcast_v6_6.warning_type.display = function(value)
  return nse_nsecm_broadcast_nnfbcast_v6_6.warning_type.labels[value] or "Warning Type: Unknown("..value..")"
end

-- Dissect: Warning Type
nse_nsecm_broadcast_nnfbcast_v6_6.warning_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.warning_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.warning_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.warning_type, range, value, display)

  return offset + length, value
end

-- Yearly High
nse_nsecm_broadcast_nnfbcast_v6_6.yearly_high = {}

-- Size: Yearly High
nse_nsecm_broadcast_nnfbcast_v6_6.yearly_high.size = 4

-- Display: Yearly High
nse_nsecm_broadcast_nnfbcast_v6_6.yearly_high.display = function(value)
  return "Yearly High: "..value
end

-- Dissect: Yearly High
nse_nsecm_broadcast_nnfbcast_v6_6.yearly_high.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.yearly_high.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.yearly_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.yearly_high, range, value, display)

  return offset + length, value
end

-- Yearly Low
nse_nsecm_broadcast_nnfbcast_v6_6.yearly_low = {}

-- Size: Yearly Low
nse_nsecm_broadcast_nnfbcast_v6_6.yearly_low.size = 4

-- Display: Yearly Low
nse_nsecm_broadcast_nnfbcast_v6_6.yearly_low.display = function(value)
  return "Yearly Low: "..value
end

-- Dissect: Yearly Low
nse_nsecm_broadcast_nnfbcast_v6_6.yearly_low.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecm_broadcast_nnfbcast_v6_6.yearly_low.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.yearly_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.yearly_low, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseCm Broadcast NnfBcast 6.6
-----------------------------------------------------------------------

-- Sec Info
nse_nsecm_broadcast_nnfbcast_v6_6.sec_info = {}

-- Size: Sec Info
nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.symbol.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.series.size

-- Display: Sec Info
nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sec Info
nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: CHAR
  index, symbol = nse_nsecm_broadcast_nnfbcast_v6_6.symbol.dissect(buffer, index, packet, parent)

  -- Series: CHAR
  index, series = nse_nsecm_broadcast_nnfbcast_v6_6.series.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sec Info
nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.sec_info, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.fields(buffer, offset, packet, parent)
  end
end

-- Token And Refprice
nse_nsecm_broadcast_nnfbcast_v6_6.token_and_refprice = {}

-- Size: Token And Refprice
nse_nsecm_broadcast_nnfbcast_v6_6.token_and_refprice.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.reference_price.size

-- Display: Token And Refprice
nse_nsecm_broadcast_nnfbcast_v6_6.token_and_refprice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Token And Refprice
nse_nsecm_broadcast_nnfbcast_v6_6.token_and_refprice.fields = function(buffer, offset, packet, parent, token_and_refprice_index)
  local index = offset

  -- Implicit Token And Refprice Index
  if token_and_refprice_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.token_and_refprice_index, token_and_refprice_index)
    iteration:set_generated()
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Token Long 4: LONG
  index, token_long_4 = nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.dissect(buffer, index, packet, parent)

  -- Reference Price: LONG
  index, reference_price = nse_nsecm_broadcast_nnfbcast_v6_6.reference_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Token And Refprice
nse_nsecm_broadcast_nnfbcast_v6_6.token_and_refprice.dissect = function(buffer, offset, packet, parent, token_and_refprice_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.token_and_refprice, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.token_and_refprice.fields(buffer, offset, packet, parent, token_and_refprice_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.token_and_refprice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.token_and_refprice.fields(buffer, offset, packet, parent, token_and_refprice_index)
  end
end

-- Cas Reference Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.cas_reference_price_message = {}

-- Size: Cas Reference Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.cas_reference_price_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.size + 
  20 * nse_nsecm_broadcast_nnfbcast_v6_6.token_and_refprice.size

-- Display: Cas Reference Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.cas_reference_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cas Reference Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.cas_reference_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Token And Refprice
  for token_and_refprice_index = 1, 20 do
    index, token_and_refprice = nse_nsecm_broadcast_nnfbcast_v6_6.token_and_refprice.dissect(buffer, index, packet, parent, token_and_refprice_index)
  end

  return index
end

-- Dissect: Cas Reference Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.cas_reference_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cas_reference_price_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.cas_reference_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.cas_reference_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.cas_reference_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Interactive Ord Cxl Details
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_ord_cxl_details = {}

-- Size: Interactive Ord Cxl Details
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_ord_cxl_details.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.filler_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_count.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_vol.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_count.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_vol.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.reserved_16.size

-- Display: Interactive Ord Cxl Details
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_ord_cxl_details.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Interactive Ord Cxl Details
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_ord_cxl_details.fields = function(buffer, offset, packet, parent, interactive_ord_cxl_details_index)
  local index = offset

  -- Implicit Interactive Ord Cxl Details Index
  if interactive_ord_cxl_details_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interactive_ord_cxl_details_index, interactive_ord_cxl_details_index)
    iteration:set_generated()
  end

  -- Token Long 4: LONG
  index, token_long_4 = nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.dissect(buffer, index, packet, parent)

  -- Filler 4: CHAR
  index, filler_4 = nse_nsecm_broadcast_nnfbcast_v6_6.filler_4.dissect(buffer, index, packet, parent)

  -- Buy Ord Cxl Count: LONG LONG
  index, buy_ord_cxl_count = nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_count.dissect(buffer, index, packet, parent)

  -- Buy Ord Cxl Vol: LONG LONG
  index, buy_ord_cxl_vol = nse_nsecm_broadcast_nnfbcast_v6_6.buy_ord_cxl_vol.dissect(buffer, index, packet, parent)

  -- Sell Ord Cxl Count: LONG LONG
  index, sell_ord_cxl_count = nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_count.dissect(buffer, index, packet, parent)

  -- Sell Ord Cxl Vol: LONG LONG
  index, sell_ord_cxl_vol = nse_nsecm_broadcast_nnfbcast_v6_6.sell_ord_cxl_vol.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  index, reserved_16 = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Interactive Ord Cxl Details
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_ord_cxl_details.dissect = function(buffer, offset, packet, parent, interactive_ord_cxl_details_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interactive_ord_cxl_details, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.interactive_ord_cxl_details.fields(buffer, offset, packet, parent, interactive_ord_cxl_details_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.interactive_ord_cxl_details.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.interactive_ord_cxl_details.fields(buffer, offset, packet, parent, interactive_ord_cxl_details_index)
  end
end

-- Call Auction Order Cancel Update Message
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_order_cancel_update_message = {}

-- Size: Call Auction Order Cancel Update Message
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_order_cancel_update_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.no_of_records.size + 
  8 * nse_nsecm_broadcast_nnfbcast_v6_6.interactive_ord_cxl_details.size

-- Display: Call Auction Order Cancel Update Message
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_order_cancel_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Call Auction Order Cancel Update Message
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_order_cancel_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Of Records: SHORT
  index, no_of_records = nse_nsecm_broadcast_nnfbcast_v6_6.no_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Interactive Ord Cxl Details
  for interactive_ord_cxl_details_index = 1, 8 do
    index, interactive_ord_cxl_details = nse_nsecm_broadcast_nnfbcast_v6_6.interactive_ord_cxl_details.dissect(buffer, index, packet, parent, interactive_ord_cxl_details_index)
  end

  return index
end

-- Dissect: Call Auction Order Cancel Update Message
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_order_cancel_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.call_auction_order_cancel_update_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_order_cancel_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_order_cancel_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_order_cancel_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Buybackdata
nse_nsecm_broadcast_nnfbcast_v6_6.buybackdata = {}

-- Size: Buybackdata
nse_nsecm_broadcast_nnfbcast_v6_6.buybackdata.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.symbol.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.series.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.pday_cum_vol.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.pday_high_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.pday_low_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.pday_wt_avg.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.cday_cum_vol.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.cday_high_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.cday_low_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.cday_wt_avg.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.start_date.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.end_date.size

-- Display: Buybackdata
nse_nsecm_broadcast_nnfbcast_v6_6.buybackdata.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Buybackdata
nse_nsecm_broadcast_nnfbcast_v6_6.buybackdata.fields = function(buffer, offset, packet, parent, buybackdata_index)
  local index = offset

  -- Implicit Buybackdata Index
  if buybackdata_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buybackdata_index, buybackdata_index)
    iteration:set_generated()
  end

  -- Token Long 4: LONG
  index, token_long_4 = nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nsecm_broadcast_nnfbcast_v6_6.symbol.dissect(buffer, index, packet, parent)

  -- Series: CHAR
  index, series = nse_nsecm_broadcast_nnfbcast_v6_6.series.dissect(buffer, index, packet, parent)

  -- Pday Cum Vol: DOUBLE
  index, pday_cum_vol = nse_nsecm_broadcast_nnfbcast_v6_6.pday_cum_vol.dissect(buffer, index, packet, parent)

  -- Pday High Price: LONG
  index, pday_high_price = nse_nsecm_broadcast_nnfbcast_v6_6.pday_high_price.dissect(buffer, index, packet, parent)

  -- Pday Low Price: LONG
  index, pday_low_price = nse_nsecm_broadcast_nnfbcast_v6_6.pday_low_price.dissect(buffer, index, packet, parent)

  -- Pday Wt Avg: LONG
  index, pday_wt_avg = nse_nsecm_broadcast_nnfbcast_v6_6.pday_wt_avg.dissect(buffer, index, packet, parent)

  -- Cday Cum Vol: DOUBLE
  index, cday_cum_vol = nse_nsecm_broadcast_nnfbcast_v6_6.cday_cum_vol.dissect(buffer, index, packet, parent)

  -- Cday High Price: LONG
  index, cday_high_price = nse_nsecm_broadcast_nnfbcast_v6_6.cday_high_price.dissect(buffer, index, packet, parent)

  -- Cday Low Price: LONG
  index, cday_low_price = nse_nsecm_broadcast_nnfbcast_v6_6.cday_low_price.dissect(buffer, index, packet, parent)

  -- Cday Wt Avg: LONG
  index, cday_wt_avg = nse_nsecm_broadcast_nnfbcast_v6_6.cday_wt_avg.dissect(buffer, index, packet, parent)

  -- Start Date: LONG
  index, start_date = nse_nsecm_broadcast_nnfbcast_v6_6.start_date.dissect(buffer, index, packet, parent)

  -- End Date: LONG
  index, end_date = nse_nsecm_broadcast_nnfbcast_v6_6.end_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Buybackdata
nse_nsecm_broadcast_nnfbcast_v6_6.buybackdata.dissect = function(buffer, offset, packet, parent, buybackdata_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buybackdata, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.buybackdata.fields(buffer, offset, packet, parent, buybackdata_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.buybackdata.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.buybackdata.fields(buffer, offset, packet, parent, buybackdata_index)
  end
end

-- Buy Back Message
nse_nsecm_broadcast_nnfbcast_v6_6.buy_back_message = {}

-- Size: Buy Back Message
nse_nsecm_broadcast_nnfbcast_v6_6.buy_back_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.size + 
  6 * nse_nsecm_broadcast_nnfbcast_v6_6.buybackdata.size

-- Display: Buy Back Message
nse_nsecm_broadcast_nnfbcast_v6_6.buy_back_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Buy Back Message
nse_nsecm_broadcast_nnfbcast_v6_6.buy_back_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Buybackdata
  for buybackdata_index = 1, 6 do
    index, buybackdata = nse_nsecm_broadcast_nnfbcast_v6_6.buybackdata.dissect(buffer, index, packet, parent, buybackdata_index)
  end

  return index
end

-- Dissect: Buy Back Message
nse_nsecm_broadcast_nnfbcast_v6_6.buy_back_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buy_back_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.buy_back_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.buy_back_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.buy_back_message.fields(buffer, offset, packet, parent)
  end
end

-- Industry Indices
nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices = {}

-- Size: Industry Indices
nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.industry_name.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.index_value.size

-- Display: Industry Indices
nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Industry Indices
nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices.fields = function(buffer, offset, packet, parent, industry_indices_index)
  local index = offset

  -- Implicit Industry Indices Index
  if industry_indices_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.industry_indices_index, industry_indices_index)
    iteration:set_generated()
  end

  -- Industry Name: CHAR
  index, industry_name = nse_nsecm_broadcast_nnfbcast_v6_6.industry_name.dissect(buffer, index, packet, parent)

  -- Index Value: LONG
  index, index_value = nse_nsecm_broadcast_nnfbcast_v6_6.index_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Industry Indices
nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices.dissect = function(buffer, offset, packet, parent, industry_indices_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.industry_indices, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices.fields(buffer, offset, packet, parent, industry_indices_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices.fields(buffer, offset, packet, parent, industry_indices_index)
  end
end

-- Industry Indices Message
nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices_message = {}

-- Size: Industry Indices Message
nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.size + 
  17 * nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices.size

-- Display: Industry Indices Message
nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Industry Indices Message
nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Industry Indices
  for industry_indices_index = 1, 17 do
    index, industry_indices = nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices.dissect(buffer, index, packet, parent, industry_indices_index)
  end

  return index
end

-- Dissect: Industry Indices Message
nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.industry_indices_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices_message.fields(buffer, offset, packet, parent)
  end
end

-- Indices
nse_nsecm_broadcast_nnfbcast_v6_6.indices = {}

-- Size: Indices
nse_nsecm_broadcast_nnfbcast_v6_6.indices.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.index_name.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.index_value.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.high_index_value.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.low_index_value.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.opening_index.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.closing_index.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.percent_change.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.yearly_high.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.yearly_low.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.no_of_upmoves.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.no_of_downmoves.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalisation.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.filler_1.size

-- Display: Indices
nse_nsecm_broadcast_nnfbcast_v6_6.indices.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indices
nse_nsecm_broadcast_nnfbcast_v6_6.indices.fields = function(buffer, offset, packet, parent, indices_index)
  local index = offset

  -- Implicit Indices Index
  if indices_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indices_index, indices_index)
    iteration:set_generated()
  end

  -- Index Name: CHAR
  index, index_name = nse_nsecm_broadcast_nnfbcast_v6_6.index_name.dissect(buffer, index, packet, parent)

  -- Index Value: LONG
  index, index_value = nse_nsecm_broadcast_nnfbcast_v6_6.index_value.dissect(buffer, index, packet, parent)

  -- High Index Value: LONG
  index, high_index_value = nse_nsecm_broadcast_nnfbcast_v6_6.high_index_value.dissect(buffer, index, packet, parent)

  -- Low Index Value: LONG
  index, low_index_value = nse_nsecm_broadcast_nnfbcast_v6_6.low_index_value.dissect(buffer, index, packet, parent)

  -- Opening Index: LONG
  index, opening_index = nse_nsecm_broadcast_nnfbcast_v6_6.opening_index.dissect(buffer, index, packet, parent)

  -- Closing Index: LONG
  index, closing_index = nse_nsecm_broadcast_nnfbcast_v6_6.closing_index.dissect(buffer, index, packet, parent)

  -- Percent Change: LONG
  index, percent_change = nse_nsecm_broadcast_nnfbcast_v6_6.percent_change.dissect(buffer, index, packet, parent)

  -- Yearly High: LONG
  index, yearly_high = nse_nsecm_broadcast_nnfbcast_v6_6.yearly_high.dissect(buffer, index, packet, parent)

  -- Yearly Low: LONG
  index, yearly_low = nse_nsecm_broadcast_nnfbcast_v6_6.yearly_low.dissect(buffer, index, packet, parent)

  -- No Of Upmoves: LONG
  index, no_of_upmoves = nse_nsecm_broadcast_nnfbcast_v6_6.no_of_upmoves.dissect(buffer, index, packet, parent)

  -- No Of Downmoves: LONG
  index, no_of_downmoves = nse_nsecm_broadcast_nnfbcast_v6_6.no_of_downmoves.dissect(buffer, index, packet, parent)

  -- Market Capitalisation: DOUBLE
  index, market_capitalisation = nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalisation.dissect(buffer, index, packet, parent)

  -- Net Change Indicator: CHAR
  index, net_change_indicator = nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  index, filler_1 = nse_nsecm_broadcast_nnfbcast_v6_6.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indices
nse_nsecm_broadcast_nnfbcast_v6_6.indices.dissect = function(buffer, offset, packet, parent, indices_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indices, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.indices.fields(buffer, offset, packet, parent, indices_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.indices.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.indices.fields(buffer, offset, packet, parent, indices_index)
  end
end

-- Indices Vix Message
nse_nsecm_broadcast_nnfbcast_v6_6.indices_vix_message = {}

-- Size: Indices Vix Message
nse_nsecm_broadcast_nnfbcast_v6_6.indices_vix_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.size + 
  6 * nse_nsecm_broadcast_nnfbcast_v6_6.indices.size

-- Display: Indices Vix Message
nse_nsecm_broadcast_nnfbcast_v6_6.indices_vix_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indices Vix Message
nse_nsecm_broadcast_nnfbcast_v6_6.indices_vix_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Indices
  for indices_index = 1, 6 do
    index, indices = nse_nsecm_broadcast_nnfbcast_v6_6.indices.dissect(buffer, index, packet, parent, indices_index)
  end

  return index
end

-- Dissect: Indices Vix Message
nse_nsecm_broadcast_nnfbcast_v6_6.indices_vix_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indices_vix_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.indices_vix_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.indices_vix_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.indices_vix_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Indices
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices = {}

-- Size: Indicative Indices
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.index_name.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_value.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.reserved_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.third_reserved_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.closing_index.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.percent_change.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.fourth_reserved_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.fifth_reserved_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.change.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.sixth_reserved_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalization.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.filler_1.size

-- Display: Indicative Indices
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Indices
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices.fields = function(buffer, offset, packet, parent, indicative_indices_index)
  local index = offset

  -- Implicit Indicative Indices Index
  if indicative_indices_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indicative_indices_index, indicative_indices_index)
    iteration:set_generated()
  end

  -- Index Name: CHAR
  index, index_name = nse_nsecm_broadcast_nnfbcast_v6_6.index_name.dissect(buffer, index, packet, parent)

  -- Indicative Close Value: LONG
  index, indicative_close_value = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_value.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  index, reserved_4 = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_4.dissect(buffer, index, packet, parent)

  -- Second Reserved 4: CHAR
  index, second_reserved_4 = nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_4.dissect(buffer, index, packet, parent)

  -- Third Reserved 4: CHAR
  index, third_reserved_4 = nse_nsecm_broadcast_nnfbcast_v6_6.third_reserved_4.dissect(buffer, index, packet, parent)

  -- Closing Index: LONG
  index, closing_index = nse_nsecm_broadcast_nnfbcast_v6_6.closing_index.dissect(buffer, index, packet, parent)

  -- Percent Change: LONG
  index, percent_change = nse_nsecm_broadcast_nnfbcast_v6_6.percent_change.dissect(buffer, index, packet, parent)

  -- Fourth Reserved 4: CHAR
  index, fourth_reserved_4 = nse_nsecm_broadcast_nnfbcast_v6_6.fourth_reserved_4.dissect(buffer, index, packet, parent)

  -- Fifth Reserved 4: CHAR
  index, fifth_reserved_4 = nse_nsecm_broadcast_nnfbcast_v6_6.fifth_reserved_4.dissect(buffer, index, packet, parent)

  -- Change: LONG
  index, change = nse_nsecm_broadcast_nnfbcast_v6_6.change.dissect(buffer, index, packet, parent)

  -- Sixth Reserved 4: CHAR
  index, sixth_reserved_4 = nse_nsecm_broadcast_nnfbcast_v6_6.sixth_reserved_4.dissect(buffer, index, packet, parent)

  -- Market Capitalization: DOUBLE
  index, market_capitalization = nse_nsecm_broadcast_nnfbcast_v6_6.market_capitalization.dissect(buffer, index, packet, parent)

  -- Net Change Indicator: CHAR
  index, net_change_indicator = nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  index, filler_1 = nse_nsecm_broadcast_nnfbcast_v6_6.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Indices
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices.dissect = function(buffer, offset, packet, parent, indicative_indices_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indicative_indices, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices.fields(buffer, offset, packet, parent, indicative_indices_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices.fields(buffer, offset, packet, parent, indicative_indices_index)
  end
end

-- Indicative Indices Message
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices_message = {}

-- Size: Indicative Indices Message
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.size + 
  6 * nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices.size

-- Display: Indicative Indices Message
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Indices Message
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Indicative Indices
  for indicative_indices_index = 1, 6 do
    index, indicative_indices = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices.dissect(buffer, index, packet, parent, indicative_indices_index)
  end

  return index
end

-- Dissect: Indicative Indices Message
nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indicative_indices_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices_message.fields(buffer, offset, packet, parent)
  end
end

-- Indices Message
nse_nsecm_broadcast_nnfbcast_v6_6.indices_message = {}

-- Size: Indices Message
nse_nsecm_broadcast_nnfbcast_v6_6.indices_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.size + 
  6 * nse_nsecm_broadcast_nnfbcast_v6_6.indices.size

-- Display: Indices Message
nse_nsecm_broadcast_nnfbcast_v6_6.indices_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indices Message
nse_nsecm_broadcast_nnfbcast_v6_6.indices_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Indices
  for indices_index = 1, 6 do
    index, indices = nse_nsecm_broadcast_nnfbcast_v6_6.indices.dissect(buffer, index, packet, parent, indices_index)
  end

  return index
end

-- Dissect: Indices Message
nse_nsecm_broadcast_nnfbcast_v6_6.indices_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.indices_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.indices_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.indices_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.indices_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Open Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_open_price_message = {}

-- Size: Security Open Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_open_price_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.token_short_2.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.opening_price.size

-- Display: Security Open Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_open_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_open_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Token Short 2: SHORT
  index, token_short_2 = nse_nsecm_broadcast_nnfbcast_v6_6.token_short_2.dissect(buffer, index, packet, parent)

  -- Opening Price: LONG
  index, opening_price = nse_nsecm_broadcast_nnfbcast_v6_6.opening_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_open_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_open_price_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.security_open_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.security_open_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.security_open_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Mbo Mbp Indicator
nse_nsecm_broadcast_nnfbcast_v6_6.mbo_mbp_indicator = {}

-- Size: Mbo Mbp Indicator
nse_nsecm_broadcast_nnfbcast_v6_6.mbo_mbp_indicator.size = 2

-- Display: Mbo Mbp Indicator
nse_nsecm_broadcast_nnfbcast_v6_6.mbo_mbp_indicator.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Sell flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Sell"
  end
  -- Is Buy flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Buy"
  end
  -- Is Last Trade Less flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Last Trade Less"
  end
  -- Is Last Trade More flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Last Trade More"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Mbo Mbp Indicator
nse_nsecm_broadcast_nnfbcast_v6_6.mbo_mbp_indicator.bits = function(range, value, packet, parent)

  -- Reserved 112: 12 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_112, range, value)

  -- Sell: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.sell, range, value)

  -- Buy: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buy, range, value)

  -- Last Trade Less: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_trade_less, range, value)

  -- Last Trade More: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_trade_more, range, value)
end

-- Dissect: Mbo Mbp Indicator
nse_nsecm_broadcast_nnfbcast_v6_6.mbo_mbp_indicator.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecm_broadcast_nnfbcast_v6_6.mbo_mbp_indicator.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.mbo_mbp_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mbo_mbp_indicator, range, display)

  if show.structs then
    nse_nsecm_broadcast_nnfbcast_v6_6.mbo_mbp_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Ca Marketwatchbroadcast
nse_nsecm_broadcast_nnfbcast_v6_6.ca_marketwatchbroadcast = {}

-- Size: Ca Marketwatchbroadcast
nse_nsecm_broadcast_nnfbcast_v6_6.ca_marketwatchbroadcast.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.mkt_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.mbo_mbp_indicator.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.buy_volume.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.buy_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.sell_volume.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.sell_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_time.size

-- Display: Ca Marketwatchbroadcast
nse_nsecm_broadcast_nnfbcast_v6_6.ca_marketwatchbroadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ca Marketwatchbroadcast
nse_nsecm_broadcast_nnfbcast_v6_6.ca_marketwatchbroadcast.fields = function(buffer, offset, packet, parent, ca_marketwatchbroadcast_index)
  local index = offset

  -- Implicit Ca Marketwatchbroadcast Index
  if ca_marketwatchbroadcast_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.ca_marketwatchbroadcast_index, ca_marketwatchbroadcast_index)
    iteration:set_generated()
  end

  -- Token Long 4: LONG
  index, token_long_4 = nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.dissect(buffer, index, packet, parent)

  -- Mkt Type: SHORT
  index, mkt_type = nse_nsecm_broadcast_nnfbcast_v6_6.mkt_type.dissect(buffer, index, packet, parent)

  -- Mbo Mbp Indicator: Struct of 5 fields
  index, mbo_mbp_indicator = nse_nsecm_broadcast_nnfbcast_v6_6.mbo_mbp_indicator.dissect(buffer, index, packet, parent)

  -- Buy Volume: LONG LONG
  index, buy_volume = nse_nsecm_broadcast_nnfbcast_v6_6.buy_volume.dissect(buffer, index, packet, parent)

  -- Buy Price: LONG
  index, buy_price = nse_nsecm_broadcast_nnfbcast_v6_6.buy_price.dissect(buffer, index, packet, parent)

  -- Sell Volume: LONG LONG
  index, sell_volume = nse_nsecm_broadcast_nnfbcast_v6_6.sell_volume.dissect(buffer, index, packet, parent)

  -- Sell Price: LONG
  index, sell_price = nse_nsecm_broadcast_nnfbcast_v6_6.sell_price.dissect(buffer, index, packet, parent)

  -- Last Trade Price: LONG
  index, last_trade_price = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_price.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ca Marketwatchbroadcast
nse_nsecm_broadcast_nnfbcast_v6_6.ca_marketwatchbroadcast.dissect = function(buffer, offset, packet, parent, ca_marketwatchbroadcast_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.ca_marketwatchbroadcast, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.ca_marketwatchbroadcast.fields(buffer, offset, packet, parent, ca_marketwatchbroadcast_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.ca_marketwatchbroadcast.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.ca_marketwatchbroadcast.fields(buffer, offset, packet, parent, ca_marketwatchbroadcast_index)
  end
end

-- Call Auction Market Watch Message
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_watch_message = {}

-- Size: Call Auction Market Watch Message
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_watch_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.no_of_records.size + 
  11 * nse_nsecm_broadcast_nnfbcast_v6_6.ca_marketwatchbroadcast.size

-- Display: Call Auction Market Watch Message
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_watch_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Call Auction Market Watch Message
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_watch_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Of Records: SHORT
  index, no_of_records = nse_nsecm_broadcast_nnfbcast_v6_6.no_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Ca Marketwatchbroadcast
  for ca_marketwatchbroadcast_index = 1, 11 do
    index, ca_marketwatchbroadcast = nse_nsecm_broadcast_nnfbcast_v6_6.ca_marketwatchbroadcast.dissect(buffer, index, packet, parent, ca_marketwatchbroadcast_index)
  end

  return index
end

-- Dissect: Call Auction Market Watch Message
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_watch_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.call_auction_market_watch_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_watch_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_watch_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_watch_message.fields(buffer, offset, packet, parent)
  end
end

-- Mbp Indicator
nse_nsecm_broadcast_nnfbcast_v6_6.mbp_indicator = {}

-- Size: Mbp Indicator
nse_nsecm_broadcast_nnfbcast_v6_6.mbp_indicator.size = 2

-- Display: Mbp Indicator
nse_nsecm_broadcast_nnfbcast_v6_6.mbp_indicator.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Sell flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Sell"
  end
  -- Is Buy flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Buy"
  end
  -- Is Last Trade Less flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Last Trade Less"
  end
  -- Is Last Trade More flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Last Trade More"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Mbp Indicator
nse_nsecm_broadcast_nnfbcast_v6_6.mbp_indicator.bits = function(range, value, packet, parent)

  -- Reserved 112: 12 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_112, range, value)

  -- Sell: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.sell, range, value)

  -- Buy: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.buy, range, value)

  -- Last Trade Less: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_trade_less, range, value)

  -- Last Trade More: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.last_trade_more, range, value)
end

-- Dissect: Mbp Indicator
nse_nsecm_broadcast_nnfbcast_v6_6.mbp_indicator.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecm_broadcast_nnfbcast_v6_6.mbp_indicator.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.mbp_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mbp_indicator, range, display)

  if show.structs then
    nse_nsecm_broadcast_nnfbcast_v6_6.mbp_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mbp Information
nse_nsecm_broadcast_nnfbcast_v6_6.mbp_information = {}

-- Size: Mbp Information
nse_nsecm_broadcast_nnfbcast_v6_6.mbp_information.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.quantity.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.number_of_orders.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.bb_buy_sell_flag.size

-- Display: Mbp Information
nse_nsecm_broadcast_nnfbcast_v6_6.mbp_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mbp Information
nse_nsecm_broadcast_nnfbcast_v6_6.mbp_information.fields = function(buffer, offset, packet, parent, mbp_information_index)
  local index = offset

  -- Implicit Mbp Information Index
  if mbp_information_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mbp_information_index, mbp_information_index)
    iteration:set_generated()
  end

  -- Quantity: LONG LONG
  index, quantity = nse_nsecm_broadcast_nnfbcast_v6_6.quantity.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsecm_broadcast_nnfbcast_v6_6.price.dissect(buffer, index, packet, parent)

  -- Number Of Orders: SHORT
  index, number_of_orders = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_orders.dissect(buffer, index, packet, parent)

  -- Bb Buy Sell Flag: SHORT
  index, bb_buy_sell_flag = nse_nsecm_broadcast_nnfbcast_v6_6.bb_buy_sell_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mbp Information
nse_nsecm_broadcast_nnfbcast_v6_6.mbp_information.dissect = function(buffer, offset, packet, parent, mbp_information_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mbp_information, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.mbp_information.fields(buffer, offset, packet, parent, mbp_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.mbp_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.mbp_information.fields(buffer, offset, packet, parent, mbp_information_index)
  end
end

-- Interactive Call Auction Mbp Data
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_call_auction_mbp_data = {}

-- Size: Interactive Call Auction Mbp Data
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_call_auction_mbp_data.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.book_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.trading_status.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.volume_traded_today.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.indicative_traded_qty.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.last_traded_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.filler_1.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.net_price_change_from_closing_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_quantity.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_time.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.average_trade_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.first_open_price.size + 
  10 * nse_nsecm_broadcast_nnfbcast_v6_6.mbp_information.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_buy_flag.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_sell_flag.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_quantity.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_quantity.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.mbp_indicator.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.closing_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.open_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.high_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.low_price.size

-- Display: Interactive Call Auction Mbp Data
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_call_auction_mbp_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Interactive Call Auction Mbp Data
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_call_auction_mbp_data.fields = function(buffer, offset, packet, parent, interactive_call_auction_mbp_data_index)
  local index = offset

  -- Implicit Interactive Call Auction Mbp Data Index
  if interactive_call_auction_mbp_data_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interactive_call_auction_mbp_data_index, interactive_call_auction_mbp_data_index)
    iteration:set_generated()
  end

  -- Token Long 4: LONG
  index, token_long_4 = nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_broadcast_nnfbcast_v6_6.book_type.dissect(buffer, index, packet, parent)

  -- Trading Status: SHORT
  index, trading_status = nse_nsecm_broadcast_nnfbcast_v6_6.trading_status.dissect(buffer, index, packet, parent)

  -- Volume Traded Today: LONG LONG
  index, volume_traded_today = nse_nsecm_broadcast_nnfbcast_v6_6.volume_traded_today.dissect(buffer, index, packet, parent)

  -- Indicative Traded Qty: LONG LONG
  index, indicative_traded_qty = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_traded_qty.dissect(buffer, index, packet, parent)

  -- Last Traded Price: LONG
  index, last_traded_price = nse_nsecm_broadcast_nnfbcast_v6_6.last_traded_price.dissect(buffer, index, packet, parent)

  -- Net Change Indicator: CHAR
  index, net_change_indicator = nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  index, filler_1 = nse_nsecm_broadcast_nnfbcast_v6_6.filler_1.dissect(buffer, index, packet, parent)

  -- Net Price Change From Closing Price: LONG
  index, net_price_change_from_closing_price = nse_nsecm_broadcast_nnfbcast_v6_6.net_price_change_from_closing_price.dissect(buffer, index, packet, parent)

  -- Last Trade Quantity: LONG
  index, last_trade_quantity = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_quantity.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_time.dissect(buffer, index, packet, parent)

  -- Average Trade Price: LONG
  index, average_trade_price = nse_nsecm_broadcast_nnfbcast_v6_6.average_trade_price.dissect(buffer, index, packet, parent)

  -- First Open Price: LONG
  index, first_open_price = nse_nsecm_broadcast_nnfbcast_v6_6.first_open_price.dissect(buffer, index, packet, parent)

  -- Array Of: Mbp Information
  for mbp_information_index = 1, 10 do
    index, mbp_information = nse_nsecm_broadcast_nnfbcast_v6_6.mbp_information.dissect(buffer, index, packet, parent, mbp_information_index)
  end

  -- Bb Total Buy Flag: SHORT
  index, bb_total_buy_flag = nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_buy_flag.dissect(buffer, index, packet, parent)

  -- Bb Total Sell Flag: SHORT
  index, bb_total_sell_flag = nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_sell_flag.dissect(buffer, index, packet, parent)

  -- Total Buy Quantity: LONG LONG
  index, total_buy_quantity = nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_quantity.dissect(buffer, index, packet, parent)

  -- Total Sell Quantity: LONG LONG
  index, total_sell_quantity = nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_quantity.dissect(buffer, index, packet, parent)

  -- Mbp Indicator: Struct of 5 fields
  index, mbp_indicator = nse_nsecm_broadcast_nnfbcast_v6_6.mbp_indicator.dissect(buffer, index, packet, parent)

  -- Closing Price: LONG
  index, closing_price = nse_nsecm_broadcast_nnfbcast_v6_6.closing_price.dissect(buffer, index, packet, parent)

  -- Open Price: LONG
  index, open_price = nse_nsecm_broadcast_nnfbcast_v6_6.open_price.dissect(buffer, index, packet, parent)

  -- High Price: LONG
  index, high_price = nse_nsecm_broadcast_nnfbcast_v6_6.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: LONG
  index, low_price = nse_nsecm_broadcast_nnfbcast_v6_6.low_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Interactive Call Auction Mbp Data
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_call_auction_mbp_data.dissect = function(buffer, offset, packet, parent, interactive_call_auction_mbp_data_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interactive_call_auction_mbp_data, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.interactive_call_auction_mbp_data.fields(buffer, offset, packet, parent, interactive_call_auction_mbp_data_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.interactive_call_auction_mbp_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.interactive_call_auction_mbp_data.fields(buffer, offset, packet, parent, interactive_call_auction_mbp_data_index)
  end
end

-- Call Auction Market By Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_by_price_message = {}

-- Size: Call Auction Market By Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_by_price_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.no_of_records.size + 
  2 * nse_nsecm_broadcast_nnfbcast_v6_6.interactive_call_auction_mbp_data.size

-- Display: Call Auction Market By Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_by_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Call Auction Market By Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_by_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Of Records: SHORT
  index, no_of_records = nse_nsecm_broadcast_nnfbcast_v6_6.no_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Interactive Call Auction Mbp Data
  for interactive_call_auction_mbp_data_index = 1, 2 do
    index, interactive_call_auction_mbp_data = nse_nsecm_broadcast_nnfbcast_v6_6.interactive_call_auction_mbp_data.dissect(buffer, index, packet, parent, interactive_call_auction_mbp_data_index)
  end

  return index
end

-- Dissect: Call Auction Market By Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_by_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.call_auction_market_by_price_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_by_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_by_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_by_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Wise Information
nse_nsecm_broadcast_nnfbcast_v6_6.market_wise_information = {}

-- Size: Market Wise Information
nse_nsecm_broadcast_nnfbcast_v6_6.market_wise_information.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.mbo_mbp_indicator.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.buy_volume.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.buy_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.sell_volume.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.sell_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_time.size

-- Display: Market Wise Information
nse_nsecm_broadcast_nnfbcast_v6_6.market_wise_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wise Information
nse_nsecm_broadcast_nnfbcast_v6_6.market_wise_information.fields = function(buffer, offset, packet, parent, market_wise_information_index)
  local index = offset

  -- Implicit Market Wise Information Index
  if market_wise_information_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_wise_information_index, market_wise_information_index)
    iteration:set_generated()
  end

  -- Mbo Mbp Indicator: Struct of 5 fields
  index, mbo_mbp_indicator = nse_nsecm_broadcast_nnfbcast_v6_6.mbo_mbp_indicator.dissect(buffer, index, packet, parent)

  -- Buy Volume: LONG LONG
  index, buy_volume = nse_nsecm_broadcast_nnfbcast_v6_6.buy_volume.dissect(buffer, index, packet, parent)

  -- Buy Price: LONG
  index, buy_price = nse_nsecm_broadcast_nnfbcast_v6_6.buy_price.dissect(buffer, index, packet, parent)

  -- Sell Volume: LONG LONG
  index, sell_volume = nse_nsecm_broadcast_nnfbcast_v6_6.sell_volume.dissect(buffer, index, packet, parent)

  -- Sell Price: LONG
  index, sell_price = nse_nsecm_broadcast_nnfbcast_v6_6.sell_price.dissect(buffer, index, packet, parent)

  -- Last Trade Price: LONG
  index, last_trade_price = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_price.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wise Information
nse_nsecm_broadcast_nnfbcast_v6_6.market_wise_information.dissect = function(buffer, offset, packet, parent, market_wise_information_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_wise_information, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.market_wise_information.fields(buffer, offset, packet, parent, market_wise_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.market_wise_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.market_wise_information.fields(buffer, offset, packet, parent, market_wise_information_index)
  end
end

-- Marketwatchbroadcast
nse_nsecm_broadcast_nnfbcast_v6_6.marketwatchbroadcast = {}

-- Size: Marketwatchbroadcast
nse_nsecm_broadcast_nnfbcast_v6_6.marketwatchbroadcast.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.size + 
  3 * nse_nsecm_broadcast_nnfbcast_v6_6.market_wise_information.size

-- Display: Marketwatchbroadcast
nse_nsecm_broadcast_nnfbcast_v6_6.marketwatchbroadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Marketwatchbroadcast
nse_nsecm_broadcast_nnfbcast_v6_6.marketwatchbroadcast.fields = function(buffer, offset, packet, parent, marketwatchbroadcast_index)
  local index = offset

  -- Implicit Marketwatchbroadcast Index
  if marketwatchbroadcast_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.marketwatchbroadcast_index, marketwatchbroadcast_index)
    iteration:set_generated()
  end

  -- Token Long 4: LONG
  index, token_long_4 = nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.dissect(buffer, index, packet, parent)

  -- Array Of: Market Wise Information
  for market_wise_information_index = 1, 3 do
    index, market_wise_information = nse_nsecm_broadcast_nnfbcast_v6_6.market_wise_information.dissect(buffer, index, packet, parent, market_wise_information_index)
  end

  return index
end

-- Dissect: Marketwatchbroadcast
nse_nsecm_broadcast_nnfbcast_v6_6.marketwatchbroadcast.dissect = function(buffer, offset, packet, parent, marketwatchbroadcast_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.marketwatchbroadcast, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.marketwatchbroadcast.fields(buffer, offset, packet, parent, marketwatchbroadcast_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.marketwatchbroadcast.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.marketwatchbroadcast.fields(buffer, offset, packet, parent, marketwatchbroadcast_index)
  end
end

-- Market Watch Round Robin Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_watch_round_robin_message = {}

-- Size: Market Watch Round Robin Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_watch_round_robin_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.size + 
  4 * nse_nsecm_broadcast_nnfbcast_v6_6.marketwatchbroadcast.size

-- Display: Market Watch Round Robin Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_watch_round_robin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Watch Round Robin Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_watch_round_robin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Marketwatchbroadcast
  for marketwatchbroadcast_index = 1, 4 do
    index, marketwatchbroadcast = nse_nsecm_broadcast_nnfbcast_v6_6.marketwatchbroadcast.dissect(buffer, index, packet, parent, marketwatchbroadcast_index)
  end

  return index
end

-- Dissect: Market Watch Round Robin Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_watch_round_robin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_watch_round_robin_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.market_watch_round_robin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.market_watch_round_robin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.market_watch_round_robin_message.fields(buffer, offset, packet, parent)
  end
end

-- Interactive Only Mbp Data
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_only_mbp_data = {}

-- Size: Interactive Only Mbp Data
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_only_mbp_data.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.book_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.trading_status.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.volume_traded_today.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.last_traded_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.filler_1.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.net_price_change_from_closing_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_quantity.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_time.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.average_trade_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.reserved_14.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.indicative_imbalance_qty.size + 
  10 * nse_nsecm_broadcast_nnfbcast_v6_6.mbp_information.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_buy_flag.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_sell_flag.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_quantity.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_quantity.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.mbp_indicator.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.closing_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.open_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.high_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.low_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_price.size

-- Display: Interactive Only Mbp Data
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_only_mbp_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Interactive Only Mbp Data
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_only_mbp_data.fields = function(buffer, offset, packet, parent, interactive_only_mbp_data_index)
  local index = offset

  -- Implicit Interactive Only Mbp Data Index
  if interactive_only_mbp_data_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interactive_only_mbp_data_index, interactive_only_mbp_data_index)
    iteration:set_generated()
  end

  -- Token Long 4: LONG
  index, token_long_4 = nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_broadcast_nnfbcast_v6_6.book_type.dissect(buffer, index, packet, parent)

  -- Trading Status: SHORT
  index, trading_status = nse_nsecm_broadcast_nnfbcast_v6_6.trading_status.dissect(buffer, index, packet, parent)

  -- Volume Traded Today: LONG LONG
  index, volume_traded_today = nse_nsecm_broadcast_nnfbcast_v6_6.volume_traded_today.dissect(buffer, index, packet, parent)

  -- Last Traded Price: LONG
  index, last_traded_price = nse_nsecm_broadcast_nnfbcast_v6_6.last_traded_price.dissect(buffer, index, packet, parent)

  -- Net Change Indicator: CHAR
  index, net_change_indicator = nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  index, filler_1 = nse_nsecm_broadcast_nnfbcast_v6_6.filler_1.dissect(buffer, index, packet, parent)

  -- Net Price Change From Closing Price: LONG
  index, net_price_change_from_closing_price = nse_nsecm_broadcast_nnfbcast_v6_6.net_price_change_from_closing_price.dissect(buffer, index, packet, parent)

  -- Last Trade Quantity: LONG
  index, last_trade_quantity = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_quantity.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_time.dissect(buffer, index, packet, parent)

  -- Average Trade Price: LONG
  index, average_trade_price = nse_nsecm_broadcast_nnfbcast_v6_6.average_trade_price.dissect(buffer, index, packet, parent)

  -- Reserved 14: CHAR
  index, reserved_14 = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_14.dissect(buffer, index, packet, parent)

  -- Indicative Imbalance Qty: LONG LONG
  index, indicative_imbalance_qty = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Array Of: Mbp Information
  for mbp_information_index = 1, 10 do
    index, mbp_information = nse_nsecm_broadcast_nnfbcast_v6_6.mbp_information.dissect(buffer, index, packet, parent, mbp_information_index)
  end

  -- Bb Total Buy Flag: SHORT
  index, bb_total_buy_flag = nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_buy_flag.dissect(buffer, index, packet, parent)

  -- Bb Total Sell Flag: SHORT
  index, bb_total_sell_flag = nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_sell_flag.dissect(buffer, index, packet, parent)

  -- Total Buy Quantity: LONG LONG
  index, total_buy_quantity = nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_quantity.dissect(buffer, index, packet, parent)

  -- Total Sell Quantity: LONG LONG
  index, total_sell_quantity = nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_quantity.dissect(buffer, index, packet, parent)

  -- Mbp Indicator: Struct of 5 fields
  index, mbp_indicator = nse_nsecm_broadcast_nnfbcast_v6_6.mbp_indicator.dissect(buffer, index, packet, parent)

  -- Closing Price: LONG
  index, closing_price = nse_nsecm_broadcast_nnfbcast_v6_6.closing_price.dissect(buffer, index, packet, parent)

  -- Open Price: LONG
  index, open_price = nse_nsecm_broadcast_nnfbcast_v6_6.open_price.dissect(buffer, index, packet, parent)

  -- High Price: LONG
  index, high_price = nse_nsecm_broadcast_nnfbcast_v6_6.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: LONG
  index, low_price = nse_nsecm_broadcast_nnfbcast_v6_6.low_price.dissect(buffer, index, packet, parent)

  -- Indicative Close Price: LONG
  index, indicative_close_price = nse_nsecm_broadcast_nnfbcast_v6_6.indicative_close_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Interactive Only Mbp Data
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_only_mbp_data.dissect = function(buffer, offset, packet, parent, interactive_only_mbp_data_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interactive_only_mbp_data, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.interactive_only_mbp_data.fields(buffer, offset, packet, parent, interactive_only_mbp_data_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.interactive_only_mbp_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.interactive_only_mbp_data.fields(buffer, offset, packet, parent, interactive_only_mbp_data_index)
  end
end

-- Only Market By Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.only_market_by_price_message = {}

-- Size: Only Market By Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.only_market_by_price_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.no_of_records.size + 
  2 * nse_nsecm_broadcast_nnfbcast_v6_6.interactive_only_mbp_data.size

-- Display: Only Market By Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.only_market_by_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Only Market By Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.only_market_by_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Of Records: SHORT
  index, no_of_records = nse_nsecm_broadcast_nnfbcast_v6_6.no_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Interactive Only Mbp Data
  for interactive_only_mbp_data_index = 1, 2 do
    index, interactive_only_mbp_data = nse_nsecm_broadcast_nnfbcast_v6_6.interactive_only_mbp_data.dissect(buffer, index, packet, parent, interactive_only_mbp_data_index)
  end

  return index
end

-- Dissect: Only Market By Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.only_market_by_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.only_market_by_price_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.only_market_by_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.only_market_by_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.only_market_by_price_message.fields(buffer, offset, packet, parent)
  end
end

-- St Mbo Mbp Terms
nse_nsecm_broadcast_nnfbcast_v6_6.st_mbo_mbp_terms = {}

-- Size: St Mbo Mbp Terms
nse_nsecm_broadcast_nnfbcast_v6_6.st_mbo_mbp_terms.size = 2

-- Display: St Mbo Mbp Terms
nse_nsecm_broadcast_nnfbcast_v6_6.st_mbo_mbp_terms.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Aon flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Aon"
  end
  -- Is Mf flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Mf"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: St Mbo Mbp Terms
nse_nsecm_broadcast_nnfbcast_v6_6.st_mbo_mbp_terms.bits = function(range, value, packet, parent)

  -- Reserved 114: 14 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_114, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.aon, range, value)

  -- Mf: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mf, range, value)
end

-- Dissect: St Mbo Mbp Terms
nse_nsecm_broadcast_nnfbcast_v6_6.st_mbo_mbp_terms.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecm_broadcast_nnfbcast_v6_6.st_mbo_mbp_terms.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.st_mbo_mbp_terms.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.st_mbo_mbp_terms, range, display)

  if show.structs then
    nse_nsecm_broadcast_nnfbcast_v6_6.st_mbo_mbp_terms.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mbo Information
nse_nsecm_broadcast_nnfbcast_v6_6.mbo_information = {}

-- Size: Mbo Information
nse_nsecm_broadcast_nnfbcast_v6_6.mbo_information.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.trader_id.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.qty.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.st_mbo_mbp_terms.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.min_fill_qty.size

-- Display: Mbo Information
nse_nsecm_broadcast_nnfbcast_v6_6.mbo_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mbo Information
nse_nsecm_broadcast_nnfbcast_v6_6.mbo_information.fields = function(buffer, offset, packet, parent, mbo_information_index)
  local index = offset

  -- Implicit Mbo Information Index
  if mbo_information_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mbo_information_index, mbo_information_index)
    iteration:set_generated()
  end

  -- Trader Id: LONG
  index, trader_id = nse_nsecm_broadcast_nnfbcast_v6_6.trader_id.dissect(buffer, index, packet, parent)

  -- Qty: LONG
  index, qty = nse_nsecm_broadcast_nnfbcast_v6_6.qty.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsecm_broadcast_nnfbcast_v6_6.price.dissect(buffer, index, packet, parent)

  -- St Mbo Mbp Terms: Struct of 3 fields
  index, st_mbo_mbp_terms = nse_nsecm_broadcast_nnfbcast_v6_6.st_mbo_mbp_terms.dissect(buffer, index, packet, parent)

  -- Min Fill Qty: LONG
  index, min_fill_qty = nse_nsecm_broadcast_nnfbcast_v6_6.min_fill_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mbo Information
nse_nsecm_broadcast_nnfbcast_v6_6.mbo_information.dissect = function(buffer, offset, packet, parent, mbo_information_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.mbo_information, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.mbo_information.fields(buffer, offset, packet, parent, mbo_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.mbo_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.mbo_information.fields(buffer, offset, packet, parent, mbo_information_index)
  end
end

-- Interactive Mbo Data
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_mbo_data = {}

-- Size: Interactive Mbo Data
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_mbo_data.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.book_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.trading_status.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.volume_traded_today.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.last_traded_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.filler_1.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.net_price_change_from_closing_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_quantity.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_time.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.average_trade_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.auction_number.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_short_2.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.initiator_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.initiator_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.initiator_quantity.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.auction_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.auction_quantity.size + 
  10 * nse_nsecm_broadcast_nnfbcast_v6_6.mbo_information.size

-- Display: Interactive Mbo Data
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_mbo_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Interactive Mbo Data
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_mbo_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token Long 4: LONG
  index, token_long_4 = nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsecm_broadcast_nnfbcast_v6_6.book_type.dissect(buffer, index, packet, parent)

  -- Trading Status: SHORT
  index, trading_status = nse_nsecm_broadcast_nnfbcast_v6_6.trading_status.dissect(buffer, index, packet, parent)

  -- Volume Traded Today: LONG LONG
  index, volume_traded_today = nse_nsecm_broadcast_nnfbcast_v6_6.volume_traded_today.dissect(buffer, index, packet, parent)

  -- Last Traded Price: LONG
  index, last_traded_price = nse_nsecm_broadcast_nnfbcast_v6_6.last_traded_price.dissect(buffer, index, packet, parent)

  -- Net Change Indicator: CHAR
  index, net_change_indicator = nse_nsecm_broadcast_nnfbcast_v6_6.net_change_indicator.dissect(buffer, index, packet, parent)

  -- Filler 1: CHAR
  index, filler_1 = nse_nsecm_broadcast_nnfbcast_v6_6.filler_1.dissect(buffer, index, packet, parent)

  -- Net Price Change From Closing Price: LONG
  index, net_price_change_from_closing_price = nse_nsecm_broadcast_nnfbcast_v6_6.net_price_change_from_closing_price.dissect(buffer, index, packet, parent)

  -- Last Trade Quantity: LONG
  index, last_trade_quantity = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_quantity.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nsecm_broadcast_nnfbcast_v6_6.last_trade_time.dissect(buffer, index, packet, parent)

  -- Average Trade Price: LONG
  index, average_trade_price = nse_nsecm_broadcast_nnfbcast_v6_6.average_trade_price.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_broadcast_nnfbcast_v6_6.auction_number.dissect(buffer, index, packet, parent)

  -- Auction Status Short 2: SHORT
  index, auction_status_short_2 = nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_short_2.dissect(buffer, index, packet, parent)

  -- Initiator Type: SHORT
  index, initiator_type = nse_nsecm_broadcast_nnfbcast_v6_6.initiator_type.dissect(buffer, index, packet, parent)

  -- Initiator Price: LONG
  index, initiator_price = nse_nsecm_broadcast_nnfbcast_v6_6.initiator_price.dissect(buffer, index, packet, parent)

  -- Initiator Quantity: LONG
  index, initiator_quantity = nse_nsecm_broadcast_nnfbcast_v6_6.initiator_quantity.dissect(buffer, index, packet, parent)

  -- Auction Price: LONG
  index, auction_price = nse_nsecm_broadcast_nnfbcast_v6_6.auction_price.dissect(buffer, index, packet, parent)

  -- Auction Quantity: LONG
  index, auction_quantity = nse_nsecm_broadcast_nnfbcast_v6_6.auction_quantity.dissect(buffer, index, packet, parent)

  -- Array Of: Mbo Information
  for mbo_information_index = 1, 10 do
    index, mbo_information = nse_nsecm_broadcast_nnfbcast_v6_6.mbo_information.dissect(buffer, index, packet, parent, mbo_information_index)
  end

  return index
end

-- Dissect: Interactive Mbo Data
nse_nsecm_broadcast_nnfbcast_v6_6.interactive_mbo_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interactive_mbo_data, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.interactive_mbo_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.interactive_mbo_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.interactive_mbo_data.fields(buffer, offset, packet, parent)
  end
end

-- Market By Order And Market By Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_by_order_and_market_by_price_message = {}

-- Size: Market By Order And Market By Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_by_order_and_market_by_price_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.interactive_mbo_data.size + 
  10 * nse_nsecm_broadcast_nnfbcast_v6_6.mbp_information.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_buy_flag.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_sell_flag.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_quantity.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_quantity.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.mbo_mbp_indicator.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.closing_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.open_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.high_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.low_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.reserved_4.size

-- Display: Market By Order And Market By Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_by_order_and_market_by_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market By Order And Market By Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_by_order_and_market_by_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Interactive Mbo Data: Struct of 19 fields
  index, interactive_mbo_data = nse_nsecm_broadcast_nnfbcast_v6_6.interactive_mbo_data.dissect(buffer, index, packet, parent)

  -- Array Of: Mbp Information
  for mbp_information_index = 1, 10 do
    index, mbp_information = nse_nsecm_broadcast_nnfbcast_v6_6.mbp_information.dissect(buffer, index, packet, parent, mbp_information_index)
  end

  -- Bb Total Buy Flag: SHORT
  index, bb_total_buy_flag = nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_buy_flag.dissect(buffer, index, packet, parent)

  -- Bb Total Sell Flag: SHORT
  index, bb_total_sell_flag = nse_nsecm_broadcast_nnfbcast_v6_6.bb_total_sell_flag.dissect(buffer, index, packet, parent)

  -- Total Buy Quantity: LONG LONG
  index, total_buy_quantity = nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_quantity.dissect(buffer, index, packet, parent)

  -- Total Sell Quantity: LONG LONG
  index, total_sell_quantity = nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_quantity.dissect(buffer, index, packet, parent)

  -- Mbo Mbp Indicator: Struct of 5 fields
  index, mbo_mbp_indicator = nse_nsecm_broadcast_nnfbcast_v6_6.mbo_mbp_indicator.dissect(buffer, index, packet, parent)

  -- Closing Price: LONG
  index, closing_price = nse_nsecm_broadcast_nnfbcast_v6_6.closing_price.dissect(buffer, index, packet, parent)

  -- Open Price: LONG
  index, open_price = nse_nsecm_broadcast_nnfbcast_v6_6.open_price.dissect(buffer, index, packet, parent)

  -- High Price: LONG
  index, high_price = nse_nsecm_broadcast_nnfbcast_v6_6.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: LONG
  index, low_price = nse_nsecm_broadcast_nnfbcast_v6_6.low_price.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  index, reserved_4 = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market By Order And Market By Price Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_by_order_and_market_by_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_by_order_and_market_by_price_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.market_by_order_and_market_by_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.market_by_order_and_market_by_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.market_by_order_and_market_by_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Ticker Index Information
nse_nsecm_broadcast_nnfbcast_v6_6.ticker_index_information = {}

-- Size: Ticker Index Information
nse_nsecm_broadcast_nnfbcast_v6_6.ticker_index_information.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.fill_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.fill_volume.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_index_value.size

-- Display: Ticker Index Information
nse_nsecm_broadcast_nnfbcast_v6_6.ticker_index_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ticker Index Information
nse_nsecm_broadcast_nnfbcast_v6_6.ticker_index_information.fields = function(buffer, offset, packet, parent, ticker_index_information_index)
  local index = offset

  -- Implicit Ticker Index Information Index
  if ticker_index_information_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.ticker_index_information_index, ticker_index_information_index)
    iteration:set_generated()
  end

  -- Token Long 4: LONG
  index, token_long_4 = nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsecm_broadcast_nnfbcast_v6_6.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Volume: LONG
  index, fill_volume = nse_nsecm_broadcast_nnfbcast_v6_6.fill_volume.dissect(buffer, index, packet, parent)

  -- Market Index Value: LONG
  index, market_index_value = nse_nsecm_broadcast_nnfbcast_v6_6.market_index_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ticker Index Information
nse_nsecm_broadcast_nnfbcast_v6_6.ticker_index_information.dissect = function(buffer, offset, packet, parent, ticker_index_information_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.ticker_index_information, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.ticker_index_information.fields(buffer, offset, packet, parent, ticker_index_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.ticker_index_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.ticker_index_information.fields(buffer, offset, packet, parent, ticker_index_information_index)
  end
end

-- Ticker And Market Index Message
nse_nsecm_broadcast_nnfbcast_v6_6.ticker_and_market_index_message = {}

-- Size: Ticker And Market Index Message
nse_nsecm_broadcast_nnfbcast_v6_6.ticker_and_market_index_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.size + 
  28 * nse_nsecm_broadcast_nnfbcast_v6_6.ticker_index_information.size

-- Display: Ticker And Market Index Message
nse_nsecm_broadcast_nnfbcast_v6_6.ticker_and_market_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ticker And Market Index Message
nse_nsecm_broadcast_nnfbcast_v6_6.ticker_and_market_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Ticker Index Information
  for ticker_index_information_index = 1, 28 do
    index, ticker_index_information = nse_nsecm_broadcast_nnfbcast_v6_6.ticker_index_information.dissect(buffer, index, packet, parent, ticker_index_information_index)
  end

  return index
end

-- Dissect: Ticker And Market Index Message
nse_nsecm_broadcast_nnfbcast_v6_6.ticker_and_market_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.ticker_and_market_index_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.ticker_and_market_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.ticker_and_market_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.ticker_and_market_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Status Change Action Message
nse_nsecm_broadcast_nnfbcast_v6_6.symbol_status_change_action_message = {}

-- Size: Symbol Status Change Action Message
nse_nsecm_broadcast_nnfbcast_v6_6.symbol_status_change_action_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.reserved_2.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.action_code_short_2.size

-- Display: Symbol Status Change Action Message
nse_nsecm_broadcast_nnfbcast_v6_6.symbol_status_change_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Status Change Action Message
nse_nsecm_broadcast_nnfbcast_v6_6.symbol_status_change_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_2.dissect(buffer, index, packet, parent)

  -- Action Code Short 2: SHORT
  index, action_code_short_2 = nse_nsecm_broadcast_nnfbcast_v6_6.action_code_short_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Change Action Message
nse_nsecm_broadcast_nnfbcast_v6_6.symbol_status_change_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.symbol_status_change_action_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.symbol_status_change_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.symbol_status_change_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.symbol_status_change_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Broadcast Destination
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination = {}

-- Size: Broadcast Destination
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size = 2

-- Display: Broadcast Destination
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trader Ws flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Trader Ws"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Broadcast Destination
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.bits = function(range, value, packet, parent)

  -- Reserved 115: 15 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_115, range, value)

  -- Trader Ws: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.trader_ws, range, value)
end

-- Dissect: Broadcast Destination
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broadcast_destination, range, display)

  if show.structs then
    nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Closing End Message
nse_nsecm_broadcast_nnfbcast_v6_6.closing_end_message = {}

-- Size: Closing End Message
nse_nsecm_broadcast_nnfbcast_v6_6.closing_end_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size

-- Display: Closing End Message
nse_nsecm_broadcast_nnfbcast_v6_6.closing_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing End Message
nse_nsecm_broadcast_nnfbcast_v6_6.closing_end_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Closing End Message
nse_nsecm_broadcast_nnfbcast_v6_6.closing_end_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.closing_end_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.closing_end_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.closing_end_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.closing_end_message.fields(buffer, offset, packet, parent)
  end
end

-- Closing Start Message
nse_nsecm_broadcast_nnfbcast_v6_6.closing_start_message = {}

-- Size: Closing Start Message
nse_nsecm_broadcast_nnfbcast_v6_6.closing_start_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size

-- Display: Closing Start Message
nse_nsecm_broadcast_nnfbcast_v6_6.closing_start_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Start Message
nse_nsecm_broadcast_nnfbcast_v6_6.closing_start_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Closing Start Message
nse_nsecm_broadcast_nnfbcast_v6_6.closing_start_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.closing_start_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.closing_start_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.closing_start_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.closing_start_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Close Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_close_message = {}

-- Size: Market Close Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_close_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size

-- Display: Market Close Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Close Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Close Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_close_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_close_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.market_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.market_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.market_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Cas End Message
nse_nsecm_broadcast_nnfbcast_v6_6.cas_end_message = {}

-- Size: Cas End Message
nse_nsecm_broadcast_nnfbcast_v6_6.cas_end_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size

-- Display: Cas End Message
nse_nsecm_broadcast_nnfbcast_v6_6.cas_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cas End Message
nse_nsecm_broadcast_nnfbcast_v6_6.cas_end_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cas End Message
nse_nsecm_broadcast_nnfbcast_v6_6.cas_end_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cas_end_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.cas_end_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.cas_end_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.cas_end_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Order Restricted Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_order_restricted_message = {}

-- Size: Market Order Restricted Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_order_restricted_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size

-- Display: Market Order Restricted Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_order_restricted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Order Restricted Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_order_restricted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Order Restricted Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_order_restricted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_order_restricted_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.market_order_restricted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.market_order_restricted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.market_order_restricted_message.fields(buffer, offset, packet, parent)
  end
end

-- Cas Start Message
nse_nsecm_broadcast_nnfbcast_v6_6.cas_start_message = {}

-- Size: Cas Start Message
nse_nsecm_broadcast_nnfbcast_v6_6.cas_start_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size

-- Display: Cas Start Message
nse_nsecm_broadcast_nnfbcast_v6_6.cas_start_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cas Start Message
nse_nsecm_broadcast_nnfbcast_v6_6.cas_start_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cas Start Message
nse_nsecm_broadcast_nnfbcast_v6_6.cas_start_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cas_start_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.cas_start_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.cas_start_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.cas_start_message.fields(buffer, offset, packet, parent)
  end
end

-- Revised Price Band Completed Message
nse_nsecm_broadcast_nnfbcast_v6_6.revised_price_band_completed_message = {}

-- Size: Revised Price Band Completed Message
nse_nsecm_broadcast_nnfbcast_v6_6.revised_price_band_completed_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size

-- Display: Revised Price Band Completed Message
nse_nsecm_broadcast_nnfbcast_v6_6.revised_price_band_completed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Revised Price Band Completed Message
nse_nsecm_broadcast_nnfbcast_v6_6.revised_price_band_completed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Revised Price Band Completed Message
nse_nsecm_broadcast_nnfbcast_v6_6.revised_price_band_completed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.revised_price_band_completed_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.revised_price_band_completed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.revised_price_band_completed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.revised_price_band_completed_message.fields(buffer, offset, packet, parent)
  end
end

-- Cts Close For Cas Message
nse_nsecm_broadcast_nnfbcast_v6_6.cts_close_for_cas_message = {}

-- Size: Cts Close For Cas Message
nse_nsecm_broadcast_nnfbcast_v6_6.cts_close_for_cas_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size

-- Display: Cts Close For Cas Message
nse_nsecm_broadcast_nnfbcast_v6_6.cts_close_for_cas_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cts Close For Cas Message
nse_nsecm_broadcast_nnfbcast_v6_6.cts_close_for_cas_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cts Close For Cas Message
nse_nsecm_broadcast_nnfbcast_v6_6.cts_close_for_cas_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.cts_close_for_cas_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.cts_close_for_cas_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.cts_close_for_cas_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.cts_close_for_cas_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Open Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_open_message = {}

-- Size: Market Open Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_open_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size

-- Display: Market Open Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Open Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Open Message
nse_nsecm_broadcast_nnfbcast_v6_6.market_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.market_open_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.market_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.market_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.market_open_message.fields(buffer, offset, packet, parent)
  end
end

-- Normal Market Preopen Ended Message
nse_nsecm_broadcast_nnfbcast_v6_6.normal_market_preopen_ended_message = {}

-- Size: Normal Market Preopen Ended Message
nse_nsecm_broadcast_nnfbcast_v6_6.normal_market_preopen_ended_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size

-- Display: Normal Market Preopen Ended Message
nse_nsecm_broadcast_nnfbcast_v6_6.normal_market_preopen_ended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Normal Market Preopen Ended Message
nse_nsecm_broadcast_nnfbcast_v6_6.normal_market_preopen_ended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Normal Market Preopen Ended Message
nse_nsecm_broadcast_nnfbcast_v6_6.normal_market_preopen_ended_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.normal_market_preopen_ended_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.normal_market_preopen_ended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.normal_market_preopen_ended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.normal_market_preopen_ended_message.fields(buffer, offset, packet, parent)
  end
end

-- Preopen Market Order Restricted Message
nse_nsecm_broadcast_nnfbcast_v6_6.preopen_market_order_restricted_message = {}

-- Size: Preopen Market Order Restricted Message
nse_nsecm_broadcast_nnfbcast_v6_6.preopen_market_order_restricted_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size

-- Display: Preopen Market Order Restricted Message
nse_nsecm_broadcast_nnfbcast_v6_6.preopen_market_order_restricted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Preopen Market Order Restricted Message
nse_nsecm_broadcast_nnfbcast_v6_6.preopen_market_order_restricted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Preopen Market Order Restricted Message
nse_nsecm_broadcast_nnfbcast_v6_6.preopen_market_order_restricted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.preopen_market_order_restricted_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.preopen_market_order_restricted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.preopen_market_order_restricted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.preopen_market_order_restricted_message.fields(buffer, offset, packet, parent)
  end
end

-- Preopen Shutdown Message
nse_nsecm_broadcast_nnfbcast_v6_6.preopen_shutdown_message = {}

-- Size: Preopen Shutdown Message
nse_nsecm_broadcast_nnfbcast_v6_6.preopen_shutdown_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.market_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size

-- Display: Preopen Shutdown Message
nse_nsecm_broadcast_nnfbcast_v6_6.preopen_shutdown_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Preopen Shutdown Message
nse_nsecm_broadcast_nnfbcast_v6_6.preopen_shutdown_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsecm_broadcast_nnfbcast_v6_6.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Preopen Shutdown Message
nse_nsecm_broadcast_nnfbcast_v6_6.preopen_shutdown_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.preopen_shutdown_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.preopen_shutdown_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.preopen_shutdown_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.preopen_shutdown_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Status Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_change_message = {}

-- Size: Auction Status Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_change_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.auction_number.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_char_1.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.action_code_char_3.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size

-- Display: Auction Status Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Status Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_broadcast_nnfbcast_v6_6.auction_number.dissect(buffer, index, packet, parent)

  -- Auction Status Char 1: CHAR
  index, auction_status_char_1 = nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_char_1.dissect(buffer, index, packet, parent)

  -- Action Code Char 3: CHAR
  index, action_code_char_3 = nse_nsecm_broadcast_nnfbcast_v6_6.action_code_char_3.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Status Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_status_change_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_change_message.fields(buffer, offset, packet, parent)
  end
end

-- St Auction Inq Info
nse_nsecm_broadcast_nnfbcast_v6_6.st_auction_inq_info = {}

-- Size: St Auction Inq Info
nse_nsecm_broadcast_nnfbcast_v6_6.st_auction_inq_info.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.auction_number.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_short_2.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.initiator_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_qty.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.best_buy_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_qty.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.best_sell_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.auction_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.auction_qty.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.settlement_period.size

-- Display: St Auction Inq Info
nse_nsecm_broadcast_nnfbcast_v6_6.st_auction_inq_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Auction Inq Info
nse_nsecm_broadcast_nnfbcast_v6_6.st_auction_inq_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token Long 4: LONG
  index, token_long_4 = nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsecm_broadcast_nnfbcast_v6_6.auction_number.dissect(buffer, index, packet, parent)

  -- Auction Status Short 2: SHORT
  index, auction_status_short_2 = nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_short_2.dissect(buffer, index, packet, parent)

  -- Initiator Type: SHORT
  index, initiator_type = nse_nsecm_broadcast_nnfbcast_v6_6.initiator_type.dissect(buffer, index, packet, parent)

  -- Total Buy Qty: LONG
  index, total_buy_qty = nse_nsecm_broadcast_nnfbcast_v6_6.total_buy_qty.dissect(buffer, index, packet, parent)

  -- Best Buy Price: LONG
  index, best_buy_price = nse_nsecm_broadcast_nnfbcast_v6_6.best_buy_price.dissect(buffer, index, packet, parent)

  -- Total Sell Qty: LONG
  index, total_sell_qty = nse_nsecm_broadcast_nnfbcast_v6_6.total_sell_qty.dissect(buffer, index, packet, parent)

  -- Best Sell Price: LONG
  index, best_sell_price = nse_nsecm_broadcast_nnfbcast_v6_6.best_sell_price.dissect(buffer, index, packet, parent)

  -- Auction Price: LONG
  index, auction_price = nse_nsecm_broadcast_nnfbcast_v6_6.auction_price.dissect(buffer, index, packet, parent)

  -- Auction Qty: LONG
  index, auction_qty = nse_nsecm_broadcast_nnfbcast_v6_6.auction_qty.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nsecm_broadcast_nnfbcast_v6_6.settlement_period.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Auction Inq Info
nse_nsecm_broadcast_nnfbcast_v6_6.st_auction_inq_info.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.st_auction_inq_info, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.st_auction_inq_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.st_auction_inq_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.st_auction_inq_info.fields(buffer, offset, packet, parent)
  end
end

-- Auction Inquiry Message
nse_nsecm_broadcast_nnfbcast_v6_6.auction_inquiry_message = {}

-- Size: Auction Inquiry Message
nse_nsecm_broadcast_nnfbcast_v6_6.auction_inquiry_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.st_auction_inq_info.size

-- Display: Auction Inquiry Message
nse_nsecm_broadcast_nnfbcast_v6_6.auction_inquiry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Inquiry Message
nse_nsecm_broadcast_nnfbcast_v6_6.auction_inquiry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- St Auction Inq Info: Struct of 11 fields
  index, st_auction_inq_info = nse_nsecm_broadcast_nnfbcast_v6_6.st_auction_inq_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Inquiry Message
nse_nsecm_broadcast_nnfbcast_v6_6.auction_inquiry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.auction_inquiry_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.auction_inquiry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.auction_inquiry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.auction_inquiry_message.fields(buffer, offset, packet, parent)
  end
end

-- Broker Reactivated Message
nse_nsecm_broadcast_nnfbcast_v6_6.broker_reactivated_message = {}

-- Size: Broker Reactivated Message
nse_nsecm_broadcast_nnfbcast_v6_6.broker_reactivated_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.broker_code.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.counter_broker_code.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.warning_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.trade_number.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.trade_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.trade_volume.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.final.size

-- Display: Broker Reactivated Message
nse_nsecm_broadcast_nnfbcast_v6_6.broker_reactivated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broker Reactivated Message
nse_nsecm_broadcast_nnfbcast_v6_6.broker_reactivated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Code: CHAR
  index, broker_code = nse_nsecm_broadcast_nnfbcast_v6_6.broker_code.dissect(buffer, index, packet, parent)

  -- Counter Broker Code: CHAR
  index, counter_broker_code = nse_nsecm_broadcast_nnfbcast_v6_6.counter_broker_code.dissect(buffer, index, packet, parent)

  -- Warning Type: SHORT
  index, warning_type = nse_nsecm_broadcast_nnfbcast_v6_6.warning_type.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Trade Number: LONG
  index, trade_number = nse_nsecm_broadcast_nnfbcast_v6_6.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Price: LONG
  index, trade_price = nse_nsecm_broadcast_nnfbcast_v6_6.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: LONG
  index, trade_volume = nse_nsecm_broadcast_nnfbcast_v6_6.trade_volume.dissect(buffer, index, packet, parent)

  -- Final: CHAR
  index, final = nse_nsecm_broadcast_nnfbcast_v6_6.final.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broker Reactivated Message
nse_nsecm_broadcast_nnfbcast_v6_6.broker_reactivated_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broker_reactivated_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.broker_reactivated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.broker_reactivated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.broker_reactivated_message.fields(buffer, offset, packet, parent)
  end
end

-- Turnover Exceeded Message
nse_nsecm_broadcast_nnfbcast_v6_6.turnover_exceeded_message = {}

-- Size: Turnover Exceeded Message
nse_nsecm_broadcast_nnfbcast_v6_6.turnover_exceeded_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.broker_code.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.counter_broker_code.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.warning_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.trade_number.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.trade_price.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.trade_volume.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.final.size

-- Display: Turnover Exceeded Message
nse_nsecm_broadcast_nnfbcast_v6_6.turnover_exceeded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Turnover Exceeded Message
nse_nsecm_broadcast_nnfbcast_v6_6.turnover_exceeded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Code: CHAR
  index, broker_code = nse_nsecm_broadcast_nnfbcast_v6_6.broker_code.dissect(buffer, index, packet, parent)

  -- Counter Broker Code: CHAR
  index, counter_broker_code = nse_nsecm_broadcast_nnfbcast_v6_6.counter_broker_code.dissect(buffer, index, packet, parent)

  -- Warning Type: SHORT
  index, warning_type = nse_nsecm_broadcast_nnfbcast_v6_6.warning_type.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Trade Number: LONG
  index, trade_number = nse_nsecm_broadcast_nnfbcast_v6_6.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Price: LONG
  index, trade_price = nse_nsecm_broadcast_nnfbcast_v6_6.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: LONG
  index, trade_volume = nse_nsecm_broadcast_nnfbcast_v6_6.trade_volume.dissect(buffer, index, packet, parent)

  -- Final: CHAR
  index, final = nse_nsecm_broadcast_nnfbcast_v6_6.final.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Turnover Exceeded Message
nse_nsecm_broadcast_nnfbcast_v6_6.turnover_exceeded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.turnover_exceeded_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.turnover_exceeded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.turnover_exceeded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.turnover_exceeded_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Per Market
nse_nsecm_broadcast_nnfbcast_v6_6.security_status_per_market = {}

-- Size: Security Status Per Market
nse_nsecm_broadcast_nnfbcast_v6_6.security_status_per_market.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.status.size

-- Display: Security Status Per Market
nse_nsecm_broadcast_nnfbcast_v6_6.security_status_per_market.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Per Market
nse_nsecm_broadcast_nnfbcast_v6_6.security_status_per_market.fields = function(buffer, offset, packet, parent, security_status_per_market_index)
  local index = offset

  -- Implicit Security Status Per Market Index
  if security_status_per_market_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_status_per_market_index, security_status_per_market_index)
    iteration:set_generated()
  end

  -- Status: SHORT
  index, status = nse_nsecm_broadcast_nnfbcast_v6_6.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Per Market
nse_nsecm_broadcast_nnfbcast_v6_6.security_status_per_market.dissect = function(buffer, offset, packet, parent, security_status_per_market_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_status_per_market, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.security_status_per_market.fields(buffer, offset, packet, parent, security_status_per_market_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.security_status_per_market.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.security_status_per_market.fields(buffer, offset, packet, parent, security_status_per_market_index)
  end
end

-- Token And Eligibility
nse_nsecm_broadcast_nnfbcast_v6_6.token_and_eligibility = {}

-- Size: Token And Eligibility
nse_nsecm_broadcast_nnfbcast_v6_6.token_and_eligibility.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.size + 
  6 * nse_nsecm_broadcast_nnfbcast_v6_6.security_status_per_market.size

-- Display: Token And Eligibility
nse_nsecm_broadcast_nnfbcast_v6_6.token_and_eligibility.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Token And Eligibility
nse_nsecm_broadcast_nnfbcast_v6_6.token_and_eligibility.fields = function(buffer, offset, packet, parent, token_and_eligibility_index)
  local index = offset

  -- Implicit Token And Eligibility Index
  if token_and_eligibility_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.token_and_eligibility_index, token_and_eligibility_index)
    iteration:set_generated()
  end

  -- Token Long 4: LONG
  index, token_long_4 = nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.dissect(buffer, index, packet, parent)

  -- Array Of: Security Status Per Market
  for security_status_per_market_index = 1, 6 do
    index, security_status_per_market = nse_nsecm_broadcast_nnfbcast_v6_6.security_status_per_market.dissect(buffer, index, packet, parent, security_status_per_market_index)
  end

  return index
end

-- Dissect: Token And Eligibility
nse_nsecm_broadcast_nnfbcast_v6_6.token_and_eligibility.dissect = function(buffer, offset, packet, parent, token_and_eligibility_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.token_and_eligibility, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.token_and_eligibility.fields(buffer, offset, packet, parent, token_and_eligibility_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.token_and_eligibility.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.token_and_eligibility.fields(buffer, offset, packet, parent, token_and_eligibility_index)
  end
end

-- Security Status Change Preopen Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_preopen_message = {}

-- Size: Security Status Change Preopen Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_preopen_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.size + 
  25 * nse_nsecm_broadcast_nnfbcast_v6_6.token_and_eligibility.size

-- Display: Security Status Change Preopen Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_preopen_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Change Preopen Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_preopen_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Token And Eligibility
  for token_and_eligibility_index = 1, 25 do
    index, token_and_eligibility = nse_nsecm_broadcast_nnfbcast_v6_6.token_and_eligibility.dissect(buffer, index, packet, parent, token_and_eligibility_index)
  end

  return index
end

-- Dissect: Security Status Change Preopen Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_preopen_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_status_change_preopen_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_preopen_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_preopen_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_preopen_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_message = {}

-- Size: Security Status Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.size + 
  25 * nse_nsecm_broadcast_nnfbcast_v6_6.token_and_eligibility.size

-- Display: Security Status Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Token And Eligibility
  for token_and_eligibility_index = 1, 25 do
    index, token_and_eligibility = nse_nsecm_broadcast_nnfbcast_v6_6.token_and_eligibility.dissect(buffer, index, packet, parent, token_and_eligibility_index)
  end

  return index
end

-- Dissect: Security Status Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_status_change_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Participant Master Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.participant_master_change_message = {}

-- Size: Participant Master Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.participant_master_change_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.participant_id.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.participant_name.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.participant_status.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.participant_update_date_time.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.delete_flag.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.reserved_1.size

-- Display: Participant Master Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.participant_master_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant Master Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.participant_master_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: CHAR
  index, participant_id = nse_nsecm_broadcast_nnfbcast_v6_6.participant_id.dissect(buffer, index, packet, parent)

  -- Participant Name: CHAR
  index, participant_name = nse_nsecm_broadcast_nnfbcast_v6_6.participant_name.dissect(buffer, index, packet, parent)

  -- Participant Status: CHAR
  index, participant_status = nse_nsecm_broadcast_nnfbcast_v6_6.participant_status.dissect(buffer, index, packet, parent)

  -- Participant Update Date Time: LONG
  index, participant_update_date_time = nse_nsecm_broadcast_nnfbcast_v6_6.participant_update_date_time.dissect(buffer, index, packet, parent)

  -- Delete Flag: CHAR
  index, delete_flag = nse_nsecm_broadcast_nnfbcast_v6_6.delete_flag.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Master Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.participant_master_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.participant_master_change_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.participant_master_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.participant_master_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.participant_master_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Purpose
nse_nsecm_broadcast_nnfbcast_v6_6.purpose = {}

-- Size: Purpose
nse_nsecm_broadcast_nnfbcast_v6_6.purpose.size = 2

-- Display: Purpose
nse_nsecm_broadcast_nnfbcast_v6_6.purpose.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Egm flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "Egm"
  end
  -- Is Agm flag set?
  if bit.band(value, 0x0800) ~= 0 then
    flags[#flags + 1] = "Agm"
  end
  -- Is Interest flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Interest"
  end
  -- Is Bonus flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Bonus"
  end
  -- Is Rights flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Rights"
  end
  -- Is Dividend flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Dividend"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Purpose
nse_nsecm_broadcast_nnfbcast_v6_6.purpose.bits = function(range, value, packet, parent)

  -- Reserved 110: 10 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_110, range, value)

  -- Egm: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.egm, range, value)

  -- Agm: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.agm, range, value)

  -- Interest: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.interest, range, value)

  -- Bonus: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bonus, range, value)

  -- Rights: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.rights, range, value)

  -- Dividend: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.dividend, range, value)
end

-- Dissect: Purpose
nse_nsecm_broadcast_nnfbcast_v6_6.purpose.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecm_broadcast_nnfbcast_v6_6.purpose.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.purpose.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.purpose, range, display)

  if show.structs then
    nse_nsecm_broadcast_nnfbcast_v6_6.purpose.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Eligiblity Indicators
nse_nsecm_broadcast_nnfbcast_v6_6.eligiblity_indicators = {}

-- Size: Eligiblity Indicators
nse_nsecm_broadcast_nnfbcast_v6_6.eligiblity_indicators.size = 2

-- Display: Eligiblity Indicators
nse_nsecm_broadcast_nnfbcast_v6_6.eligiblity_indicators.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Minimum Fill flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Minimum Fill"
  end
  -- Is Aon flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Aon"
  end
  -- Is Participate In Market Index flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Participate In Market Index"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Eligiblity Indicators
nse_nsecm_broadcast_nnfbcast_v6_6.eligiblity_indicators.bits = function(range, value, packet, parent)

  -- Reserved 113: 13 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_113, range, value)

  -- Minimum Fill: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.minimum_fill, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.aon, range, value)

  -- Participate In Market Index: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.participate_in_market_index, range, value)
end

-- Dissect: Eligiblity Indicators
nse_nsecm_broadcast_nnfbcast_v6_6.eligiblity_indicators.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecm_broadcast_nnfbcast_v6_6.eligiblity_indicators.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.eligiblity_indicators.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.eligiblity_indicators, range, display)

  if show.structs then
    nse_nsecm_broadcast_nnfbcast_v6_6.eligiblity_indicators.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Eligibility Flags
nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_flags = {}

-- Size: Security Eligibility Flags
nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_flags.size = 1

-- Display: Security Eligibility Flags
nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Eligibility flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Eligibility"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Eligibility Flags
nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_flags.bits = function(range, value, packet, parent)

  -- Reserved 17: 7 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.reserved_17, range, value)

  -- Eligibility: 1 Bit
  parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.eligibility, range, value)
end

-- Dissect: Security Eligibility Flags
nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_eligibility_flags, range, display)

  if show.structs then
    nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Eligibility Per Market
nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_per_market = {}

-- Size: Security Eligibility Per Market
nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_per_market.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_flags.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.reserved_1.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.status.size

-- Display: Security Eligibility Per Market
nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_per_market.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Eligibility Per Market
nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_per_market.fields = function(buffer, offset, packet, parent, security_eligibility_per_market_index)
  local index = offset

  -- Implicit Security Eligibility Per Market Index
  if security_eligibility_per_market_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_eligibility_per_market_index, security_eligibility_per_market_index)
    iteration:set_generated()
  end

  -- Security Eligibility Flags: Struct of 2 fields
  index, security_eligibility_flags = nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_flags.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Status: SHORT
  index, status = nse_nsecm_broadcast_nnfbcast_v6_6.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Eligibility Per Market
nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_per_market.dissect = function(buffer, offset, packet, parent, security_eligibility_per_market_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_eligibility_per_market, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_per_market.fields(buffer, offset, packet, parent, security_eligibility_per_market_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_per_market.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_per_market.fields(buffer, offset, packet, parent, security_eligibility_per_market_index)
  end
end

-- Security Master Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_master_change_message = {}

-- Size: Security Master Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_master_change_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.instrument_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.permitted_to_trade.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.issued_capital.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.settlement_type.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.freeze_percent.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.credit_rating.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.reserved_1.size + 
  6 * nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_per_market.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.surv_ind.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.issue_start_date.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.interest_payment_date.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.issue_maturity_date.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.board_lot_quantity.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.tick_size.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.name.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_1.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.listing_date.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.expulsion_date.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.re_admission_date.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.record_date.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.expiry_date.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.no_delivery_start_date.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.no_delivery_end_date.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.eligiblity_indicators.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.book_closure_start_date.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.book_closure_end_date.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.purpose.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.local_update_date_time.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.delete_flag.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.remark.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.face_value.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.isin_number.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_spread.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_min_qty.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_1_flag.size

-- Display: Security Master Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_master_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Master Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_master_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token Long 4: LONG
  index, token_long_4 = nse_nsecm_broadcast_nnfbcast_v6_6.token_long_4.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nsecm_broadcast_nnfbcast_v6_6.sec_info.dissect(buffer, index, packet, parent)

  -- Instrument Type: SHORT
  index, instrument_type = nse_nsecm_broadcast_nnfbcast_v6_6.instrument_type.dissect(buffer, index, packet, parent)

  -- Permitted To Trade: SHORT
  index, permitted_to_trade = nse_nsecm_broadcast_nnfbcast_v6_6.permitted_to_trade.dissect(buffer, index, packet, parent)

  -- Issued Capital: DOUBLE
  index, issued_capital = nse_nsecm_broadcast_nnfbcast_v6_6.issued_capital.dissect(buffer, index, packet, parent)

  -- Settlement Type: SHORT
  index, settlement_type = nse_nsecm_broadcast_nnfbcast_v6_6.settlement_type.dissect(buffer, index, packet, parent)

  -- Freeze Percent: SHORT
  index, freeze_percent = nse_nsecm_broadcast_nnfbcast_v6_6.freeze_percent.dissect(buffer, index, packet, parent)

  -- Credit Rating: CHAR
  index, credit_rating = nse_nsecm_broadcast_nnfbcast_v6_6.credit_rating.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Array Of: Security Eligibility Per Market
  for security_eligibility_per_market_index = 1, 6 do
    index, security_eligibility_per_market = nse_nsecm_broadcast_nnfbcast_v6_6.security_eligibility_per_market.dissect(buffer, index, packet, parent, security_eligibility_per_market_index)
  end

  -- Surv Ind: SHORT
  index, surv_ind = nse_nsecm_broadcast_nnfbcast_v6_6.surv_ind.dissect(buffer, index, packet, parent)

  -- Issue Start Date: LONG
  index, issue_start_date = nse_nsecm_broadcast_nnfbcast_v6_6.issue_start_date.dissect(buffer, index, packet, parent)

  -- Interest Payment Date: LONG
  index, interest_payment_date = nse_nsecm_broadcast_nnfbcast_v6_6.interest_payment_date.dissect(buffer, index, packet, parent)

  -- Issue Maturity Date: LONG
  index, issue_maturity_date = nse_nsecm_broadcast_nnfbcast_v6_6.issue_maturity_date.dissect(buffer, index, packet, parent)

  -- Board Lot Quantity: LONG
  index, board_lot_quantity = nse_nsecm_broadcast_nnfbcast_v6_6.board_lot_quantity.dissect(buffer, index, packet, parent)

  -- Tick Size: LONG
  index, tick_size = nse_nsecm_broadcast_nnfbcast_v6_6.tick_size.dissect(buffer, index, packet, parent)

  -- Name: CHAR
  index, name = nse_nsecm_broadcast_nnfbcast_v6_6.name.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  index, second_reserved_1 = nse_nsecm_broadcast_nnfbcast_v6_6.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Listing Date: LONG
  index, listing_date = nse_nsecm_broadcast_nnfbcast_v6_6.listing_date.dissect(buffer, index, packet, parent)

  -- Expulsion Date: LONG
  index, expulsion_date = nse_nsecm_broadcast_nnfbcast_v6_6.expulsion_date.dissect(buffer, index, packet, parent)

  -- Re Admission Date: LONG
  index, re_admission_date = nse_nsecm_broadcast_nnfbcast_v6_6.re_admission_date.dissect(buffer, index, packet, parent)

  -- Record Date: LONG
  index, record_date = nse_nsecm_broadcast_nnfbcast_v6_6.record_date.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nsecm_broadcast_nnfbcast_v6_6.expiry_date.dissect(buffer, index, packet, parent)

  -- No Delivery Start Date: LONG
  index, no_delivery_start_date = nse_nsecm_broadcast_nnfbcast_v6_6.no_delivery_start_date.dissect(buffer, index, packet, parent)

  -- No Delivery End Date: LONG
  index, no_delivery_end_date = nse_nsecm_broadcast_nnfbcast_v6_6.no_delivery_end_date.dissect(buffer, index, packet, parent)

  -- Eligiblity Indicators: Struct of 4 fields
  index, eligiblity_indicators = nse_nsecm_broadcast_nnfbcast_v6_6.eligiblity_indicators.dissect(buffer, index, packet, parent)

  -- Book Closure Start Date: LONG
  index, book_closure_start_date = nse_nsecm_broadcast_nnfbcast_v6_6.book_closure_start_date.dissect(buffer, index, packet, parent)

  -- Book Closure End Date: LONG
  index, book_closure_end_date = nse_nsecm_broadcast_nnfbcast_v6_6.book_closure_end_date.dissect(buffer, index, packet, parent)

  -- Purpose: Struct of 7 fields
  index, purpose = nse_nsecm_broadcast_nnfbcast_v6_6.purpose.dissect(buffer, index, packet, parent)

  -- Local Update Date Time: LONG
  index, local_update_date_time = nse_nsecm_broadcast_nnfbcast_v6_6.local_update_date_time.dissect(buffer, index, packet, parent)

  -- Delete Flag: CHAR
  index, delete_flag = nse_nsecm_broadcast_nnfbcast_v6_6.delete_flag.dissect(buffer, index, packet, parent)

  -- Remark: CHAR
  index, remark = nse_nsecm_broadcast_nnfbcast_v6_6.remark.dissect(buffer, index, packet, parent)

  -- Face Value: LONG
  index, face_value = nse_nsecm_broadcast_nnfbcast_v6_6.face_value.dissect(buffer, index, packet, parent)

  -- Isin Number: CHAR
  index, isin_number = nse_nsecm_broadcast_nnfbcast_v6_6.isin_number.dissect(buffer, index, packet, parent)

  -- Mkt Maker Spread: LONG
  index, mkt_maker_spread = nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_spread.dissect(buffer, index, packet, parent)

  -- Mkt Maker Min Qty: LONG
  index, mkt_maker_min_qty = nse_nsecm_broadcast_nnfbcast_v6_6.mkt_maker_min_qty.dissect(buffer, index, packet, parent)

  -- Call Auction 1 Flag: SHORT
  index, call_auction_1_flag = nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_1_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Master Change Message
nse_nsecm_broadcast_nnfbcast_v6_6.security_master_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.security_master_change_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.security_master_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.security_master_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.security_master_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Broadcast Journal Vct Message
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_journal_vct_message = {}

-- Size: Broadcast Journal Vct Message
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_journal_vct_message.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.branch_number.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broker_number.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.action_code_char_3.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.reserved_4.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.size

-- Display: Broadcast Journal Vct Message
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_journal_vct_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broadcast Journal Vct Message
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_journal_vct_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Branch Number: SHORT
  index, branch_number = nse_nsecm_broadcast_nnfbcast_v6_6.branch_number.dissect(buffer, index, packet, parent)

  -- Broker Number: CHAR
  index, broker_number = nse_nsecm_broadcast_nnfbcast_v6_6.broker_number.dissect(buffer, index, packet, parent)

  -- Action Code Char 3: CHAR
  index, action_code_char_3 = nse_nsecm_broadcast_nnfbcast_v6_6.action_code_char_3.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  index, reserved_4 = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_4.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broadcast Journal Vct Message
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_journal_vct_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broadcast_journal_vct_message, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_journal_vct_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_journal_vct_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_journal_vct_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Payload
nse_nsecm_broadcast_nnfbcast_v6_6.message_payload = {}

-- Dissect: Message Payload
nse_nsecm_broadcast_nnfbcast_v6_6.message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  -- Dissect Broadcast Journal Vct Message
  if transaction_code == 6501 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_journal_vct_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Master Change Message
  if transaction_code == 18720 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.security_master_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Participant Master Change Message
  if transaction_code == 7306 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.participant_master_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Change Message
  if transaction_code == 18130 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Change Preopen Message
  if transaction_code == 18707 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.security_status_change_preopen_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Turnover Exceeded Message
  if transaction_code == 9010 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.turnover_exceeded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broker Reactivated Message
  if transaction_code == 9011 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.broker_reactivated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Inquiry Message
  if transaction_code == 18700 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.auction_inquiry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Status Change Message
  if transaction_code == 6581 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.auction_status_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Preopen Shutdown Message
  if transaction_code == 6531 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.preopen_shutdown_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Preopen Market Order Restricted Message
  if transaction_code == 6664 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.preopen_market_order_restricted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Normal Market Preopen Ended Message
  if transaction_code == 6571 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.normal_market_preopen_ended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Open Message
  if transaction_code == 6511 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.market_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cts Close For Cas Message
  if transaction_code == 6651 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.cts_close_for_cas_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Revised Price Band Completed Message
  if transaction_code == 6652 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.revised_price_band_completed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cas Start Message
  if transaction_code == 6653 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.cas_start_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Order Restricted Message
  if transaction_code == 6654 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.market_order_restricted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cas End Message
  if transaction_code == 6655 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.cas_end_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Close Message
  if transaction_code == 6521 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.market_close_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Closing Start Message
  if transaction_code == 6583 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.closing_start_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Closing End Message
  if transaction_code == 6584 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.closing_end_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Status Change Action Message
  if transaction_code == 7764 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.symbol_status_change_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ticker And Market Index Message
  if transaction_code == 18703 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.ticker_and_market_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market By Order And Market By Price Message
  if transaction_code == 7200 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.market_by_order_and_market_by_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Only Market By Price Message
  if transaction_code == 7208 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.only_market_by_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Watch Round Robin Message
  if transaction_code == 7201 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.market_watch_round_robin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Call Auction Market By Price Message
  if transaction_code == 7214 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_by_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Call Auction Market Watch Message
  if transaction_code == 7215 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_market_watch_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Price Message
  if transaction_code == 6013 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.security_open_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Circuit Check Message
  if transaction_code == 6541 then
    return offset
  end
  -- Dissect Indices Message
  if transaction_code == 7207 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.indices_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indicative Indices Message
  if transaction_code == 8207 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.indicative_indices_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indices Vix Message
  if transaction_code == 7216 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.indices_vix_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Industry Indices Message
  if transaction_code == 7203 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.industry_indices_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Buy Back Message
  if transaction_code == 18708 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.buy_back_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Call Auction Order Cancel Update Message
  if transaction_code == 7210 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.call_auction_order_cancel_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cas Reference Price Message
  if transaction_code == 7338 then
    return nse_nsecm_broadcast_nnfbcast_v6_6.cas_reference_price_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Bcast Header
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_header = {}

-- Size: Bcast Header
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_header.size =
  nse_nsecm_broadcast_nnfbcast_v6_6.reserved_0.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.reserved_2.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.log_time.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.alpha_char.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.transaction_code.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.error_code.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.bc_seq_no.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.reserved_18.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.reserved_19.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.time_stamp_2.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.filler_2.size + 
  nse_nsecm_broadcast_nnfbcast_v6_6.message_length.size

-- Display: Bcast Header
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bcast Header
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 0: CHAR
  index, reserved_0 = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_0.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_2.dissect(buffer, index, packet, parent)

  -- Log Time: LONG
  index, log_time = nse_nsecm_broadcast_nnfbcast_v6_6.log_time.dissect(buffer, index, packet, parent)

  -- Alpha Char: CHAR
  index, alpha_char = nse_nsecm_broadcast_nnfbcast_v6_6.alpha_char.dissect(buffer, index, packet, parent)

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsecm_broadcast_nnfbcast_v6_6.transaction_code.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nsecm_broadcast_nnfbcast_v6_6.error_code.dissect(buffer, index, packet, parent)

  -- Bc Seq No: LONG
  index, bc_seq_no = nse_nsecm_broadcast_nnfbcast_v6_6.bc_seq_no.dissect(buffer, index, packet, parent)

  -- Reserved 18: CHAR
  index, reserved_18 = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_18.dissect(buffer, index, packet, parent)

  -- Reserved 19: CHAR
  index, reserved_19 = nse_nsecm_broadcast_nnfbcast_v6_6.reserved_19.dissect(buffer, index, packet, parent)

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nsecm_broadcast_nnfbcast_v6_6.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Filler 2: BYTE
  index, filler_2 = nse_nsecm_broadcast_nnfbcast_v6_6.filler_2.dissect(buffer, index, packet, parent)

  -- Message Length: SHORT
  index, message_length = nse_nsecm_broadcast_nnfbcast_v6_6.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bcast Header
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bcast_header, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.bcast_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.bcast_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.bcast_header.fields(buffer, offset, packet, parent)
  end
end

-- Broadcast Data
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_data = {}

-- Calculate size of: Broadcast Data
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_data.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsecm_broadcast_nnfbcast_v6_6.bcast_market_type.size

  index = index + nse_nsecm_broadcast_nnfbcast_v6_6.bcast_reserved.size

  index = index + nse_nsecm_broadcast_nnfbcast_v6_6.bcast_header.size

  -- Calculate runtime size of Message Payload field
  local message_payload_offset = offset + index
  local message_payload_type = buffer(message_payload_offset - 30, 2):int()
  index = index + nse_nsecm_broadcast_nnfbcast_v6_6.message_payload.size(buffer, message_payload_offset, message_payload_type)

  return index
end

-- Display: Broadcast Data
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broadcast Data
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bcast Market Type: CHAR
  index, bcast_market_type = nse_nsecm_broadcast_nnfbcast_v6_6.bcast_market_type.dissect(buffer, index, packet, parent)

  -- Bcast Reserved: CHAR
  index, bcast_reserved = nse_nsecm_broadcast_nnfbcast_v6_6.bcast_reserved.dissect(buffer, index, packet, parent)

  -- Bcast Header: Struct of 12 fields
  index, bcast_header = nse_nsecm_broadcast_nnfbcast_v6_6.bcast_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 30, 2):int()

  -- Message Payload: Runtime Type with 37 branches
  index = nse_nsecm_broadcast_nnfbcast_v6_6.message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Broadcast Data
nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.broadcast_data, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_data.fields(buffer, offset, packet, parent)
  end
end

-- Packed Packet
nse_nsecm_broadcast_nnfbcast_v6_6.packed_packet = {}

-- Calculate size of: Packed Packet
nse_nsecm_broadcast_nnfbcast_v6_6.packed_packet.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsecm_broadcast_nnfbcast_v6_6.compression_length.size

  index = index + nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_data.size(buffer, offset + index)

  return index
end

-- Display: Packed Packet
nse_nsecm_broadcast_nnfbcast_v6_6.packed_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packed Packet
nse_nsecm_broadcast_nnfbcast_v6_6.packed_packet.fields = function(buffer, offset, packet, parent, packed_packet_index)
  local index = offset

  -- Implicit Packed Packet Index
  if packed_packet_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.packed_packet_index, packed_packet_index)
    iteration:set_generated()
  end

  -- Compression Length: SHORT
  index, compression_length = nse_nsecm_broadcast_nnfbcast_v6_6.compression_length.dissect(buffer, index, packet, parent)

  local broadcast_data_conversion = compression_length > 0

  if broadcast_data_conversion then
    local compressed = buffer(index, buffer:len() - index):bytes()
    buffer = lzo1z_decompress(compressed, 16384):tvb("Decompressed")
    index = 0
  end

  -- Broadcast Data: Struct of 4 fields
  index, broadcast_data = nse_nsecm_broadcast_nnfbcast_v6_6.broadcast_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packed Packet
nse_nsecm_broadcast_nnfbcast_v6_6.packed_packet.dissect = function(buffer, offset, packet, parent, packed_packet_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.packed_packet, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.packed_packet.fields(buffer, offset, packet, parent, packed_packet_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.packed_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.packed_packet.fields(buffer, offset, packet, parent, packed_packet_index)
  end
end

-- Bcast Pack Data
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_pack_data = {}

-- Calculate size of: Bcast Pack Data
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_pack_data.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsecm_broadcast_nnfbcast_v6_6.net_id.size

  index = index + nse_nsecm_broadcast_nnfbcast_v6_6.number_of_packets.size

  -- Calculate field size from count
  local packed_packet_count = buffer(offset + index - 2, 2):int()
  for i = 1, packed_packet_count do
    index = index + nse_nsecm_broadcast_nnfbcast_v6_6.packed_packet.size(buffer, offset + index)
  end
  return index
end

-- Display: Bcast Pack Data
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_pack_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bcast Pack Data
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_pack_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Net Id: CHAR
  index, net_id = nse_nsecm_broadcast_nnfbcast_v6_6.net_id.dissect(buffer, index, packet, parent)

  -- Number Of Packets: SHORT
  index, number_of_packets = nse_nsecm_broadcast_nnfbcast_v6_6.number_of_packets.dissect(buffer, index, packet, parent)

  -- Repeating: Packed Packet
  for packed_packet_index = 1, number_of_packets do
    index, packed_packet = nse_nsecm_broadcast_nnfbcast_v6_6.packed_packet.dissect(buffer, index, packet, parent, packed_packet_index)
  end

  return index
end

-- Dissect: Bcast Pack Data
nse_nsecm_broadcast_nnfbcast_v6_6.bcast_pack_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6.fields.bcast_pack_data, buffer(offset, 0))
    local index = nse_nsecm_broadcast_nnfbcast_v6_6.bcast_pack_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecm_broadcast_nnfbcast_v6_6.bcast_pack_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecm_broadcast_nnfbcast_v6_6.bcast_pack_data.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nse_nsecm_broadcast_nnfbcast_v6_6.packet = {}

-- Verify required size of Udp packet
nse_nsecm_broadcast_nnfbcast_v6_6.packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsecm_broadcast_nnfbcast_v6_6.net_id.size + nse_nsecm_broadcast_nnfbcast_v6_6.number_of_packets.size
end

-- Dissect Packet
nse_nsecm_broadcast_nnfbcast_v6_6.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Bcast Pack Data: Struct of 3 fields
  index, bcast_pack_data = nse_nsecm_broadcast_nnfbcast_v6_6.bcast_pack_data.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nse_nsecm_broadcast_nnfbcast_v6_6.init()
end

-- Dissector for Nse NseCm Broadcast NnfBcast 6.6
function omi_nse_nsecm_broadcast_nnfbcast_v6_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nsecm_broadcast_nnfbcast_v6_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nsecm_broadcast_nnfbcast_v6_6, buffer(), omi_nse_nsecm_broadcast_nnfbcast_v6_6.description, "("..buffer:len().." Bytes)")
  return nse_nsecm_broadcast_nnfbcast_v6_6.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
nse_nsecm_broadcast_nnfbcast_v6_6.packet.fingerprint = function(buffer)
  if buffer:len() < 26 then
    return false
  end

  local transaction_code = buffer(24, 2):int()

  -- Broadcast Journal Vct Message
  if transaction_code == 6501 then
    return true
  end

  -- Security Master Change Message
  if transaction_code == 18720 then
    return true
  end

  -- Participant Master Change Message
  if transaction_code == 7306 then
    return true
  end

  -- Security Status Change Message
  if transaction_code == 18130 then
    return true
  end

  -- Security Status Change Preopen Message
  if transaction_code == 18707 then
    return true
  end

  -- Turnover Exceeded Message
  if transaction_code == 9010 then
    return true
  end

  -- Broker Reactivated Message
  if transaction_code == 9011 then
    return true
  end

  -- Auction Inquiry Message
  if transaction_code == 18700 then
    return true
  end

  -- Auction Status Change Message
  if transaction_code == 6581 then
    return true
  end

  -- Preopen Shutdown Message
  if transaction_code == 6531 then
    return true
  end

  -- Preopen Market Order Restricted Message
  if transaction_code == 6664 then
    return true
  end

  -- Normal Market Preopen Ended Message
  if transaction_code == 6571 then
    return true
  end

  -- Market Open Message
  if transaction_code == 6511 then
    return true
  end

  -- Cts Close For Cas Message
  if transaction_code == 6651 then
    return true
  end

  -- Revised Price Band Completed Message
  if transaction_code == 6652 then
    return true
  end

  -- Cas Start Message
  if transaction_code == 6653 then
    return true
  end

  -- Market Order Restricted Message
  if transaction_code == 6654 then
    return true
  end

  -- Cas End Message
  if transaction_code == 6655 then
    return true
  end

  -- Market Close Message
  if transaction_code == 6521 then
    return true
  end

  -- Closing Start Message
  if transaction_code == 6583 then
    return true
  end

  -- Closing End Message
  if transaction_code == 6584 then
    return true
  end

  -- Symbol Status Change Action Message
  if transaction_code == 7764 then
    return true
  end

  -- Ticker And Market Index Message
  if transaction_code == 18703 then
    return true
  end

  -- Market By Order And Market By Price Message
  if transaction_code == 7200 then
    return true
  end

  -- Only Market By Price Message
  if transaction_code == 7208 then
    return true
  end

  -- Market Watch Round Robin Message
  if transaction_code == 7201 then
    return true
  end

  -- Call Auction Market By Price Message
  if transaction_code == 7214 then
    return true
  end

  -- Call Auction Market Watch Message
  if transaction_code == 7215 then
    return true
  end

  -- Security Open Price Message
  if transaction_code == 6013 then
    return true
  end

  -- Circuit Check Message
  if transaction_code == 6541 then
    return true
  end

  -- Indices Message
  if transaction_code == 7207 then
    return true
  end

  -- Indicative Indices Message
  if transaction_code == 8207 then
    return true
  end

  -- Indices Vix Message
  if transaction_code == 7216 then
    return true
  end

  -- Industry Indices Message
  if transaction_code == 7203 then
    return true
  end

  -- Buy Back Message
  if transaction_code == 18708 then
    return true
  end

  -- Call Auction Order Cancel Update Message
  if transaction_code == 7210 then
    return true
  end

  -- Cas Reference Price Message
  if transaction_code == 7338 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseCm Broadcast NnfBcast 6.6 (Udp)
local function omi_nse_nsecm_broadcast_nnfbcast_v6_6_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsecm_broadcast_nnfbcast_v6_6.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not nse_nsecm_broadcast_nnfbcast_v6_6.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsecm_broadcast_nnfbcast_v6_6
  omi_nse_nsecm_broadcast_nnfbcast_v6_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nse NseCm Broadcast NnfBcast 6.6
omi_nse_nsecm_broadcast_nnfbcast_v6_6:register_heuristic("udp", omi_nse_nsecm_broadcast_nnfbcast_v6_6_udp_heuristic)

-- Register Nse NseCm Broadcast NnfBcast 6.6 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nse_nsecm_broadcast_nnfbcast_v6_6)

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
