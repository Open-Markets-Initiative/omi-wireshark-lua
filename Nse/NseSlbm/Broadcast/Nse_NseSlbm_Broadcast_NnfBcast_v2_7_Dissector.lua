-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseSlbm Broadcast NnfBcast 2.7 Protocol
local omi_nse_nseslbm_broadcast_nnfbcast_v2_7 = Proto("Omi.Nse.NseSlbm.Broadcast.NnfBcast.v2.7", "Nse NseSlbm Broadcast NnfBcast 2.7")

-- Protocol table
local nse_nseslbm_broadcast_nnfbcast_v2_7 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseSlbm Broadcast NnfBcast 2.7 Fields
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.action_code = ProtoField.new("Action Code", "nse.nseslbm.broadcast.nnfbcast.v2.7.actioncode", ftypes.STRING, nil, nil, nil, "Action taken")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.agm = ProtoField.new("Agm", "nse.nseslbm.broadcast.nnfbcast.v2.7.agm", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800, "Annual general meeting")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.allow_recall = ProtoField.new("Allow Recall", "nse.nseslbm.broadcast.nnfbcast.v2.7.allowrecall", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200, "The recall order is eligible for the contract")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.allow_repay = ProtoField.new("Allow Repay", "nse.nseslbm.broadcast.nnfbcast.v2.7.allowrepay", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100, "The repay order is eligible for the contract")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.alpha_char = ProtoField.new("Alpha Char", "nse.nseslbm.broadcast.nnfbcast.v2.7.alphachar", ftypes.STRING, nil, nil, nil, "First two characters of Symbol when the message carries one")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.aon = ProtoField.new("Aon", "nse.nseslbm.broadcast.nnfbcast.v2.7.aon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Orders have the all or none attribute set")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction = ProtoField.new("Auction", "nse.nseslbm.broadcast.nnfbcast.v2.7.auction", ftypes.INT16, nil, nil, nil, "Market status of the auction market")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction_number = ProtoField.new("Auction Number", "nse.nseslbm.broadcast.nnfbcast.v2.7.auctionnumber", ftypes.INT16)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction_price = ProtoField.new("Auction Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.auctionprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the auction trade took place")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction_qty = ProtoField.new("Auction Qty", "nse.nseslbm.broadcast.nnfbcast.v2.7.auctionqty", ftypes.INT32, nil, nil, nil, "Quantity of securities auctioned")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction_quantity = ProtoField.new("Auction Quantity", "nse.nseslbm.broadcast.nnfbcast.v2.7.auctionquantity", ftypes.INT32, nil, nil, nil, "Quantity at which the auction takes place, else zero")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction_status = ProtoField.new("Auction Status", "nse.nseslbm.broadcast.nnfbcast.v2.7.auctionstatus", ftypes.INT16, nil, nil, nil, "Status of the auction")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction_status_char = ProtoField.new("Auction Status Char", "nse.nseslbm.broadcast.nnfbcast.v2.7.auctionstatuschar", ftypes.STRING, nil, nil, nil, "Status of the auction")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.average_trade_price = ProtoField.new("Average Trade Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.averagetradeprice", ftypes.DOUBLE, nil, nil, nil, "Average price of all the trades in the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bb_buy_sell_flag = ProtoField.new("Bb Buy Sell Flag", "nse.nseslbm.broadcast.nnfbcast.v2.7.bbbuysellflag", ftypes.INT16, nil, nil, nil, "Buy back buy sell flag")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bb_total_buy_flag = ProtoField.new("Bb Total Buy Flag", "nse.nseslbm.broadcast.nnfbcast.v2.7.bbtotalbuyflag", ftypes.INT16, nil, nil, nil, "Whether there is a buy back order on the buy side")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bb_total_sell_flag = ProtoField.new("Bb Total Sell Flag", "nse.nseslbm.broadcast.nnfbcast.v2.7.bbtotalsellflag", ftypes.INT16, nil, nil, nil, "Currently set to zero")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bc_seq_no = ProtoField.new("Bc Seq No", "nse.nseslbm.broadcast.nnfbcast.v2.7.bcseqno", ftypes.INT32, nil, nil, nil, "Broadcast sequence number, used to detect a gap in the stream")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bcast_header = ProtoField.new("Bcast Header", "nse.nseslbm.broadcast.nnfbcast.v2.7.bcastheader", ftypes.STRING, nil, nil, nil, "BCAST_HEADER")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bcast_market_type = ProtoField.new("Bcast Market Type", "nse.nseslbm.broadcast.nnfbcast.v2.7.bcastmarkettype", ftypes.STRING, nil, nil, nil, "Market the broadcast belongs to, 2 for Futures and Options")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bcast_pack_data = ProtoField.new("Bcast Pack Data", "nse.nseslbm.broadcast.nnfbcast.v2.7.bcastpackdata", ftypes.STRING, nil, nil, nil, "BcastPackData sequential packing envelope")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bcast_reserved = ProtoField.new("Bcast Reserved", "nse.nseslbm.broadcast.nnfbcast.v2.7.bcastreserved", ftypes.BYTES, nil, nil, nil, "Ignored, the header begins at the ninth byte")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.best_buy_price = ProtoField.new("Best Buy Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.bestbuyprice", ftypes.DOUBLE, nil, nil, nil, "Best buy price, the highest price for a buy auction")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.best_sell_price = ProtoField.new("Best Sell Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.bestsellprice", ftypes.DOUBLE, nil, nil, nil, "Best sell price, the lowest price for a sell auction")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.board_lot_quantity = ProtoField.new("Board Lot Quantity", "nse.nseslbm.broadcast.nnfbcast.v2.7.boardlotquantity", ftypes.INT32, nil, nil, nil, "Board lot quantity; a regular lot order quantity must be a multiple of it")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bonus = ProtoField.new("Bonus", "nse.nseslbm.broadcast.nnfbcast.v2.7.bonus", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.book_closure_end_date = ProtoField.new("Book Closure End Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.bookclosureenddate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date the record books of the company end")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.book_closure_end_date_utc = ProtoField.new("Book Closure End Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.bookclosureenddate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date the record books of the company end")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.book_closure_start_date = ProtoField.new("Book Closure Start Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.bookclosurestartdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date the record books of the company start")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.book_closure_start_date_utc = ProtoField.new("Book Closure Start Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.bookclosurestartdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date the record books of the company start")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.book_type = ProtoField.new("Book Type", "nse.nseslbm.broadcast.nnfbcast.v2.7.booktype", ftypes.INT16)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.books_merged = ProtoField.new("Books Merged", "nse.nseslbm.broadcast.nnfbcast.v2.7.booksmerged", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.branch_number = ProtoField.new("Branch Number", "nse.nseslbm.broadcast.nnfbcast.v2.7.branchnumber", ftypes.INT16, nil, nil, nil, "Branch number of the trader or broker")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broadcast_data = ProtoField.new("Broadcast Data", "nse.nseslbm.broadcast.nnfbcast.v2.7.broadcastdata", ftypes.STRING, nil, nil, nil, "Broadcast data, inflated first when it arrives compressed")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broadcast_destination = ProtoField.new("Broadcast Destination", "nse.nseslbm.broadcast.nnfbcast.v2.7.broadcastdestination", ftypes.STRING, nil, nil, nil, "Destination of a broadcast message, packed into 2 bytes")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broadcast_message = ProtoField.new("Broadcast Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.broadcastmessage", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broadcast_message_length = ProtoField.new("Broadcast Message Length", "nse.nseslbm.broadcast.nnfbcast.v2.7.broadcastmessagelength", ftypes.INT16, nil, nil, nil, "Length of the broadcast message")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broker_code = ProtoField.new("Broker Code", "nse.nseslbm.broadcast.nnfbcast.v2.7.brokercode", ftypes.STRING, nil, nil, nil, "Broker about to exceed or exceeding its turnover limit, or reactivated")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broker_id = ProtoField.new("Broker Id", "nse.nseslbm.broadcast.nnfbcast.v2.7.brokerid", ftypes.STRING, nil, nil, nil, "Trading member ID, set to blanks")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broker_name = ProtoField.new("Broker Name", "nse.nseslbm.broadcast.nnfbcast.v2.7.brokername", ftypes.STRING, nil, nil, nil, "Name of the broker, set to blanks")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broker_number = ProtoField.new("Broker Number", "nse.nseslbm.broadcast.nnfbcast.v2.7.brokernumber", ftypes.STRING, nil, nil, nil, "Trading member ID of the broker")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.buy = ProtoField.new("Buy", "nse.nseslbm.broadcast.nnfbcast.v2.7.buy", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.buy_price = ProtoField.new("Buy Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.buyprice", ftypes.DOUBLE, nil, nil, nil, "Price of the best buy order")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.buy_volume = ProtoField.new("Buy Volume", "nse.nseslbm.broadcast.nnfbcast.v2.7.buyvolume", ftypes.INT32, nil, nil, nil, "Quantity of the best buy order")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.buybackdata = ProtoField.new("Buybackdata", "nse.nseslbm.broadcast.nnfbcast.v2.7.buybackdata", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.cday_cum_vol = ProtoField.new("Cday Cum Vol", "nse.nseslbm.broadcast.nnfbcast.v2.7.cdaycumvol", ftypes.DOUBLE, nil, nil, nil, "Current day's cumulative volume")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.cday_high_price = ProtoField.new("Cday High Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.cdayhighprice", ftypes.DOUBLE, nil, nil, nil, "Current day's high price")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.cday_low_price = ProtoField.new("Cday Low Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.cdaylowprice", ftypes.DOUBLE, nil, nil, nil, "Current day's low price")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.cday_wt_avg = ProtoField.new("Cday Wt Avg", "nse.nseslbm.broadcast.nnfbcast.v2.7.cdaywtavg", ftypes.DOUBLE, nil, nil, nil, "Current day's weighted average price")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.closing_index = ProtoField.new("Closing Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.closingindex", ftypes.INT32, nil, nil, nil, "Previous day's closing index while the market is open, today's after the batch")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.closing_price = ProtoField.new("Closing Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.closingprice", ftypes.DOUBLE, nil, nil, nil, "Closing price of the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.competitor_period = ProtoField.new("Competitor Period", "nse.nseslbm.broadcast.nnfbcast.v2.7.competitorperiod", ftypes.INT16, nil, nil, nil, "Default competitor period for auction")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.compression_length = ProtoField.new("Compression Length", "nse.nseslbm.broadcast.nnfbcast.v2.7.compressionlength", ftypes.INT16, nil, nil, nil, "Length after compression, zero when the data is uncompressed")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.corporate_action_indicator = ProtoField.new("Corporate Action Indicator", "nse.nseslbm.broadcast.nnfbcast.v2.7.corporateactionindicator", ftypes.STRING, nil, nil, nil, "Corporate action")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.counter_broker_code = ProtoField.new("Counter Broker Code", "nse.nseslbm.broadcast.nnfbcast.v2.7.counterbrokercode", ftypes.STRING, nil, nil, nil, "Not in use")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.credit_rating = ProtoField.new("Credit Rating", "nse.nseslbm.broadcast.nnfbcast.v2.7.creditrating", ftypes.STRING, nil, nil, nil, "Credit rating of the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.default_settlement_period_auction = ProtoField.new("Default Settlement Period Auction", "nse.nseslbm.broadcast.nnfbcast.v2.7.defaultsettlementperiodauction", ftypes.INT16, nil, nil, nil, "Default settlement period of the auction market")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.default_settlement_period_normal = ProtoField.new("Default Settlement Period Normal", "nse.nseslbm.broadcast.nnfbcast.v2.7.defaultsettlementperiodnormal", ftypes.INT16, nil, nil, nil, "Default settlement period of the normal market")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.default_settlement_period_spot = ProtoField.new("Default Settlement Period Spot", "nse.nseslbm.broadcast.nnfbcast.v2.7.defaultsettlementperiodspot", ftypes.INT16, nil, nil, nil, "Default settlement period of the spot market")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.delete_flag = ProtoField.new("Delete Flag", "nse.nseslbm.broadcast.nnfbcast.v2.7.deleteflag", ftypes.STRING, nil, nil, nil, "Whether the security is deleted")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.disclosed_quantity_percent_allowed = ProtoField.new("Disclosed Quantity Percent Allowed", "nse.nseslbm.broadcast.nnfbcast.v2.7.disclosedquantitypercentallowed", ftypes.INT16, nil, nil, nil, "Disclosed quantity allowed, as a percentage of the total quantity")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.dividend = ProtoField.new("Dividend", "nse.nseslbm.broadcast.nnfbcast.v2.7.dividend", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.egm = ProtoField.new("Egm", "nse.nseslbm.broadcast.nnfbcast.v2.7.egm", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400, "Extraordinary general meeting")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.eligibility = ProtoField.new("Eligibility", "nse.nseslbm.broadcast.nnfbcast.v2.7.eligibility", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80, "The security is allowed to trade in the market")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.eligiblity_indicators = ProtoField.new("Eligiblity Indicators", "nse.nseslbm.broadcast.nnfbcast.v2.7.eligiblityindicators", ftypes.STRING, nil, nil, nil, "Order attributes a security allows, packed into 2 bytes")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.end_date = ProtoField.new("End Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.enddate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "End date of the buy back period")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.end_date_utc = ProtoField.new("End Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.enddate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "End date of the buy back period")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.error_code = ProtoField.new("Error Code", "nse.nseslbm.broadcast.nnfbcast.v2.7.errorcode", ftypes.INT16, nil, nil, nil, "Zero on broadcast messages")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.expiry_date = ProtoField.new("Expiry Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.expirydate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Last date of trading before any corporate action")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.expiry_date_utc = ProtoField.new("Expiry Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.expirydate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last date of trading before any corporate action")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.expulsion_date = ProtoField.new("Expulsion Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.expulsiondate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of expulsion")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.expulsion_date_utc = ProtoField.new("Expulsion Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.expulsiondate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of expulsion")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.face_value = ProtoField.new("Face Value", "nse.nseslbm.broadcast.nnfbcast.v2.7.facevalue", ftypes.INT32, nil, nil, nil, "Face value of the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.fill_price = ProtoField.new("Fill Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.fillprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the order traded")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.fill_volume = ProtoField.new("Fill Volume", "nse.nseslbm.broadcast.nnfbcast.v2.7.fillvolume", ftypes.INT32, nil, nil, nil, "Quantity of the security traded")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.filler = ProtoField.new("Filler", "nse.nseslbm.broadcast.nnfbcast.v2.7.filler", ftypes.BYTES)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.filler_2 = ProtoField.new("Filler 2", "nse.nseslbm.broadcast.nnfbcast.v2.7.filler2", ftypes.BYTES, nil, nil, nil, "Padding, documented as Byte but eight bytes wide")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.final = ProtoField.new("Final", "nse.nseslbm.broadcast.nnfbcast.v2.7.final", ftypes.STRING, nil, nil, nil, "Whether it is the final auction trade")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.freeze_percent = ProtoField.new("Freeze Percent", "nse.nseslbm.broadcast.nnfbcast.v2.7.freezepercent", ftypes.INT16, nil, nil, nil, "Volume freeze percent")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.high_index_value = ProtoField.new("High Index Value", "nse.nseslbm.broadcast.nnfbcast.v2.7.highindexvalue", ftypes.INT32, nil, nil, nil, "Day's highest index value")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.high_price = ProtoField.new("High Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.highprice", ftypes.DOUBLE, nil, nil, nil, "Highest trade price")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.index_name = ProtoField.new("Index Name", "nse.nseslbm.broadcast.nnfbcast.v2.7.indexname", ftypes.STRING, nil, nil, nil, "Name of the index")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.index_value = ProtoField.new("Index Value", "nse.nseslbm.broadcast.nnfbcast.v2.7.indexvalue", ftypes.INT32, nil, nil, nil, "Online market index value at the time of broadcast")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.indicators_reserved_1113 = ProtoField.new("Indicators Reserved 1113", "nse.nseslbm.broadcast.nnfbcast.v2.7.indicatorsreserved1113", ftypes.UINT16, nil, base.DEC, 0x1C00, "Reserved")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.indicators_reserved_18 = ProtoField.new("Indicators Reserved 18", "nse.nseslbm.broadcast.nnfbcast.v2.7.indicatorsreserved18", ftypes.UINT16, nil, base.DEC, 0x00FF, "Reserved")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.indices = ProtoField.new("Indices", "nse.nseslbm.broadcast.nnfbcast.v2.7.indices", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.industry_indices = ProtoField.new("Industry Indices", "nse.nseslbm.broadcast.nnfbcast.v2.7.industryindices", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.initiator_price = ProtoField.new("Initiator Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.initiatorprice", ftypes.DOUBLE, nil, nil, nil, "Price of the initiator's auction order, else zero")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.initiator_quantity = ProtoField.new("Initiator Quantity", "nse.nseslbm.broadcast.nnfbcast.v2.7.initiatorquantity", ftypes.INT32, nil, nil, nil, "Quantity of the initiator's auction order, else zero")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.initiator_type = ProtoField.new("Initiator Type", "nse.nseslbm.broadcast.nnfbcast.v2.7.initiatortype", ftypes.INT16, nil, nil, nil, "Whether the auction was initiated by a trader or by control")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.instrument_type = ProtoField.new("Instrument Type", "nse.nseslbm.broadcast.nnfbcast.v2.7.instrumenttype", ftypes.INT16, nil, nil, nil, "Instrument type of the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.interactive_mbo_data = ProtoField.new("Interactive Mbo Data", "nse.nseslbm.broadcast.nnfbcast.v2.7.interactivembodata", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.interactive_only_mbp_data = ProtoField.new("Interactive Only Mbp Data", "nse.nseslbm.broadcast.nnfbcast.v2.7.interactiveonlymbpdata", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.interest = ProtoField.new("Interest", "nse.nseslbm.broadcast.nnfbcast.v2.7.interest", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.interest_payment_date = ProtoField.new("Interest Payment Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.interestpaymentdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Interest payment date of the issue")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.interest_payment_date_utc = ProtoField.new("Interest Payment Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.interestpaymentdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Interest payment date of the issue")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.isin_number = ProtoField.new("Isin Number", "nse.nseslbm.broadcast.nnfbcast.v2.7.isinnumber", ftypes.STRING, nil, nil, nil, "ISIN number of the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.issue_maturity_date = ProtoField.new("Issue Maturity Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.issuematuritydate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Maturity date of the issue")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.issue_maturity_date_utc = ProtoField.new("Issue Maturity Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.issuematuritydate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Maturity date of the issue")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.issue_rate = ProtoField.new("Issue Rate", "nse.nseslbm.broadcast.nnfbcast.v2.7.issuerate", ftypes.INT16, nil, nil, nil, "Price of the issue")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.issue_start_date = ProtoField.new("Issue Start Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.issuestartdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of issue of the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.issue_start_date_utc = ProtoField.new("Issue Start Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.issuestartdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of issue of the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.issued_capital = ProtoField.new("Issued Capital", "nse.nseslbm.broadcast.nnfbcast.v2.7.issuedcapital", ftypes.DOUBLE, nil, nil, nil, "Issue size of the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.l_ife_time_low = ProtoField.new("L Ife Time Low", "nse.nseslbm.broadcast.nnfbcast.v2.7.lifetimelow", ftypes.DOUBLE, nil, nil, nil, "Lowest trade price in the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_trade_less = ProtoField.new("Last Trade Less", "nse.nseslbm.broadcast.nnfbcast.v2.7.lasttradeless", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Latest trade less than the previous last traded price")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_trade_more = ProtoField.new("Last Trade More", "nse.nseslbm.broadcast.nnfbcast.v2.7.lasttrademore", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Latest trade greater than the previous last traded price")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_trade_price = ProtoField.new("Last Trade Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.lasttradeprice", ftypes.DOUBLE, nil, nil, nil, "Latest trade price of the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_trade_quantity = ProtoField.new("Last Trade Quantity", "nse.nseslbm.broadcast.nnfbcast.v2.7.lasttradequantity", ftypes.INT32, nil, nil, nil, "Quantity of the last trade in the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_trade_time = ProtoField.new("Last Trade Time", "nse.nseslbm.broadcast.nnfbcast.v2.7.lasttradetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time of the last trade in the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_trade_time_utc = ProtoField.new("Last Trade Time", "nse.nseslbm.broadcast.nnfbcast.v2.7.lasttradetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time of the last trade in the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_traded_price = ProtoField.new("Last Traded Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.lasttradedprice", ftypes.DOUBLE, nil, nil, nil, "Price of the latest trade in the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.life_time_high = ProtoField.new("Life Time High", "nse.nseslbm.broadcast.nnfbcast.v2.7.lifetimehigh", ftypes.DOUBLE, nil, nil, nil, "Highest trade price in the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.listing_date = ProtoField.new("Listing Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.listingdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of listing")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.listing_date_utc = ProtoField.new("Listing Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.listingdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of listing")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.local_update_date_time = ProtoField.new("Local Update Date Time", "nse.nseslbm.broadcast.nnfbcast.v2.7.localupdatedatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Local database update date and time")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.local_update_date_time_utc = ProtoField.new("Local Update Date Time", "nse.nseslbm.broadcast.nnfbcast.v2.7.localupdatedatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Local database update date and time")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.log_time = ProtoField.new("Log Time", "nse.nseslbm.broadcast.nnfbcast.v2.7.logtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the message was generated by the trading system")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.log_time_utc = ProtoField.new("Log Time", "nse.nseslbm.broadcast.nnfbcast.v2.7.logtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the message was generated by the trading system")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.low_index_value = ProtoField.new("Low Index Value", "nse.nseslbm.broadcast.nnfbcast.v2.7.lowindexvalue", ftypes.INT32, nil, nil, nil, "Day's lowest index value")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.low_price = ProtoField.new("Low Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.lowprice", ftypes.DOUBLE, nil, nil, nil, "Lowest trade price")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_capitalisation = ProtoField.new("Market Capitalisation", "nse.nseslbm.broadcast.nnfbcast.v2.7.marketcapitalisation", ftypes.DOUBLE, nil, nil, nil, "Market capitalisation of the securities in the index")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_index = ProtoField.new("Market Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.marketindex", ftypes.INT32, nil, nil, nil, "Current market index")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_index_value = ProtoField.new("Market Index Value", "nse.nseslbm.broadcast.nnfbcast.v2.7.marketindexvalue", ftypes.INT32, nil, nil, nil, "Value of the market index")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_statistics_data = ProtoField.new("Market Statistics Data", "nse.nseslbm.broadcast.nnfbcast.v2.7.marketstatisticsdata", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_type = ProtoField.new("Market Type", "nse.nseslbm.broadcast.nnfbcast.v2.7.markettype", ftypes.INT16, nil, nil, nil, "Type of market")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_wise_information = ProtoField.new("Market Wise Information", "nse.nseslbm.broadcast.nnfbcast.v2.7.marketwiseinformation", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.marketwatchbroadcast = ProtoField.new("Marketwatchbroadcast", "nse.nseslbm.broadcast.nnfbcast.v2.7.marketwatchbroadcast", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.maximum_gtc_days = ProtoField.new("Maximum Gtc Days", "nse.nseslbm.broadcast.nnfbcast.v2.7.maximumgtcdays", ftypes.INT16, nil, nil, nil, "Maximum number of days after which a Good Till Cancelled order is cancelled")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.mbo_information = ProtoField.new("Mbo Information", "nse.nseslbm.broadcast.nnfbcast.v2.7.mboinformation", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.mbo_mbp_indicator = ProtoField.new("Mbo Mbp Indicator", "nse.nseslbm.broadcast.nnfbcast.v2.7.mbombpindicator", ftypes.STRING, nil, nil, nil, "Buy, sell and last trade direction flags, packed into 2 bytes")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.mbp_indicator = ProtoField.new("Mbp Indicator", "nse.nseslbm.broadcast.nnfbcast.v2.7.mbpindicator", ftypes.STRING, nil, nil, nil, "Buy, sell and last trade direction flags, packed into 2 bytes")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.mbp_information = ProtoField.new("Mbp Information", "nse.nseslbm.broadcast.nnfbcast.v2.7.mbpinformation", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.message_length = ProtoField.new("Message Length", "nse.nseslbm.broadcast.nnfbcast.v2.7.messagelength", ftypes.INT16, nil, nil, nil, "Length of the entire message including the broadcast header")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.message_type = ProtoField.new("Message Type", "nse.nseslbm.broadcast.nnfbcast.v2.7.messagetype", ftypes.STRING, nil, nil, nil, "Header, report data, depository data or trailer")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.mf = ProtoField.new("Mf", "nse.nseslbm.broadcast.nnfbcast.v2.7.mf", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Minimum fill")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.min_fill_qty = ProtoField.new("Min Fill Qty", "nse.nseslbm.broadcast.nnfbcast.v2.7.minfillqty", ftypes.INT32, nil, nil, nil, "Minimum fill quantity")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.minimum_fill = ProtoField.new("Minimum Fill", "nse.nseslbm.broadcast.nnfbcast.v2.7.minimumfill", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Orders have the minimum fill attribute set")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.name = ProtoField.new("Name", "nse.nseslbm.broadcast.nnfbcast.v2.7.name", ftypes.STRING, nil, nil, nil, "Security name")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.net_change_indicator = ProtoField.new("Net Change Indicator", "nse.nseslbm.broadcast.nnfbcast.v2.7.netchangeindicator", ftypes.STRING, nil, nil, nil, "Direction of the change of the order price from the last traded price")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.net_id = ProtoField.new("Net Id", "nse.nseslbm.broadcast.nnfbcast.v2.7.netid", ftypes.STRING, nil, nil, nil, "Identifies the segment, 2 for Equity Derivative")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.net_price_change_from_closing_price = ProtoField.new("Net Price Change From Closing Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.netpricechangefromclosingprice", ftypes.DOUBLE, nil, nil, nil, "Net change between the order price and the last traded price")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.no_delivery_end_date = ProtoField.new("No Delivery End Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.nodeliveryenddate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date physical delivery of share certificates resumes after book closure")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.no_delivery_end_date_utc = ProtoField.new("No Delivery End Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.nodeliveryenddate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date physical delivery of share certificates resumes after book closure")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.no_delivery_start_date = ProtoField.new("No Delivery Start Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.nodeliverystartdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date physical delivery of share certificates stops for book closure")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.no_delivery_start_date_utc = ProtoField.new("No Delivery Start Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.nodeliverystartdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date physical delivery of share certificates stops for book closure")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.no_of_downmoves = ProtoField.new("No Of Downmoves", "nse.nseslbm.broadcast.nnfbcast.v2.7.noofdownmoves", ftypes.INT32, nil, nil, nil, "Number of times the index moved down")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.no_of_records = ProtoField.new("No Of Records", "nse.nseslbm.broadcast.nnfbcast.v2.7.noofrecords", ftypes.INT16, nil, nil, nil, "Number of securities sent")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.no_of_upmoves = ProtoField.new("No Of Upmoves", "nse.nseslbm.broadcast.nnfbcast.v2.7.noofupmoves", ftypes.INT32, nil, nil, nil, "Number of times the index moved up")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.normal = ProtoField.new("Normal", "nse.nseslbm.broadcast.nnfbcast.v2.7.normal", ftypes.INT16, nil, nil, nil, "Market status of the normal market")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.number_of_orders = ProtoField.new("Number Of Orders", "nse.nseslbm.broadcast.nnfbcast.v2.7.numberoforders", ftypes.INT16, nil, nil, nil, "Number of orders at the price")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.number_of_packets = ProtoField.new("Number Of Packets", "nse.nseslbm.broadcast.nnfbcast.v2.7.numberofpackets", ftypes.INT16, nil, nil, nil, "Number of packets sequentially packed in this datagram")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.number_of_records = ProtoField.new("Number Of Records", "nse.nseslbm.broadcast.nnfbcast.v2.7.numberofrecords", ftypes.INT16, nil, nil, nil, "Number of records of the structure TOKEN AND ELIGIBILITY")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.number_of_records_long = ProtoField.new("Number Of Records Long", "nse.nseslbm.broadcast.nnfbcast.v2.7.numberofrecordslong", ftypes.INT32, nil, nil, nil, "Number of data packets sent in the bhav copy")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.oddlot = ProtoField.new("Oddlot", "nse.nseslbm.broadcast.nnfbcast.v2.7.oddlot", ftypes.INT16, nil, nil, nil, "Market status of the odd lot market")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.open_price = ProtoField.new("Open Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.openprice", ftypes.DOUBLE, nil, nil, nil, "Open price of the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.opening_index = ProtoField.new("Opening Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.openingindex", ftypes.INT32, nil, nil, nil, "Opening index value at market open")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.opening_price = ProtoField.new("Opening Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.openingprice", ftypes.DOUBLE, nil, nil, nil, "Open price of the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.outage_status = ProtoField.new("Outage Status", "nse.nseslbm.broadcast.nnfbcast.v2.7.outagestatus", ftypes.INT16, nil, nil, nil, "Start or end of the outage")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.participant_id = ProtoField.new("Participant Id", "nse.nseslbm.broadcast.nnfbcast.v2.7.participantid", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.participant_name = ProtoField.new("Participant Name", "nse.nseslbm.broadcast.nnfbcast.v2.7.participantname", ftypes.STRING, nil, nil, nil, "Name of the participant that changed")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.participant_status = ProtoField.new("Participant Status", "nse.nseslbm.broadcast.nnfbcast.v2.7.participantstatus", ftypes.STRING, nil, nil, nil, "Status of the participant")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.participant_update_date_time = ProtoField.new("Participant Update Date Time", "nse.nseslbm.broadcast.nnfbcast.v2.7.participantupdatedatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the participant information changed, in seconds from January 1 1980")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.participant_update_date_time_utc = ProtoField.new("Participant Update Date Time", "nse.nseslbm.broadcast.nnfbcast.v2.7.participantupdatedatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the participant information changed, in seconds from January 1 1980")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.participate_in_market_index = ProtoField.new("Participate In Market Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.participateinmarketindex", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "The security participates in the market index")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.pday_cum_vol = ProtoField.new("Pday Cum Vol", "nse.nseslbm.broadcast.nnfbcast.v2.7.pdaycumvol", ftypes.DOUBLE, nil, nil, nil, "Previous day cumulative volume")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.pday_high_price = ProtoField.new("Pday High Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.pdayhighprice", ftypes.DOUBLE, nil, nil, nil, "Previous day's high price")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.pday_low_price = ProtoField.new("Pday Low Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.pdaylowprice", ftypes.DOUBLE, nil, nil, nil, "Previous day's low price")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.pday_wt_avg = ProtoField.new("Pday Wt Avg", "nse.nseslbm.broadcast.nnfbcast.v2.7.pdaywtavg", ftypes.DOUBLE, nil, nil, nil, "Previous day's weighted average price")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.percent_change = ProtoField.new("Percent Change", "nse.nseslbm.broadcast.nnfbcast.v2.7.percentchange", ftypes.INT32, nil, nil, nil, "Percent change against yesterday's closing index")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.permitted_to_trade = ProtoField.new("Permitted To Trade", "nse.nseslbm.broadcast.nnfbcast.v2.7.permittedtotrade", ftypes.INT16, nil, nil, nil, "Whether the security is permitted to trade")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.previous_close_price = ProtoField.new("Previous Close Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.previouscloseprice", ftypes.DOUBLE, nil, nil, nil, "Previous day's closing price of the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.price = ProtoField.new("Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.price", ftypes.DOUBLE, nil, nil, nil, "Price of the order")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.purpose = ProtoField.new("Purpose", "nse.nseslbm.broadcast.nnfbcast.v2.7.purpose", ftypes.STRING, nil, nil, nil, "Corporate action flags, packed into 2 bytes")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.qty = ProtoField.new("Qty", "nse.nseslbm.broadcast.nnfbcast.v2.7.qty", ftypes.INT32, nil, nil, nil, "Quantity of the order")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.quantity = ProtoField.new("Quantity", "nse.nseslbm.broadcast.nnfbcast.v2.7.quantity", ftypes.INT32, nil, nil, nil, "Quantity at the price")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.re_admission_date = ProtoField.new("Re Admission Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.readmissiondate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of readmission")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.re_admission_date_utc = ProtoField.new("Re Admission Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.readmissiondate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of readmission")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.record_date = ProtoField.new("Record Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.recorddate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of record changed")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.record_date_utc = ProtoField.new("Record Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.recorddate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of record changed")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.remark = ProtoField.new("Remark", "nse.nseslbm.broadcast.nnfbcast.v2.7.remark", ftypes.STRING, nil, nil, nil, "Remarks")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.report_date = ProtoField.new("Report Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.reportdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.report_date_utc = ProtoField.new("Report Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.reportdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.report_header_body = ProtoField.new("Report Header Body", "nse.nseslbm.broadcast.nnfbcast.v2.7.reportheaderbody", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.report_statistics_body = ProtoField.new("Report Statistics Body", "nse.nseslbm.broadcast.nnfbcast.v2.7.reportstatisticsbody", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.report_trailer_body = ProtoField.new("Report Trailer Body", "nse.nseslbm.broadcast.nnfbcast.v2.7.reporttrailerbody", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_0 = ProtoField.new("Reserved 0", "nse.nseslbm.broadcast.nnfbcast.v2.7.reserved0", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_1 = ProtoField.new("Reserved 1", "nse.nseslbm.broadcast.nnfbcast.v2.7.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_110 = ProtoField.new("Reserved 110", "nse.nseslbm.broadcast.nnfbcast.v2.7.reserved110", ftypes.UINT16, nil, base.DEC, 0x03FF, "Reserved")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_112 = ProtoField.new("Reserved 112", "nse.nseslbm.broadcast.nnfbcast.v2.7.reserved112", ftypes.UINT16, nil, base.DEC, 0x0FFF, "Reserved")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_113 = ProtoField.new("Reserved 113", "nse.nseslbm.broadcast.nnfbcast.v2.7.reserved113", ftypes.UINT16, nil, base.DEC, 0x1FFF, "Reserved")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_114 = ProtoField.new("Reserved 114", "nse.nseslbm.broadcast.nnfbcast.v2.7.reserved114", ftypes.UINT16, nil, base.DEC, 0x3FFF, "Reserved")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_115 = ProtoField.new("Reserved 115", "nse.nseslbm.broadcast.nnfbcast.v2.7.reserved115", ftypes.UINT16, nil, base.DEC, 0x7FFF, "Reserved")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_17 = ProtoField.new("Reserved 17", "nse.nseslbm.broadcast.nnfbcast.v2.7.reserved17", ftypes.UINT8, nil, base.DEC, 0x7F, "Reserved")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_18 = ProtoField.new("Reserved 18", "nse.nseslbm.broadcast.nnfbcast.v2.7.reserved18", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_19 = ProtoField.new("Reserved 19", "nse.nseslbm.broadcast.nnfbcast.v2.7.reserved19", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_2 = ProtoField.new("Reserved 2", "nse.nseslbm.broadcast.nnfbcast.v2.7.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_200 = ProtoField.new("Reserved 200", "nse.nseslbm.broadcast.nnfbcast.v2.7.reserved200", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_4 = ProtoField.new("Reserved 4", "nse.nseslbm.broadcast.nnfbcast.v2.7.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reverse_leg_settl_date = ProtoField.new("Reverse Leg Settl Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.reverselegsettldate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Reverse leg settlement date of the contract")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reverse_leg_settl_date_utc = ProtoField.new("Reverse Leg Settl Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.reverselegsettldate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Reverse leg settlement date of the contract")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.rights = ProtoField.new("Rights", "nse.nseslbm.broadcast.nnfbcast.v2.7.rights", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.sec_info = ProtoField.new("Sec Info", "nse.nseslbm.broadcast.nnfbcast.v2.7.secinfo", ftypes.STRING, nil, nil, nil, "SEC_INFO")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.security_eligibility_flags = ProtoField.new("Security Eligibility Flags", "nse.nseslbm.broadcast.nnfbcast.v2.7.securityeligibilityflags", ftypes.STRING, nil, nil, nil, "Eligibility of a security in one market, packed into 1 byte")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.security_eligibility_per_market = ProtoField.new("Security Eligibility Per Market", "nse.nseslbm.broadcast.nnfbcast.v2.7.securityeligibilitypermarket", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.security_eligible_indicators = ProtoField.new("Security Eligible Indicators", "nse.nseslbm.broadcast.nnfbcast.v2.7.securityeligibleindicators", ftypes.STRING, nil, nil, nil, "Order attributes the system allows, packed into 2 bytes")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.security_status_per_market = ProtoField.new("Security Status Per Market", "nse.nseslbm.broadcast.nnfbcast.v2.7.securitystatuspermarket", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.sell = ProtoField.new("Sell", "nse.nseslbm.broadcast.nnfbcast.v2.7.sell", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.sell_price = ProtoField.new("Sell Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.sellprice", ftypes.DOUBLE, nil, nil, nil, "Price of the best sell order")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.sell_volume = ProtoField.new("Sell Volume", "nse.nseslbm.broadcast.nnfbcast.v2.7.sellvolume", ftypes.INT32, nil, nil, nil, "Quantity of the best sell order")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.series = ProtoField.new("Series", "nse.nseslbm.broadcast.nnfbcast.v2.7.series", ftypes.STRING, nil, nil, nil, "Series of a security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.settlement_period = ProtoField.new("Settlement Period", "nse.nseslbm.broadcast.nnfbcast.v2.7.settlementperiod", ftypes.INT16, nil, nil, nil, "Settlement period defaulted by the exchange")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.solicitor_period = ProtoField.new("Solicitor Period", "nse.nseslbm.broadcast.nnfbcast.v2.7.solicitorperiod", ftypes.INT16, nil, nil, nil, "Default solicitor period for auction")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.spot = ProtoField.new("Spot", "nse.nseslbm.broadcast.nnfbcast.v2.7.spot", ftypes.INT16, nil, nil, nil, "Market status of the spot market")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.st_auction_inq_info = ProtoField.new("St Auction Inq Info", "nse.nseslbm.broadcast.nnfbcast.v2.7.stauctioninqinfo", ftypes.STRING, nil, nil, nil, "ST_AUCTION_INQ_INFO")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.st_mbo_mbp_terms = ProtoField.new("St Mbo Mbp Terms", "nse.nseslbm.broadcast.nnfbcast.v2.7.stmbombpterms", ftypes.STRING, nil, nil, nil, "Minimum fill and all or none terms, packed into 2 bytes")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.start_date = ProtoField.new("Start Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.startdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Start date of the buy back period")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.start_date_utc = ProtoField.new("Start Date", "nse.nseslbm.broadcast.nnfbcast.v2.7.startdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Start date of the buy back period")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.status = ProtoField.new("Status", "nse.nseslbm.broadcast.nnfbcast.v2.7.status", ftypes.INT16, nil, nil, nil, "Start or end of the outage")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.stream_number = ProtoField.new("Stream Number", "nse.nseslbm.broadcast.nnfbcast.v2.7.streamnumber", ftypes.INT16, nil, nil, nil, "Impacted stream number, or zero when all streams are impacted")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.symbol = ProtoField.new("Symbol", "nse.nseslbm.broadcast.nnfbcast.v2.7.symbol", ftypes.STRING, nil, nil, nil, "Symbol of a security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.terminal_idle_time = ProtoField.new("Terminal Idle Time", "nse.nseslbm.broadcast.nnfbcast.v2.7.terminalidletime", ftypes.INT16, nil, nil, nil, "Idle time of the trader workstation")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.tick_size = ProtoField.new("Tick Size", "nse.nseslbm.broadcast.nnfbcast.v2.7.ticksize", ftypes.DOUBLE, nil, nil, nil, "Tick size; order and trigger prices must be a multiple of it")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.ticker_index_information = ProtoField.new("Ticker Index Information", "nse.nseslbm.broadcast.nnfbcast.v2.7.tickerindexinformation", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.time_stamp_2 = ProtoField.new("Time Stamp 2", "nse.nseslbm.broadcast.nnfbcast.v2.7.timestamp2", ftypes.STRING, nil, nil, nil, "Time the message reached the gateway")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.token = ProtoField.new("Token", "nse.nseslbm.broadcast.nnfbcast.v2.7.token", ftypes.INT32, nil, nil, nil, "Token of the security being updated, unique to a symbol and series")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.token_and_eligibility = ProtoField.new("Token And Eligibility", "nse.nseslbm.broadcast.nnfbcast.v2.7.tokenandeligibility", ftypes.STRING)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.total_buy_qty = ProtoField.new("Total Buy Qty", "nse.nseslbm.broadcast.nnfbcast.v2.7.totalbuyqty", ftypes.INT32, nil, nil, nil, "Total buy quantity for the auction")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.total_buy_quantity = ProtoField.new("Total Buy Quantity", "nse.nseslbm.broadcast.nnfbcast.v2.7.totalbuyquantity", ftypes.DOUBLE, nil, nil, nil, "Total quantity of buy orders in the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.total_quantity_traded = ProtoField.new("Total Quantity Traded", "nse.nseslbm.broadcast.nnfbcast.v2.7.totalquantitytraded", ftypes.INT32, nil, nil, nil, "Total quantity of the security traded today")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.total_sell_qty = ProtoField.new("Total Sell Qty", "nse.nseslbm.broadcast.nnfbcast.v2.7.totalsellqty", ftypes.INT32, nil, nil, nil, "Total sell quantity for the auction")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.total_sell_quantity = ProtoField.new("Total Sell Quantity", "nse.nseslbm.broadcast.nnfbcast.v2.7.totalsellquantity", ftypes.DOUBLE, nil, nil, nil, "Total quantity of sell orders in the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.total_value_traded = ProtoField.new("Total Value Traded", "nse.nseslbm.broadcast.nnfbcast.v2.7.totalvaluetraded", ftypes.DOUBLE, nil, nil, nil, "Total value of the securities traded")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trade_number = ProtoField.new("Trade Number", "nse.nseslbm.broadcast.nnfbcast.v2.7.tradenumber", ftypes.INT32, nil, nil, nil, "Trade in which the broker last traded")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trade_price = ProtoField.new("Trade Price", "nse.nseslbm.broadcast.nnfbcast.v2.7.tradeprice", ftypes.DOUBLE, nil, nil, nil, "Price of the trade")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trade_volume = ProtoField.new("Trade Volume", "nse.nseslbm.broadcast.nnfbcast.v2.7.tradevolume", ftypes.INT32, nil, nil, nil, "Trade quantity of the trade")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trader_id = ProtoField.new("Trader Id", "nse.nseslbm.broadcast.nnfbcast.v2.7.traderid", ftypes.INT32, nil, nil, nil, "Trader of the order")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trader_name = ProtoField.new("Trader Name", "nse.nseslbm.broadcast.nnfbcast.v2.7.tradername", ftypes.STRING, nil, nil, nil, "Name of the trader, set to blanks")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trader_number = ProtoField.new("Trader Number", "nse.nseslbm.broadcast.nnfbcast.v2.7.tradernumber", ftypes.INT32, nil, nil, nil, "Trader or user ID, set to zero")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trader_ws = ProtoField.new("Trader Ws", "nse.nseslbm.broadcast.nnfbcast.v2.7.traderws", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "The message is for the trader workstation")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trading_status = ProtoField.new("Trading Status", "nse.nseslbm.broadcast.nnfbcast.v2.7.tradingstatus", ftypes.INT16, nil, nil, nil, "Trading status of the security")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nseslbm.broadcast.nnfbcast.v2.7.transactioncode", ftypes.INT16, nil, nil, nil, "Type of broadcast message")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.user_type = ProtoField.new("User Type", "nse.nseslbm.broadcast.nnfbcast.v2.7.usertype", ftypes.INT16, nil, nil, nil, "Type of user, set to minus one")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.volume_freeze_percent = ProtoField.new("Volume Freeze Percent", "nse.nseslbm.broadcast.nnfbcast.v2.7.volumefreezepercent", ftypes.INT16, nil, nil, nil, "Turnover percentage at which the broker is deactivated")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.volume_traded_today = ProtoField.new("Volume Traded Today", "nse.nseslbm.broadcast.nnfbcast.v2.7.volumetradedtoday", ftypes.INT32, nil, nil, nil, "Total quantity of the security traded today")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.warning_percent = ProtoField.new("Warning Percent", "nse.nseslbm.broadcast.nnfbcast.v2.7.warningpercent", ftypes.INT16, nil, nil, nil, "Turnover percentage at which a warning is broadcast to all traders")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.warning_type = ProtoField.new("Warning Type", "nse.nseslbm.broadcast.nnfbcast.v2.7.warningtype", ftypes.INT16, nil, nil, nil, "Whether the turnover limit is about to be exceeded or exceeded")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.yearly_high = ProtoField.new("Yearly High", "nse.nseslbm.broadcast.nnfbcast.v2.7.yearlyhigh", ftypes.INT32, nil, nil, nil, "Highest index in the year")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.yearly_low = ProtoField.new("Yearly Low", "nse.nseslbm.broadcast.nnfbcast.v2.7.yearlylow", ftypes.INT32, nil, nil, nil, "Lowest index in the year")

-- Nse NseSlbm Broadcast NnfBcast 2.7 Framing
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.packed_packet = ProtoField.new("Packed Packet", "nse.nseslbm.broadcast.nnfbcast.v2.7.packedpacket", ftypes.STRING, nil, nil, nil, "One sequentially packed broadcast packet")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.packet = ProtoField.new("Packet", "nse.nseslbm.broadcast.nnfbcast.v2.7.packet", ftypes.STRING, nil, nil, nil, "NnfBcast Udp datagram")

-- Nse NseSlbm Broadcast 2.7 Application Messages
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction_activity_message = ProtoField.new("Auction Activity Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.auctionactivitymessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_AUCTION_INQUIRY_OUT for any auction related activity in CM")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broadcast_buy_back_information_message = ProtoField.new("Broadcast Buy Back Information Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.broadcastbuybackinformationmessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_BUY_BACK every hour with the buy backs running that day; there is no buy back in SLBM")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broadcast_industry_index_message = ProtoField.new("Broadcast Industry Index Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.broadcastindustryindexmessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_IND_INDICES with industry index values and names")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broker_reactivated_message = ProtoField.new("Broker Reactivated Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.brokerreactivatedmessage", ftypes.STRING, nil, nil, nil, "Sent as BROADCAST_BROKER_ACTIVATED when a deactivated broker is reactivated")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.change_in_security_master_message = ProtoField.new("Change In Security Master Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.changeinsecuritymastermessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_SECURITY_MSTR_CHG whenever a parameter of a security changes")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.change_in_system_status_parameters_message = ProtoField.new("Change In System Status Parameters Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.changeinsystemstatusparametersmessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_SYSTEM_INFORMATION_OUT when global operating parameters or market status change")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.change_of_auction_status_message = ProtoField.new("Change Of Auction Status Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.changeofauctionstatusmessage", ftypes.STRING, nil, nil, nil, "Sent as BC_AUCTION_STATUS_CHANGE when the status of an auction in CM changes")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.change_of_security_status_message = ProtoField.new("Change Of Security Status Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.changeofsecuritystatusmessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_SECURITY_STATUS_CHG when the status of a security changes")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.change_of_security_status_preopen_message = ProtoField.new("Change Of Security Status Preopen Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.changeofsecuritystatuspreopenmessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_SECURITY_STATUS_CHG_PREOPEN")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.change_participant_status_message = ProtoField.new("Change Participant Status Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.changeparticipantstatusmessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_PART_MSTR_CHG whenever there is a participant change")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.contingency_broadcast_message = ProtoField.new("Contingency Broadcast Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.contingencybroadcastmessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_CONTI_MSG at the start and the end of an outage of one or more streams")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.general_message_broadcast_message = ProtoField.new("General Message Broadcast Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.generalmessagebroadcastmessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_JRNL_VCT_MSG for a general message to all traders")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_by_order_market_by_price_update_message = ProtoField.new("Market By Order Market By Price Update Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.marketbyordermarketbypriceupdatemessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_MBO_MBP_UPDATE with the best buy and sell orders and prices")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_close_message = ProtoField.new("Market Close Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.marketclosemessage", ftypes.STRING, nil, nil, nil, "Sent as BC_CLOSE_MESSAGE when the market is closed")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_open_message = ProtoField.new("Market Open Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.marketopenmessage", ftypes.STRING, nil, nil, nil, "Sent as BC_OPEN_MESSAGE when the market is opened")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_statistics_report_message = ProtoField.new("Market Statistics Report Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.marketstatisticsreportmessage", ftypes.STRING, nil, nil, nil, "Sent as MARKET_STATS_REPORT_DATA for the security bhav copy: header, records and trailer")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_watch_update_message = ProtoField.new("Market Watch Update Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.marketwatchupdatemessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_MW_ROUND_ROBIN with the best buy and sell orders and the last trade")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.multiple_index_broadcast_message = ProtoField.new("Multiple Index Broadcast Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.multipleindexbroadcastmessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_INDICES with the CM indices; SLBM itself broadcasts no index")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.normal_market_preopen_ended_message = ProtoField.new("Normal Market Preopen Ended Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.normalmarketpreopenendedmessage", ftypes.STRING, nil, nil, nil, "Sent as BC_NORMAL_MKT_PREOPEN_ENDED when the preopen period ends")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.only_market_by_price_update_message = ProtoField.new("Only Market By Price Update Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.onlymarketbypriceupdatemessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_ONLY_MBP with the best buy and sell prices")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.preopen_shutdown_message = ProtoField.new("Preopen Shutdown Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.preopenshutdownmessage", ftypes.STRING, nil, nil, nil, "Sent as BC_PREOPEN_SHUTDOWN_MSG when the market is preopened")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.security_open_message = ProtoField.new("Security Open Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.securityopenmessage", ftypes.STRING, nil, nil, nil, "Sent as SECURITY_OPEN_PRICE with the open price of a security when the market opens")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.ticker_and_market_index_message = ProtoField.new("Ticker And Market Index Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.tickerandmarketindexmessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_TICKER_AND_MKT_INDEX with ticker and market index information")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.turnover_limit_exceeded_message = ProtoField.new("Turnover Limit Exceeded Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.turnoverlimitexceededmessage", ftypes.STRING, nil, nil, nil, "Sent as BCAST_TURNOVER_EXCEEDED when a broker's turnover is about to exceed or has exceeded its limit")

-- Nse NseSlbm Broadcast 2.7 Session Messages
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broadcast_circuit_check_message = ProtoField.new("Broadcast Circuit Check Message", "nse.nseslbm.broadcast.nnfbcast.v2.7.broadcastcircuitcheckmessage", ftypes.BYTES, nil, nil, nil, "A pulse showing the broadcast circuit is still there with no data to send")

-- Nse NseSlbm Broadcast NnfBcast 2.7 Generated Fields
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.buybackdata_index = ProtoField.new("Buybackdata Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.buybackdataindex", ftypes.UINT16)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.indices_index = ProtoField.new("Indices Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.indicesindex", ftypes.UINT16)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.industry_indices_index = ProtoField.new("Industry Indices Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.industryindicesindex", ftypes.UINT16)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.interactive_only_mbp_data_index = ProtoField.new("Interactive Only Mbp Data Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.interactiveonlymbpdataindex", ftypes.UINT16)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_statistics_data_index = ProtoField.new("Market Statistics Data Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.marketstatisticsdataindex", ftypes.UINT16)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_wise_information_index = ProtoField.new("Market Wise Information Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.marketwiseinformationindex", ftypes.UINT16)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.marketwatchbroadcast_index = ProtoField.new("Marketwatchbroadcast Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.marketwatchbroadcastindex", ftypes.UINT16)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.mbo_information_index = ProtoField.new("Mbo Information Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.mboinformationindex", ftypes.UINT16)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.mbp_information_index = ProtoField.new("Mbp Information Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.mbpinformationindex", ftypes.UINT16)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.packed_packet_index = ProtoField.new("Packed Packet Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.packedpacketindex", ftypes.UINT16)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.security_eligibility_per_market_index = ProtoField.new("Security Eligibility Per Market Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.securityeligibilitypermarketindex", ftypes.UINT16)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.security_status_per_market_index = ProtoField.new("Security Status Per Market Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.securitystatuspermarketindex", ftypes.UINT16)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.ticker_index_information_index = ProtoField.new("Ticker Index Information Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.tickerindexinformationindex", ftypes.UINT16)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.token_and_eligibility_index = ProtoField.new("Token And Eligibility Index", "nse.nseslbm.broadcast.nnfbcast.v2.7.tokenandeligibilityindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Nse NseSlbm Broadcast NnfBcast 2.7 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "DateTime Local", 2 },
  { 2, "DateTime Utc", 3 },
  { 3, "DateTime Asia/Kolkata", 4 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format = 2

-- Offset of the source's zone from utc in seconds, as the reader states it
nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nse NseSlbm Broadcast NnfBcast 2.7 Element Dissection Options
show.application_messages = true
show.structs = true
show.padding = false
show.indexes = true

-- Register Nse NseSlbm Broadcast NnfBcast 2.7 Show Options
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)
omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.zone_offset = Pref.string("Asia/Kolkata Utc Offset", "", "Offset of Asia/Kolkata from Utc, as +HH:MM. This protocol names that zone and not its offset: stated here, a time kept on its clock reads as an instant, and an instant reads on its clock")

-- Handle changed preferences
function omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.show_application_messages then
    show.application_messages = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.show_application_messages
  end
  if show.padding ~= omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.show_padding then
    show.padding = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.show_padding
  end
  if show.structs ~= omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.show_structs then
    show.structs = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.show_structs
  end
  if show.indexes ~= omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.show_indexes then
    show.indexes = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.show_indexes
  end
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format ~= omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.timestamp_format then
    nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.timestamp_format
  end
  local sign, hours, minutes = string.match(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.prefs.zone_offset, "^%s*([+-]?)(%d%d?):?(%d?%d?)%s*$")

  nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset = 0

  if hours then
    nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset = tonumber(hours) * 3600 + (tonumber(minutes) or 0) * 60
  end

  if sign == "-" then
    nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset = -nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset
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
-- Nse NseSlbm Broadcast NnfBcast 2.7 Fields
-----------------------------------------------------------------------

-- Action Code
nse_nseslbm_broadcast_nnfbcast_v2_7.action_code = {}

-- Size: Action Code
nse_nseslbm_broadcast_nnfbcast_v2_7.action_code.size = 3

-- Display: Action Code
nse_nseslbm_broadcast_nnfbcast_v2_7.action_code.labels = {
  ["SYS"] = "Action Code: System (SYS)",
  ["AUI"] = "Action Code: Auction Initiation (AUI)",
  ["AUC"] = "Action Code: Auction Complete (AUC)",
  ["LIS"] = "Action Code: Listing (LIS)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.action_code.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.action_code.labels[value] or "Action Code: Unknown("..value..")"
end

-- Dissect: Action Code
nse_nseslbm_broadcast_nnfbcast_v2_7.action_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.action_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.action_code, range, value, display)

  return offset + length, value
end

-- Alpha Char
nse_nseslbm_broadcast_nnfbcast_v2_7.alpha_char = {}

-- Size: Alpha Char
nse_nseslbm_broadcast_nnfbcast_v2_7.alpha_char.size = 2

-- Display: Alpha Char
nse_nseslbm_broadcast_nnfbcast_v2_7.alpha_char.display = function(value)
  return "Alpha Char: "..value
end

-- Dissect: Alpha Char
nse_nseslbm_broadcast_nnfbcast_v2_7.alpha_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.alpha_char.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.alpha_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.alpha_char, range, value, display)

  return offset + length, value
end

-- Auction
nse_nseslbm_broadcast_nnfbcast_v2_7.auction = {}

-- Size: Auction
nse_nseslbm_broadcast_nnfbcast_v2_7.auction.size = 2

-- Display: Auction
nse_nseslbm_broadcast_nnfbcast_v2_7.auction.labels = {
  [0] = "Auction: Preopen (0)",
  [1] = "Auction: Open (1)",
  [2] = "Auction: Closed (2)",
  [3] = "Auction: Preopen Ended (3)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.auction.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.auction.labels[value] or "Auction: Unknown("..value..")"
end

-- Dissect: Auction
nse_nseslbm_broadcast_nnfbcast_v2_7.auction.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.auction.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.auction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction, range, value, display)

  return offset + length, value
end

-- Auction Number
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_number = {}

-- Size: Auction Number
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_number.size = 2

-- Display: Auction Number
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_number.display = function(value)
  return "Auction Number: "..value
end

-- Dissect: Auction Number
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction_number, range, value, display)

  return offset + length, value
end

-- Auction Price
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_price = {}

-- Size: Auction Price
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_price.size = 4

-- Display: Auction Price
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_price.display = function(value)
  return "Auction Price: "..value
end

-- Translate: Auction Price
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_price.translate = function(raw)
  return raw/100
end

-- Dissect: Auction Price
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction_price, range, value, display)

  return offset + length, value
end

-- Auction Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_qty = {}

-- Size: Auction Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_qty.size = 4

-- Display: Auction Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_qty.display = function(value)
  return "Auction Qty: "..value
end

-- Dissect: Auction Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction_qty, range, value, display)

  return offset + length, value
end

-- Auction Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_quantity = {}

-- Size: Auction Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_quantity.size = 4

-- Display: Auction Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_quantity.display = function(value)
  return "Auction Quantity: "..value
end

-- Dissect: Auction Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction_quantity, range, value, display)

  return offset + length, value
end

-- Auction Status
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status = {}

-- Size: Auction Status
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status.size = 2

-- Display: Auction Status
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status.labels = {
  [1] = "Auction Status: Auction Pending Approval (1)",
  [2] = "Auction Status: Auction Pending (2)",
  [3] = "Auction Status: Open Competitor Period (3)",
  [4] = "Auction Status: Open Solicitor Period (4)",
  [5] = "Auction Status: Auction Matching (5)",
  [6] = "Auction Status: Auction Finished (6)",
  [7] = "Auction Status: Auction Cancelled (7)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status.labels[value] or "Auction Status: Unknown("..value..")"
end

-- Dissect: Auction Status
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Auction Status Char
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status_char = {}

-- Size: Auction Status Char
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status_char.size = 1

-- Display: Auction Status Char
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status_char.display = function(value)
  return "Auction Status Char: "..value
end

-- Dissect: Auction Status Char
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status_char.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction_status_char, range, value, display)

  return offset + length, value
end

-- Average Trade Price
nse_nseslbm_broadcast_nnfbcast_v2_7.average_trade_price = {}

-- Size: Average Trade Price
nse_nseslbm_broadcast_nnfbcast_v2_7.average_trade_price.size = 4

-- Display: Average Trade Price
nse_nseslbm_broadcast_nnfbcast_v2_7.average_trade_price.display = function(value)
  return "Average Trade Price: "..value
end

-- Translate: Average Trade Price
nse_nseslbm_broadcast_nnfbcast_v2_7.average_trade_price.translate = function(raw)
  return raw/100
end

-- Dissect: Average Trade Price
nse_nseslbm_broadcast_nnfbcast_v2_7.average_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.average_trade_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.average_trade_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.average_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.average_trade_price, range, value, display)

  return offset + length, value
end

-- Bb Buy Sell Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.bb_buy_sell_flag = {}

-- Size: Bb Buy Sell Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.bb_buy_sell_flag.size = 2

-- Display: Bb Buy Sell Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.bb_buy_sell_flag.display = function(value)
  return "Bb Buy Sell Flag: "..value
end

-- Dissect: Bb Buy Sell Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.bb_buy_sell_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.bb_buy_sell_flag.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.bb_buy_sell_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bb_buy_sell_flag, range, value, display)

  return offset + length, value
end

-- Bb Total Buy Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_buy_flag = {}

-- Size: Bb Total Buy Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_buy_flag.size = 2

-- Display: Bb Total Buy Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_buy_flag.labels = {
  [0] = "Bb Total Buy Flag: No Buy Back Order (0)",
  [1] = "Bb Total Buy Flag: Buy Back Order (1)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_buy_flag.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_buy_flag.labels[value] or "Bb Total Buy Flag: Unknown("..value..")"
end

-- Dissect: Bb Total Buy Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_buy_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_buy_flag.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_buy_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bb_total_buy_flag, range, value, display)

  return offset + length, value
end

-- Bb Total Sell Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_sell_flag = {}

-- Size: Bb Total Sell Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_sell_flag.size = 2

-- Display: Bb Total Sell Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_sell_flag.display = function(value)
  return "Bb Total Sell Flag: "..value
end

-- Dissect: Bb Total Sell Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_sell_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_sell_flag.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_sell_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bb_total_sell_flag, range, value, display)

  return offset + length, value
end

-- Bc Seq No
nse_nseslbm_broadcast_nnfbcast_v2_7.bc_seq_no = {}

-- Size: Bc Seq No
nse_nseslbm_broadcast_nnfbcast_v2_7.bc_seq_no.size = 4

-- Display: Bc Seq No
nse_nseslbm_broadcast_nnfbcast_v2_7.bc_seq_no.display = function(value)
  return "Bc Seq No: "..value
end

-- Dissect: Bc Seq No
nse_nseslbm_broadcast_nnfbcast_v2_7.bc_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.bc_seq_no.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.bc_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bc_seq_no, range, value, display)

  return offset + length, value
end

-- Bcast Market Type
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_market_type = {}

-- Size: Bcast Market Type
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_market_type.size = 1

-- Display: Bcast Market Type
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_market_type.display = function(value)
  return "Bcast Market Type: "..value
end

-- Dissect: Bcast Market Type
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_market_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_market_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_market_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bcast_market_type, range, value, display)

  return offset + length, value
end

-- Bcast Reserved
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_reserved = {}

-- Size: Bcast Reserved
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_reserved.size = 7

-- Display: Bcast Reserved
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_reserved.display = function(value)
  return "Bcast Reserved: "..value
end

-- Dissect: Bcast Reserved
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_reserved.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_reserved.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bcast_reserved, range, range:raw(), display)

  return offset + length, value
end

-- Best Buy Price
nse_nseslbm_broadcast_nnfbcast_v2_7.best_buy_price = {}

-- Size: Best Buy Price
nse_nseslbm_broadcast_nnfbcast_v2_7.best_buy_price.size = 4

-- Display: Best Buy Price
nse_nseslbm_broadcast_nnfbcast_v2_7.best_buy_price.display = function(value)
  return "Best Buy Price: "..value
end

-- Translate: Best Buy Price
nse_nseslbm_broadcast_nnfbcast_v2_7.best_buy_price.translate = function(raw)
  return raw/100
end

-- Dissect: Best Buy Price
nse_nseslbm_broadcast_nnfbcast_v2_7.best_buy_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.best_buy_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.best_buy_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.best_buy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.best_buy_price, range, value, display)

  return offset + length, value
end

-- Best Sell Price
nse_nseslbm_broadcast_nnfbcast_v2_7.best_sell_price = {}

-- Size: Best Sell Price
nse_nseslbm_broadcast_nnfbcast_v2_7.best_sell_price.size = 4

-- Display: Best Sell Price
nse_nseslbm_broadcast_nnfbcast_v2_7.best_sell_price.display = function(value)
  return "Best Sell Price: "..value
end

-- Translate: Best Sell Price
nse_nseslbm_broadcast_nnfbcast_v2_7.best_sell_price.translate = function(raw)
  return raw/100
end

-- Dissect: Best Sell Price
nse_nseslbm_broadcast_nnfbcast_v2_7.best_sell_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.best_sell_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.best_sell_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.best_sell_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.best_sell_price, range, value, display)

  return offset + length, value
end

-- Board Lot Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.board_lot_quantity = {}

-- Size: Board Lot Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.board_lot_quantity.size = 4

-- Display: Board Lot Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.board_lot_quantity.display = function(value)
  return "Board Lot Quantity: "..value
end

-- Dissect: Board Lot Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.board_lot_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.board_lot_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.board_lot_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.board_lot_quantity, range, value, display)

  return offset + length, value
end

-- Book Closure End Date
nse_nseslbm_broadcast_nnfbcast_v2_7.book_closure_end_date = {}

-- Size: Book Closure End Date
nse_nseslbm_broadcast_nnfbcast_v2_7.book_closure_end_date.size = 4

-- Dissect: Book Closure End Date
nse_nseslbm_broadcast_nnfbcast_v2_7.book_closure_end_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.book_closure_end_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.book_closure_end_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.book_closure_end_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Book Closure End Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Book Closure Start Date
nse_nseslbm_broadcast_nnfbcast_v2_7.book_closure_start_date = {}

-- Size: Book Closure Start Date
nse_nseslbm_broadcast_nnfbcast_v2_7.book_closure_start_date.size = 4

-- Dissect: Book Closure Start Date
nse_nseslbm_broadcast_nnfbcast_v2_7.book_closure_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.book_closure_start_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.book_closure_start_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.book_closure_start_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Book Closure Start Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Book Type
nse_nseslbm_broadcast_nnfbcast_v2_7.book_type = {}

-- Size: Book Type
nse_nseslbm_broadcast_nnfbcast_v2_7.book_type.size = 2

-- Display: Book Type
nse_nseslbm_broadcast_nnfbcast_v2_7.book_type.labels = {
  [1] = "Book Type: Regular Lot Order (1)",
  [2] = "Book Type: Special Terms Order (2)",
  [3] = "Book Type: Stop Loss Order (3)",
  [4] = "Book Type: Negotiated Order (4)",
  [5] = "Book Type: Odd Lot Order (5)",
  [6] = "Book Type: Spot Order (6)",
  [7] = "Book Type: Auction Order (7)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.book_type.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.book_type.labels[value] or "Book Type: Unknown("..value..")"
end

-- Dissect: Book Type
nse_nseslbm_broadcast_nnfbcast_v2_7.book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.book_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.book_type, range, value, display)

  return offset + length, value
end

-- Branch Number
nse_nseslbm_broadcast_nnfbcast_v2_7.branch_number = {}

-- Size: Branch Number
nse_nseslbm_broadcast_nnfbcast_v2_7.branch_number.size = 2

-- Display: Branch Number
nse_nseslbm_broadcast_nnfbcast_v2_7.branch_number.display = function(value)
  return "Branch Number: "..value
end

-- Dissect: Branch Number
nse_nseslbm_broadcast_nnfbcast_v2_7.branch_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.branch_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.branch_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.branch_number, range, value, display)

  return offset + length, value
end

-- Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message = {}

-- Size: Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.size = 239

-- Display: Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.display = function(value)
  return "Broadcast Message: "..value
end

-- Dissect: Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broadcast_message, range, value, display)

  return offset + length, value
end

-- Broadcast Message Length
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length = {}

-- Size: Broadcast Message Length
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.size = 2

-- Display: Broadcast Message Length
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.display = function(value)
  return "Broadcast Message Length: "..value
end

-- Dissect: Broadcast Message Length
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broadcast_message_length, range, value, display)

  return offset + length, value
end

-- Broker Code
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_code = {}

-- Size: Broker Code
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_code.size = 5

-- Display: Broker Code
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_code.display = function(value)
  return "Broker Code: "..value
end

-- Dissect: Broker Code
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broker_code, range, value, display)

  return offset + length, value
end

-- Broker Id
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_id = {}

-- Size: Broker Id
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_id.size = 5

-- Display: Broker Id
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_id.display = function(value)
  return "Broker Id: "..value
end

-- Dissect: Broker Id
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broker_id, range, value, display)

  return offset + length, value
end

-- Broker Name
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_name = {}

-- Size: Broker Name
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_name.size = 25

-- Display: Broker Name
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_name.display = function(value)
  return "Broker Name: "..value
end

-- Dissect: Broker Name
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broker_name, range, value, display)

  return offset + length, value
end

-- Broker Number
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_number = {}

-- Size: Broker Number
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_number.size = 5

-- Display: Broker Number
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_number.display = function(value)
  return "Broker Number: "..value
end

-- Dissect: Broker Number
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broker_number, range, value, display)

  return offset + length, value
end

-- Buy Price
nse_nseslbm_broadcast_nnfbcast_v2_7.buy_price = {}

-- Size: Buy Price
nse_nseslbm_broadcast_nnfbcast_v2_7.buy_price.size = 4

-- Display: Buy Price
nse_nseslbm_broadcast_nnfbcast_v2_7.buy_price.display = function(value)
  return "Buy Price: "..value
end

-- Translate: Buy Price
nse_nseslbm_broadcast_nnfbcast_v2_7.buy_price.translate = function(raw)
  return raw/100
end

-- Dissect: Buy Price
nse_nseslbm_broadcast_nnfbcast_v2_7.buy_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.buy_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.buy_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.buy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.buy_price, range, value, display)

  return offset + length, value
end

-- Buy Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.buy_volume = {}

-- Size: Buy Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.buy_volume.size = 4

-- Display: Buy Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.buy_volume.display = function(value)
  return "Buy Volume: "..value
end

-- Dissect: Buy Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.buy_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.buy_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.buy_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.buy_volume, range, value, display)

  return offset + length, value
end

-- Cday Cum Vol
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_cum_vol = {}

-- Size: Cday Cum Vol
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_cum_vol.size = 8

-- Display: Cday Cum Vol
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_cum_vol.display = function(value)
  return "Cday Cum Vol: "..string.format("%.0f", value)
end

-- Dissect: Cday Cum Vol
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_cum_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.cday_cum_vol.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.cday_cum_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.cday_cum_vol, range, value, display)

  return offset + length, value
end

-- Cday High Price
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_high_price = {}

-- Size: Cday High Price
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_high_price.size = 4

-- Display: Cday High Price
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_high_price.display = function(value)
  return "Cday High Price: "..value
end

-- Translate: Cday High Price
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_high_price.translate = function(raw)
  return raw/100
end

-- Dissect: Cday High Price
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.cday_high_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.cday_high_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.cday_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.cday_high_price, range, value, display)

  return offset + length, value
end

-- Cday Low Price
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_low_price = {}

-- Size: Cday Low Price
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_low_price.size = 4

-- Display: Cday Low Price
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_low_price.display = function(value)
  return "Cday Low Price: "..value
end

-- Translate: Cday Low Price
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_low_price.translate = function(raw)
  return raw/100
end

-- Dissect: Cday Low Price
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.cday_low_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.cday_low_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.cday_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.cday_low_price, range, value, display)

  return offset + length, value
end

-- Cday Wt Avg
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_wt_avg = {}

-- Size: Cday Wt Avg
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_wt_avg.size = 4

-- Display: Cday Wt Avg
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_wt_avg.display = function(value)
  return "Cday Wt Avg: "..value
end

-- Translate: Cday Wt Avg
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_wt_avg.translate = function(raw)
  return raw/100
end

-- Dissect: Cday Wt Avg
nse_nseslbm_broadcast_nnfbcast_v2_7.cday_wt_avg.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.cday_wt_avg.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.cday_wt_avg.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.cday_wt_avg.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.cday_wt_avg, range, value, display)

  return offset + length, value
end

-- Closing Index
nse_nseslbm_broadcast_nnfbcast_v2_7.closing_index = {}

-- Size: Closing Index
nse_nseslbm_broadcast_nnfbcast_v2_7.closing_index.size = 4

-- Display: Closing Index
nse_nseslbm_broadcast_nnfbcast_v2_7.closing_index.display = function(value)
  return "Closing Index: "..value
end

-- Dissect: Closing Index
nse_nseslbm_broadcast_nnfbcast_v2_7.closing_index.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.closing_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.closing_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.closing_index, range, value, display)

  return offset + length, value
end

-- Closing Price
nse_nseslbm_broadcast_nnfbcast_v2_7.closing_price = {}

-- Size: Closing Price
nse_nseslbm_broadcast_nnfbcast_v2_7.closing_price.size = 4

-- Display: Closing Price
nse_nseslbm_broadcast_nnfbcast_v2_7.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Translate: Closing Price
nse_nseslbm_broadcast_nnfbcast_v2_7.closing_price.translate = function(raw)
  return raw/100
end

-- Dissect: Closing Price
nse_nseslbm_broadcast_nnfbcast_v2_7.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.closing_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.closing_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Competitor Period
nse_nseslbm_broadcast_nnfbcast_v2_7.competitor_period = {}

-- Size: Competitor Period
nse_nseslbm_broadcast_nnfbcast_v2_7.competitor_period.size = 2

-- Display: Competitor Period
nse_nseslbm_broadcast_nnfbcast_v2_7.competitor_period.display = function(value)
  return "Competitor Period: "..value
end

-- Dissect: Competitor Period
nse_nseslbm_broadcast_nnfbcast_v2_7.competitor_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.competitor_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.competitor_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.competitor_period, range, value, display)

  return offset + length, value
end

-- Compression Length
nse_nseslbm_broadcast_nnfbcast_v2_7.compression_length = {}

-- Size: Compression Length
nse_nseslbm_broadcast_nnfbcast_v2_7.compression_length.size = 2

-- Display: Compression Length
nse_nseslbm_broadcast_nnfbcast_v2_7.compression_length.display = function(value)
  return "Compression Length: "..value
end

-- Dissect: Compression Length
nse_nseslbm_broadcast_nnfbcast_v2_7.compression_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.compression_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.compression_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.compression_length, range, value, display)

  return offset + length, value
end

-- Corporate Action Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.corporate_action_indicator = {}

-- Size: Corporate Action Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.corporate_action_indicator.size = 4

-- Display: Corporate Action Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.corporate_action_indicator.display = function(value)
  return "Corporate Action Indicator: "..value
end

-- Dissect: Corporate Action Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.corporate_action_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.corporate_action_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.corporate_action_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.corporate_action_indicator, range, value, display)

  return offset + length, value
end

-- Counter Broker Code
nse_nseslbm_broadcast_nnfbcast_v2_7.counter_broker_code = {}

-- Size: Counter Broker Code
nse_nseslbm_broadcast_nnfbcast_v2_7.counter_broker_code.size = 5

-- Display: Counter Broker Code
nse_nseslbm_broadcast_nnfbcast_v2_7.counter_broker_code.display = function(value)
  return "Counter Broker Code: "..value
end

-- Dissect: Counter Broker Code
nse_nseslbm_broadcast_nnfbcast_v2_7.counter_broker_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.counter_broker_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.counter_broker_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.counter_broker_code, range, value, display)

  return offset + length, value
end

-- Credit Rating
nse_nseslbm_broadcast_nnfbcast_v2_7.credit_rating = {}

-- Size: Credit Rating
nse_nseslbm_broadcast_nnfbcast_v2_7.credit_rating.size = 17

-- Display: Credit Rating
nse_nseslbm_broadcast_nnfbcast_v2_7.credit_rating.display = function(value)
  return "Credit Rating: "..value
end

-- Dissect: Credit Rating
nse_nseslbm_broadcast_nnfbcast_v2_7.credit_rating.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.credit_rating.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.credit_rating.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.credit_rating, range, value, display)

  return offset + length, value
end

-- Default Settlement Period Auction
nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_auction = {}

-- Size: Default Settlement Period Auction
nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_auction.size = 2

-- Display: Default Settlement Period Auction
nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_auction.display = function(value)
  return "Default Settlement Period Auction: "..value
end

-- Dissect: Default Settlement Period Auction
nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_auction.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_auction.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_auction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.default_settlement_period_auction, range, value, display)

  return offset + length, value
end

-- Default Settlement Period Normal
nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_normal = {}

-- Size: Default Settlement Period Normal
nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_normal.size = 2

-- Display: Default Settlement Period Normal
nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_normal.display = function(value)
  return "Default Settlement Period Normal: "..value
end

-- Dissect: Default Settlement Period Normal
nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_normal.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_normal.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_normal.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.default_settlement_period_normal, range, value, display)

  return offset + length, value
end

-- Default Settlement Period Spot
nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_spot = {}

-- Size: Default Settlement Period Spot
nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_spot.size = 2

-- Display: Default Settlement Period Spot
nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_spot.display = function(value)
  return "Default Settlement Period Spot: "..value
end

-- Dissect: Default Settlement Period Spot
nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_spot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_spot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_spot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.default_settlement_period_spot, range, value, display)

  return offset + length, value
end

-- Delete Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.delete_flag = {}

-- Size: Delete Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.delete_flag.size = 1

-- Display: Delete Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.delete_flag.labels = {
  ["Y"] = "Delete Flag: Deleted (Y)",
  ["N"] = "Delete Flag: Not Deleted (N)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.delete_flag.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.delete_flag.labels[value] or "Delete Flag: Unknown("..value..")"
end

-- Dissect: Delete Flag
nse_nseslbm_broadcast_nnfbcast_v2_7.delete_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.delete_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.delete_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.delete_flag, range, value, display)

  return offset + length, value
end

-- Disclosed Quantity Percent Allowed
nse_nseslbm_broadcast_nnfbcast_v2_7.disclosed_quantity_percent_allowed = {}

-- Size: Disclosed Quantity Percent Allowed
nse_nseslbm_broadcast_nnfbcast_v2_7.disclosed_quantity_percent_allowed.size = 2

-- Display: Disclosed Quantity Percent Allowed
nse_nseslbm_broadcast_nnfbcast_v2_7.disclosed_quantity_percent_allowed.display = function(value)
  return "Disclosed Quantity Percent Allowed: "..value
end

-- Dissect: Disclosed Quantity Percent Allowed
nse_nseslbm_broadcast_nnfbcast_v2_7.disclosed_quantity_percent_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.disclosed_quantity_percent_allowed.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.disclosed_quantity_percent_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.disclosed_quantity_percent_allowed, range, value, display)

  return offset + length, value
end

-- End Date
nse_nseslbm_broadcast_nnfbcast_v2_7.end_date = {}

-- Size: End Date
nse_nseslbm_broadcast_nnfbcast_v2_7.end_date.size = 4

-- Dissect: End Date
nse_nseslbm_broadcast_nnfbcast_v2_7.end_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.end_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.end_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.end_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("End Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Error Code
nse_nseslbm_broadcast_nnfbcast_v2_7.error_code = {}

-- Size: Error Code
nse_nseslbm_broadcast_nnfbcast_v2_7.error_code.size = 2

-- Display: Error Code
nse_nseslbm_broadcast_nnfbcast_v2_7.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
nse_nseslbm_broadcast_nnfbcast_v2_7.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.error_code, range, value, display)

  return offset + length, value
end

-- Expiry Date
nse_nseslbm_broadcast_nnfbcast_v2_7.expiry_date = {}

-- Size: Expiry Date
nse_nseslbm_broadcast_nnfbcast_v2_7.expiry_date.size = 4

-- Dissect: Expiry Date
nse_nseslbm_broadcast_nnfbcast_v2_7.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.expiry_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.expiry_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.expiry_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Expiry Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Expulsion Date
nse_nseslbm_broadcast_nnfbcast_v2_7.expulsion_date = {}

-- Size: Expulsion Date
nse_nseslbm_broadcast_nnfbcast_v2_7.expulsion_date.size = 4

-- Dissect: Expulsion Date
nse_nseslbm_broadcast_nnfbcast_v2_7.expulsion_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.expulsion_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.expulsion_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.expulsion_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Expulsion Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Face Value
nse_nseslbm_broadcast_nnfbcast_v2_7.face_value = {}

-- Size: Face Value
nse_nseslbm_broadcast_nnfbcast_v2_7.face_value.size = 4

-- Display: Face Value
nse_nseslbm_broadcast_nnfbcast_v2_7.face_value.display = function(value)
  return "Face Value: "..value
end

-- Dissect: Face Value
nse_nseslbm_broadcast_nnfbcast_v2_7.face_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.face_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.face_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.face_value, range, value, display)

  return offset + length, value
end

-- Fill Price
nse_nseslbm_broadcast_nnfbcast_v2_7.fill_price = {}

-- Size: Fill Price
nse_nseslbm_broadcast_nnfbcast_v2_7.fill_price.size = 4

-- Display: Fill Price
nse_nseslbm_broadcast_nnfbcast_v2_7.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Translate: Fill Price
nse_nseslbm_broadcast_nnfbcast_v2_7.fill_price.translate = function(raw)
  return raw/100
end

-- Dissect: Fill Price
nse_nseslbm_broadcast_nnfbcast_v2_7.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.fill_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.fill_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.fill_volume = {}

-- Size: Fill Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.fill_volume.size = 4

-- Display: Fill Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.fill_volume.display = function(value)
  return "Fill Volume: "..value
end

-- Dissect: Fill Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.fill_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.fill_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.fill_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.fill_volume, range, value, display)

  return offset + length, value
end

-- Filler
nse_nseslbm_broadcast_nnfbcast_v2_7.filler = {}

-- Size: Filler
nse_nseslbm_broadcast_nnfbcast_v2_7.filler.size = 1

-- Display: Filler
nse_nseslbm_broadcast_nnfbcast_v2_7.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
nse_nseslbm_broadcast_nnfbcast_v2_7.filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.filler.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.filler, range, range:raw(), display)

  return offset + length, value
end

-- Filler 2
nse_nseslbm_broadcast_nnfbcast_v2_7.filler_2 = {}

-- Size: Filler 2
nse_nseslbm_broadcast_nnfbcast_v2_7.filler_2.size = 8

-- Display: Filler 2
nse_nseslbm_broadcast_nnfbcast_v2_7.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
nse_nseslbm_broadcast_nnfbcast_v2_7.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.filler_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.filler_2, range, range:raw(), display)

  return offset + length, value
end

-- Final
nse_nseslbm_broadcast_nnfbcast_v2_7.final = {}

-- Size: Final
nse_nseslbm_broadcast_nnfbcast_v2_7.final.size = 1

-- Display: Final
nse_nseslbm_broadcast_nnfbcast_v2_7.final.display = function(value)
  return "Final: "..value
end

-- Dissect: Final
nse_nseslbm_broadcast_nnfbcast_v2_7.final.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.final.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.final.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.final, range, value, display)

  return offset + length, value
end

-- Freeze Percent
nse_nseslbm_broadcast_nnfbcast_v2_7.freeze_percent = {}

-- Size: Freeze Percent
nse_nseslbm_broadcast_nnfbcast_v2_7.freeze_percent.size = 2

-- Display: Freeze Percent
nse_nseslbm_broadcast_nnfbcast_v2_7.freeze_percent.display = function(value)
  return "Freeze Percent: "..value
end

-- Dissect: Freeze Percent
nse_nseslbm_broadcast_nnfbcast_v2_7.freeze_percent.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.freeze_percent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.freeze_percent.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.freeze_percent, range, value, display)

  return offset + length, value
end

-- High Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.high_index_value = {}

-- Size: High Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.high_index_value.size = 4

-- Display: High Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.high_index_value.display = function(value)
  return "High Index Value: "..value
end

-- Dissect: High Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.high_index_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.high_index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.high_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.high_index_value, range, value, display)

  return offset + length, value
end

-- High Price
nse_nseslbm_broadcast_nnfbcast_v2_7.high_price = {}

-- Size: High Price
nse_nseslbm_broadcast_nnfbcast_v2_7.high_price.size = 4

-- Display: High Price
nse_nseslbm_broadcast_nnfbcast_v2_7.high_price.display = function(value)
  return "High Price: "..value
end

-- Translate: High Price
nse_nseslbm_broadcast_nnfbcast_v2_7.high_price.translate = function(raw)
  return raw/100
end

-- Dissect: High Price
nse_nseslbm_broadcast_nnfbcast_v2_7.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.high_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.high_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.high_price, range, value, display)

  return offset + length, value
end

-- Index Name
nse_nseslbm_broadcast_nnfbcast_v2_7.index_name = {}

-- Size: Index Name
nse_nseslbm_broadcast_nnfbcast_v2_7.index_name.size = 21

-- Display: Index Name
nse_nseslbm_broadcast_nnfbcast_v2_7.index_name.display = function(value)
  return "Index Name: "..value
end

-- Dissect: Index Name
nse_nseslbm_broadcast_nnfbcast_v2_7.index_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.index_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.index_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.index_name, range, value, display)

  return offset + length, value
end

-- Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.index_value = {}

-- Size: Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.index_value.size = 4

-- Display: Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.index_value.display = function(value)
  return "Index Value: "..value
end

-- Dissect: Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.index_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.index_value, range, value, display)

  return offset + length, value
end

-- Initiator Price
nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_price = {}

-- Size: Initiator Price
nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_price.size = 4

-- Display: Initiator Price
nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_price.display = function(value)
  return "Initiator Price: "..value
end

-- Translate: Initiator Price
nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_price.translate = function(raw)
  return raw/100
end

-- Dissect: Initiator Price
nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.initiator_price, range, value, display)

  return offset + length, value
end

-- Initiator Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_quantity = {}

-- Size: Initiator Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_quantity.size = 4

-- Display: Initiator Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_quantity.display = function(value)
  return "Initiator Quantity: "..value
end

-- Dissect: Initiator Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.initiator_quantity, range, value, display)

  return offset + length, value
end

-- Initiator Type
nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_type = {}

-- Size: Initiator Type
nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_type.size = 2

-- Display: Initiator Type
nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_type.display = function(value)
  return "Initiator Type: "..value
end

-- Dissect: Initiator Type
nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.initiator_type, range, value, display)

  return offset + length, value
end

-- Instrument Type
nse_nseslbm_broadcast_nnfbcast_v2_7.instrument_type = {}

-- Size: Instrument Type
nse_nseslbm_broadcast_nnfbcast_v2_7.instrument_type.size = 2

-- Display: Instrument Type
nse_nseslbm_broadcast_nnfbcast_v2_7.instrument_type.labels = {
  [0] = "Instrument Type: Equities (0)",
  [1] = "Instrument Type: Preference Shares (1)",
  [2] = "Instrument Type: Debentures (2)",
  [3] = "Instrument Type: Warrants (3)",
  [4] = "Instrument Type: Miscellaneous (4)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.instrument_type.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.instrument_type.labels[value] or "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
nse_nseslbm_broadcast_nnfbcast_v2_7.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.instrument_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Interest Payment Date
nse_nseslbm_broadcast_nnfbcast_v2_7.interest_payment_date = {}

-- Size: Interest Payment Date
nse_nseslbm_broadcast_nnfbcast_v2_7.interest_payment_date.size = 4

-- Dissect: Interest Payment Date
nse_nseslbm_broadcast_nnfbcast_v2_7.interest_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.interest_payment_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.interest_payment_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.interest_payment_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Interest Payment Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Isin Number
nse_nseslbm_broadcast_nnfbcast_v2_7.isin_number = {}

-- Size: Isin Number
nse_nseslbm_broadcast_nnfbcast_v2_7.isin_number.size = 12

-- Display: Isin Number
nse_nseslbm_broadcast_nnfbcast_v2_7.isin_number.display = function(value)
  return "Isin Number: "..value
end

-- Dissect: Isin Number
nse_nseslbm_broadcast_nnfbcast_v2_7.isin_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.isin_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.isin_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.isin_number, range, value, display)

  return offset + length, value
end

-- Issue Maturity Date
nse_nseslbm_broadcast_nnfbcast_v2_7.issue_maturity_date = {}

-- Size: Issue Maturity Date
nse_nseslbm_broadcast_nnfbcast_v2_7.issue_maturity_date.size = 4

-- Dissect: Issue Maturity Date
nse_nseslbm_broadcast_nnfbcast_v2_7.issue_maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.issue_maturity_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.issue_maturity_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.issue_maturity_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Issue Maturity Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Issue Rate
nse_nseslbm_broadcast_nnfbcast_v2_7.issue_rate = {}

-- Size: Issue Rate
nse_nseslbm_broadcast_nnfbcast_v2_7.issue_rate.size = 2

-- Display: Issue Rate
nse_nseslbm_broadcast_nnfbcast_v2_7.issue_rate.display = function(value)
  return "Issue Rate: "..value
end

-- Dissect: Issue Rate
nse_nseslbm_broadcast_nnfbcast_v2_7.issue_rate.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.issue_rate.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.issue_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.issue_rate, range, value, display)

  return offset + length, value
end

-- Issue Start Date
nse_nseslbm_broadcast_nnfbcast_v2_7.issue_start_date = {}

-- Size: Issue Start Date
nse_nseslbm_broadcast_nnfbcast_v2_7.issue_start_date.size = 4

-- Dissect: Issue Start Date
nse_nseslbm_broadcast_nnfbcast_v2_7.issue_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.issue_start_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.issue_start_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.issue_start_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Issue Start Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Issued Capital
nse_nseslbm_broadcast_nnfbcast_v2_7.issued_capital = {}

-- Size: Issued Capital
nse_nseslbm_broadcast_nnfbcast_v2_7.issued_capital.size = 8

-- Display: Issued Capital
nse_nseslbm_broadcast_nnfbcast_v2_7.issued_capital.display = function(value)
  return "Issued Capital: "..string.format("%.0f", value)
end

-- Dissect: Issued Capital
nse_nseslbm_broadcast_nnfbcast_v2_7.issued_capital.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.issued_capital.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.issued_capital.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.issued_capital, range, value, display)

  return offset + length, value
end

-- L Ife Time Low
nse_nseslbm_broadcast_nnfbcast_v2_7.l_ife_time_low = {}

-- Size: L Ife Time Low
nse_nseslbm_broadcast_nnfbcast_v2_7.l_ife_time_low.size = 4

-- Display: L Ife Time Low
nse_nseslbm_broadcast_nnfbcast_v2_7.l_ife_time_low.display = function(value)
  return "L Ife Time Low: "..value
end

-- Translate: L Ife Time Low
nse_nseslbm_broadcast_nnfbcast_v2_7.l_ife_time_low.translate = function(raw)
  return raw/100
end

-- Dissect: L Ife Time Low
nse_nseslbm_broadcast_nnfbcast_v2_7.l_ife_time_low.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.l_ife_time_low.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.l_ife_time_low.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.l_ife_time_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.l_ife_time_low, range, value, display)

  return offset + length, value
end

-- Last Trade Price
nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_price = {}

-- Size: Last Trade Price
nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_price.size = 4

-- Display: Last Trade Price
nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_price.display = function(value)
  return "Last Trade Price: "..value
end

-- Translate: Last Trade Price
nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_price.translate = function(raw)
  return raw/100
end

-- Dissect: Last Trade Price
nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_trade_price, range, value, display)

  return offset + length, value
end

-- Last Trade Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_quantity = {}

-- Size: Last Trade Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_quantity.size = 4

-- Display: Last Trade Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_quantity.display = function(value)
  return "Last Trade Quantity: "..value
end

-- Dissect: Last Trade Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_trade_quantity, range, value, display)

  return offset + length, value
end

-- Last Trade Time
nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_time = {}

-- Size: Last Trade Time
nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_time.size = 4

-- Dissect: Last Trade Time
nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_trade_time
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_trade_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Trade Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Last Traded Price
nse_nseslbm_broadcast_nnfbcast_v2_7.last_traded_price = {}

-- Size: Last Traded Price
nse_nseslbm_broadcast_nnfbcast_v2_7.last_traded_price.size = 4

-- Display: Last Traded Price
nse_nseslbm_broadcast_nnfbcast_v2_7.last_traded_price.display = function(value)
  return "Last Traded Price: "..value
end

-- Translate: Last Traded Price
nse_nseslbm_broadcast_nnfbcast_v2_7.last_traded_price.translate = function(raw)
  return raw/100
end

-- Dissect: Last Traded Price
nse_nseslbm_broadcast_nnfbcast_v2_7.last_traded_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.last_traded_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.last_traded_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.last_traded_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_traded_price, range, value, display)

  return offset + length, value
end

-- Life Time High
nse_nseslbm_broadcast_nnfbcast_v2_7.life_time_high = {}

-- Size: Life Time High
nse_nseslbm_broadcast_nnfbcast_v2_7.life_time_high.size = 4

-- Display: Life Time High
nse_nseslbm_broadcast_nnfbcast_v2_7.life_time_high.display = function(value)
  return "Life Time High: "..value
end

-- Translate: Life Time High
nse_nseslbm_broadcast_nnfbcast_v2_7.life_time_high.translate = function(raw)
  return raw/100
end

-- Dissect: Life Time High
nse_nseslbm_broadcast_nnfbcast_v2_7.life_time_high.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.life_time_high.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.life_time_high.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.life_time_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.life_time_high, range, value, display)

  return offset + length, value
end

-- Listing Date
nse_nseslbm_broadcast_nnfbcast_v2_7.listing_date = {}

-- Size: Listing Date
nse_nseslbm_broadcast_nnfbcast_v2_7.listing_date.size = 4

-- Dissect: Listing Date
nse_nseslbm_broadcast_nnfbcast_v2_7.listing_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.listing_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.listing_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.listing_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Listing Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Local Update Date Time
nse_nseslbm_broadcast_nnfbcast_v2_7.local_update_date_time = {}

-- Size: Local Update Date Time
nse_nseslbm_broadcast_nnfbcast_v2_7.local_update_date_time.size = 4

-- Dissect: Local Update Date Time
nse_nseslbm_broadcast_nnfbcast_v2_7.local_update_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.local_update_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.local_update_date_time
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.local_update_date_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Local Update Date Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Log Time
nse_nseslbm_broadcast_nnfbcast_v2_7.log_time = {}

-- Size: Log Time
nse_nseslbm_broadcast_nnfbcast_v2_7.log_time.size = 4

-- Dissect: Log Time
nse_nseslbm_broadcast_nnfbcast_v2_7.log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.log_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.log_time
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.log_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Log Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Low Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.low_index_value = {}

-- Size: Low Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.low_index_value.size = 4

-- Display: Low Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.low_index_value.display = function(value)
  return "Low Index Value: "..value
end

-- Dissect: Low Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.low_index_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.low_index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.low_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.low_index_value, range, value, display)

  return offset + length, value
end

-- Low Price
nse_nseslbm_broadcast_nnfbcast_v2_7.low_price = {}

-- Size: Low Price
nse_nseslbm_broadcast_nnfbcast_v2_7.low_price.size = 4

-- Display: Low Price
nse_nseslbm_broadcast_nnfbcast_v2_7.low_price.display = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
nse_nseslbm_broadcast_nnfbcast_v2_7.low_price.translate = function(raw)
  return raw/100
end

-- Dissect: Low Price
nse_nseslbm_broadcast_nnfbcast_v2_7.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.low_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.low_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.low_price, range, value, display)

  return offset + length, value
end

-- Market Capitalisation
nse_nseslbm_broadcast_nnfbcast_v2_7.market_capitalisation = {}

-- Size: Market Capitalisation
nse_nseslbm_broadcast_nnfbcast_v2_7.market_capitalisation.size = 8

-- Display: Market Capitalisation
nse_nseslbm_broadcast_nnfbcast_v2_7.market_capitalisation.display = function(value)
  return "Market Capitalisation: "..string.format("%.0f", value)
end

-- Dissect: Market Capitalisation
nse_nseslbm_broadcast_nnfbcast_v2_7.market_capitalisation.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.market_capitalisation.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.market_capitalisation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_capitalisation, range, value, display)

  return offset + length, value
end

-- Market Index
nse_nseslbm_broadcast_nnfbcast_v2_7.market_index = {}

-- Size: Market Index
nse_nseslbm_broadcast_nnfbcast_v2_7.market_index.size = 4

-- Display: Market Index
nse_nseslbm_broadcast_nnfbcast_v2_7.market_index.display = function(value)
  return "Market Index: "..value
end

-- Dissect: Market Index
nse_nseslbm_broadcast_nnfbcast_v2_7.market_index.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.market_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.market_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_index, range, value, display)

  return offset + length, value
end

-- Market Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.market_index_value = {}

-- Size: Market Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.market_index_value.size = 4

-- Display: Market Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.market_index_value.display = function(value)
  return "Market Index Value: "..value
end

-- Dissect: Market Index Value
nse_nseslbm_broadcast_nnfbcast_v2_7.market_index_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.market_index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.market_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_index_value, range, value, display)

  return offset + length, value
end

-- Market Type
nse_nseslbm_broadcast_nnfbcast_v2_7.market_type = {}

-- Size: Market Type
nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.size = 2

-- Display: Market Type
nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.labels = {
  [1] = "Market Type: Normal (1)",
  [2] = "Market Type: Odd Lot (2)",
  [3] = "Market Type: Spot (3)",
  [4] = "Market Type: Auction (4)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.labels[value] or "Market Type: Unknown("..value..")"
end

-- Dissect: Market Type
nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_type, range, value, display)

  return offset + length, value
end

-- Maximum Gtc Days
nse_nseslbm_broadcast_nnfbcast_v2_7.maximum_gtc_days = {}

-- Size: Maximum Gtc Days
nse_nseslbm_broadcast_nnfbcast_v2_7.maximum_gtc_days.size = 2

-- Display: Maximum Gtc Days
nse_nseslbm_broadcast_nnfbcast_v2_7.maximum_gtc_days.display = function(value)
  return "Maximum Gtc Days: "..value
end

-- Dissect: Maximum Gtc Days
nse_nseslbm_broadcast_nnfbcast_v2_7.maximum_gtc_days.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.maximum_gtc_days.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.maximum_gtc_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.maximum_gtc_days, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nseslbm_broadcast_nnfbcast_v2_7.message_length = {}

-- Size: Message Length
nse_nseslbm_broadcast_nnfbcast_v2_7.message_length.size = 2

-- Display: Message Length
nse_nseslbm_broadcast_nnfbcast_v2_7.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nseslbm_broadcast_nnfbcast_v2_7.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nse_nseslbm_broadcast_nnfbcast_v2_7.message_type = {}

-- Size: Message Type
nse_nseslbm_broadcast_nnfbcast_v2_7.message_type.size = 1

-- Display: Message Type
nse_nseslbm_broadcast_nnfbcast_v2_7.message_type.labels = {
  ["H"] = "Message Type: Header (H)",
  ["R"] = "Message Type: Report Data (R)",
  ["D"] = "Message Type: Depository Data (D)",
  ["T"] = "Message Type: Trailer (T)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.message_type.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nse_nseslbm_broadcast_nnfbcast_v2_7.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Fill Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.min_fill_qty = {}

-- Size: Min Fill Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.min_fill_qty.size = 4

-- Display: Min Fill Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.min_fill_qty.display = function(value)
  return "Min Fill Qty: "..value
end

-- Dissect: Min Fill Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.min_fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.min_fill_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.min_fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.min_fill_qty, range, value, display)

  return offset + length, value
end

-- Name
nse_nseslbm_broadcast_nnfbcast_v2_7.name = {}

-- Size: Name
nse_nseslbm_broadcast_nnfbcast_v2_7.name.size = 25

-- Display: Name
nse_nseslbm_broadcast_nnfbcast_v2_7.name.display = function(value)
  return "Name: "..value
end

-- Dissect: Name
nse_nseslbm_broadcast_nnfbcast_v2_7.name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.name, range, value, display)

  return offset + length, value
end

-- Net Change Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.net_change_indicator = {}

-- Size: Net Change Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.net_change_indicator.size = 1

-- Display: Net Change Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.net_change_indicator.display = function(value)
  if value == "+" then
    return "Net Change Indicator: Increase (+)"
  end
  if value == "-" then
    return "Net Change Indicator: Decrease (-)"
  end
  if value == " " then
    return "Net Change Indicator: No Change (<whitespace>)"
  end

  return "Net Change Indicator: Unknown("..value..")"
end

-- Dissect: Net Change Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.net_change_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.net_change_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.net_change_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.net_change_indicator, range, value, display)

  return offset + length, value
end

-- Net Id
nse_nseslbm_broadcast_nnfbcast_v2_7.net_id = {}

-- Size: Net Id
nse_nseslbm_broadcast_nnfbcast_v2_7.net_id.size = 2

-- Display: Net Id
nse_nseslbm_broadcast_nnfbcast_v2_7.net_id.display = function(value)
  return "Net Id: "..value
end

-- Dissect: Net Id
nse_nseslbm_broadcast_nnfbcast_v2_7.net_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.net_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.net_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.net_id, range, value, display)

  return offset + length, value
end

-- Net Price Change From Closing Price
nse_nseslbm_broadcast_nnfbcast_v2_7.net_price_change_from_closing_price = {}

-- Size: Net Price Change From Closing Price
nse_nseslbm_broadcast_nnfbcast_v2_7.net_price_change_from_closing_price.size = 4

-- Display: Net Price Change From Closing Price
nse_nseslbm_broadcast_nnfbcast_v2_7.net_price_change_from_closing_price.display = function(value)
  return "Net Price Change From Closing Price: "..value
end

-- Translate: Net Price Change From Closing Price
nse_nseslbm_broadcast_nnfbcast_v2_7.net_price_change_from_closing_price.translate = function(raw)
  return raw/100
end

-- Dissect: Net Price Change From Closing Price
nse_nseslbm_broadcast_nnfbcast_v2_7.net_price_change_from_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.net_price_change_from_closing_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.net_price_change_from_closing_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.net_price_change_from_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.net_price_change_from_closing_price, range, value, display)

  return offset + length, value
end

-- No Delivery End Date
nse_nseslbm_broadcast_nnfbcast_v2_7.no_delivery_end_date = {}

-- Size: No Delivery End Date
nse_nseslbm_broadcast_nnfbcast_v2_7.no_delivery_end_date.size = 4

-- Dissect: No Delivery End Date
nse_nseslbm_broadcast_nnfbcast_v2_7.no_delivery_end_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.no_delivery_end_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.no_delivery_end_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.no_delivery_end_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("No Delivery End Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- No Delivery Start Date
nse_nseslbm_broadcast_nnfbcast_v2_7.no_delivery_start_date = {}

-- Size: No Delivery Start Date
nse_nseslbm_broadcast_nnfbcast_v2_7.no_delivery_start_date.size = 4

-- Dissect: No Delivery Start Date
nse_nseslbm_broadcast_nnfbcast_v2_7.no_delivery_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.no_delivery_start_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.no_delivery_start_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.no_delivery_start_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("No Delivery Start Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- No Of Downmoves
nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_downmoves = {}

-- Size: No Of Downmoves
nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_downmoves.size = 4

-- Display: No Of Downmoves
nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_downmoves.display = function(value)
  return "No Of Downmoves: "..value
end

-- Dissect: No Of Downmoves
nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_downmoves.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_downmoves.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_downmoves.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.no_of_downmoves, range, value, display)

  return offset + length, value
end

-- No Of Records
nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_records = {}

-- Size: No Of Records
nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_records.size = 2

-- Display: No Of Records
nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_records.display = function(value)
  return "No Of Records: "..value
end

-- Dissect: No Of Records
nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_records.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.no_of_records, range, value, display)

  return offset + length, value
end

-- No Of Upmoves
nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_upmoves = {}

-- Size: No Of Upmoves
nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_upmoves.size = 4

-- Display: No Of Upmoves
nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_upmoves.display = function(value)
  return "No Of Upmoves: "..value
end

-- Dissect: No Of Upmoves
nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_upmoves.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_upmoves.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_upmoves.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.no_of_upmoves, range, value, display)

  return offset + length, value
end

-- Normal
nse_nseslbm_broadcast_nnfbcast_v2_7.normal = {}

-- Size: Normal
nse_nseslbm_broadcast_nnfbcast_v2_7.normal.size = 2

-- Display: Normal
nse_nseslbm_broadcast_nnfbcast_v2_7.normal.labels = {
  [0] = "Normal: Preopen (0)",
  [1] = "Normal: Open (1)",
  [2] = "Normal: Closed (2)",
  [3] = "Normal: Preopen Ended (3)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.normal.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.normal.labels[value] or "Normal: Unknown("..value..")"
end

-- Dissect: Normal
nse_nseslbm_broadcast_nnfbcast_v2_7.normal.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.normal.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.normal.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.normal, range, value, display)

  return offset + length, value
end

-- Number Of Orders
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_orders = {}

-- Size: Number Of Orders
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_orders.size = 2

-- Display: Number Of Orders
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Number Of Packets
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_packets = {}

-- Size: Number Of Packets
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_packets.size = 2

-- Display: Number Of Packets
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_packets.display = function(value)
  return "Number Of Packets: "..value
end

-- Dissect: Number Of Packets
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_packets.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_packets.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_packets.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.number_of_packets, range, value, display)

  return offset + length, value
end

-- Number Of Records
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records = {}

-- Size: Number Of Records
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.size = 2

-- Display: Number Of Records
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.display = function(value)
  return "Number Of Records: "..value
end

-- Dissect: Number Of Records
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.number_of_records, range, value, display)

  return offset + length, value
end

-- Number Of Records Long
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records_long = {}

-- Size: Number Of Records Long
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records_long.size = 4

-- Display: Number Of Records Long
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records_long.display = function(value)
  return "Number Of Records Long: "..value
end

-- Dissect: Number Of Records Long
nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records_long.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records_long.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.number_of_records_long, range, value, display)

  return offset + length, value
end

-- Oddlot
nse_nseslbm_broadcast_nnfbcast_v2_7.oddlot = {}

-- Size: Oddlot
nse_nseslbm_broadcast_nnfbcast_v2_7.oddlot.size = 2

-- Display: Oddlot
nse_nseslbm_broadcast_nnfbcast_v2_7.oddlot.labels = {
  [0] = "Oddlot: Preopen (0)",
  [1] = "Oddlot: Open (1)",
  [2] = "Oddlot: Closed (2)",
  [3] = "Oddlot: Preopen Ended (3)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.oddlot.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.oddlot.labels[value] or "Oddlot: Unknown("..value..")"
end

-- Dissect: Oddlot
nse_nseslbm_broadcast_nnfbcast_v2_7.oddlot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.oddlot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.oddlot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.oddlot, range, value, display)

  return offset + length, value
end

-- Open Price
nse_nseslbm_broadcast_nnfbcast_v2_7.open_price = {}

-- Size: Open Price
nse_nseslbm_broadcast_nnfbcast_v2_7.open_price.size = 4

-- Display: Open Price
nse_nseslbm_broadcast_nnfbcast_v2_7.open_price.display = function(value)
  return "Open Price: "..value
end

-- Translate: Open Price
nse_nseslbm_broadcast_nnfbcast_v2_7.open_price.translate = function(raw)
  return raw/100
end

-- Dissect: Open Price
nse_nseslbm_broadcast_nnfbcast_v2_7.open_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.open_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.open_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.open_price, range, value, display)

  return offset + length, value
end

-- Opening Index
nse_nseslbm_broadcast_nnfbcast_v2_7.opening_index = {}

-- Size: Opening Index
nse_nseslbm_broadcast_nnfbcast_v2_7.opening_index.size = 4

-- Display: Opening Index
nse_nseslbm_broadcast_nnfbcast_v2_7.opening_index.display = function(value)
  return "Opening Index: "..value
end

-- Dissect: Opening Index
nse_nseslbm_broadcast_nnfbcast_v2_7.opening_index.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.opening_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.opening_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.opening_index, range, value, display)

  return offset + length, value
end

-- Opening Price
nse_nseslbm_broadcast_nnfbcast_v2_7.opening_price = {}

-- Size: Opening Price
nse_nseslbm_broadcast_nnfbcast_v2_7.opening_price.size = 4

-- Display: Opening Price
nse_nseslbm_broadcast_nnfbcast_v2_7.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Translate: Opening Price
nse_nseslbm_broadcast_nnfbcast_v2_7.opening_price.translate = function(raw)
  return raw/100
end

-- Dissect: Opening Price
nse_nseslbm_broadcast_nnfbcast_v2_7.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.opening_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.opening_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Outage Status
nse_nseslbm_broadcast_nnfbcast_v2_7.outage_status = {}

-- Size: Outage Status
nse_nseslbm_broadcast_nnfbcast_v2_7.outage_status.size = 2

-- Display: Outage Status
nse_nseslbm_broadcast_nnfbcast_v2_7.outage_status.labels = {
  [0] = "Outage Status: End Of Outage (0)",
  [1] = "Outage Status: Start Of Outage (1)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.outage_status.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.outage_status.labels[value] or "Outage Status: Unknown("..value..")"
end

-- Dissect: Outage Status
nse_nseslbm_broadcast_nnfbcast_v2_7.outage_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.outage_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.outage_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.outage_status, range, value, display)

  return offset + length, value
end

-- Participant Id
nse_nseslbm_broadcast_nnfbcast_v2_7.participant_id = {}

-- Size: Participant Id
nse_nseslbm_broadcast_nnfbcast_v2_7.participant_id.size = 12

-- Display: Participant Id
nse_nseslbm_broadcast_nnfbcast_v2_7.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
nse_nseslbm_broadcast_nnfbcast_v2_7.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Participant Name
nse_nseslbm_broadcast_nnfbcast_v2_7.participant_name = {}

-- Size: Participant Name
nse_nseslbm_broadcast_nnfbcast_v2_7.participant_name.size = 25

-- Display: Participant Name
nse_nseslbm_broadcast_nnfbcast_v2_7.participant_name.display = function(value)
  return "Participant Name: "..value
end

-- Dissect: Participant Name
nse_nseslbm_broadcast_nnfbcast_v2_7.participant_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.participant_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.participant_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.participant_name, range, value, display)

  return offset + length, value
end

-- Participant Status
nse_nseslbm_broadcast_nnfbcast_v2_7.participant_status = {}

-- Size: Participant Status
nse_nseslbm_broadcast_nnfbcast_v2_7.participant_status.size = 1

-- Display: Participant Status
nse_nseslbm_broadcast_nnfbcast_v2_7.participant_status.labels = {
  ["S"] = "Participant Status: Suspended (S)",
  ["A"] = "Participant Status: Active (A)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.participant_status.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.participant_status.labels[value] or "Participant Status: Unknown("..value..")"
end

-- Dissect: Participant Status
nse_nseslbm_broadcast_nnfbcast_v2_7.participant_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.participant_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.participant_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.participant_status, range, value, display)

  return offset + length, value
end

-- Participant Update Date Time
nse_nseslbm_broadcast_nnfbcast_v2_7.participant_update_date_time = {}

-- Size: Participant Update Date Time
nse_nseslbm_broadcast_nnfbcast_v2_7.participant_update_date_time.size = 4

-- Dissect: Participant Update Date Time
nse_nseslbm_broadcast_nnfbcast_v2_7.participant_update_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.participant_update_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.participant_update_date_time
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.participant_update_date_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Participant Update Date Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Pday Cum Vol
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_cum_vol = {}

-- Size: Pday Cum Vol
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_cum_vol.size = 8

-- Display: Pday Cum Vol
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_cum_vol.display = function(value)
  return "Pday Cum Vol: "..string.format("%.0f", value)
end

-- Dissect: Pday Cum Vol
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_cum_vol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.pday_cum_vol.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.pday_cum_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.pday_cum_vol, range, value, display)

  return offset + length, value
end

-- Pday High Price
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_high_price = {}

-- Size: Pday High Price
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_high_price.size = 4

-- Display: Pday High Price
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_high_price.display = function(value)
  return "Pday High Price: "..value
end

-- Translate: Pday High Price
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_high_price.translate = function(raw)
  return raw/100
end

-- Dissect: Pday High Price
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.pday_high_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.pday_high_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.pday_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.pday_high_price, range, value, display)

  return offset + length, value
end

-- Pday Low Price
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_low_price = {}

-- Size: Pday Low Price
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_low_price.size = 4

-- Display: Pday Low Price
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_low_price.display = function(value)
  return "Pday Low Price: "..value
end

-- Translate: Pday Low Price
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_low_price.translate = function(raw)
  return raw/100
end

-- Dissect: Pday Low Price
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.pday_low_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.pday_low_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.pday_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.pday_low_price, range, value, display)

  return offset + length, value
end

-- Pday Wt Avg
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_wt_avg = {}

-- Size: Pday Wt Avg
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_wt_avg.size = 4

-- Display: Pday Wt Avg
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_wt_avg.display = function(value)
  return "Pday Wt Avg: "..value
end

-- Translate: Pday Wt Avg
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_wt_avg.translate = function(raw)
  return raw/100
end

-- Dissect: Pday Wt Avg
nse_nseslbm_broadcast_nnfbcast_v2_7.pday_wt_avg.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.pday_wt_avg.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.pday_wt_avg.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.pday_wt_avg.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.pday_wt_avg, range, value, display)

  return offset + length, value
end

-- Percent Change
nse_nseslbm_broadcast_nnfbcast_v2_7.percent_change = {}

-- Size: Percent Change
nse_nseslbm_broadcast_nnfbcast_v2_7.percent_change.size = 4

-- Display: Percent Change
nse_nseslbm_broadcast_nnfbcast_v2_7.percent_change.display = function(value)
  return "Percent Change: "..value
end

-- Dissect: Percent Change
nse_nseslbm_broadcast_nnfbcast_v2_7.percent_change.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.percent_change.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.percent_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.percent_change, range, value, display)

  return offset + length, value
end

-- Permitted To Trade
nse_nseslbm_broadcast_nnfbcast_v2_7.permitted_to_trade = {}

-- Size: Permitted To Trade
nse_nseslbm_broadcast_nnfbcast_v2_7.permitted_to_trade.size = 2

-- Display: Permitted To Trade
nse_nseslbm_broadcast_nnfbcast_v2_7.permitted_to_trade.labels = {
  [0] = "Permitted To Trade: Listed Not Permitted (0)",
  [1] = "Permitted To Trade: Permitted (1)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.permitted_to_trade.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.permitted_to_trade.labels[value] or "Permitted To Trade: Unknown("..value..")"
end

-- Dissect: Permitted To Trade
nse_nseslbm_broadcast_nnfbcast_v2_7.permitted_to_trade.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.permitted_to_trade.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.permitted_to_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.permitted_to_trade, range, value, display)

  return offset + length, value
end

-- Previous Close Price
nse_nseslbm_broadcast_nnfbcast_v2_7.previous_close_price = {}

-- Size: Previous Close Price
nse_nseslbm_broadcast_nnfbcast_v2_7.previous_close_price.size = 4

-- Display: Previous Close Price
nse_nseslbm_broadcast_nnfbcast_v2_7.previous_close_price.display = function(value)
  return "Previous Close Price: "..value
end

-- Translate: Previous Close Price
nse_nseslbm_broadcast_nnfbcast_v2_7.previous_close_price.translate = function(raw)
  return raw/100
end

-- Dissect: Previous Close Price
nse_nseslbm_broadcast_nnfbcast_v2_7.previous_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.previous_close_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.previous_close_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.previous_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.previous_close_price, range, value, display)

  return offset + length, value
end

-- Price
nse_nseslbm_broadcast_nnfbcast_v2_7.price = {}

-- Size: Price
nse_nseslbm_broadcast_nnfbcast_v2_7.price.size = 4

-- Display: Price
nse_nseslbm_broadcast_nnfbcast_v2_7.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nseslbm_broadcast_nnfbcast_v2_7.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
nse_nseslbm_broadcast_nnfbcast_v2_7.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.price, range, value, display)

  return offset + length, value
end

-- Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.qty = {}

-- Size: Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.qty.size = 4

-- Display: Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.qty.display = function(value)
  return "Qty: "..value
end

-- Dissect: Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.qty, range, value, display)

  return offset + length, value
end

-- Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.quantity = {}

-- Size: Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.quantity.size = 4

-- Display: Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.quantity, range, value, display)

  return offset + length, value
end

-- Re Admission Date
nse_nseslbm_broadcast_nnfbcast_v2_7.re_admission_date = {}

-- Size: Re Admission Date
nse_nseslbm_broadcast_nnfbcast_v2_7.re_admission_date.size = 4

-- Dissect: Re Admission Date
nse_nseslbm_broadcast_nnfbcast_v2_7.re_admission_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.re_admission_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.re_admission_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.re_admission_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Re Admission Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Record Date
nse_nseslbm_broadcast_nnfbcast_v2_7.record_date = {}

-- Size: Record Date
nse_nseslbm_broadcast_nnfbcast_v2_7.record_date.size = 4

-- Dissect: Record Date
nse_nseslbm_broadcast_nnfbcast_v2_7.record_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.record_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.record_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.record_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Record Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Remark
nse_nseslbm_broadcast_nnfbcast_v2_7.remark = {}

-- Size: Remark
nse_nseslbm_broadcast_nnfbcast_v2_7.remark.size = 25

-- Display: Remark
nse_nseslbm_broadcast_nnfbcast_v2_7.remark.display = function(value)
  return "Remark: "..value
end

-- Dissect: Remark
nse_nseslbm_broadcast_nnfbcast_v2_7.remark.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.remark.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.remark.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.remark, range, value, display)

  return offset + length, value
end

-- Report Date
nse_nseslbm_broadcast_nnfbcast_v2_7.report_date = {}

-- Size: Report Date
nse_nseslbm_broadcast_nnfbcast_v2_7.report_date.size = 4

-- Dissect: Report Date
nse_nseslbm_broadcast_nnfbcast_v2_7.report_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.report_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.report_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.report_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Report Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Reserved 0
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_0 = {}

-- Size: Reserved 0
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_0.size = 2

-- Display: Reserved 0
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_0.display = function(value)
  return "Reserved 0: "..value
end

-- Dissect: Reserved 0
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_0.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_0.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_0.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_0, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 1
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1 = {}

-- Size: Reserved 1
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.size = 1

-- Display: Reserved 1
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 18
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_18 = {}

-- Size: Reserved 18
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_18.size = 1

-- Display: Reserved 18
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_18.display = function(value)
  return "Reserved 18: "..value
end

-- Dissect: Reserved 18
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_18.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_18.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_18.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_18, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 19
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_19 = {}

-- Size: Reserved 19
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_19.size = 3

-- Display: Reserved 19
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_19.display = function(value)
  return "Reserved 19: "..value
end

-- Dissect: Reserved 19
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_19.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_19.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_19.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_19, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 2
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_2 = {}

-- Size: Reserved 2
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_2.size = 2

-- Display: Reserved 2
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_2, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 200
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_200 = {}

-- Size: Reserved 200
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_200.size = 200

-- Display: Reserved 200
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_200.display = function(value)
  return "Reserved 200: "..value
end

-- Dissect: Reserved 200
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_200.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_200.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_200.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_200, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 4
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_4 = {}

-- Size: Reserved 4
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_4.size = 4

-- Display: Reserved 4
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_4, range, range:raw(), display)

  return offset + length, value
end

-- Reverse Leg Settl Date
nse_nseslbm_broadcast_nnfbcast_v2_7.reverse_leg_settl_date = {}

-- Size: Reverse Leg Settl Date
nse_nseslbm_broadcast_nnfbcast_v2_7.reverse_leg_settl_date.size = 4

-- Dissect: Reverse Leg Settl Date
nse_nseslbm_broadcast_nnfbcast_v2_7.reverse_leg_settl_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.reverse_leg_settl_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reverse_leg_settl_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reverse_leg_settl_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Reverse Leg Settl Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Sell Price
nse_nseslbm_broadcast_nnfbcast_v2_7.sell_price = {}

-- Size: Sell Price
nse_nseslbm_broadcast_nnfbcast_v2_7.sell_price.size = 4

-- Display: Sell Price
nse_nseslbm_broadcast_nnfbcast_v2_7.sell_price.display = function(value)
  return "Sell Price: "..value
end

-- Translate: Sell Price
nse_nseslbm_broadcast_nnfbcast_v2_7.sell_price.translate = function(raw)
  return raw/100
end

-- Dissect: Sell Price
nse_nseslbm_broadcast_nnfbcast_v2_7.sell_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.sell_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.sell_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.sell_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.sell_price, range, value, display)

  return offset + length, value
end

-- Sell Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.sell_volume = {}

-- Size: Sell Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.sell_volume.size = 4

-- Display: Sell Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.sell_volume.display = function(value)
  return "Sell Volume: "..value
end

-- Dissect: Sell Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.sell_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.sell_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.sell_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.sell_volume, range, value, display)

  return offset + length, value
end

-- Series
nse_nseslbm_broadcast_nnfbcast_v2_7.series = {}

-- Size: Series
nse_nseslbm_broadcast_nnfbcast_v2_7.series.size = 2

-- Display: Series
nse_nseslbm_broadcast_nnfbcast_v2_7.series.display = function(value)
  return "Series: "..value
end

-- Dissect: Series
nse_nseslbm_broadcast_nnfbcast_v2_7.series.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.series, range, value, display)

  return offset + length, value
end

-- Settlement Period
nse_nseslbm_broadcast_nnfbcast_v2_7.settlement_period = {}

-- Size: Settlement Period
nse_nseslbm_broadcast_nnfbcast_v2_7.settlement_period.size = 2

-- Display: Settlement Period
nse_nseslbm_broadcast_nnfbcast_v2_7.settlement_period.display = function(value)
  return "Settlement Period: "..value
end

-- Dissect: Settlement Period
nse_nseslbm_broadcast_nnfbcast_v2_7.settlement_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.settlement_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.settlement_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.settlement_period, range, value, display)

  return offset + length, value
end

-- Solicitor Period
nse_nseslbm_broadcast_nnfbcast_v2_7.solicitor_period = {}

-- Size: Solicitor Period
nse_nseslbm_broadcast_nnfbcast_v2_7.solicitor_period.size = 2

-- Display: Solicitor Period
nse_nseslbm_broadcast_nnfbcast_v2_7.solicitor_period.display = function(value)
  return "Solicitor Period: "..value
end

-- Dissect: Solicitor Period
nse_nseslbm_broadcast_nnfbcast_v2_7.solicitor_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.solicitor_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.solicitor_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.solicitor_period, range, value, display)

  return offset + length, value
end

-- Spot
nse_nseslbm_broadcast_nnfbcast_v2_7.spot = {}

-- Size: Spot
nse_nseslbm_broadcast_nnfbcast_v2_7.spot.size = 2

-- Display: Spot
nse_nseslbm_broadcast_nnfbcast_v2_7.spot.labels = {
  [0] = "Spot: Preopen (0)",
  [1] = "Spot: Open (1)",
  [2] = "Spot: Closed (2)",
  [3] = "Spot: Preopen Ended (3)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.spot.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.spot.labels[value] or "Spot: Unknown("..value..")"
end

-- Dissect: Spot
nse_nseslbm_broadcast_nnfbcast_v2_7.spot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.spot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.spot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.spot, range, value, display)

  return offset + length, value
end

-- Start Date
nse_nseslbm_broadcast_nnfbcast_v2_7.start_date = {}

-- Size: Start Date
nse_nseslbm_broadcast_nnfbcast_v2_7.start_date.size = 4

-- Dissect: Start Date
nse_nseslbm_broadcast_nnfbcast_v2_7.start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.start_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.start_date
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 3 then field = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.start_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseslbm_broadcast_nnfbcast_v2_7.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Start Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseslbm_broadcast_nnfbcast_v2_7.zone_offset, 0))

  return offset + length, value
end

-- Status
nse_nseslbm_broadcast_nnfbcast_v2_7.status = {}

-- Size: Status
nse_nseslbm_broadcast_nnfbcast_v2_7.status.size = 2

-- Display: Status
nse_nseslbm_broadcast_nnfbcast_v2_7.status.labels = {
  [1] = "Status: Preopen (1)",
  [2] = "Status: Open (2)",
  [3] = "Status: Suspended (3)",
  [4] = "Status: Preopen Extended (4)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.status.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.status.labels[value] or "Status: Unknown("..value..")"
end

-- Dissect: Status
nse_nseslbm_broadcast_nnfbcast_v2_7.status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.status, range, value, display)

  return offset + length, value
end

-- Stream Number
nse_nseslbm_broadcast_nnfbcast_v2_7.stream_number = {}

-- Size: Stream Number
nse_nseslbm_broadcast_nnfbcast_v2_7.stream_number.size = 2

-- Display: Stream Number
nse_nseslbm_broadcast_nnfbcast_v2_7.stream_number.display = function(value)
  return "Stream Number: "..value
end

-- Dissect: Stream Number
nse_nseslbm_broadcast_nnfbcast_v2_7.stream_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.stream_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.stream_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.stream_number, range, value, display)

  return offset + length, value
end

-- Symbol
nse_nseslbm_broadcast_nnfbcast_v2_7.symbol = {}

-- Size: Symbol
nse_nseslbm_broadcast_nnfbcast_v2_7.symbol.size = 10

-- Display: Symbol
nse_nseslbm_broadcast_nnfbcast_v2_7.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nse_nseslbm_broadcast_nnfbcast_v2_7.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.symbol, range, value, display)

  return offset + length, value
end

-- Terminal Idle Time
nse_nseslbm_broadcast_nnfbcast_v2_7.terminal_idle_time = {}

-- Size: Terminal Idle Time
nse_nseslbm_broadcast_nnfbcast_v2_7.terminal_idle_time.size = 2

-- Display: Terminal Idle Time
nse_nseslbm_broadcast_nnfbcast_v2_7.terminal_idle_time.display = function(value)
  return "Terminal Idle Time: "..value
end

-- Dissect: Terminal Idle Time
nse_nseslbm_broadcast_nnfbcast_v2_7.terminal_idle_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.terminal_idle_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.terminal_idle_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.terminal_idle_time, range, value, display)

  return offset + length, value
end

-- Tick Size
nse_nseslbm_broadcast_nnfbcast_v2_7.tick_size = {}

-- Size: Tick Size
nse_nseslbm_broadcast_nnfbcast_v2_7.tick_size.size = 4

-- Display: Tick Size
nse_nseslbm_broadcast_nnfbcast_v2_7.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Translate: Tick Size
nse_nseslbm_broadcast_nnfbcast_v2_7.tick_size.translate = function(raw)
  return raw/100
end

-- Dissect: Tick Size
nse_nseslbm_broadcast_nnfbcast_v2_7.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.tick_size.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.tick_size.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Time Stamp 2
nse_nseslbm_broadcast_nnfbcast_v2_7.time_stamp_2 = {}

-- Size: Time Stamp 2
nse_nseslbm_broadcast_nnfbcast_v2_7.time_stamp_2.size = 8

-- Display: Time Stamp 2
nse_nseslbm_broadcast_nnfbcast_v2_7.time_stamp_2.display = function(value)
  return "Time Stamp 2: "..value
end

-- Dissect: Time Stamp 2
nse_nseslbm_broadcast_nnfbcast_v2_7.time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.time_stamp_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.time_stamp_2, range, value, display)

  return offset + length, value
end

-- Token
nse_nseslbm_broadcast_nnfbcast_v2_7.token = {}

-- Size: Token
nse_nseslbm_broadcast_nnfbcast_v2_7.token.size = 4

-- Display: Token
nse_nseslbm_broadcast_nnfbcast_v2_7.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nseslbm_broadcast_nnfbcast_v2_7.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.token.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.token, range, value, display)

  return offset + length, value
end

-- Total Buy Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_qty = {}

-- Size: Total Buy Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_qty.size = 4

-- Display: Total Buy Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_qty.display = function(value)
  return "Total Buy Qty: "..value
end

-- Dissect: Total Buy Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.total_buy_qty, range, value, display)

  return offset + length, value
end

-- Total Buy Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_quantity = {}

-- Size: Total Buy Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_quantity.size = 8

-- Display: Total Buy Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_quantity.display = function(value)
  return "Total Buy Quantity: "..string.format("%.0f", value)
end

-- Dissect: Total Buy Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_quantity.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.total_buy_quantity, range, value, display)

  return offset + length, value
end

-- Total Quantity Traded
nse_nseslbm_broadcast_nnfbcast_v2_7.total_quantity_traded = {}

-- Size: Total Quantity Traded
nse_nseslbm_broadcast_nnfbcast_v2_7.total_quantity_traded.size = 4

-- Display: Total Quantity Traded
nse_nseslbm_broadcast_nnfbcast_v2_7.total_quantity_traded.display = function(value)
  return "Total Quantity Traded: "..value
end

-- Dissect: Total Quantity Traded
nse_nseslbm_broadcast_nnfbcast_v2_7.total_quantity_traded.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.total_quantity_traded.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.total_quantity_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.total_quantity_traded, range, value, display)

  return offset + length, value
end

-- Total Sell Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_qty = {}

-- Size: Total Sell Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_qty.size = 4

-- Display: Total Sell Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_qty.display = function(value)
  return "Total Sell Qty: "..value
end

-- Dissect: Total Sell Qty
nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.total_sell_qty, range, value, display)

  return offset + length, value
end

-- Total Sell Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_quantity = {}

-- Size: Total Sell Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_quantity.size = 8

-- Display: Total Sell Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_quantity.display = function(value)
  return "Total Sell Quantity: "..string.format("%.0f", value)
end

-- Dissect: Total Sell Quantity
nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_quantity.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.total_sell_quantity, range, value, display)

  return offset + length, value
end

-- Total Value Traded
nse_nseslbm_broadcast_nnfbcast_v2_7.total_value_traded = {}

-- Size: Total Value Traded
nse_nseslbm_broadcast_nnfbcast_v2_7.total_value_traded.size = 8

-- Display: Total Value Traded
nse_nseslbm_broadcast_nnfbcast_v2_7.total_value_traded.display = function(value)
  return "Total Value Traded: "..string.format("%.0f", value)
end

-- Dissect: Total Value Traded
nse_nseslbm_broadcast_nnfbcast_v2_7.total_value_traded.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.total_value_traded.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.total_value_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.total_value_traded, range, value, display)

  return offset + length, value
end

-- Trade Number
nse_nseslbm_broadcast_nnfbcast_v2_7.trade_number = {}

-- Size: Trade Number
nse_nseslbm_broadcast_nnfbcast_v2_7.trade_number.size = 4

-- Display: Trade Number
nse_nseslbm_broadcast_nnfbcast_v2_7.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
nse_nseslbm_broadcast_nnfbcast_v2_7.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.trade_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Price
nse_nseslbm_broadcast_nnfbcast_v2_7.trade_price = {}

-- Size: Trade Price
nse_nseslbm_broadcast_nnfbcast_v2_7.trade_price.size = 4

-- Display: Trade Price
nse_nseslbm_broadcast_nnfbcast_v2_7.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
nse_nseslbm_broadcast_nnfbcast_v2_7.trade_price.translate = function(raw)
  return raw/100
end

-- Dissect: Trade Price
nse_nseslbm_broadcast_nnfbcast_v2_7.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.trade_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nseslbm_broadcast_nnfbcast_v2_7.trade_price.translate(raw)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.trade_volume = {}

-- Size: Trade Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.trade_volume.size = 4

-- Display: Trade Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.trade_volume.display = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
nse_nseslbm_broadcast_nnfbcast_v2_7.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.trade_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nseslbm_broadcast_nnfbcast_v2_7.trader_id = {}

-- Size: Trader Id
nse_nseslbm_broadcast_nnfbcast_v2_7.trader_id.size = 4

-- Display: Trader Id
nse_nseslbm_broadcast_nnfbcast_v2_7.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nseslbm_broadcast_nnfbcast_v2_7.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trader Name
nse_nseslbm_broadcast_nnfbcast_v2_7.trader_name = {}

-- Size: Trader Name
nse_nseslbm_broadcast_nnfbcast_v2_7.trader_name.size = 26

-- Display: Trader Name
nse_nseslbm_broadcast_nnfbcast_v2_7.trader_name.display = function(value)
  return "Trader Name: "..value
end

-- Dissect: Trader Name
nse_nseslbm_broadcast_nnfbcast_v2_7.trader_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.trader_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.trader_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trader_name, range, value, display)

  return offset + length, value
end

-- Trader Number
nse_nseslbm_broadcast_nnfbcast_v2_7.trader_number = {}

-- Size: Trader Number
nse_nseslbm_broadcast_nnfbcast_v2_7.trader_number.size = 4

-- Display: Trader Number
nse_nseslbm_broadcast_nnfbcast_v2_7.trader_number.display = function(value)
  return "Trader Number: "..value
end

-- Dissect: Trader Number
nse_nseslbm_broadcast_nnfbcast_v2_7.trader_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.trader_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.trader_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trader_number, range, value, display)

  return offset + length, value
end

-- Trading Status
nse_nseslbm_broadcast_nnfbcast_v2_7.trading_status = {}

-- Size: Trading Status
nse_nseslbm_broadcast_nnfbcast_v2_7.trading_status.size = 2

-- Display: Trading Status
nse_nseslbm_broadcast_nnfbcast_v2_7.trading_status.labels = {
  [1] = "Trading Status: Preopen (1)",
  [2] = "Trading Status: Open (2)",
  [3] = "Trading Status: Suspended (3)",
  [4] = "Trading Status: Preopen Extended (4)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.trading_status.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
nse_nseslbm_broadcast_nnfbcast_v2_7.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.trading_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nseslbm_broadcast_nnfbcast_v2_7.transaction_code = {}

-- Size: Transaction Code
nse_nseslbm_broadcast_nnfbcast_v2_7.transaction_code.size = 2

-- Display: Transaction Code
nse_nseslbm_broadcast_nnfbcast_v2_7.transaction_code.labels = {
  [6501] = "Transaction Code: General Message Broadcast Message (6501)",
  [7206] = "Transaction Code: Change In System Status Parameters Message (7206)",
  [7305] = "Transaction Code: Change In Security Master Message (7305)",
  [7306] = "Transaction Code: Change Participant Status Message (7306)",
  [7320] = "Transaction Code: Change Of Security Status Message (7320)",
  [7210] = "Transaction Code: Change Of Security Status Preopen Message (7210)",
  [9010] = "Transaction Code: Turnover Limit Exceeded Message (9010)",
  [9011] = "Transaction Code: Broker Reactivated Message (9011)",
  [6582] = "Transaction Code: Auction Activity Message (6582)",
  [6581] = "Transaction Code: Change Of Auction Status Message (6581)",
  [6511] = "Transaction Code: Market Open Message (6511)",
  [6521] = "Transaction Code: Market Close Message (6521)",
  [6531] = "Transaction Code: Preopen Shutdown Message (6531)",
  [6571] = "Transaction Code: Normal Market Preopen Ended Message (6571)",
  [7202] = "Transaction Code: Ticker And Market Index Message (7202)",
  [7200] = "Transaction Code: Market By Order Market By Price Update Message (7200)",
  [7208] = "Transaction Code: Only Market By Price Update Message (7208)",
  [7201] = "Transaction Code: Market Watch Update Message (7201)",
  [6013] = "Transaction Code: Security Open Message (6013)",
  [6541] = "Transaction Code: Broadcast Circuit Check Message (6541)",
  [7207] = "Transaction Code: Multiple Index Broadcast Message (7207)",
  [7203] = "Transaction Code: Broadcast Industry Index Message (7203)",
  [7211] = "Transaction Code: Broadcast Buy Back Information Message (7211)",
  [1833] = "Transaction Code: Market Statistics Report Message (1833)",
  [5294] = "Transaction Code: Contingency Broadcast Message (5294)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.transaction_code.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.transaction_code.labels[value] or "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nseslbm_broadcast_nnfbcast_v2_7.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.transaction_code, range, value, display)

  return offset + length, value
end

-- User Type
nse_nseslbm_broadcast_nnfbcast_v2_7.user_type = {}

-- Size: User Type
nse_nseslbm_broadcast_nnfbcast_v2_7.user_type.size = 2

-- Display: User Type
nse_nseslbm_broadcast_nnfbcast_v2_7.user_type.display = function(value)
  return "User Type: "..value
end

-- Dissect: User Type
nse_nseslbm_broadcast_nnfbcast_v2_7.user_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.user_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.user_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.user_type, range, value, display)

  return offset + length, value
end

-- Volume Freeze Percent
nse_nseslbm_broadcast_nnfbcast_v2_7.volume_freeze_percent = {}

-- Size: Volume Freeze Percent
nse_nseslbm_broadcast_nnfbcast_v2_7.volume_freeze_percent.size = 2

-- Display: Volume Freeze Percent
nse_nseslbm_broadcast_nnfbcast_v2_7.volume_freeze_percent.display = function(value)
  return "Volume Freeze Percent: "..value
end

-- Dissect: Volume Freeze Percent
nse_nseslbm_broadcast_nnfbcast_v2_7.volume_freeze_percent.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.volume_freeze_percent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.volume_freeze_percent.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.volume_freeze_percent, range, value, display)

  return offset + length, value
end

-- Volume Traded Today
nse_nseslbm_broadcast_nnfbcast_v2_7.volume_traded_today = {}

-- Size: Volume Traded Today
nse_nseslbm_broadcast_nnfbcast_v2_7.volume_traded_today.size = 4

-- Display: Volume Traded Today
nse_nseslbm_broadcast_nnfbcast_v2_7.volume_traded_today.display = function(value)
  return "Volume Traded Today: "..value
end

-- Dissect: Volume Traded Today
nse_nseslbm_broadcast_nnfbcast_v2_7.volume_traded_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.volume_traded_today.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.volume_traded_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.volume_traded_today, range, value, display)

  return offset + length, value
end

-- Warning Percent
nse_nseslbm_broadcast_nnfbcast_v2_7.warning_percent = {}

-- Size: Warning Percent
nse_nseslbm_broadcast_nnfbcast_v2_7.warning_percent.size = 2

-- Display: Warning Percent
nse_nseslbm_broadcast_nnfbcast_v2_7.warning_percent.display = function(value)
  return "Warning Percent: "..value
end

-- Dissect: Warning Percent
nse_nseslbm_broadcast_nnfbcast_v2_7.warning_percent.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.warning_percent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.warning_percent.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.warning_percent, range, value, display)

  return offset + length, value
end

-- Warning Type
nse_nseslbm_broadcast_nnfbcast_v2_7.warning_type = {}

-- Size: Warning Type
nse_nseslbm_broadcast_nnfbcast_v2_7.warning_type.size = 2

-- Display: Warning Type
nse_nseslbm_broadcast_nnfbcast_v2_7.warning_type.labels = {
  [1] = "Warning Type: Limit About To Exceed (1)",
  [2] = "Warning Type: Limit Exceeded (2)",
}

nse_nseslbm_broadcast_nnfbcast_v2_7.warning_type.display = function(value)
  return nse_nseslbm_broadcast_nnfbcast_v2_7.warning_type.labels[value] or "Warning Type: Unknown("..value..")"
end

-- Dissect: Warning Type
nse_nseslbm_broadcast_nnfbcast_v2_7.warning_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.warning_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.warning_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.warning_type, range, value, display)

  return offset + length, value
end

-- Yearly High
nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_high = {}

-- Size: Yearly High
nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_high.size = 4

-- Display: Yearly High
nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_high.display = function(value)
  return "Yearly High: "..value
end

-- Dissect: Yearly High
nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_high.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_high.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.yearly_high, range, value, display)

  return offset + length, value
end

-- Yearly Low
nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_low = {}

-- Size: Yearly Low
nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_low.size = 4

-- Display: Yearly Low
nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_low.display = function(value)
  return "Yearly Low: "..value
end

-- Dissect: Yearly Low
nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_low.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_low.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.yearly_low, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseSlbm Broadcast NnfBcast 2.7
-----------------------------------------------------------------------

-- Contingency Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.contingency_broadcast_message = {}

-- Size: Contingency Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.contingency_broadcast_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.stream_number.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.outage_status.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_200.size

-- Display: Contingency Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.contingency_broadcast_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contingency Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.contingency_broadcast_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Number: SHORT
  index, stream_number = nse_nseslbm_broadcast_nnfbcast_v2_7.stream_number.dissect(buffer, index, packet, parent)

  -- Outage Status: SHORT
  index, outage_status = nse_nseslbm_broadcast_nnfbcast_v2_7.outage_status.dissect(buffer, index, packet, parent)

  -- Reserved 200: CHAR
  if show.padding then
    index, reserved_200 = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_200.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_200.size
  end

  return index
end

-- Dissect: Contingency Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.contingency_broadcast_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.contingency_broadcast_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.contingency_broadcast_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.contingency_broadcast_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.contingency_broadcast_message.fields(buffer, offset, packet, parent)
  end
end

-- Report Trailer Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_trailer_body = {}

-- Size: Report Trailer Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_trailer_body.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records_long.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.size

-- Display: Report Trailer Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_trailer_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Report Trailer Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_trailer_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records Long: LONG
  index, number_of_records_long = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records_long.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.size
  end

  return index
end

-- Dissect: Report Trailer Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_trailer_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.report_trailer_body, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.report_trailer_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.report_trailer_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.report_trailer_body.fields(buffer, offset, packet, parent)
  end
end

-- Sec Info
nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info = {}

-- Size: Sec Info
nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.symbol.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.series.size

-- Display: Sec Info
nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sec Info
nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: CHAR
  index, symbol = nse_nseslbm_broadcast_nnfbcast_v2_7.symbol.dissect(buffer, index, packet, parent)

  -- Series: CHAR
  index, series = nse_nseslbm_broadcast_nnfbcast_v2_7.series.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sec Info
nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.sec_info, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.fields(buffer, offset, packet, parent)
  end
end

-- Market Statistics Data
nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_data = {}

-- Size: Market Statistics Data
nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_data.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.reverse_leg_settl_date.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.open_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.high_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.low_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.closing_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.total_quantity_traded.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.total_value_traded.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.previous_close_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.life_time_high.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.l_ife_time_low.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.corporate_action_indicator.size

-- Display: Market Statistics Data
nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Statistics Data
nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_data.fields = function(buffer, offset, packet, parent, market_statistics_data_index)
  local index = offset

  -- Implicit Market Statistics Data Index
  if market_statistics_data_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_statistics_data_index, market_statistics_data_index)
    iteration:set_generated()
  end

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Reverse Leg Settl Date: LONG
  index, reverse_leg_settl_date = nse_nseslbm_broadcast_nnfbcast_v2_7.reverse_leg_settl_date.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.dissect(buffer, index, packet, parent)

  -- Open Price: LONG
  index, open_price = nse_nseslbm_broadcast_nnfbcast_v2_7.open_price.dissect(buffer, index, packet, parent)

  -- High Price: LONG
  index, high_price = nse_nseslbm_broadcast_nnfbcast_v2_7.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: LONG
  index, low_price = nse_nseslbm_broadcast_nnfbcast_v2_7.low_price.dissect(buffer, index, packet, parent)

  -- Closing Price: LONG
  index, closing_price = nse_nseslbm_broadcast_nnfbcast_v2_7.closing_price.dissect(buffer, index, packet, parent)

  -- Total Quantity Traded: LONG
  index, total_quantity_traded = nse_nseslbm_broadcast_nnfbcast_v2_7.total_quantity_traded.dissect(buffer, index, packet, parent)

  -- Total Value Traded: DOUBLE
  index, total_value_traded = nse_nseslbm_broadcast_nnfbcast_v2_7.total_value_traded.dissect(buffer, index, packet, parent)

  -- Previous Close Price: LONG
  index, previous_close_price = nse_nseslbm_broadcast_nnfbcast_v2_7.previous_close_price.dissect(buffer, index, packet, parent)

  -- Life Time High: LONG
  index, life_time_high = nse_nseslbm_broadcast_nnfbcast_v2_7.life_time_high.dissect(buffer, index, packet, parent)

  -- L Ife Time Low: LONG
  index, l_ife_time_low = nse_nseslbm_broadcast_nnfbcast_v2_7.l_ife_time_low.dissect(buffer, index, packet, parent)

  -- Corporate Action Indicator: CHAR
  index, corporate_action_indicator = nse_nseslbm_broadcast_nnfbcast_v2_7.corporate_action_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Statistics Data
nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_data.dissect = function(buffer, offset, packet, parent, market_statistics_data_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_statistics_data, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_data.fields(buffer, offset, packet, parent, market_statistics_data_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_data.fields(buffer, offset, packet, parent, market_statistics_data_index)
  end
end

-- Report Statistics Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_statistics_body = {}

-- Size: Report Statistics Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_statistics_body.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.size + 
  7 * nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_data.size

-- Display: Report Statistics Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_statistics_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Report Statistics Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_statistics_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.size
  end

  -- Number Of Records: SHORT
  index, number_of_records = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Market Statistics Data
  for market_statistics_data_index = 1, 7 do
    index, market_statistics_data = nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_data.dissect(buffer, index, packet, parent, market_statistics_data_index)
  end

  return index
end

-- Dissect: Report Statistics Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_statistics_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.report_statistics_body, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.report_statistics_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.report_statistics_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.report_statistics_body.fields(buffer, offset, packet, parent)
  end
end

-- Report Header Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_header_body = {}

-- Size: Report Header Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_header_body.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.report_date.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.user_type.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broker_id.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broker_name.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.trader_number.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.trader_name.size

-- Display: Report Header Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_header_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Report Header Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_header_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.size
  end

  -- Report Date: LONG
  index, report_date = nse_nseslbm_broadcast_nnfbcast_v2_7.report_date.dissect(buffer, index, packet, parent)

  -- User Type: SHORT
  index, user_type = nse_nseslbm_broadcast_nnfbcast_v2_7.user_type.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_id.dissect(buffer, index, packet, parent)

  -- Broker Name: CHAR
  index, broker_name = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_name.dissect(buffer, index, packet, parent)

  -- Trader Number: LONG
  index, trader_number = nse_nseslbm_broadcast_nnfbcast_v2_7.trader_number.dissect(buffer, index, packet, parent)

  -- Trader Name: CHAR
  index, trader_name = nse_nseslbm_broadcast_nnfbcast_v2_7.trader_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Report Header Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_header_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.report_header_body, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.report_header_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.report_header_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.report_header_body.fields(buffer, offset, packet, parent)
  end
end

-- Report Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_body = {}

-- Dispatch: Report Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_body.dispatch = {
  ["H"] = nse_nseslbm_broadcast_nnfbcast_v2_7.report_header_body.dissect,
  ["R"] = nse_nseslbm_broadcast_nnfbcast_v2_7.report_statistics_body.dissect,
  ["D"] = nse_nseslbm_broadcast_nnfbcast_v2_7.report_statistics_body.dissect,
  ["T"] = nse_nseslbm_broadcast_nnfbcast_v2_7.report_trailer_body.dissect,
}

-- Dissect: Report Body
nse_nseslbm_broadcast_nnfbcast_v2_7.report_body.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nse_nseslbm_broadcast_nnfbcast_v2_7.report_body.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Market Statistics Report Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_report_message = {}

-- Calculate size of: Market Statistics Report Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_report_message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.message_type.size

  -- Calculate runtime size of Report Body field
  local report_body_offset = offset + index
  local report_body_type = buffer(report_body_offset - 1, 1):string()
  index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.report_body.size(buffer, report_body_offset, report_body_type)

  return index
end

-- Display: Market Statistics Report Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Statistics Report Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: CHAR
  index, message_type = nse_nseslbm_broadcast_nnfbcast_v2_7.message_type.dissect(buffer, index, packet, parent)

  -- Report Body: Runtime Type with 3 branches
  index = nse_nseslbm_broadcast_nnfbcast_v2_7.report_body.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Market Statistics Report Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_statistics_report_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Buybackdata
nse_nseslbm_broadcast_nnfbcast_v2_7.buybackdata = {}

-- Size: Buybackdata
nse_nseslbm_broadcast_nnfbcast_v2_7.buybackdata.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.token.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.symbol.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.series.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.pday_cum_vol.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.pday_high_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.pday_low_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.pday_wt_avg.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.cday_cum_vol.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.cday_high_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.cday_low_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.cday_wt_avg.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.start_date.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.end_date.size

-- Display: Buybackdata
nse_nseslbm_broadcast_nnfbcast_v2_7.buybackdata.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Buybackdata
nse_nseslbm_broadcast_nnfbcast_v2_7.buybackdata.fields = function(buffer, offset, packet, parent, buybackdata_index)
  local index = offset

  -- Implicit Buybackdata Index
  if buybackdata_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.buybackdata_index, buybackdata_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nseslbm_broadcast_nnfbcast_v2_7.token.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nseslbm_broadcast_nnfbcast_v2_7.symbol.dissect(buffer, index, packet, parent)

  -- Series: CHAR
  index, series = nse_nseslbm_broadcast_nnfbcast_v2_7.series.dissect(buffer, index, packet, parent)

  -- Pday Cum Vol: DOUBLE
  index, pday_cum_vol = nse_nseslbm_broadcast_nnfbcast_v2_7.pday_cum_vol.dissect(buffer, index, packet, parent)

  -- Pday High Price: LONG
  index, pday_high_price = nse_nseslbm_broadcast_nnfbcast_v2_7.pday_high_price.dissect(buffer, index, packet, parent)

  -- Pday Low Price: LONG
  index, pday_low_price = nse_nseslbm_broadcast_nnfbcast_v2_7.pday_low_price.dissect(buffer, index, packet, parent)

  -- Pday Wt Avg: LONG
  index, pday_wt_avg = nse_nseslbm_broadcast_nnfbcast_v2_7.pday_wt_avg.dissect(buffer, index, packet, parent)

  -- Cday Cum Vol: DOUBLE
  index, cday_cum_vol = nse_nseslbm_broadcast_nnfbcast_v2_7.cday_cum_vol.dissect(buffer, index, packet, parent)

  -- Cday High Price: LONG
  index, cday_high_price = nse_nseslbm_broadcast_nnfbcast_v2_7.cday_high_price.dissect(buffer, index, packet, parent)

  -- Cday Low Price: LONG
  index, cday_low_price = nse_nseslbm_broadcast_nnfbcast_v2_7.cday_low_price.dissect(buffer, index, packet, parent)

  -- Cday Wt Avg: LONG
  index, cday_wt_avg = nse_nseslbm_broadcast_nnfbcast_v2_7.cday_wt_avg.dissect(buffer, index, packet, parent)

  -- Start Date: LONG
  index, start_date = nse_nseslbm_broadcast_nnfbcast_v2_7.start_date.dissect(buffer, index, packet, parent)

  -- End Date: LONG
  index, end_date = nse_nseslbm_broadcast_nnfbcast_v2_7.end_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Buybackdata
nse_nseslbm_broadcast_nnfbcast_v2_7.buybackdata.dissect = function(buffer, offset, packet, parent, buybackdata_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.buybackdata, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.buybackdata.fields(buffer, offset, packet, parent, buybackdata_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.buybackdata.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.buybackdata.fields(buffer, offset, packet, parent, buybackdata_index)
  end
end

-- Broadcast Buy Back Information Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_buy_back_information_message = {}

-- Size: Broadcast Buy Back Information Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_buy_back_information_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.size + 
  6 * nse_nseslbm_broadcast_nnfbcast_v2_7.buybackdata.size

-- Display: Broadcast Buy Back Information Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_buy_back_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broadcast Buy Back Information Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_buy_back_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Buybackdata
  for buybackdata_index = 1, 6 do
    index, buybackdata = nse_nseslbm_broadcast_nnfbcast_v2_7.buybackdata.dissect(buffer, index, packet, parent, buybackdata_index)
  end

  return index
end

-- Dissect: Broadcast Buy Back Information Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_buy_back_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broadcast_buy_back_information_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_buy_back_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_buy_back_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_buy_back_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Industry Indices
nse_nseslbm_broadcast_nnfbcast_v2_7.industry_indices = {}

-- Size: Industry Indices
nse_nseslbm_broadcast_nnfbcast_v2_7.industry_indices.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.index_name.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.index_value.size

-- Display: Industry Indices
nse_nseslbm_broadcast_nnfbcast_v2_7.industry_indices.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Industry Indices
nse_nseslbm_broadcast_nnfbcast_v2_7.industry_indices.fields = function(buffer, offset, packet, parent, industry_indices_index)
  local index = offset

  -- Implicit Industry Indices Index
  if industry_indices_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.industry_indices_index, industry_indices_index)
    iteration:set_generated()
  end

  -- Index Name: CHAR
  index, index_name = nse_nseslbm_broadcast_nnfbcast_v2_7.index_name.dissect(buffer, index, packet, parent)

  -- Index Value: LONG
  index, index_value = nse_nseslbm_broadcast_nnfbcast_v2_7.index_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Industry Indices
nse_nseslbm_broadcast_nnfbcast_v2_7.industry_indices.dissect = function(buffer, offset, packet, parent, industry_indices_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.industry_indices, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.industry_indices.fields(buffer, offset, packet, parent, industry_indices_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.industry_indices.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.industry_indices.fields(buffer, offset, packet, parent, industry_indices_index)
  end
end

-- Broadcast Industry Index Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_industry_index_message = {}

-- Size: Broadcast Industry Index Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_industry_index_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.size + 
  17 * nse_nseslbm_broadcast_nnfbcast_v2_7.industry_indices.size

-- Display: Broadcast Industry Index Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_industry_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broadcast Industry Index Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_industry_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Industry Indices
  for industry_indices_index = 1, 17 do
    index, industry_indices = nse_nseslbm_broadcast_nnfbcast_v2_7.industry_indices.dissect(buffer, index, packet, parent, industry_indices_index)
  end

  return index
end

-- Dissect: Broadcast Industry Index Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_industry_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broadcast_industry_index_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_industry_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_industry_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_industry_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Indices
nse_nseslbm_broadcast_nnfbcast_v2_7.indices = {}

-- Size: Indices
nse_nseslbm_broadcast_nnfbcast_v2_7.indices.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.index_name.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.index_value.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.high_index_value.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.low_index_value.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.opening_index.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.closing_index.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.percent_change.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_high.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_low.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_upmoves.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_downmoves.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.market_capitalisation.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.net_change_indicator.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.filler.size

-- Display: Indices
nse_nseslbm_broadcast_nnfbcast_v2_7.indices.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indices
nse_nseslbm_broadcast_nnfbcast_v2_7.indices.fields = function(buffer, offset, packet, parent, indices_index)
  local index = offset

  -- Implicit Indices Index
  if indices_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.indices_index, indices_index)
    iteration:set_generated()
  end

  -- Index Name: CHAR
  index, index_name = nse_nseslbm_broadcast_nnfbcast_v2_7.index_name.dissect(buffer, index, packet, parent)

  -- Index Value: LONG
  index, index_value = nse_nseslbm_broadcast_nnfbcast_v2_7.index_value.dissect(buffer, index, packet, parent)

  -- High Index Value: LONG
  index, high_index_value = nse_nseslbm_broadcast_nnfbcast_v2_7.high_index_value.dissect(buffer, index, packet, parent)

  -- Low Index Value: LONG
  index, low_index_value = nse_nseslbm_broadcast_nnfbcast_v2_7.low_index_value.dissect(buffer, index, packet, parent)

  -- Opening Index: LONG
  index, opening_index = nse_nseslbm_broadcast_nnfbcast_v2_7.opening_index.dissect(buffer, index, packet, parent)

  -- Closing Index: LONG
  index, closing_index = nse_nseslbm_broadcast_nnfbcast_v2_7.closing_index.dissect(buffer, index, packet, parent)

  -- Percent Change: LONG
  index, percent_change = nse_nseslbm_broadcast_nnfbcast_v2_7.percent_change.dissect(buffer, index, packet, parent)

  -- Yearly High: LONG
  index, yearly_high = nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_high.dissect(buffer, index, packet, parent)

  -- Yearly Low: LONG
  index, yearly_low = nse_nseslbm_broadcast_nnfbcast_v2_7.yearly_low.dissect(buffer, index, packet, parent)

  -- No Of Upmoves: LONG
  index, no_of_upmoves = nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_upmoves.dissect(buffer, index, packet, parent)

  -- No Of Downmoves: LONG
  index, no_of_downmoves = nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_downmoves.dissect(buffer, index, packet, parent)

  -- Market Capitalisation: DOUBLE
  index, market_capitalisation = nse_nseslbm_broadcast_nnfbcast_v2_7.market_capitalisation.dissect(buffer, index, packet, parent)

  -- Net Change Indicator: CHAR
  index, net_change_indicator = nse_nseslbm_broadcast_nnfbcast_v2_7.net_change_indicator.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  if show.padding then
    index, filler = nse_nseslbm_broadcast_nnfbcast_v2_7.filler.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.filler.size
  end

  return index
end

-- Dissect: Indices
nse_nseslbm_broadcast_nnfbcast_v2_7.indices.dissect = function(buffer, offset, packet, parent, indices_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.indices, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.indices.fields(buffer, offset, packet, parent, indices_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.indices.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.indices.fields(buffer, offset, packet, parent, indices_index)
  end
end

-- Multiple Index Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.multiple_index_broadcast_message = {}

-- Size: Multiple Index Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.multiple_index_broadcast_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.size + 
  6 * nse_nseslbm_broadcast_nnfbcast_v2_7.indices.size

-- Display: Multiple Index Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.multiple_index_broadcast_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multiple Index Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.multiple_index_broadcast_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Indices
  for indices_index = 1, 6 do
    index, indices = nse_nseslbm_broadcast_nnfbcast_v2_7.indices.dissect(buffer, index, packet, parent, indices_index)
  end

  return index
end

-- Dissect: Multiple Index Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.multiple_index_broadcast_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.multiple_index_broadcast_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.multiple_index_broadcast_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.multiple_index_broadcast_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.multiple_index_broadcast_message.fields(buffer, offset, packet, parent)
  end
end

-- Broadcast Circuit Check Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_circuit_check_message = {}

-- Display: Broadcast Circuit Check Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_circuit_check_message.display = function(packet, parent, length)
  return "Broadcast Circuit Check Message"
end


-- Dissect: Broadcast Circuit Check Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_circuit_check_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_circuit_check_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Security Open Message
nse_nseslbm_broadcast_nnfbcast_v2_7.security_open_message = {}

-- Size: Security Open Message
nse_nseslbm_broadcast_nnfbcast_v2_7.security_open_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.token.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.opening_price.size

-- Display: Security Open Message
nse_nseslbm_broadcast_nnfbcast_v2_7.security_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Message
nse_nseslbm_broadcast_nnfbcast_v2_7.security_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Token: LONG
  index, token = nse_nseslbm_broadcast_nnfbcast_v2_7.token.dissect(buffer, index, packet, parent)

  -- Opening Price: LONG
  index, opening_price = nse_nseslbm_broadcast_nnfbcast_v2_7.opening_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Message
nse_nseslbm_broadcast_nnfbcast_v2_7.security_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.security_open_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.security_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.security_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.security_open_message.fields(buffer, offset, packet, parent)
  end
end

-- Mbo Mbp Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_mbp_indicator = {}

-- Size: Mbo Mbp Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_mbp_indicator.size = 2

-- Display: Mbo Mbp Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_mbp_indicator.display = function(range, value, packet, parent)
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
nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_mbp_indicator.bits = function(range, value, packet, parent)

  -- Reserved 112: 12 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_112, range, value)

  -- Sell: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.sell, range, value)

  -- Buy: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.buy, range, value)

  -- Last Trade Less: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_trade_less, range, value)

  -- Last Trade More: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_trade_more, range, value)
end

-- Dissect: Mbo Mbp Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_mbp_indicator.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_mbp_indicator.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_mbp_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.mbo_mbp_indicator, range, display)

  if show.structs then
    nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_mbp_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Market Wise Information
nse_nseslbm_broadcast_nnfbcast_v2_7.market_wise_information = {}

-- Size: Market Wise Information
nse_nseslbm_broadcast_nnfbcast_v2_7.market_wise_information.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_mbp_indicator.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.buy_volume.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.buy_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.sell_volume.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.sell_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_time.size

-- Display: Market Wise Information
nse_nseslbm_broadcast_nnfbcast_v2_7.market_wise_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wise Information
nse_nseslbm_broadcast_nnfbcast_v2_7.market_wise_information.fields = function(buffer, offset, packet, parent, market_wise_information_index)
  local index = offset

  -- Implicit Market Wise Information Index
  if market_wise_information_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_wise_information_index, market_wise_information_index)
    iteration:set_generated()
  end

  -- Mbo Mbp Indicator: Struct of 5 fields
  index, mbo_mbp_indicator = nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_mbp_indicator.dissect(buffer, index, packet, parent)

  -- Buy Volume: LONG
  index, buy_volume = nse_nseslbm_broadcast_nnfbcast_v2_7.buy_volume.dissect(buffer, index, packet, parent)

  -- Buy Price: LONG
  index, buy_price = nse_nseslbm_broadcast_nnfbcast_v2_7.buy_price.dissect(buffer, index, packet, parent)

  -- Sell Volume: LONG
  index, sell_volume = nse_nseslbm_broadcast_nnfbcast_v2_7.sell_volume.dissect(buffer, index, packet, parent)

  -- Sell Price: LONG
  index, sell_price = nse_nseslbm_broadcast_nnfbcast_v2_7.sell_price.dissect(buffer, index, packet, parent)

  -- Last Trade Price: LONG
  index, last_trade_price = nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_price.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wise Information
nse_nseslbm_broadcast_nnfbcast_v2_7.market_wise_information.dissect = function(buffer, offset, packet, parent, market_wise_information_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_wise_information, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.market_wise_information.fields(buffer, offset, packet, parent, market_wise_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.market_wise_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.market_wise_information.fields(buffer, offset, packet, parent, market_wise_information_index)
  end
end

-- Marketwatchbroadcast
nse_nseslbm_broadcast_nnfbcast_v2_7.marketwatchbroadcast = {}

-- Size: Marketwatchbroadcast
nse_nseslbm_broadcast_nnfbcast_v2_7.marketwatchbroadcast.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.token.size + 
  3 * nse_nseslbm_broadcast_nnfbcast_v2_7.market_wise_information.size

-- Display: Marketwatchbroadcast
nse_nseslbm_broadcast_nnfbcast_v2_7.marketwatchbroadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Marketwatchbroadcast
nse_nseslbm_broadcast_nnfbcast_v2_7.marketwatchbroadcast.fields = function(buffer, offset, packet, parent, marketwatchbroadcast_index)
  local index = offset

  -- Implicit Marketwatchbroadcast Index
  if marketwatchbroadcast_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.marketwatchbroadcast_index, marketwatchbroadcast_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nseslbm_broadcast_nnfbcast_v2_7.token.dissect(buffer, index, packet, parent)

  -- Array Of: Market Wise Information
  for market_wise_information_index = 1, 3 do
    index, market_wise_information = nse_nseslbm_broadcast_nnfbcast_v2_7.market_wise_information.dissect(buffer, index, packet, parent, market_wise_information_index)
  end

  return index
end

-- Dissect: Marketwatchbroadcast
nse_nseslbm_broadcast_nnfbcast_v2_7.marketwatchbroadcast.dissect = function(buffer, offset, packet, parent, marketwatchbroadcast_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.marketwatchbroadcast, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.marketwatchbroadcast.fields(buffer, offset, packet, parent, marketwatchbroadcast_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.marketwatchbroadcast.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.marketwatchbroadcast.fields(buffer, offset, packet, parent, marketwatchbroadcast_index)
  end
end

-- Market Watch Update Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_watch_update_message = {}

-- Size: Market Watch Update Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_watch_update_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_records.size + 
  5 * nse_nseslbm_broadcast_nnfbcast_v2_7.marketwatchbroadcast.size

-- Display: Market Watch Update Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_watch_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Watch Update Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_watch_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Of Records: SHORT
  index, no_of_records = nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Marketwatchbroadcast
  for marketwatchbroadcast_index = 1, 5 do
    index, marketwatchbroadcast = nse_nseslbm_broadcast_nnfbcast_v2_7.marketwatchbroadcast.dissect(buffer, index, packet, parent, marketwatchbroadcast_index)
  end

  return index
end

-- Dissect: Market Watch Update Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_watch_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_watch_update_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.market_watch_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.market_watch_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.market_watch_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Mbp Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_indicator = {}

-- Size: Mbp Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_indicator.size = 2

-- Display: Mbp Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_indicator.display = function(range, value, packet, parent)
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
nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_indicator.bits = function(range, value, packet, parent)

  -- Reserved 112: 12 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_112, range, value)

  -- Sell: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.sell, range, value)

  -- Buy: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.buy, range, value)

  -- Last Trade Less: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_trade_less, range, value)

  -- Last Trade More: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.last_trade_more, range, value)
end

-- Dissect: Mbp Indicator
nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_indicator.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_indicator.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.mbp_indicator, range, display)

  if show.structs then
    nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mbp Information
nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_information = {}

-- Size: Mbp Information
nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_information.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.quantity.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_orders.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.bb_buy_sell_flag.size

-- Display: Mbp Information
nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mbp Information
nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_information.fields = function(buffer, offset, packet, parent, mbp_information_index)
  local index = offset

  -- Implicit Mbp Information Index
  if mbp_information_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.mbp_information_index, mbp_information_index)
    iteration:set_generated()
  end

  -- Quantity: LONG
  index, quantity = nse_nseslbm_broadcast_nnfbcast_v2_7.quantity.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_broadcast_nnfbcast_v2_7.price.dissect(buffer, index, packet, parent)

  -- Number Of Orders: SHORT
  index, number_of_orders = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_orders.dissect(buffer, index, packet, parent)

  -- Bb Buy Sell Flag: SHORT
  index, bb_buy_sell_flag = nse_nseslbm_broadcast_nnfbcast_v2_7.bb_buy_sell_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mbp Information
nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_information.dissect = function(buffer, offset, packet, parent, mbp_information_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.mbp_information, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_information.fields(buffer, offset, packet, parent, mbp_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_information.fields(buffer, offset, packet, parent, mbp_information_index)
  end
end

-- Interactive Only Mbp Data
nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_only_mbp_data = {}

-- Size: Interactive Only Mbp Data
nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_only_mbp_data.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.token.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.book_type.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.trading_status.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.volume_traded_today.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.last_traded_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.net_change_indicator.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.net_price_change_from_closing_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_quantity.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_time.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.average_trade_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.auction_number.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_type.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_quantity.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.auction_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.auction_quantity.size + 
  10 * nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_information.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_buy_flag.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_sell_flag.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_quantity.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_quantity.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_indicator.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.closing_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.open_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.high_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.low_price.size

-- Display: Interactive Only Mbp Data
nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_only_mbp_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Interactive Only Mbp Data
nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_only_mbp_data.fields = function(buffer, offset, packet, parent, interactive_only_mbp_data_index)
  local index = offset

  -- Implicit Interactive Only Mbp Data Index
  if interactive_only_mbp_data_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.interactive_only_mbp_data_index, interactive_only_mbp_data_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nseslbm_broadcast_nnfbcast_v2_7.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_broadcast_nnfbcast_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Trading Status: SHORT
  index, trading_status = nse_nseslbm_broadcast_nnfbcast_v2_7.trading_status.dissect(buffer, index, packet, parent)

  -- Volume Traded Today: LONG
  index, volume_traded_today = nse_nseslbm_broadcast_nnfbcast_v2_7.volume_traded_today.dissect(buffer, index, packet, parent)

  -- Last Traded Price: LONG
  index, last_traded_price = nse_nseslbm_broadcast_nnfbcast_v2_7.last_traded_price.dissect(buffer, index, packet, parent)

  -- Net Change Indicator: CHAR
  index, net_change_indicator = nse_nseslbm_broadcast_nnfbcast_v2_7.net_change_indicator.dissect(buffer, index, packet, parent)

  -- Net Price Change From Closing Price: LONG
  index, net_price_change_from_closing_price = nse_nseslbm_broadcast_nnfbcast_v2_7.net_price_change_from_closing_price.dissect(buffer, index, packet, parent)

  -- Last Trade Quantity: LONG
  index, last_trade_quantity = nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_quantity.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_time.dissect(buffer, index, packet, parent)

  -- Average Trade Price: LONG
  index, average_trade_price = nse_nseslbm_broadcast_nnfbcast_v2_7.average_trade_price.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Auction Status: SHORT
  index, auction_status = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status.dissect(buffer, index, packet, parent)

  -- Initiator Type: SHORT
  index, initiator_type = nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_type.dissect(buffer, index, packet, parent)

  -- Initiator Price: LONG
  index, initiator_price = nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_price.dissect(buffer, index, packet, parent)

  -- Initiator Quantity: LONG
  index, initiator_quantity = nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_quantity.dissect(buffer, index, packet, parent)

  -- Auction Price: LONG
  index, auction_price = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_price.dissect(buffer, index, packet, parent)

  -- Auction Quantity: LONG
  index, auction_quantity = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_quantity.dissect(buffer, index, packet, parent)

  -- Array Of: Mbp Information
  for mbp_information_index = 1, 10 do
    index, mbp_information = nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_information.dissect(buffer, index, packet, parent, mbp_information_index)
  end

  -- Bb Total Buy Flag: SHORT
  index, bb_total_buy_flag = nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_buy_flag.dissect(buffer, index, packet, parent)

  -- Bb Total Sell Flag: SHORT
  index, bb_total_sell_flag = nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_sell_flag.dissect(buffer, index, packet, parent)

  -- Total Buy Quantity: DOUBLE
  index, total_buy_quantity = nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_quantity.dissect(buffer, index, packet, parent)

  -- Total Sell Quantity: DOUBLE
  index, total_sell_quantity = nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_quantity.dissect(buffer, index, packet, parent)

  -- Mbp Indicator: Struct of 5 fields
  index, mbp_indicator = nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_indicator.dissect(buffer, index, packet, parent)

  -- Closing Price: LONG
  index, closing_price = nse_nseslbm_broadcast_nnfbcast_v2_7.closing_price.dissect(buffer, index, packet, parent)

  -- Open Price: LONG
  index, open_price = nse_nseslbm_broadcast_nnfbcast_v2_7.open_price.dissect(buffer, index, packet, parent)

  -- High Price: LONG
  index, high_price = nse_nseslbm_broadcast_nnfbcast_v2_7.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: LONG
  index, low_price = nse_nseslbm_broadcast_nnfbcast_v2_7.low_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Interactive Only Mbp Data
nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_only_mbp_data.dissect = function(buffer, offset, packet, parent, interactive_only_mbp_data_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.interactive_only_mbp_data, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_only_mbp_data.fields(buffer, offset, packet, parent, interactive_only_mbp_data_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_only_mbp_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_only_mbp_data.fields(buffer, offset, packet, parent, interactive_only_mbp_data_index)
  end
end

-- Only Market By Price Update Message
nse_nseslbm_broadcast_nnfbcast_v2_7.only_market_by_price_update_message = {}

-- Size: Only Market By Price Update Message
nse_nseslbm_broadcast_nnfbcast_v2_7.only_market_by_price_update_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_records.size + 
  2 * nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_only_mbp_data.size

-- Display: Only Market By Price Update Message
nse_nseslbm_broadcast_nnfbcast_v2_7.only_market_by_price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Only Market By Price Update Message
nse_nseslbm_broadcast_nnfbcast_v2_7.only_market_by_price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Of Records: SHORT
  index, no_of_records = nse_nseslbm_broadcast_nnfbcast_v2_7.no_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Interactive Only Mbp Data
  for interactive_only_mbp_data_index = 1, 2 do
    index, interactive_only_mbp_data = nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_only_mbp_data.dissect(buffer, index, packet, parent, interactive_only_mbp_data_index)
  end

  return index
end

-- Dissect: Only Market By Price Update Message
nse_nseslbm_broadcast_nnfbcast_v2_7.only_market_by_price_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.only_market_by_price_update_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.only_market_by_price_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.only_market_by_price_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.only_market_by_price_update_message.fields(buffer, offset, packet, parent)
  end
end

-- St Mbo Mbp Terms
nse_nseslbm_broadcast_nnfbcast_v2_7.st_mbo_mbp_terms = {}

-- Size: St Mbo Mbp Terms
nse_nseslbm_broadcast_nnfbcast_v2_7.st_mbo_mbp_terms.size = 2

-- Display: St Mbo Mbp Terms
nse_nseslbm_broadcast_nnfbcast_v2_7.st_mbo_mbp_terms.display = function(range, value, packet, parent)
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
nse_nseslbm_broadcast_nnfbcast_v2_7.st_mbo_mbp_terms.bits = function(range, value, packet, parent)

  -- Reserved 114: 14 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_114, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.aon, range, value)

  -- Mf: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.mf, range, value)
end

-- Dissect: St Mbo Mbp Terms
nse_nseslbm_broadcast_nnfbcast_v2_7.st_mbo_mbp_terms.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseslbm_broadcast_nnfbcast_v2_7.st_mbo_mbp_terms.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.st_mbo_mbp_terms.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.st_mbo_mbp_terms, range, display)

  if show.structs then
    nse_nseslbm_broadcast_nnfbcast_v2_7.st_mbo_mbp_terms.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mbo Information
nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_information = {}

-- Size: Mbo Information
nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_information.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.trader_id.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.qty.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.st_mbo_mbp_terms.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.min_fill_qty.size

-- Display: Mbo Information
nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mbo Information
nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_information.fields = function(buffer, offset, packet, parent, mbo_information_index)
  local index = offset

  -- Implicit Mbo Information Index
  if mbo_information_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.mbo_information_index, mbo_information_index)
    iteration:set_generated()
  end

  -- Trader Id: LONG
  index, trader_id = nse_nseslbm_broadcast_nnfbcast_v2_7.trader_id.dissect(buffer, index, packet, parent)

  -- Qty: LONG
  index, qty = nse_nseslbm_broadcast_nnfbcast_v2_7.qty.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseslbm_broadcast_nnfbcast_v2_7.price.dissect(buffer, index, packet, parent)

  -- St Mbo Mbp Terms: Struct of 3 fields
  index, st_mbo_mbp_terms = nse_nseslbm_broadcast_nnfbcast_v2_7.st_mbo_mbp_terms.dissect(buffer, index, packet, parent)

  -- Min Fill Qty: LONG
  index, min_fill_qty = nse_nseslbm_broadcast_nnfbcast_v2_7.min_fill_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mbo Information
nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_information.dissect = function(buffer, offset, packet, parent, mbo_information_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.mbo_information, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_information.fields(buffer, offset, packet, parent, mbo_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_information.fields(buffer, offset, packet, parent, mbo_information_index)
  end
end

-- Interactive Mbo Data
nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_mbo_data = {}

-- Size: Interactive Mbo Data
nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_mbo_data.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.token.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.book_type.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.trading_status.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.volume_traded_today.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.last_traded_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.net_change_indicator.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.net_price_change_from_closing_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_quantity.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_time.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.average_trade_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.auction_number.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_type.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_quantity.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.auction_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.auction_quantity.size + 
  10 * nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_information.size

-- Display: Interactive Mbo Data
nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_mbo_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Interactive Mbo Data
nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_mbo_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nseslbm_broadcast_nnfbcast_v2_7.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseslbm_broadcast_nnfbcast_v2_7.book_type.dissect(buffer, index, packet, parent)

  -- Trading Status: SHORT
  index, trading_status = nse_nseslbm_broadcast_nnfbcast_v2_7.trading_status.dissect(buffer, index, packet, parent)

  -- Volume Traded Today: LONG
  index, volume_traded_today = nse_nseslbm_broadcast_nnfbcast_v2_7.volume_traded_today.dissect(buffer, index, packet, parent)

  -- Last Traded Price: LONG
  index, last_traded_price = nse_nseslbm_broadcast_nnfbcast_v2_7.last_traded_price.dissect(buffer, index, packet, parent)

  -- Net Change Indicator: CHAR
  index, net_change_indicator = nse_nseslbm_broadcast_nnfbcast_v2_7.net_change_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.size
  end

  -- Net Price Change From Closing Price: LONG
  index, net_price_change_from_closing_price = nse_nseslbm_broadcast_nnfbcast_v2_7.net_price_change_from_closing_price.dissect(buffer, index, packet, parent)

  -- Last Trade Quantity: LONG
  index, last_trade_quantity = nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_quantity.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nseslbm_broadcast_nnfbcast_v2_7.last_trade_time.dissect(buffer, index, packet, parent)

  -- Average Trade Price: LONG
  index, average_trade_price = nse_nseslbm_broadcast_nnfbcast_v2_7.average_trade_price.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Auction Status: SHORT
  index, auction_status = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status.dissect(buffer, index, packet, parent)

  -- Initiator Type: SHORT
  index, initiator_type = nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_type.dissect(buffer, index, packet, parent)

  -- Initiator Price: LONG
  index, initiator_price = nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_price.dissect(buffer, index, packet, parent)

  -- Initiator Quantity: LONG
  index, initiator_quantity = nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_quantity.dissect(buffer, index, packet, parent)

  -- Auction Price: LONG
  index, auction_price = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_price.dissect(buffer, index, packet, parent)

  -- Auction Quantity: LONG
  index, auction_quantity = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_quantity.dissect(buffer, index, packet, parent)

  -- Array Of: Mbo Information
  for mbo_information_index = 1, 10 do
    index, mbo_information = nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_information.dissect(buffer, index, packet, parent, mbo_information_index)
  end

  return index
end

-- Dissect: Interactive Mbo Data
nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_mbo_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.interactive_mbo_data, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_mbo_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_mbo_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_mbo_data.fields(buffer, offset, packet, parent)
  end
end

-- Market By Order Market By Price Update Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_by_order_market_by_price_update_message = {}

-- Size: Market By Order Market By Price Update Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_by_order_market_by_price_update_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_mbo_data.size + 
  10 * nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_information.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_buy_flag.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_sell_flag.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_quantity.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_quantity.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_mbp_indicator.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.closing_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.open_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.high_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.low_price.size

-- Display: Market By Order Market By Price Update Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_by_order_market_by_price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market By Order Market By Price Update Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_by_order_market_by_price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Interactive Mbo Data: Struct of 19 fields
  index, interactive_mbo_data = nse_nseslbm_broadcast_nnfbcast_v2_7.interactive_mbo_data.dissect(buffer, index, packet, parent)

  -- Array Of: Mbp Information
  for mbp_information_index = 1, 10 do
    index, mbp_information = nse_nseslbm_broadcast_nnfbcast_v2_7.mbp_information.dissect(buffer, index, packet, parent, mbp_information_index)
  end

  -- Bb Total Buy Flag: SHORT
  index, bb_total_buy_flag = nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_buy_flag.dissect(buffer, index, packet, parent)

  -- Bb Total Sell Flag: SHORT
  index, bb_total_sell_flag = nse_nseslbm_broadcast_nnfbcast_v2_7.bb_total_sell_flag.dissect(buffer, index, packet, parent)

  -- Total Buy Quantity: DOUBLE
  index, total_buy_quantity = nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_quantity.dissect(buffer, index, packet, parent)

  -- Total Sell Quantity: DOUBLE
  index, total_sell_quantity = nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_quantity.dissect(buffer, index, packet, parent)

  -- Mbo Mbp Indicator: Struct of 5 fields
  index, mbo_mbp_indicator = nse_nseslbm_broadcast_nnfbcast_v2_7.mbo_mbp_indicator.dissect(buffer, index, packet, parent)

  -- Closing Price: LONG
  index, closing_price = nse_nseslbm_broadcast_nnfbcast_v2_7.closing_price.dissect(buffer, index, packet, parent)

  -- Open Price: LONG
  index, open_price = nse_nseslbm_broadcast_nnfbcast_v2_7.open_price.dissect(buffer, index, packet, parent)

  -- High Price: LONG
  index, high_price = nse_nseslbm_broadcast_nnfbcast_v2_7.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: LONG
  index, low_price = nse_nseslbm_broadcast_nnfbcast_v2_7.low_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market By Order Market By Price Update Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_by_order_market_by_price_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_by_order_market_by_price_update_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.market_by_order_market_by_price_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.market_by_order_market_by_price_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.market_by_order_market_by_price_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Ticker Index Information
nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_index_information = {}

-- Size: Ticker Index Information
nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_index_information.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.token.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.fill_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.fill_volume.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.market_index_value.size

-- Display: Ticker Index Information
nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_index_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ticker Index Information
nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_index_information.fields = function(buffer, offset, packet, parent, ticker_index_information_index)
  local index = offset

  -- Implicit Ticker Index Information Index
  if ticker_index_information_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.ticker_index_information_index, ticker_index_information_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nseslbm_broadcast_nnfbcast_v2_7.token.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseslbm_broadcast_nnfbcast_v2_7.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Volume: LONG
  index, fill_volume = nse_nseslbm_broadcast_nnfbcast_v2_7.fill_volume.dissect(buffer, index, packet, parent)

  -- Market Index Value: LONG
  index, market_index_value = nse_nseslbm_broadcast_nnfbcast_v2_7.market_index_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ticker Index Information
nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_index_information.dissect = function(buffer, offset, packet, parent, ticker_index_information_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.ticker_index_information, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_index_information.fields(buffer, offset, packet, parent, ticker_index_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_index_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_index_information.fields(buffer, offset, packet, parent, ticker_index_information_index)
  end
end

-- Ticker And Market Index Message
nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_and_market_index_message = {}

-- Size: Ticker And Market Index Message
nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_and_market_index_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.size + 
  25 * nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_index_information.size

-- Display: Ticker And Market Index Message
nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_and_market_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ticker And Market Index Message
nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_and_market_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Ticker Index Information
  for ticker_index_information_index = 1, 25 do
    index, ticker_index_information = nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_index_information.dissect(buffer, index, packet, parent, ticker_index_information_index)
  end

  return index
end

-- Dissect: Ticker And Market Index Message
nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_and_market_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.ticker_and_market_index_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_and_market_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_and_market_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_and_market_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Broadcast Destination
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination = {}

-- Size: Broadcast Destination
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.size = 2

-- Display: Broadcast Destination
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trader Ws flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Trader Ws"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Broadcast Destination
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.bits = function(range, value, packet, parent)

  -- Reserved 115: 15 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_115, range, value)

  -- Trader Ws: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.trader_ws, range, value)
end

-- Dissect: Broadcast Destination
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broadcast_destination, range, display)

  if show.structs then
    nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Normal Market Preopen Ended Message
nse_nseslbm_broadcast_nnfbcast_v2_7.normal_market_preopen_ended_message = {}

-- Size: Normal Market Preopen Ended Message
nse_nseslbm_broadcast_nnfbcast_v2_7.normal_market_preopen_ended_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.size

-- Display: Normal Market Preopen Ended Message
nse_nseslbm_broadcast_nnfbcast_v2_7.normal_market_preopen_ended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Normal Market Preopen Ended Message
nse_nseslbm_broadcast_nnfbcast_v2_7.normal_market_preopen_ended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Normal Market Preopen Ended Message
nse_nseslbm_broadcast_nnfbcast_v2_7.normal_market_preopen_ended_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.normal_market_preopen_ended_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.normal_market_preopen_ended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.normal_market_preopen_ended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.normal_market_preopen_ended_message.fields(buffer, offset, packet, parent)
  end
end

-- Preopen Shutdown Message
nse_nseslbm_broadcast_nnfbcast_v2_7.preopen_shutdown_message = {}

-- Size: Preopen Shutdown Message
nse_nseslbm_broadcast_nnfbcast_v2_7.preopen_shutdown_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.size

-- Display: Preopen Shutdown Message
nse_nseslbm_broadcast_nnfbcast_v2_7.preopen_shutdown_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Preopen Shutdown Message
nse_nseslbm_broadcast_nnfbcast_v2_7.preopen_shutdown_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Preopen Shutdown Message
nse_nseslbm_broadcast_nnfbcast_v2_7.preopen_shutdown_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.preopen_shutdown_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.preopen_shutdown_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.preopen_shutdown_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.preopen_shutdown_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Close Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_close_message = {}

-- Size: Market Close Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_close_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.size

-- Display: Market Close Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Close Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Close Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_close_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_close_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.market_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.market_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.market_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Open Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_open_message = {}

-- Size: Market Open Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_open_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.size

-- Display: Market Open Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Open Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nseslbm_broadcast_nnfbcast_v2_7.market_type.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Open Message
nse_nseslbm_broadcast_nnfbcast_v2_7.market_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.market_open_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.market_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.market_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.market_open_message.fields(buffer, offset, packet, parent)
  end
end

-- Change Of Auction Status Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_auction_status_message = {}

-- Size: Change Of Auction Status Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_auction_status_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.auction_number.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status_char.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.action_code.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.size

-- Display: Change Of Auction Status Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_auction_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Change Of Auction Status Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_auction_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Auction Status Char: CHAR
  index, auction_status_char = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status_char.dissect(buffer, index, packet, parent)

  -- Action Code: CHAR
  index, action_code = nse_nseslbm_broadcast_nnfbcast_v2_7.action_code.dissect(buffer, index, packet, parent)

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Change Of Auction Status Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_auction_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.change_of_auction_status_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_auction_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_auction_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_auction_status_message.fields(buffer, offset, packet, parent)
  end
end

-- St Auction Inq Info
nse_nseslbm_broadcast_nnfbcast_v2_7.st_auction_inq_info = {}

-- Size: St Auction Inq Info
nse_nseslbm_broadcast_nnfbcast_v2_7.st_auction_inq_info.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.token.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.auction_number.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_type.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_qty.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.best_buy_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_qty.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.best_sell_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.auction_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.auction_qty.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.settlement_period.size

-- Display: St Auction Inq Info
nse_nseslbm_broadcast_nnfbcast_v2_7.st_auction_inq_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Auction Inq Info
nse_nseslbm_broadcast_nnfbcast_v2_7.st_auction_inq_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nseslbm_broadcast_nnfbcast_v2_7.token.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_number.dissect(buffer, index, packet, parent)

  -- Auction Status: SHORT
  index, auction_status = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_status.dissect(buffer, index, packet, parent)

  -- Initiator Type: SHORT
  index, initiator_type = nse_nseslbm_broadcast_nnfbcast_v2_7.initiator_type.dissect(buffer, index, packet, parent)

  -- Total Buy Qty: LONG
  index, total_buy_qty = nse_nseslbm_broadcast_nnfbcast_v2_7.total_buy_qty.dissect(buffer, index, packet, parent)

  -- Best Buy Price: LONG
  index, best_buy_price = nse_nseslbm_broadcast_nnfbcast_v2_7.best_buy_price.dissect(buffer, index, packet, parent)

  -- Total Sell Qty: LONG
  index, total_sell_qty = nse_nseslbm_broadcast_nnfbcast_v2_7.total_sell_qty.dissect(buffer, index, packet, parent)

  -- Best Sell Price: LONG
  index, best_sell_price = nse_nseslbm_broadcast_nnfbcast_v2_7.best_sell_price.dissect(buffer, index, packet, parent)

  -- Auction Price: LONG
  index, auction_price = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_price.dissect(buffer, index, packet, parent)

  -- Auction Qty: LONG
  index, auction_qty = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_qty.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nseslbm_broadcast_nnfbcast_v2_7.settlement_period.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Auction Inq Info
nse_nseslbm_broadcast_nnfbcast_v2_7.st_auction_inq_info.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.st_auction_inq_info, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.st_auction_inq_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.st_auction_inq_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.st_auction_inq_info.fields(buffer, offset, packet, parent)
  end
end

-- Auction Activity Message
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_activity_message = {}

-- Size: Auction Activity Message
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_activity_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.st_auction_inq_info.size

-- Display: Auction Activity Message
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_activity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Activity Message
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_activity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- St Auction Inq Info: Struct of 11 fields
  index, st_auction_inq_info = nse_nseslbm_broadcast_nnfbcast_v2_7.st_auction_inq_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Activity Message
nse_nseslbm_broadcast_nnfbcast_v2_7.auction_activity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.auction_activity_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_activity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_activity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.auction_activity_message.fields(buffer, offset, packet, parent)
  end
end

-- Broker Reactivated Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_reactivated_message = {}

-- Size: Broker Reactivated Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_reactivated_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.broker_code.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.counter_broker_code.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.warning_type.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.trade_number.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.trade_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.trade_volume.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.final.size

-- Display: Broker Reactivated Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_reactivated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broker Reactivated Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_reactivated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Code: CHAR
  index, broker_code = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_code.dissect(buffer, index, packet, parent)

  -- Counter Broker Code: CHAR
  index, counter_broker_code = nse_nseslbm_broadcast_nnfbcast_v2_7.counter_broker_code.dissect(buffer, index, packet, parent)

  -- Warning Type: SHORT
  index, warning_type = nse_nseslbm_broadcast_nnfbcast_v2_7.warning_type.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Trade Number: LONG
  index, trade_number = nse_nseslbm_broadcast_nnfbcast_v2_7.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Price: LONG
  index, trade_price = nse_nseslbm_broadcast_nnfbcast_v2_7.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: LONG
  index, trade_volume = nse_nseslbm_broadcast_nnfbcast_v2_7.trade_volume.dissect(buffer, index, packet, parent)

  -- Final: CHAR
  index, final = nse_nseslbm_broadcast_nnfbcast_v2_7.final.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broker Reactivated Message
nse_nseslbm_broadcast_nnfbcast_v2_7.broker_reactivated_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broker_reactivated_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_reactivated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_reactivated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.broker_reactivated_message.fields(buffer, offset, packet, parent)
  end
end

-- Turnover Limit Exceeded Message
nse_nseslbm_broadcast_nnfbcast_v2_7.turnover_limit_exceeded_message = {}

-- Size: Turnover Limit Exceeded Message
nse_nseslbm_broadcast_nnfbcast_v2_7.turnover_limit_exceeded_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.broker_code.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.counter_broker_code.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.warning_type.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.trade_number.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.trade_price.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.trade_volume.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.final.size

-- Display: Turnover Limit Exceeded Message
nse_nseslbm_broadcast_nnfbcast_v2_7.turnover_limit_exceeded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Turnover Limit Exceeded Message
nse_nseslbm_broadcast_nnfbcast_v2_7.turnover_limit_exceeded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Code: CHAR
  index, broker_code = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_code.dissect(buffer, index, packet, parent)

  -- Counter Broker Code: CHAR
  index, counter_broker_code = nse_nseslbm_broadcast_nnfbcast_v2_7.counter_broker_code.dissect(buffer, index, packet, parent)

  -- Warning Type: SHORT
  index, warning_type = nse_nseslbm_broadcast_nnfbcast_v2_7.warning_type.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Trade Number: LONG
  index, trade_number = nse_nseslbm_broadcast_nnfbcast_v2_7.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Price: LONG
  index, trade_price = nse_nseslbm_broadcast_nnfbcast_v2_7.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: LONG
  index, trade_volume = nse_nseslbm_broadcast_nnfbcast_v2_7.trade_volume.dissect(buffer, index, packet, parent)

  -- Final: CHAR
  index, final = nse_nseslbm_broadcast_nnfbcast_v2_7.final.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Turnover Limit Exceeded Message
nse_nseslbm_broadcast_nnfbcast_v2_7.turnover_limit_exceeded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.turnover_limit_exceeded_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.turnover_limit_exceeded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.turnover_limit_exceeded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.turnover_limit_exceeded_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Per Market
nse_nseslbm_broadcast_nnfbcast_v2_7.security_status_per_market = {}

-- Size: Security Status Per Market
nse_nseslbm_broadcast_nnfbcast_v2_7.security_status_per_market.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.status.size

-- Display: Security Status Per Market
nse_nseslbm_broadcast_nnfbcast_v2_7.security_status_per_market.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Per Market
nse_nseslbm_broadcast_nnfbcast_v2_7.security_status_per_market.fields = function(buffer, offset, packet, parent, security_status_per_market_index)
  local index = offset

  -- Implicit Security Status Per Market Index
  if security_status_per_market_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.security_status_per_market_index, security_status_per_market_index)
    iteration:set_generated()
  end

  -- Status: SHORT
  index, status = nse_nseslbm_broadcast_nnfbcast_v2_7.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Per Market
nse_nseslbm_broadcast_nnfbcast_v2_7.security_status_per_market.dissect = function(buffer, offset, packet, parent, security_status_per_market_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.security_status_per_market, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.security_status_per_market.fields(buffer, offset, packet, parent, security_status_per_market_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.security_status_per_market.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.security_status_per_market.fields(buffer, offset, packet, parent, security_status_per_market_index)
  end
end

-- Token And Eligibility
nse_nseslbm_broadcast_nnfbcast_v2_7.token_and_eligibility = {}

-- Size: Token And Eligibility
nse_nseslbm_broadcast_nnfbcast_v2_7.token_and_eligibility.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.token.size + 
  4 * nse_nseslbm_broadcast_nnfbcast_v2_7.security_status_per_market.size

-- Display: Token And Eligibility
nse_nseslbm_broadcast_nnfbcast_v2_7.token_and_eligibility.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Token And Eligibility
nse_nseslbm_broadcast_nnfbcast_v2_7.token_and_eligibility.fields = function(buffer, offset, packet, parent, token_and_eligibility_index)
  local index = offset

  -- Implicit Token And Eligibility Index
  if token_and_eligibility_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.token_and_eligibility_index, token_and_eligibility_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nseslbm_broadcast_nnfbcast_v2_7.token.dissect(buffer, index, packet, parent)

  -- Array Of: Security Status Per Market
  for security_status_per_market_index = 1, 4 do
    index, security_status_per_market = nse_nseslbm_broadcast_nnfbcast_v2_7.security_status_per_market.dissect(buffer, index, packet, parent, security_status_per_market_index)
  end

  return index
end

-- Dissect: Token And Eligibility
nse_nseslbm_broadcast_nnfbcast_v2_7.token_and_eligibility.dissect = function(buffer, offset, packet, parent, token_and_eligibility_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.token_and_eligibility, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.token_and_eligibility.fields(buffer, offset, packet, parent, token_and_eligibility_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.token_and_eligibility.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.token_and_eligibility.fields(buffer, offset, packet, parent, token_and_eligibility_index)
  end
end

-- Change Of Security Status Preopen Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_preopen_message = {}

-- Size: Change Of Security Status Preopen Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_preopen_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.size + 
  35 * nse_nseslbm_broadcast_nnfbcast_v2_7.token_and_eligibility.size

-- Display: Change Of Security Status Preopen Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_preopen_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Change Of Security Status Preopen Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_preopen_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Token And Eligibility
  for token_and_eligibility_index = 1, 35 do
    index, token_and_eligibility = nse_nseslbm_broadcast_nnfbcast_v2_7.token_and_eligibility.dissect(buffer, index, packet, parent, token_and_eligibility_index)
  end

  return index
end

-- Dissect: Change Of Security Status Preopen Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_preopen_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.change_of_security_status_preopen_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_preopen_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_preopen_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_preopen_message.fields(buffer, offset, packet, parent)
  end
end

-- Change Of Security Status Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_message = {}

-- Size: Change Of Security Status Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.size + 
  35 * nse_nseslbm_broadcast_nnfbcast_v2_7.token_and_eligibility.size

-- Display: Change Of Security Status Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Change Of Security Status Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Token And Eligibility
  for token_and_eligibility_index = 1, 35 do
    index, token_and_eligibility = nse_nseslbm_broadcast_nnfbcast_v2_7.token_and_eligibility.dissect(buffer, index, packet, parent, token_and_eligibility_index)
  end

  return index
end

-- Dissect: Change Of Security Status Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.change_of_security_status_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Change Participant Status Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_participant_status_message = {}

-- Size: Change Participant Status Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_participant_status_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.participant_id.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.participant_name.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.participant_status.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.participant_update_date_time.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.delete_flag.size

-- Display: Change Participant Status Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_participant_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Change Participant Status Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_participant_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: CHAR
  index, participant_id = nse_nseslbm_broadcast_nnfbcast_v2_7.participant_id.dissect(buffer, index, packet, parent)

  -- Participant Name: CHAR
  index, participant_name = nse_nseslbm_broadcast_nnfbcast_v2_7.participant_name.dissect(buffer, index, packet, parent)

  -- Participant Status: CHAR
  index, participant_status = nse_nseslbm_broadcast_nnfbcast_v2_7.participant_status.dissect(buffer, index, packet, parent)

  -- Participant Update Date Time: LONG
  index, participant_update_date_time = nse_nseslbm_broadcast_nnfbcast_v2_7.participant_update_date_time.dissect(buffer, index, packet, parent)

  -- Delete Flag: CHAR
  index, delete_flag = nse_nseslbm_broadcast_nnfbcast_v2_7.delete_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Change Participant Status Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_participant_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.change_participant_status_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.change_participant_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.change_participant_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.change_participant_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Purpose
nse_nseslbm_broadcast_nnfbcast_v2_7.purpose = {}

-- Size: Purpose
nse_nseslbm_broadcast_nnfbcast_v2_7.purpose.size = 2

-- Display: Purpose
nse_nseslbm_broadcast_nnfbcast_v2_7.purpose.display = function(range, value, packet, parent)
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
nse_nseslbm_broadcast_nnfbcast_v2_7.purpose.bits = function(range, value, packet, parent)

  -- Reserved 110: 10 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_110, range, value)

  -- Egm: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.egm, range, value)

  -- Agm: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.agm, range, value)

  -- Interest: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.interest, range, value)

  -- Bonus: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bonus, range, value)

  -- Rights: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.rights, range, value)

  -- Dividend: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.dividend, range, value)
end

-- Dissect: Purpose
nse_nseslbm_broadcast_nnfbcast_v2_7.purpose.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseslbm_broadcast_nnfbcast_v2_7.purpose.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.purpose.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.purpose, range, display)

  if show.structs then
    nse_nseslbm_broadcast_nnfbcast_v2_7.purpose.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Eligiblity Indicators
nse_nseslbm_broadcast_nnfbcast_v2_7.eligiblity_indicators = {}

-- Size: Eligiblity Indicators
nse_nseslbm_broadcast_nnfbcast_v2_7.eligiblity_indicators.size = 2

-- Display: Eligiblity Indicators
nse_nseslbm_broadcast_nnfbcast_v2_7.eligiblity_indicators.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Allow Repay flag set?
  if bit.band(value, 0x0100) ~= 0 then
    flags[#flags + 1] = "Allow Repay"
  end
  -- Is Allow Recall flag set?
  if bit.band(value, 0x0200) ~= 0 then
    flags[#flags + 1] = "Allow Recall"
  end
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
nse_nseslbm_broadcast_nnfbcast_v2_7.eligiblity_indicators.bits = function(range, value, packet, parent)

  -- Indicators Reserved 18: 8 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.indicators_reserved_18, range, value)

  -- Allow Repay: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.allow_repay, range, value)

  -- Allow Recall: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.allow_recall, range, value)

  -- Indicators Reserved 1113: 3 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.indicators_reserved_1113, range, value)

  -- Minimum Fill: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.minimum_fill, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.aon, range, value)

  -- Participate In Market Index: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.participate_in_market_index, range, value)
end

-- Dissect: Eligiblity Indicators
nse_nseslbm_broadcast_nnfbcast_v2_7.eligiblity_indicators.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseslbm_broadcast_nnfbcast_v2_7.eligiblity_indicators.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.eligiblity_indicators.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.eligiblity_indicators, range, display)

  if show.structs then
    nse_nseslbm_broadcast_nnfbcast_v2_7.eligiblity_indicators.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Eligibility Flags
nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_flags = {}

-- Size: Security Eligibility Flags
nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_flags.size = 1

-- Display: Security Eligibility Flags
nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Eligibility flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Eligibility"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Eligibility Flags
nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_flags.bits = function(range, value, packet, parent)

  -- Reserved 17: 7 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_17, range, value)

  -- Eligibility: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.eligibility, range, value)
end

-- Dissect: Security Eligibility Flags
nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.security_eligibility_flags, range, display)

  if show.structs then
    nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Eligibility Per Market
nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_per_market = {}

-- Size: Security Eligibility Per Market
nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_per_market.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_flags.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.status.size

-- Display: Security Eligibility Per Market
nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_per_market.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Eligibility Per Market
nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_per_market.fields = function(buffer, offset, packet, parent, security_eligibility_per_market_index)
  local index = offset

  -- Implicit Security Eligibility Per Market Index
  if security_eligibility_per_market_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.security_eligibility_per_market_index, security_eligibility_per_market_index)
    iteration:set_generated()
  end

  -- Security Eligibility Flags: Struct of 2 fields
  index, security_eligibility_flags = nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_flags.dissect(buffer, index, packet, parent)

  -- Status: SHORT
  index, status = nse_nseslbm_broadcast_nnfbcast_v2_7.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Eligibility Per Market
nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_per_market.dissect = function(buffer, offset, packet, parent, security_eligibility_per_market_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.security_eligibility_per_market, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_per_market.fields(buffer, offset, packet, parent, security_eligibility_per_market_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_per_market.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_per_market.fields(buffer, offset, packet, parent, security_eligibility_per_market_index)
  end
end

-- Change In Security Master Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_security_master_message = {}

-- Size: Change In Security Master Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_security_master_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.token.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.instrument_type.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.permitted_to_trade.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.issued_capital.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.warning_percent.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.freeze_percent.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.credit_rating.size + 
  4 * nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_per_market.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.issue_rate.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.issue_start_date.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.interest_payment_date.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.issue_maturity_date.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.board_lot_quantity.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.tick_size.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.name.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.listing_date.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.expulsion_date.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.re_admission_date.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.record_date.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.expiry_date.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.no_delivery_start_date.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.no_delivery_end_date.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.eligiblity_indicators.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.book_closure_start_date.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.book_closure_end_date.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.purpose.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.local_update_date_time.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.delete_flag.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.remark.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.face_value.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.isin_number.size

-- Display: Change In Security Master Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_security_master_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Change In Security Master Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_security_master_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nseslbm_broadcast_nnfbcast_v2_7.token.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 2 fields
  index, sec_info = nse_nseslbm_broadcast_nnfbcast_v2_7.sec_info.dissect(buffer, index, packet, parent)

  -- Instrument Type: SHORT
  index, instrument_type = nse_nseslbm_broadcast_nnfbcast_v2_7.instrument_type.dissect(buffer, index, packet, parent)

  -- Permitted To Trade: SHORT
  index, permitted_to_trade = nse_nseslbm_broadcast_nnfbcast_v2_7.permitted_to_trade.dissect(buffer, index, packet, parent)

  -- Issued Capital: DOUBLE
  index, issued_capital = nse_nseslbm_broadcast_nnfbcast_v2_7.issued_capital.dissect(buffer, index, packet, parent)

  -- Warning Percent: SHORT
  index, warning_percent = nse_nseslbm_broadcast_nnfbcast_v2_7.warning_percent.dissect(buffer, index, packet, parent)

  -- Freeze Percent: SHORT
  index, freeze_percent = nse_nseslbm_broadcast_nnfbcast_v2_7.freeze_percent.dissect(buffer, index, packet, parent)

  -- Credit Rating: CHAR
  index, credit_rating = nse_nseslbm_broadcast_nnfbcast_v2_7.credit_rating.dissect(buffer, index, packet, parent)

  -- Array Of: Security Eligibility Per Market
  for security_eligibility_per_market_index = 1, 4 do
    index, security_eligibility_per_market = nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligibility_per_market.dissect(buffer, index, packet, parent, security_eligibility_per_market_index)
  end

  -- Issue Rate: SHORT
  index, issue_rate = nse_nseslbm_broadcast_nnfbcast_v2_7.issue_rate.dissect(buffer, index, packet, parent)

  -- Issue Start Date: LONG
  index, issue_start_date = nse_nseslbm_broadcast_nnfbcast_v2_7.issue_start_date.dissect(buffer, index, packet, parent)

  -- Interest Payment Date: LONG
  index, interest_payment_date = nse_nseslbm_broadcast_nnfbcast_v2_7.interest_payment_date.dissect(buffer, index, packet, parent)

  -- Issue Maturity Date: LONG
  index, issue_maturity_date = nse_nseslbm_broadcast_nnfbcast_v2_7.issue_maturity_date.dissect(buffer, index, packet, parent)

  -- Board Lot Quantity: LONG
  index, board_lot_quantity = nse_nseslbm_broadcast_nnfbcast_v2_7.board_lot_quantity.dissect(buffer, index, packet, parent)

  -- Tick Size: LONG
  index, tick_size = nse_nseslbm_broadcast_nnfbcast_v2_7.tick_size.dissect(buffer, index, packet, parent)

  -- Name: CHAR
  index, name = nse_nseslbm_broadcast_nnfbcast_v2_7.name.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_1.size
  end

  -- Listing Date: LONG
  index, listing_date = nse_nseslbm_broadcast_nnfbcast_v2_7.listing_date.dissect(buffer, index, packet, parent)

  -- Expulsion Date: LONG
  index, expulsion_date = nse_nseslbm_broadcast_nnfbcast_v2_7.expulsion_date.dissect(buffer, index, packet, parent)

  -- Re Admission Date: LONG
  index, re_admission_date = nse_nseslbm_broadcast_nnfbcast_v2_7.re_admission_date.dissect(buffer, index, packet, parent)

  -- Record Date: LONG
  index, record_date = nse_nseslbm_broadcast_nnfbcast_v2_7.record_date.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nseslbm_broadcast_nnfbcast_v2_7.expiry_date.dissect(buffer, index, packet, parent)

  -- No Delivery Start Date: LONG
  index, no_delivery_start_date = nse_nseslbm_broadcast_nnfbcast_v2_7.no_delivery_start_date.dissect(buffer, index, packet, parent)

  -- No Delivery End Date: LONG
  index, no_delivery_end_date = nse_nseslbm_broadcast_nnfbcast_v2_7.no_delivery_end_date.dissect(buffer, index, packet, parent)

  -- Eligiblity Indicators: Struct of 7 fields
  index, eligiblity_indicators = nse_nseslbm_broadcast_nnfbcast_v2_7.eligiblity_indicators.dissect(buffer, index, packet, parent)

  -- Book Closure Start Date: LONG
  index, book_closure_start_date = nse_nseslbm_broadcast_nnfbcast_v2_7.book_closure_start_date.dissect(buffer, index, packet, parent)

  -- Book Closure End Date: LONG
  index, book_closure_end_date = nse_nseslbm_broadcast_nnfbcast_v2_7.book_closure_end_date.dissect(buffer, index, packet, parent)

  -- Purpose: Struct of 7 fields
  index, purpose = nse_nseslbm_broadcast_nnfbcast_v2_7.purpose.dissect(buffer, index, packet, parent)

  -- Local Update Date Time: LONG
  index, local_update_date_time = nse_nseslbm_broadcast_nnfbcast_v2_7.local_update_date_time.dissect(buffer, index, packet, parent)

  -- Delete Flag: CHAR
  index, delete_flag = nse_nseslbm_broadcast_nnfbcast_v2_7.delete_flag.dissect(buffer, index, packet, parent)

  -- Remark: CHAR
  index, remark = nse_nseslbm_broadcast_nnfbcast_v2_7.remark.dissect(buffer, index, packet, parent)

  -- Face Value: LONG
  index, face_value = nse_nseslbm_broadcast_nnfbcast_v2_7.face_value.dissect(buffer, index, packet, parent)

  -- Isin Number: CHAR
  index, isin_number = nse_nseslbm_broadcast_nnfbcast_v2_7.isin_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Change In Security Master Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_security_master_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.change_in_security_master_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_security_master_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_security_master_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_security_master_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Eligible Indicators
nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligible_indicators = {}

-- Size: Security Eligible Indicators
nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligible_indicators.size = 2

-- Display: Security Eligible Indicators
nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligible_indicators.display = function(range, value, packet, parent)
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
nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligible_indicators.bits = function(range, value, packet, parent)

  -- Reserved 113: 13 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.reserved_113, range, value)

  -- Books Merged: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.books_merged, range, value)

  -- Minimum Fill: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.minimum_fill, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.aon, range, value)
end

-- Dissect: Security Eligible Indicators
nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligible_indicators.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligible_indicators.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligible_indicators.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.security_eligible_indicators, range, display)

  if show.structs then
    nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligible_indicators.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Change In System Status Parameters Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_system_status_parameters_message = {}

-- Size: Change In System Status Parameters Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_system_status_parameters_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.normal.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.oddlot.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.spot.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.auction.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.market_index.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_normal.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_spot.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_auction.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.competitor_period.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.solicitor_period.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.warning_percent.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.volume_freeze_percent.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_2.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.terminal_idle_time.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.board_lot_quantity.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.tick_size.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.maximum_gtc_days.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligible_indicators.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.disclosed_quantity_percent_allowed.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_4.size

-- Display: Change In System Status Parameters Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_system_status_parameters_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Change In System Status Parameters Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_system_status_parameters_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Normal: SHORT
  index, normal = nse_nseslbm_broadcast_nnfbcast_v2_7.normal.dissect(buffer, index, packet, parent)

  -- Oddlot: SHORT
  index, oddlot = nse_nseslbm_broadcast_nnfbcast_v2_7.oddlot.dissect(buffer, index, packet, parent)

  -- Spot: SHORT
  index, spot = nse_nseslbm_broadcast_nnfbcast_v2_7.spot.dissect(buffer, index, packet, parent)

  -- Auction: SHORT
  index, auction = nse_nseslbm_broadcast_nnfbcast_v2_7.auction.dissect(buffer, index, packet, parent)

  -- Market Index: LONG
  index, market_index = nse_nseslbm_broadcast_nnfbcast_v2_7.market_index.dissect(buffer, index, packet, parent)

  -- Default Settlement Period Normal: SHORT
  index, default_settlement_period_normal = nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_normal.dissect(buffer, index, packet, parent)

  -- Default Settlement Period Spot: SHORT
  index, default_settlement_period_spot = nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_spot.dissect(buffer, index, packet, parent)

  -- Default Settlement Period Auction: SHORT
  index, default_settlement_period_auction = nse_nseslbm_broadcast_nnfbcast_v2_7.default_settlement_period_auction.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nseslbm_broadcast_nnfbcast_v2_7.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nseslbm_broadcast_nnfbcast_v2_7.solicitor_period.dissect(buffer, index, packet, parent)

  -- Warning Percent: SHORT
  index, warning_percent = nse_nseslbm_broadcast_nnfbcast_v2_7.warning_percent.dissect(buffer, index, packet, parent)

  -- Volume Freeze Percent: SHORT
  index, volume_freeze_percent = nse_nseslbm_broadcast_nnfbcast_v2_7.volume_freeze_percent.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_2.size
  end

  -- Terminal Idle Time: SHORT
  index, terminal_idle_time = nse_nseslbm_broadcast_nnfbcast_v2_7.terminal_idle_time.dissect(buffer, index, packet, parent)

  -- Board Lot Quantity: LONG
  index, board_lot_quantity = nse_nseslbm_broadcast_nnfbcast_v2_7.board_lot_quantity.dissect(buffer, index, packet, parent)

  -- Tick Size: LONG
  index, tick_size = nse_nseslbm_broadcast_nnfbcast_v2_7.tick_size.dissect(buffer, index, packet, parent)

  -- Maximum Gtc Days: SHORT
  index, maximum_gtc_days = nse_nseslbm_broadcast_nnfbcast_v2_7.maximum_gtc_days.dissect(buffer, index, packet, parent)

  -- Security Eligible Indicators: Struct of 4 fields
  index, security_eligible_indicators = nse_nseslbm_broadcast_nnfbcast_v2_7.security_eligible_indicators.dissect(buffer, index, packet, parent)

  -- Disclosed Quantity Percent Allowed: SHORT
  index, disclosed_quantity_percent_allowed = nse_nseslbm_broadcast_nnfbcast_v2_7.disclosed_quantity_percent_allowed.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_4.size
  end

  return index
end

-- Dissect: Change In System Status Parameters Message
nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_system_status_parameters_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.change_in_system_status_parameters_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_system_status_parameters_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_system_status_parameters_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_system_status_parameters_message.fields(buffer, offset, packet, parent)
  end
end

-- General Message Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.general_message_broadcast_message = {}

-- Size: General Message Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.general_message_broadcast_message.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.branch_number.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broker_number.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.action_code.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_4.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.size

-- Display: General Message Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.general_message_broadcast_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Message Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.general_message_broadcast_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Branch Number: SHORT
  index, branch_number = nse_nseslbm_broadcast_nnfbcast_v2_7.branch_number.dissect(buffer, index, packet, parent)

  -- Broker Number: CHAR
  index, broker_number = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_number.dissect(buffer, index, packet, parent)

  -- Action Code: CHAR
  index, action_code = nse_nseslbm_broadcast_nnfbcast_v2_7.action_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: CHAR
  if show.padding then
    index, reserved_4 = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_4.size
  end

  -- Broadcast Destination: Struct of 2 fields
  index, broadcast_destination = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: General Message Broadcast Message
nse_nseslbm_broadcast_nnfbcast_v2_7.general_message_broadcast_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.general_message_broadcast_message, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.general_message_broadcast_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.general_message_broadcast_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.general_message_broadcast_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Payload
nse_nseslbm_broadcast_nnfbcast_v2_7.message_payload = {}

-- Dispatch: Message Payload
nse_nseslbm_broadcast_nnfbcast_v2_7.message_payload.dispatch = {
  [6501] = nse_nseslbm_broadcast_nnfbcast_v2_7.general_message_broadcast_message.dissect,
  [7206] = nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_system_status_parameters_message.dissect,
  [7305] = nse_nseslbm_broadcast_nnfbcast_v2_7.change_in_security_master_message.dissect,
  [7306] = nse_nseslbm_broadcast_nnfbcast_v2_7.change_participant_status_message.dissect,
  [7320] = nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_message.dissect,
  [7210] = nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_security_status_preopen_message.dissect,
  [9010] = nse_nseslbm_broadcast_nnfbcast_v2_7.turnover_limit_exceeded_message.dissect,
  [9011] = nse_nseslbm_broadcast_nnfbcast_v2_7.broker_reactivated_message.dissect,
  [6582] = nse_nseslbm_broadcast_nnfbcast_v2_7.auction_activity_message.dissect,
  [6581] = nse_nseslbm_broadcast_nnfbcast_v2_7.change_of_auction_status_message.dissect,
  [6511] = nse_nseslbm_broadcast_nnfbcast_v2_7.market_open_message.dissect,
  [6521] = nse_nseslbm_broadcast_nnfbcast_v2_7.market_close_message.dissect,
  [6531] = nse_nseslbm_broadcast_nnfbcast_v2_7.preopen_shutdown_message.dissect,
  [6571] = nse_nseslbm_broadcast_nnfbcast_v2_7.normal_market_preopen_ended_message.dissect,
  [7202] = nse_nseslbm_broadcast_nnfbcast_v2_7.ticker_and_market_index_message.dissect,
  [7200] = nse_nseslbm_broadcast_nnfbcast_v2_7.market_by_order_market_by_price_update_message.dissect,
  [7208] = nse_nseslbm_broadcast_nnfbcast_v2_7.only_market_by_price_update_message.dissect,
  [7201] = nse_nseslbm_broadcast_nnfbcast_v2_7.market_watch_update_message.dissect,
  [6013] = nse_nseslbm_broadcast_nnfbcast_v2_7.security_open_message.dissect,
  [6541] = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_circuit_check_message.dissect,
  [7207] = nse_nseslbm_broadcast_nnfbcast_v2_7.multiple_index_broadcast_message.dissect,
  [7203] = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_industry_index_message.dissect,
  [7211] = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_buy_back_information_message.dissect,
  [1833] = nse_nseslbm_broadcast_nnfbcast_v2_7.market_statistics_report_message.dissect,
  [5294] = nse_nseslbm_broadcast_nnfbcast_v2_7.contingency_broadcast_message.dissect,
}

-- Dissect: Message Payload
nse_nseslbm_broadcast_nnfbcast_v2_7.message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nseslbm_broadcast_nnfbcast_v2_7.message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Bcast Header
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_header = {}

-- Size: Bcast Header
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_header.size =
  nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_0.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_2.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.log_time.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.alpha_char.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.transaction_code.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.error_code.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.bc_seq_no.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_18.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_19.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.time_stamp_2.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.filler_2.size + 
  nse_nseslbm_broadcast_nnfbcast_v2_7.message_length.size

-- Display: Bcast Header
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bcast Header
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 0: CHAR
  if show.padding then
    index, reserved_0 = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_0.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_0.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_2.size
  end

  -- Log Time: LONG
  index, log_time = nse_nseslbm_broadcast_nnfbcast_v2_7.log_time.dissect(buffer, index, packet, parent)

  -- Alpha Char: CHAR
  index, alpha_char = nse_nseslbm_broadcast_nnfbcast_v2_7.alpha_char.dissect(buffer, index, packet, parent)

  -- Transaction Code: SHORT
  index, transaction_code = nse_nseslbm_broadcast_nnfbcast_v2_7.transaction_code.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nseslbm_broadcast_nnfbcast_v2_7.error_code.dissect(buffer, index, packet, parent)

  -- Bc Seq No: LONG
  index, bc_seq_no = nse_nseslbm_broadcast_nnfbcast_v2_7.bc_seq_no.dissect(buffer, index, packet, parent)

  -- Reserved 18: CHAR
  if show.padding then
    index, reserved_18 = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_18.size
  end

  -- Reserved 19: CHAR
  if show.padding then
    index, reserved_19 = nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_19.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.reserved_19.size
  end

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nseslbm_broadcast_nnfbcast_v2_7.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Filler 2: BYTE
  if show.padding then
    index, filler_2 = nse_nseslbm_broadcast_nnfbcast_v2_7.filler_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.filler_2.size
  end

  -- Message Length: SHORT
  index, message_length = nse_nseslbm_broadcast_nnfbcast_v2_7.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bcast Header
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bcast_header, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_header.fields(buffer, offset, packet, parent)
  end
end

-- Broadcast Data
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_data = {}

-- Calculate size of: Broadcast Data
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_data.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_market_type.size

  index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_reserved.size

  index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_header.size

  -- Calculate runtime size of Message Payload field
  local message_payload_offset = offset + index
  local message_payload_type = buffer(message_payload_offset - 30, 2):int()
  index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.message_payload.size(buffer, message_payload_offset, message_payload_type)

  return index
end

-- Display: Broadcast Data
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broadcast Data
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bcast Market Type: CHAR
  index, bcast_market_type = nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_market_type.dissect(buffer, index, packet, parent)

  -- Bcast Reserved: CHAR
  if show.padding then
    index, bcast_reserved = nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_reserved.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_reserved.size
  end

  -- Bcast Header: Struct of 12 fields
  index, bcast_header = nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 30, 2):int()

  -- Message Payload: Runtime Type with 25 branches
  index = nse_nseslbm_broadcast_nnfbcast_v2_7.message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Broadcast Data
nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.broadcast_data, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_data.fields(buffer, offset, packet, parent)
  end
end

-- Packed Packet
nse_nseslbm_broadcast_nnfbcast_v2_7.packed_packet = {}

-- Calculate size of: Packed Packet
nse_nseslbm_broadcast_nnfbcast_v2_7.packed_packet.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.compression_length.size

  index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_data.size(buffer, offset + index)

  return index
end

-- Display: Packed Packet
nse_nseslbm_broadcast_nnfbcast_v2_7.packed_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packed Packet
nse_nseslbm_broadcast_nnfbcast_v2_7.packed_packet.fields = function(buffer, offset, packet, parent, packed_packet_index)
  local index = offset

  -- Implicit Packed Packet Index
  if packed_packet_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.packed_packet_index, packed_packet_index)
    iteration:set_generated()
  end

  -- Compression Length: SHORT
  index, compression_length = nse_nseslbm_broadcast_nnfbcast_v2_7.compression_length.dissect(buffer, index, packet, parent)

  local broadcast_data_conversion = compression_length > 0

  if broadcast_data_conversion then
    local compressed = buffer(index, buffer:len() - index):bytes()
    buffer = lzo1z_decompress(compressed, 16384):tvb("Decompressed")
    index = 0
  end

  -- Broadcast Data: Struct of 4 fields
  index, broadcast_data = nse_nseslbm_broadcast_nnfbcast_v2_7.broadcast_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packed Packet
nse_nseslbm_broadcast_nnfbcast_v2_7.packed_packet.dissect = function(buffer, offset, packet, parent, packed_packet_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.packed_packet, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.packed_packet.fields(buffer, offset, packet, parent, packed_packet_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.packed_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.packed_packet.fields(buffer, offset, packet, parent, packed_packet_index)
  end
end

-- Bcast Pack Data
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_pack_data = {}

-- Calculate size of: Bcast Pack Data
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_pack_data.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.net_id.size

  index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_packets.size

  -- Calculate field size from count
  local packed_packet_count = buffer(offset + index - 2, 2):int()
  for i = 1, packed_packet_count do
    index = index + nse_nseslbm_broadcast_nnfbcast_v2_7.packed_packet.size(buffer, offset + index)
  end
  return index
end

-- Display: Bcast Pack Data
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_pack_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bcast Pack Data
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_pack_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Net Id: CHAR
  index, net_id = nse_nseslbm_broadcast_nnfbcast_v2_7.net_id.dissect(buffer, index, packet, parent)

  -- Number Of Packets: SHORT
  index, number_of_packets = nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_packets.dissect(buffer, index, packet, parent)

  -- Repeating: Packed Packet
  for packed_packet_index = 1, number_of_packets do
    index, packed_packet = nse_nseslbm_broadcast_nnfbcast_v2_7.packed_packet.dissect(buffer, index, packet, parent, packed_packet_index)
  end

  return index
end

-- Dissect: Bcast Pack Data
nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_pack_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7.fields.bcast_pack_data, buffer(offset, 0))
    local index = nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_pack_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_pack_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_pack_data.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nse_nseslbm_broadcast_nnfbcast_v2_7.packet = {}

-- Verify required size of Udp packet
nse_nseslbm_broadcast_nnfbcast_v2_7.packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nseslbm_broadcast_nnfbcast_v2_7.net_id.size + nse_nseslbm_broadcast_nnfbcast_v2_7.number_of_packets.size
end

-- Dissect Packet
nse_nseslbm_broadcast_nnfbcast_v2_7.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Bcast Pack Data: Struct of 3 fields
  index, bcast_pack_data = nse_nseslbm_broadcast_nnfbcast_v2_7.bcast_pack_data.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nse_nseslbm_broadcast_nnfbcast_v2_7.init()
end

-- Dissector for Nse NseSlbm Broadcast NnfBcast 2.7
function omi_nse_nseslbm_broadcast_nnfbcast_v2_7.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nseslbm_broadcast_nnfbcast_v2_7.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nseslbm_broadcast_nnfbcast_v2_7, buffer(), omi_nse_nseslbm_broadcast_nnfbcast_v2_7.description, "("..buffer:len().." Bytes)")
  return nse_nseslbm_broadcast_nnfbcast_v2_7.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
nse_nseslbm_broadcast_nnfbcast_v2_7.packet.fingerprint = function(buffer)
  if buffer:len() < 26 then
    return false
  end

  local transaction_code = buffer(24, 2):int()

  -- General Message Broadcast Message
  if transaction_code == 6501 then
    return true
  end

  -- Change In System Status Parameters Message
  if transaction_code == 7206 then
    return true
  end

  -- Change In Security Master Message
  if transaction_code == 7305 then
    return true
  end

  -- Change Participant Status Message
  if transaction_code == 7306 then
    return true
  end

  -- Change Of Security Status Message
  if transaction_code == 7320 then
    return true
  end

  -- Change Of Security Status Preopen Message
  if transaction_code == 7210 then
    return true
  end

  -- Turnover Limit Exceeded Message
  if transaction_code == 9010 then
    return true
  end

  -- Broker Reactivated Message
  if transaction_code == 9011 then
    return true
  end

  -- Auction Activity Message
  if transaction_code == 6582 then
    return true
  end

  -- Change Of Auction Status Message
  if transaction_code == 6581 then
    return true
  end

  -- Market Open Message
  if transaction_code == 6511 then
    return true
  end

  -- Market Close Message
  if transaction_code == 6521 then
    return true
  end

  -- Preopen Shutdown Message
  if transaction_code == 6531 then
    return true
  end

  -- Normal Market Preopen Ended Message
  if transaction_code == 6571 then
    return true
  end

  -- Ticker And Market Index Message
  if transaction_code == 7202 then
    return true
  end

  -- Market By Order Market By Price Update Message
  if transaction_code == 7200 then
    return true
  end

  -- Only Market By Price Update Message
  if transaction_code == 7208 then
    return true
  end

  -- Market Watch Update Message
  if transaction_code == 7201 then
    return true
  end

  -- Security Open Message
  if transaction_code == 6013 then
    return true
  end

  -- Broadcast Circuit Check Message
  if transaction_code == 6541 then
    return true
  end

  -- Multiple Index Broadcast Message
  if transaction_code == 7207 then
    return true
  end

  -- Broadcast Industry Index Message
  if transaction_code == 7203 then
    return true
  end

  -- Broadcast Buy Back Information Message
  if transaction_code == 7211 then
    return true
  end

  -- Market Statistics Report Message
  if transaction_code == 1833 then
    return true
  end

  -- Contingency Broadcast Message
  if transaction_code == 5294 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseSlbm Broadcast NnfBcast 2.7 (Udp)
local function omi_nse_nseslbm_broadcast_nnfbcast_v2_7_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nseslbm_broadcast_nnfbcast_v2_7.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not nse_nseslbm_broadcast_nnfbcast_v2_7.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nseslbm_broadcast_nnfbcast_v2_7
  omi_nse_nseslbm_broadcast_nnfbcast_v2_7.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nse NseSlbm Broadcast NnfBcast 2.7
omi_nse_nseslbm_broadcast_nnfbcast_v2_7:register_heuristic("udp", omi_nse_nseslbm_broadcast_nnfbcast_v2_7_udp_heuristic)

-- Register Nse NseSlbm Broadcast NnfBcast 2.7 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nse_nseslbm_broadcast_nnfbcast_v2_7)

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
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
