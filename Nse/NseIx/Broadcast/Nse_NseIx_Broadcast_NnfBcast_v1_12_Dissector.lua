-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseIx Broadcast NnfBcast 1.12 Protocol
local omi_nse_nseix_broadcast_nnfbcast_v1_12 = Proto("Omi.Nse.NseIx.Broadcast.NnfBcast.v1.12", "Nse NseIx Broadcast NnfBcast 1.12")

-- Protocol table
local nse_nseix_broadcast_nnfbcast_v1_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseIx Broadcast NnfBcast 1.12 Fields
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.action_code = ProtoField.new("Action Code", "nse.nseix.broadcast.nnfbcast.v1.12.actioncode", ftypes.STRING, nil, nil, nil, "Action code indicating the action taken")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.agm = ProtoField.new("Agm", "nse.nseix.broadcast.nnfbcast.v1.12.agm", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800, "Annual general meeting")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.alpha_char = ProtoField.new("Alpha Char", "nse.nseix.broadcast.nnfbcast.v1.12.alphachar", ftypes.STRING, nil, nil, nil, "First two characters of Symbol when the message carries one")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.aon = ProtoField.new("Aon", "nse.nseix.broadcast.nnfbcast.v1.12.aon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "All or none attribute allowed in orders in this security")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.ask_price = ProtoField.new("Ask Price", "nse.nseix.broadcast.nnfbcast.v1.12.askprice", ftypes.INT32)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.asset_instrument = ProtoField.new("Asset Instrument", "nse.nseix.broadcast.nnfbcast.v1.12.assetinstrument", ftypes.STRING, nil, nil, nil, "Underlying asset type")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.asset_name = ProtoField.new("Asset Name", "nse.nseix.broadcast.nnfbcast.v1.12.assetname", ftypes.STRING, nil, nil, nil, "Name of the underlying asset")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.asset_open_interest = ProtoField.new("Asset Open Interest", "nse.nseix.broadcast.nnfbcast.v1.12.assetopeninterest", ftypes.STRING, nil, nil, nil, "ASSET_OPEN_INTEREST")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.asset_token = ProtoField.new("Asset Token", "nse.nseix.broadcast.nnfbcast.v1.12.assettoken", ftypes.INT32, nil, nil, nil, "Token number of the asset")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.auction_number = ProtoField.new("Auction Number", "nse.nseix.broadcast.nnfbcast.v1.12.auctionnumber", ftypes.INT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.auction_price = ProtoField.new("Auction Price", "nse.nseix.broadcast.nnfbcast.v1.12.auctionprice", ftypes.INT32, nil, nil, nil, "Price at which the auction takes place")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.auction_quantity = ProtoField.new("Auction Quantity", "nse.nseix.broadcast.nnfbcast.v1.12.auctionquantity", ftypes.INT32, nil, nil, nil, "Quantity at which the auction takes place")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.auction_status = ProtoField.new("Auction Status", "nse.nseix.broadcast.nnfbcast.v1.12.auctionstatus", ftypes.INT16, nil, nil, nil, "Status of the auction")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.average_trade_price = ProtoField.new("Average Trade Price", "nse.nseix.broadcast.nnfbcast.v1.12.averagetradeprice", ftypes.INT32, nil, nil, nil, "Average price of the trades")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.base_price = ProtoField.new("Base Price", "nse.nseix.broadcast.nnfbcast.v1.12.baseprice", ftypes.INT32, nil, nil, nil, "Base price of the security")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bb_buy_sell_flag = ProtoField.new("Bb Buy Sell Flag", "nse.nseix.broadcast.nnfbcast.v1.12.bbbuysellflag", ftypes.INT16, nil, nil, nil, "Buy back flag")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bb_total_buy_flag = ProtoField.new("Bb Total Buy Flag", "nse.nseix.broadcast.nnfbcast.v1.12.bbtotalbuyflag", ftypes.INT16, nil, nil, nil, "Buy back flag, zero")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bb_total_sell_flag = ProtoField.new("Bb Total Sell Flag", "nse.nseix.broadcast.nnfbcast.v1.12.bbtotalsellflag", ftypes.INT16, nil, nil, nil, "Buy back flag, zero")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bc_seq_no = ProtoField.new("Bc Seq No", "nse.nseix.broadcast.nnfbcast.v1.12.bcseqno", ftypes.INT32, nil, nil, nil, "Broadcast sequence number, used to detect a gap in the stream")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bcast_header = ProtoField.new("Bcast Header", "nse.nseix.broadcast.nnfbcast.v1.12.bcastheader", ftypes.STRING, nil, nil, nil, "BCAST_HEADER")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bcast_market_type = ProtoField.new("Bcast Market Type", "nse.nseix.broadcast.nnfbcast.v1.12.bcastmarkettype", ftypes.STRING, nil, nil, nil, "Market the broadcast belongs to, 2 for Futures and Options")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bcast_pack_data = ProtoField.new("Bcast Pack Data", "nse.nseix.broadcast.nnfbcast.v1.12.bcastpackdata", ftypes.STRING, nil, nil, nil, "BcastPackData sequential packing envelope")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bcast_reserved = ProtoField.new("Bcast Reserved", "nse.nseix.broadcast.nnfbcast.v1.12.bcastreserved", ftypes.BYTES, nil, nil, nil, "Ignored, the header begins at the ninth byte")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bid_price = ProtoField.new("Bid Price", "nse.nseix.broadcast.nnfbcast.v1.12.bidprice", ftypes.INT32)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.board_lot_quantity = ProtoField.new("Board Lot Quantity", "nse.nseix.broadcast.nnfbcast.v1.12.boardlotquantity", ftypes.INT32, nil, nil, nil, "Regular lot size")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bonus = ProtoField.new("Bonus", "nse.nseix.broadcast.nnfbcast.v1.12.bonus", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.book_closure_end_date_utc = ProtoField.new("Book Closure End Date", "nse.nseix.broadcast.nnfbcast.v1.12.bookclosureenddate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date the record books for shareholder names end")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.book_closure_end_date = ProtoField.new("Book Closure End Date", "nse.nseix.broadcast.nnfbcast.v1.12.bookclosureenddate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date the record books for shareholder names end")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.book_closure_start_date_utc = ProtoField.new("Book Closure Start Date", "nse.nseix.broadcast.nnfbcast.v1.12.bookclosurestartdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date the record books for shareholder names start")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.book_closure_start_date = ProtoField.new("Book Closure Start Date", "nse.nseix.broadcast.nnfbcast.v1.12.bookclosurestartdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date the record books for shareholder names start")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.book_type = ProtoField.new("Book Type", "nse.nseix.broadcast.nnfbcast.v1.12.booktype", ftypes.INT16, nil, nil, nil, "Type of order of the underlying asset")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.branch_number = ProtoField.new("Branch Number", "nse.nseix.broadcast.nnfbcast.v1.12.branchnumber", ftypes.INT16, nil, nil, nil, "Branch number of the trader's branch")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.broadcast_data = ProtoField.new("Broadcast Data", "nse.nseix.broadcast.nnfbcast.v1.12.broadcastdata", ftypes.STRING, nil, nil, nil, "Broadcast data, inflated first when it arrives compressed")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.broadcast_message = ProtoField.new("Broadcast Message", "nse.nseix.broadcast.nnfbcast.v1.12.broadcastmessage", ftypes.STRING, nil, nil, nil, "Text of the broadcast message")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.broadcast_message_length = ProtoField.new("Broadcast Message Length", "nse.nseix.broadcast.nnfbcast.v1.12.broadcastmessagelength", ftypes.INT16, nil, nil, nil, "Length of the broadcast message")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.broker_code = ProtoField.new("Broker Code", "nse.nseix.broadcast.nnfbcast.v1.12.brokercode", ftypes.STRING, nil, nil, nil, "Broker about to exceed or exceeding the turnover limit")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.broker_number = ProtoField.new("Broker Number", "nse.nseix.broadcast.nnfbcast.v1.12.brokernumber", ftypes.STRING, nil, nil, nil, "Trading member Id of the broker")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.buy = ProtoField.new("Buy", "nse.nseix.broadcast.nnfbcast.v1.12.buy", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.buy_price = ProtoField.new("Buy Price", "nse.nseix.broadcast.nnfbcast.v1.12.buyprice", ftypes.INT32, nil, nil, nil, "Price of the best buy order")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.buy_side = ProtoField.new("Buy Side", "nse.nseix.broadcast.nnfbcast.v1.12.buyside", ftypes.STRING, nil, nil, nil, "BUY_SIDE")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.buy_volume = ProtoField.new("Buy Volume", "nse.nseix.broadcast.nnfbcast.v1.12.buyvolume", ftypes.INT32, nil, nil, nil, "Quantity of the best buy order")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.c_filler = ProtoField.new("C Filler", "nse.nseix.broadcast.nnfbcast.v1.12.cfiller", ftypes.STRING, nil, nil, nil, "Reserved for future use")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.ca_level = ProtoField.new("Ca Level", "nse.nseix.broadcast.nnfbcast.v1.12.calevel", ftypes.INT16, nil, nil, nil, "Corporate action level")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.closing_price = ProtoField.new("Closing Price", "nse.nseix.broadcast.nnfbcast.v1.12.closingprice", ftypes.INT32)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.compression_length = ProtoField.new("Compression Length", "nse.nseix.broadcast.nnfbcast.v1.12.compressionlength", ftypes.INT16, nil, nil, nil, "Length after compression, zero when the data is uncompressed")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.control_workstation = ProtoField.new("Control Workstation", "nse.nseix.broadcast.nnfbcast.v1.12.controlworkstation", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Destined for the control workstation")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.counter_broker_code = ProtoField.new("Counter Broker Code", "nse.nseix.broadcast.nnfbcast.v1.12.counterbrokercode", ftypes.STRING, nil, nil, nil, "Not in use")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.credit_rating = ProtoField.new("Credit Rating", "nse.nseix.broadcast.nnfbcast.v1.12.creditrating", ftypes.STRING, nil, nil, nil, "Credit rating of the security")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.cumulative_quantity_of_orders = ProtoField.new("Cumulative Quantity Of Orders", "nse.nseix.broadcast.nnfbcast.v1.12.cumulativequantityoforders", ftypes.INT32, nil, nil, nil, "Cumulative quantity, or cumulative value, of orders")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.current_oi = ProtoField.new("Current Oi", "nse.nseix.broadcast.nnfbcast.v1.12.currentoi", ftypes.INT32, nil, nil, nil, "Current open interest of the underlying asset")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.day_hi_oi = ProtoField.new("Day Hi Oi", "nse.nseix.broadcast.nnfbcast.v1.12.dayhioi", ftypes.INT32, nil, nil, nil, "Highest open interest of the day")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.day_high_price_diff_range = ProtoField.new("Day High Price Diff Range", "nse.nseix.broadcast.nnfbcast.v1.12.dayhighpricediffrange", ftypes.INT32, nil, nil, nil, "Day high price difference range")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.day_high_price_difference = ProtoField.new("Day High Price Difference", "nse.nseix.broadcast.nnfbcast.v1.12.dayhighpricedifference", ftypes.INT32, nil, nil, nil, "Highest price difference of the day")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.day_lo_oi = ProtoField.new("Day Lo Oi", "nse.nseix.broadcast.nnfbcast.v1.12.daylooi", ftypes.INT32, nil, nil, nil, "Lowest open interest of the day")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.day_low_price_diff_range = ProtoField.new("Day Low Price Diff Range", "nse.nseix.broadcast.nnfbcast.v1.12.daylowpricediffrange", ftypes.INT32, nil, nil, nil, "Day low price difference range")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.day_low_price_difference = ProtoField.new("Day Low Price Difference", "nse.nseix.broadcast.nnfbcast.v1.12.daylowpricedifference", ftypes.INT32, nil, nil, nil, "Lowest price difference of the day")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.deal_price = ProtoField.new("Deal Price", "nse.nseix.broadcast.nnfbcast.v1.12.dealprice", ftypes.INT32)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.delete_flag = ProtoField.new("Delete Flag", "nse.nseix.broadcast.nnfbcast.v1.12.deleteflag", ftypes.STRING, nil, nil, nil, "Whether the security is deleted")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.dividend = ProtoField.new("Dividend", "nse.nseix.broadcast.nnfbcast.v1.12.dividend", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.domestic_interest_rate = ProtoField.new("Domestic Interest Rate", "nse.nseix.broadcast.nnfbcast.v1.12.domesticinterestrate", ftypes.INT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.egm = ProtoField.new("Egm", "nse.nseix.broadcast.nnfbcast.v1.12.egm", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400, "Extraordinary general meeting")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.eligibility = ProtoField.new("Eligibility", "nse.nseix.broadcast.nnfbcast.v1.12.eligibility", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80, "Security is allowed to trade in this market")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.error_code = ProtoField.new("Error Code", "nse.nseix.broadcast.nnfbcast.v1.12.errorcode", ftypes.INT16, nil, nil, nil, "Zero on broadcast messages")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.ex_allowed = ProtoField.new("Ex Allowed", "nse.nseix.broadcast.nnfbcast.v1.12.exallowed", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080, "Exercise allowed")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.ex_rejection_allowed = ProtoField.new("Ex Rejection Allowed", "nse.nseix.broadcast.nnfbcast.v1.12.exrejectionallowed", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040, "Exercise rejection allowed")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.exercise_end_date_utc = ProtoField.new("Exercise End Date", "nse.nseix.broadcast.nnfbcast.v1.12.exerciseenddate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last date for exercise")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.exercise_end_date = ProtoField.new("Exercise End Date", "nse.nseix.broadcast.nnfbcast.v1.12.exerciseenddate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Last date for exercise")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.exercise_start_date_utc = ProtoField.new("Exercise Start Date", "nse.nseix.broadcast.nnfbcast.v1.12.exercisestartdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Starting date for exercise")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.exercise_start_date = ProtoField.new("Exercise Start Date", "nse.nseix.broadcast.nnfbcast.v1.12.exercisestartdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Starting date for exercise")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.exercise_style = ProtoField.new("Exercise Style", "nse.nseix.broadcast.nnfbcast.v1.12.exercisestyle", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.expiry_date_utc = ProtoField.new("Expiry Date", "nse.nseix.broadcast.nnfbcast.v1.12.expirydate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last date of trading before any corporate action")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.expiry_date = ProtoField.new("Expiry Date", "nse.nseix.broadcast.nnfbcast.v1.12.expirydate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Last date of trading before any corporate action")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.expulsion_date_utc = ProtoField.new("Expulsion Date", "nse.nseix.broadcast.nnfbcast.v1.12.expulsiondate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of expulsion")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.expulsion_date = ProtoField.new("Expulsion Date", "nse.nseix.broadcast.nnfbcast.v1.12.expulsiondate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of expulsion")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.extrinsic_value = ProtoField.new("Extrinsic Value", "nse.nseix.broadcast.nnfbcast.v1.12.extrinsicvalue", ftypes.INT32, nil, nil, nil, "Extrinsic value of the contract")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.fill_price = ProtoField.new("Fill Price", "nse.nseix.broadcast.nnfbcast.v1.12.fillprice", ftypes.INT32, nil, nil, nil, "Price at which the order traded")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.fill_volume = ProtoField.new("Fill Volume", "nse.nseix.broadcast.nnfbcast.v1.12.fillvolume", ftypes.INT32, nil, nil, nil, "Quantity traded")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.filler_2 = ProtoField.new("Filler 2", "nse.nseix.broadcast.nnfbcast.v1.12.filler2", ftypes.BYTES, nil, nil, nil, "Padding, documented as Byte but eight bytes wide")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.final = ProtoField.new("Final", "nse.nseix.broadcast.nnfbcast.v1.12.final", ftypes.STRING, nil, nil, nil, "Whether it is the final auction trade")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.foreign_interest_rate = ProtoField.new("Foreign Interest Rate", "nse.nseix.broadcast.nnfbcast.v1.12.foreigninterestrate", ftypes.INT16, nil, nil, nil, "Foreign interest rate of the asset")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.freeze_quantity = ProtoField.new("Freeze Quantity", "nse.nseix.broadcast.nnfbcast.v1.12.freezequantity", ftypes.INT32)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.high_exec_band = ProtoField.new("High Exec Band", "nse.nseix.broadcast.nnfbcast.v1.12.highexecband", ftypes.INT32, nil, nil, nil, "High trade execution band")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.high_price = ProtoField.new("High Price", "nse.nseix.broadcast.nnfbcast.v1.12.highprice", ftypes.INT32, nil, nil, nil, "Highest trade price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.high_price_range = ProtoField.new("High Price Range", "nse.nseix.broadcast.nnfbcast.v1.12.highpricerange", ftypes.INT32, nil, nil, nil, "Upper price limit of the operating range")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.ideal_price = ProtoField.new("Ideal Price", "nse.nseix.broadcast.nnfbcast.v1.12.idealprice", ftypes.INT32, nil, nil, nil, "Average of the best bid and ask prices")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.impact_cost = ProtoField.new("Impact Cost", "nse.nseix.broadcast.nnfbcast.v1.12.impactcost", ftypes.INT32, nil, nil, nil, "Percentage markup over the ideal price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.initiator_price = ProtoField.new("Initiator Price", "nse.nseix.broadcast.nnfbcast.v1.12.initiatorprice", ftypes.INT32, nil, nil, nil, "Price of the initiator's auction order")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.initiator_quantity = ProtoField.new("Initiator Quantity", "nse.nseix.broadcast.nnfbcast.v1.12.initiatorquantity", ftypes.INT32, nil, nil, nil, "Quantity of the initiator's auction order")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.initiator_type = ProtoField.new("Initiator Type", "nse.nseix.broadcast.nnfbcast.v1.12.initiatortype", ftypes.INT16, nil, nil, nil, "Type of the auction initiator")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument = ProtoField.new("Instrument", "nse.nseix.broadcast.nnfbcast.v1.12.instrument", ftypes.STRING, nil, nil, nil, "Instrument of the underlying asset")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument_description = ProtoField.new("Instrument Description", "nse.nseix.broadcast.nnfbcast.v1.12.instrumentdescription", ftypes.STRING, nil, nil, nil, "Full name of the instrument")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument_id = ProtoField.new("Instrument Id", "nse.nseix.broadcast.nnfbcast.v1.12.instrumentid", ftypes.INT16, nil, nil, nil, "Id of the instrument")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument_name = ProtoField.new("Instrument Name", "nse.nseix.broadcast.nnfbcast.v1.12.instrumentname", ftypes.STRING, nil, nil, nil, "Type of the instrument")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument_type = ProtoField.new("Instrument Type", "nse.nseix.broadcast.nnfbcast.v1.12.instrumenttype", ftypes.STRING, nil, nil, nil, "Instrument type of the underlying asset")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument_update_date_time_utc = ProtoField.new("Instrument Update Date Time", "nse.nseix.broadcast.nnfbcast.v1.12.instrumentupdatedatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the record was modified")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument_update_date_time = ProtoField.new("Instrument Update Date Time", "nse.nseix.broadcast.nnfbcast.v1.12.instrumentupdatedatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the record was modified")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.interactive_only_mbp_data = ProtoField.new("Interactive Only Mbp Data", "nse.nseix.broadcast.nnfbcast.v1.12.interactiveonlymbpdata", ftypes.STRING, nil, nil, nil, "INTERACTIVE_ONLY_MBP_DATA")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.interest = ProtoField.new("Interest", "nse.nseix.broadcast.nnfbcast.v1.12.interest", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.interest_payment_date_utc = ProtoField.new("Interest Payment Date", "nse.nseix.broadcast.nnfbcast.v1.12.interestpaymentdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Interest payment date of the issue")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.interest_payment_date = ProtoField.new("Interest Payment Date", "nse.nseix.broadcast.nnfbcast.v1.12.interestpaymentdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Interest payment date of the issue")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.intrinsic_value = ProtoField.new("Intrinsic Value", "nse.nseix.broadcast.nnfbcast.v1.12.intrinsicvalue", ftypes.INT32, nil, nil, nil, "Intrinsic value of the contract")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.is_corporate_adjusted = ProtoField.new("Is Corporate Adjusted", "nse.nseix.broadcast.nnfbcast.v1.12.iscorporateadjusted", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "Record has been adjusted for a corporate action")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.is_this_asset = ProtoField.new("Is This Asset", "nse.nseix.broadcast.nnfbcast.v1.12.isthisasset", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "Record describes the asset itself")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.issue_maturity_date_utc = ProtoField.new("Issue Maturity Date", "nse.nseix.broadcast.nnfbcast.v1.12.issuematuritydate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Maturity date")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.issue_maturity_date = ProtoField.new("Issue Maturity Date", "nse.nseix.broadcast.nnfbcast.v1.12.issuematuritydate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Maturity date")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.issue_rate = ProtoField.new("Issue Rate", "nse.nseix.broadcast.nnfbcast.v1.12.issuerate", ftypes.INT16, nil, nil, nil, "Price of the issue")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.issue_start_date_utc = ProtoField.new("Issue Start Date", "nse.nseix.broadcast.nnfbcast.v1.12.issuestartdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of issue of the security")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.issue_start_date = ProtoField.new("Issue Start Date", "nse.nseix.broadcast.nnfbcast.v1.12.issuestartdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of issue of the security")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.issued_capital = ProtoField.new("Issued Capital", "nse.nseix.broadcast.nnfbcast.v1.12.issuedcapital", ftypes.DOUBLE, nil, nil, nil, "Issue size of the security")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.journaling_required = ProtoField.new("Journaling Required", "nse.nseix.broadcast.nnfbcast.v1.12.journalingrequired", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000, "Whether the message is to be journalled")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_active_time_utc = ProtoField.new("Last Active Time", "nse.nseix.broadcast.nnfbcast.v1.12.lastactivetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the last activity was done")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_active_time = ProtoField.new("Last Active Time", "nse.nseix.broadcast.nnfbcast.v1.12.lastactivetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the last activity was done")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_trade_less = ProtoField.new("Last Trade Less", "nse.nseix.broadcast.nnfbcast.v1.12.lasttradeless", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000, "Last trade less than the previous last traded price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_trade_more = ProtoField.new("Last Trade More", "nse.nseix.broadcast.nnfbcast.v1.12.lasttrademore", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Last trade greater than the previous last traded price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_trade_price = ProtoField.new("Last Trade Price", "nse.nseix.broadcast.nnfbcast.v1.12.lasttradeprice", ftypes.INT32, nil, nil, nil, "Latest trade price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_trade_quantity = ProtoField.new("Last Trade Quantity", "nse.nseix.broadcast.nnfbcast.v1.12.lasttradequantity", ftypes.INT32, nil, nil, nil, "Quantity of the last trade")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_trade_time_utc = ProtoField.new("Last Trade Time", "nse.nseix.broadcast.nnfbcast.v1.12.lasttradetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time of the last trade")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_trade_time = ProtoField.new("Last Trade Time", "nse.nseix.broadcast.nnfbcast.v1.12.lasttradetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time of the last trade")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_traded_price = ProtoField.new("Last Traded Price", "nse.nseix.broadcast.nnfbcast.v1.12.lasttradedprice", ftypes.INT32, nil, nil, nil, "Price of the latest trade")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_traded_price_difference = ProtoField.new("Last Traded Price Difference", "nse.nseix.broadcast.nnfbcast.v1.12.lasttradedpricedifference", ftypes.INT32, nil, nil, nil, "Price difference of the latest spread trade")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_update_time_utc = ProtoField.new("Last Update Time", "nse.nseix.broadcast.nnfbcast.v1.12.lastupdatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the last activity was done")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_update_time = ProtoField.new("Last Update Time", "nse.nseix.broadcast.nnfbcast.v1.12.lastupdatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the last activity was done")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.listing_date_utc = ProtoField.new("Listing Date", "nse.nseix.broadcast.nnfbcast.v1.12.listingdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of listing")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.listing_date = ProtoField.new("Listing Date", "nse.nseix.broadcast.nnfbcast.v1.12.listingdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of listing")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.local_update_date_time_utc = ProtoField.new("Local Update Date Time", "nse.nseix.broadcast.nnfbcast.v1.12.localupdatedatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Local database update date and time")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.local_update_date_time = ProtoField.new("Local Update Date Time", "nse.nseix.broadcast.nnfbcast.v1.12.localupdatedatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Local database update date and time")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.log_time_utc = ProtoField.new("Log Time", "nse.nseix.broadcast.nnfbcast.v1.12.logtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the message was generated by the trading system")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.log_time = ProtoField.new("Log Time", "nse.nseix.broadcast.nnfbcast.v1.12.logtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the message was generated by the trading system")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.low_exec_band = ProtoField.new("Low Exec Band", "nse.nseix.broadcast.nnfbcast.v1.12.lowexecband", ftypes.INT32, nil, nil, nil, "Low trade execution band")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.low_price = ProtoField.new("Low Price", "nse.nseix.broadcast.nnfbcast.v1.12.lowprice", ftypes.INT32, nil, nil, nil, "Lowest trade price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.low_price_range = ProtoField.new("Low Price Range", "nse.nseix.broadcast.nnfbcast.v1.12.lowpricerange", ftypes.INT32, nil, nil, nil, "Lower price limit of the operating range")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.margin_percentage = ProtoField.new("Margin Percentage", "nse.nseix.broadcast.nnfbcast.v1.12.marginpercentage", ftypes.INT32, nil, nil, nil, "Initial margin percent to be collected on a contract")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_buy_price = ProtoField.new("Market Buy Price", "nse.nseix.broadcast.nnfbcast.v1.12.marketbuyprice", ftypes.INT32, nil, nil, nil, "Best buy price for the contract")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_sell_price = ProtoField.new("Market Sell Price", "nse.nseix.broadcast.nnfbcast.v1.12.marketsellprice", ftypes.INT32, nil, nil, nil, "Best sell price for the contract")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_status_broadcast_message = ProtoField.new("Market Status Broadcast Message", "nse.nseix.broadcast.nnfbcast.v1.12.marketstatusbroadcastmessage", ftypes.STRING, nil, nil, nil, "Contents of the broadcast message")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_type = ProtoField.new("Market Type", "nse.nseix.broadcast.nnfbcast.v1.12.markettype", ftypes.INT16, nil, nil, nil, "Type of market")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mba_data = ProtoField.new("Mba Data", "nse.nseix.broadcast.nnfbcast.v1.12.mbadata", ftypes.STRING, nil, nil, nil, "MBA_DATA")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_buy = ProtoField.new("Mbp Buy", "nse.nseix.broadcast.nnfbcast.v1.12.mbpbuy", ftypes.INT16, nil, nil, nil, "Total number of buys for the combination")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_buy_level = ProtoField.new("Mbp Buy Level", "nse.nseix.broadcast.nnfbcast.v1.12.mbpbuylevel", ftypes.STRING, nil, nil, nil, "MbpBuy Level")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_buys = ProtoField.new("Mbp Buys", "nse.nseix.broadcast.nnfbcast.v1.12.mbpbuys", ftypes.STRING, nil, nil, nil, "MbpBuys")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_information = ProtoField.new("Mbp Information", "nse.nseix.broadcast.nnfbcast.v1.12.mbpinformation", ftypes.STRING, nil, nil, nil, "MBP_INFORMATION")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_sell = ProtoField.new("Mbp Sell", "nse.nseix.broadcast.nnfbcast.v1.12.mbpsell", ftypes.INT16, nil, nil, nil, "Total number of sells for the combination")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_sell_level = ProtoField.new("Mbp Sell Level", "nse.nseix.broadcast.nnfbcast.v1.12.mbpselllevel", ftypes.STRING, nil, nil, nil, "MbpSell Level")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_sells = ProtoField.new("Mbp Sells", "nse.nseix.broadcast.nnfbcast.v1.12.mbpsells", ftypes.STRING, nil, nil, nil, "MbpSells")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.message_length = ProtoField.new("Message Length", "nse.nseix.broadcast.nnfbcast.v1.12.messagelength", ftypes.INT16, nil, nil, nil, "Length of the entire message including the broadcast header")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mf = ProtoField.new("Mf", "nse.nseix.broadcast.nnfbcast.v1.12.mf", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Minimum fill order")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.min_fill_qty = ProtoField.new("Min Fill Qty", "nse.nseix.broadcast.nnfbcast.v1.12.minfillqty", ftypes.INT32, nil, nil, nil, "Minimum fill quantity")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.minimum_fill = ProtoField.new("Minimum Fill", "nse.nseix.broadcast.nnfbcast.v1.12.minimumfill", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Minimum fill attribute allowed in orders in this security")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.minimum_lot_quantity = ProtoField.new("Minimum Lot Quantity", "nse.nseix.broadcast.nnfbcast.v1.12.minimumlotquantity", ftypes.INT32, nil, nil, nil, "Minimum lot of an order")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.msg_count = ProtoField.new("Msg Count", "nse.nseix.broadcast.nnfbcast.v1.12.msgcount", ftypes.INT32, nil, nil, nil, "Number of tokens in the packet")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.multiplier = ProtoField.new("Multiplier", "nse.nseix.broadcast.nnfbcast.v1.12.multiplier", ftypes.INT32, nil, nil, nil, "Multiplier of the volume to get the actual quantity")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.name = ProtoField.new("Name", "nse.nseix.broadcast.nnfbcast.v1.12.name", ftypes.STRING, nil, nil, nil, "Security name")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.net_change_indicator = ProtoField.new("Net Change Indicator", "nse.nseix.broadcast.nnfbcast.v1.12.netchangeindicator", ftypes.STRING, nil, nil, nil, "Direction of the change from the last traded price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.net_id = ProtoField.new("Net Id", "nse.nseix.broadcast.nnfbcast.v1.12.netid", ftypes.STRING, nil, nil, nil, "Identifies the segment, 2 for Equity Derivative")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.net_price_change_from_closing_price = ProtoField.new("Net Price Change From Closing Price", "nse.nseix.broadcast.nnfbcast.v1.12.netpricechangefromclosingprice", ftypes.INT32, nil, nil, nil, "Net change between the closing price and the last traded price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.no_delivery_end_date_utc = ProtoField.new("No Delivery End Date", "nse.nseix.broadcast.nnfbcast.v1.12.nodeliveryenddate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date physical delivery starts after book closure")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.no_delivery_end_date = ProtoField.new("No Delivery End Date", "nse.nseix.broadcast.nnfbcast.v1.12.nodeliveryenddate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date physical delivery starts after book closure")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.no_delivery_start_date_utc = ProtoField.new("No Delivery Start Date", "nse.nseix.broadcast.nnfbcast.v1.12.nodeliverystartdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date physical delivery stops for book closure")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.no_delivery_start_date = ProtoField.new("No Delivery Start Date", "nse.nseix.broadcast.nnfbcast.v1.12.nodeliverystartdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date physical delivery stops for book closure")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.no_of_orders = ProtoField.new("No Of Orders", "nse.nseix.broadcast.nnfbcast.v1.12.nooforders", ftypes.INT16, nil, nil, nil, "Number of orders at the price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.no_of_records = ProtoField.new("No Of Records", "nse.nseix.broadcast.nnfbcast.v1.12.noofrecords", ftypes.INT16, nil, nil, nil, "Number of contract records")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.no_orders = ProtoField.new("No Orders", "nse.nseix.broadcast.nnfbcast.v1.12.noorders", ftypes.INT16, nil, nil, nil, "Number of orders at the price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.number_of_orders = ProtoField.new("Number Of Orders", "nse.nseix.broadcast.nnfbcast.v1.12.numberoforders", ftypes.INT16, nil, nil, nil, "Number of orders at the price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.number_of_packets = ProtoField.new("Number Of Packets", "nse.nseix.broadcast.nnfbcast.v1.12.numberofpackets", ftypes.INT16, nil, nil, nil, "Number of packets sequentially packed in this datagram")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.number_of_records = ProtoField.new("Number Of Records", "nse.nseix.broadcast.nnfbcast.v1.12.numberofrecords", ftypes.INT16, nil, nil, nil, "Number of token and eligibility records")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.op_high_price_diff_range = ProtoField.new("Op High Price Diff Range", "nse.nseix.broadcast.nnfbcast.v1.12.ophighpricediffrange", ftypes.INT32, nil, nil, nil, "Operating high price difference range")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.op_low_price_diff_range = ProtoField.new("Op Low Price Diff Range", "nse.nseix.broadcast.nnfbcast.v1.12.oplowpricediffrange", ftypes.INT32, nil, nil, nil, "Operating low price difference range")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.open_interest = ProtoField.new("Open Interest", "nse.nseix.broadcast.nnfbcast.v1.12.openinterest", ftypes.INT32)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.open_price = ProtoField.new("Open Price", "nse.nseix.broadcast.nnfbcast.v1.12.openprice", ftypes.INT32, nil, nil, nil, "Opening price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.open_price_difference = ProtoField.new("Open Price Difference", "nse.nseix.broadcast.nnfbcast.v1.12.openpricedifference", ftypes.INT32, nil, nil, nil, "Price difference of the first spread trade of the day")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.option_type = ProtoField.new("Option Type", "nse.nseix.broadcast.nnfbcast.v1.12.optiontype", ftypes.STRING, nil, nil, nil, "Option type of the contract last traded")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.order_count = ProtoField.new("Order Count", "nse.nseix.broadcast.nnfbcast.v1.12.ordercount", ftypes.INT32, nil, nil, nil, "Total number of orders at the price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.order_price = ProtoField.new("Order Price", "nse.nseix.broadcast.nnfbcast.v1.12.orderprice", ftypes.INT32, nil, nil, nil, "Price of the orders")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.order_quantity = ProtoField.new("Order Quantity", "nse.nseix.broadcast.nnfbcast.v1.12.orderquantity", ftypes.DOUBLE, nil, nil, nil, "Total volume ordered at the price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.participant_id = ProtoField.new("Participant Id", "nse.nseix.broadcast.nnfbcast.v1.12.participantid", ftypes.STRING)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.participant_name = ProtoField.new("Participant Name", "nse.nseix.broadcast.nnfbcast.v1.12.participantname", ftypes.STRING, nil, nil, nil, "Name of the participant")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.participant_status = ProtoField.new("Participant Status", "nse.nseix.broadcast.nnfbcast.v1.12.participantstatus", ftypes.STRING, nil, nil, nil, "Status of the participant")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.participant_update_date_time_utc = ProtoField.new("Participant Update Date Time", "nse.nseix.broadcast.nnfbcast.v1.12.participantupdatedatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the participant information was changed")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.participant_update_date_time = ProtoField.new("Participant Update Date Time", "nse.nseix.broadcast.nnfbcast.v1.12.participantupdatedatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the participant information was changed")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.participate_in_market_index = ProtoField.new("Participate In Market Index", "nse.nseix.broadcast.nnfbcast.v1.12.participateinmarketindex", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Security participates in the market index")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.permitted_to_trade = ProtoField.new("Permitted To Trade", "nse.nseix.broadcast.nnfbcast.v1.12.permittedtotrade", ftypes.INT16, nil, nil, nil, "Whether the security is permitted to trade")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.pl_allowed = ProtoField.new("Pl Allowed", "nse.nseix.broadcast.nnfbcast.v1.12.plallowed", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020, "Position liquidation allowed")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.price = ProtoField.new("Price", "nse.nseix.broadcast.nnfbcast.v1.12.price", ftypes.INT32, nil, nil, nil, "Price of the order")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.qty = ProtoField.new("Qty", "nse.nseix.broadcast.nnfbcast.v1.12.qty", ftypes.INT32, nil, nil, nil, "Quantity of the order")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.quantity = ProtoField.new("Quantity", "nse.nseix.broadcast.nnfbcast.v1.12.quantity", ftypes.INT32, nil, nil, nil, "Quantity at the price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.re_admission_date_utc = ProtoField.new("Re Admission Date", "nse.nseix.broadcast.nnfbcast.v1.12.readmissiondate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date of readmission")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.re_admission_date = ProtoField.new("Re Admission Date", "nse.nseix.broadcast.nnfbcast.v1.12.readmissiondate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date of readmission")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.record_date_utc = ProtoField.new("Record Date", "nse.nseix.broadcast.nnfbcast.v1.12.recorddate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.record_date = ProtoField.new("Record Date", "nse.nseix.broadcast.nnfbcast.v1.12.recorddate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reference_price = ProtoField.new("Reference Price", "nse.nseix.broadcast.nnfbcast.v1.12.referenceprice", ftypes.INT32, nil, nil, nil, "Settlement price of the first leg, the base of the price difference ranges")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.remark = ProtoField.new("Remark", "nse.nseix.broadcast.nnfbcast.v1.12.remark", ftypes.STRING, nil, nil, nil, "Remarks")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_0 = ProtoField.new("Reserved 0", "nse.nseix.broadcast.nnfbcast.v1.12.reserved0", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_1 = ProtoField.new("Reserved 1", "nse.nseix.broadcast.nnfbcast.v1.12.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_10 = ProtoField.new("Reserved 10", "nse.nseix.broadcast.nnfbcast.v1.12.reserved10", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200, "Reserved")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_112 = ProtoField.new("Reserved 112", "nse.nseix.broadcast.nnfbcast.v1.12.reserved112", ftypes.UINT16, nil, base.DEC, 0x0FFF, "Reserved")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_113 = ProtoField.new("Reserved 113", "nse.nseix.broadcast.nnfbcast.v1.12.reserved113", ftypes.UINT16, nil, base.DEC, 0x1FFF, "Reserved")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_114 = ProtoField.new("Reserved 114", "nse.nseix.broadcast.nnfbcast.v1.12.reserved114", ftypes.UINT16, nil, base.DEC, 0x3FFF, "Reserved")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_13 = ProtoField.new("Reserved 13", "nse.nseix.broadcast.nnfbcast.v1.12.reserved13", ftypes.UINT16, nil, base.DEC, 0x0007, "Reserved")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_17 = ProtoField.new("Reserved 17", "nse.nseix.broadcast.nnfbcast.v1.12.reserved17", ftypes.UINT8, nil, base.DEC, 0x7F, "Reserved")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_18 = ProtoField.new("Reserved 18", "nse.nseix.broadcast.nnfbcast.v1.12.reserved18", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_19 = ProtoField.new("Reserved 19", "nse.nseix.broadcast.nnfbcast.v1.12.reserved19", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_2 = ProtoField.new("Reserved 2", "nse.nseix.broadcast.nnfbcast.v1.12.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_26 = ProtoField.new("Reserved 26", "nse.nseix.broadcast.nnfbcast.v1.12.reserved26", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_4 = ProtoField.new("Reserved 4", "nse.nseix.broadcast.nnfbcast.v1.12.reserved4", ftypes.BYTES, nil, nil, nil, "Padding, the specification lists no field at these offsets")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.rights = ProtoField.new("Rights", "nse.nseix.broadcast.nnfbcast.v1.12.rights", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.sec_info = ProtoField.new("Sec Info", "nse.nseix.broadcast.nnfbcast.v1.12.secinfo", ftypes.STRING, nil, nil, nil, "SEC_INFO")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.sec_info_1 = ProtoField.new("Sec Info 1", "nse.nseix.broadcast.nnfbcast.v1.12.secinfo1", ftypes.STRING, nil, nil, nil, "SecInfo1")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.sec_info_2 = ProtoField.new("Sec Info 2", "nse.nseix.broadcast.nnfbcast.v1.12.secinfo2", ftypes.STRING, nil, nil, nil, "SecInfo2")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "nse.nseix.broadcast.nnfbcast.v1.12.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.security_eligibility_flags = ProtoField.new("Security Eligibility Flags", "nse.nseix.broadcast.nnfbcast.v1.12.securityeligibilityflags", ftypes.STRING, nil, nil, nil, "Whether the security is eligible in this market")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.sell = ProtoField.new("Sell", "nse.nseix.broadcast.nnfbcast.v1.12.sell", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.sell_price = ProtoField.new("Sell Price", "nse.nseix.broadcast.nnfbcast.v1.12.sellprice", ftypes.INT32, nil, nil, nil, "Price of the best sell order")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.sell_side = ProtoField.new("Sell Side", "nse.nseix.broadcast.nnfbcast.v1.12.sellside", ftypes.STRING, nil, nil, nil, "SELL_SIDE")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.sell_volume = ProtoField.new("Sell Volume", "nse.nseix.broadcast.nnfbcast.v1.12.sellvolume", ftypes.INT32, nil, nil, nil, "Quantity of the best sell order")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.series = ProtoField.new("Series", "nse.nseix.broadcast.nnfbcast.v1.12.series", ftypes.STRING, nil, nil, nil, "Series of the security")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_bcast_destination = ProtoField.new("St Bcast Destination", "nse.nseix.broadcast.nnfbcast.v1.12.stbcastdestination", ftypes.STRING, nil, nil, nil, "Destinations the broadcast is intended for")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_eligiblity_indicators = ProtoField.new("St Eligiblity Indicators", "nse.nseix.broadcast.nnfbcast.v1.12.steligiblityindicators", ftypes.STRING, nil, nil, nil, "Order attributes the security is eligible for")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_indicator = ProtoField.new("St Indicator", "nse.nseix.broadcast.nnfbcast.v1.12.stindicator", ftypes.STRING, nil, nil, nil, "Side and last trade direction indicators")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_interactive_mbo_data = ProtoField.new("St Interactive Mbo Data", "nse.nseix.broadcast.nnfbcast.v1.12.stinteractivembodata", ftypes.STRING, nil, nil, nil, "ST_INTERACTIVE_MBO_DATA")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_market_watch_bcast = ProtoField.new("St Market Watch Bcast", "nse.nseix.broadcast.nnfbcast.v1.12.stmarketwatchbcast", ftypes.STRING, nil, nil, nil, "ST_MARKET_WATCH_BCAST")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_mbo_info = ProtoField.new("St Mbo Info", "nse.nseix.broadcast.nnfbcast.v1.12.stmboinfo", ftypes.STRING, nil, nil, nil, "ST_MBO_INFO")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_mbo_mbp_terms = ProtoField.new("St Mbo Mbp Terms", "nse.nseix.broadcast.nnfbcast.v1.12.stmbombpterms", ftypes.STRING, nil, nil, nil, "Terms attached to an order in the book")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_mbp_info = ProtoField.new("St Mbp Info", "nse.nseix.broadcast.nnfbcast.v1.12.stmbpinfo", ftypes.STRING, nil, nil, nil, "ST_MBP_INFO")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_mkt_wise_info = ProtoField.new("St Mkt Wise Info", "nse.nseix.broadcast.nnfbcast.v1.12.stmktwiseinfo", ftypes.STRING, nil, nil, nil, "ST_MKT_WISE_INFO")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_purpose = ProtoField.new("St Purpose", "nse.nseix.broadcast.nnfbcast.v1.12.stpurpose", ftypes.STRING, nil, nil, nil, "Corporate action flags of the security")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_sec_eligibility_per_market = ProtoField.new("St Sec Eligibility Per Market", "nse.nseix.broadcast.nnfbcast.v1.12.stseceligibilitypermarket", ftypes.STRING, nil, nil, nil, "ST_SEC_ELIGIBILITY_PER_MARKET")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_sec_status_per_market = ProtoField.new("St Sec Status Per Market", "nse.nseix.broadcast.nnfbcast.v1.12.stsecstatuspermarket", ftypes.STRING, nil, nil, nil, "ST_SEC_STATUS_PER_MARKET")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_spd_eligibility = ProtoField.new("St Spd Eligibility", "nse.nseix.broadcast.nnfbcast.v1.12.stspdeligibility", ftypes.STRING, nil, nil, nil, "Whether the spread combination is allowed to trade")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_ticker_index_info = ProtoField.new("St Ticker Index Info", "nse.nseix.broadcast.nnfbcast.v1.12.sttickerindexinfo", ftypes.STRING, nil, nil, nil, "ST_TICKER_INDEX_INFO")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.status = ProtoField.new("Status", "nse.nseix.broadcast.nnfbcast.v1.12.status", ftypes.INT16, nil, nil, nil, "Status of the security in this market")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.strike_price = ProtoField.new("Strike Price", "nse.nseix.broadcast.nnfbcast.v1.12.strikeprice", ftypes.INT32, nil, nil, nil, "Strike price of the contract last traded")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.symbol = ProtoField.new("Symbol", "nse.nseix.broadcast.nnfbcast.v1.12.symbol", ftypes.STRING, nil, nil, nil, "Symbol of the security last traded")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.tandem = ProtoField.new("Tandem", "nse.nseix.broadcast.nnfbcast.v1.12.tandem", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Destined for Tandem")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.tick_size = ProtoField.new("Tick Size", "nse.nseix.broadcast.nnfbcast.v1.12.ticksize", ftypes.INT32)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.time_stamp_2 = ProtoField.new("Time Stamp 2", "nse.nseix.broadcast.nnfbcast.v1.12.timestamp2", ftypes.STRING, nil, nil, nil, "Time the message reached the gateway")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.token = ProtoField.new("Token", "nse.nseix.broadcast.nnfbcast.v1.12.token", ftypes.INT32, nil, nil, nil, "Token number of the security, unique for a symbol and series")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.token_1 = ProtoField.new("Token 1", "nse.nseix.broadcast.nnfbcast.v1.12.token1", ftypes.INT32, nil, nil, nil, "Token number of the security with the earlier expiry")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.token_2 = ProtoField.new("Token 2", "nse.nseix.broadcast.nnfbcast.v1.12.token2", ftypes.INT32, nil, nil, nil, "Token number of the security with the later expiry")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.token_and_eligibility = ProtoField.new("Token And Eligibility", "nse.nseix.broadcast.nnfbcast.v1.12.tokenandeligibility", ftypes.STRING, nil, nil, nil, "TOKEN_AND_ELIGIBILITY")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.token_no = ProtoField.new("Token No", "nse.nseix.broadcast.nnfbcast.v1.12.tokenno", ftypes.INT32, nil, nil, nil, "Token number of the underlying asset")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.token_number = ProtoField.new("Token Number", "nse.nseix.broadcast.nnfbcast.v1.12.tokennumber", ftypes.INT32, nil, nil, nil, "Token number of the contract")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.total_buy_quantity = ProtoField.new("Total Buy Quantity", "nse.nseix.broadcast.nnfbcast.v1.12.totalbuyquantity", ftypes.DOUBLE, nil, nil, nil, "Total quantity of buy orders")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.total_order_buy = ProtoField.new("Total Order Buy", "nse.nseix.broadcast.nnfbcast.v1.12.totalorderbuy", ftypes.DOUBLE, nil, nil, nil, "Total buy volume ordered for the combination")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.total_order_sell = ProtoField.new("Total Order Sell", "nse.nseix.broadcast.nnfbcast.v1.12.totalordersell", ftypes.DOUBLE, nil, nil, nil, "Total sell volume ordered for the combination")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.total_order_volume = ProtoField.new("Total Order Volume", "nse.nseix.broadcast.nnfbcast.v1.12.totalordervolume", ftypes.STRING, nil, nil, nil, "TotalOrderVolume")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.total_sell_quantity = ProtoField.new("Total Sell Quantity", "nse.nseix.broadcast.nnfbcast.v1.12.totalsellquantity", ftypes.DOUBLE, nil, nil, nil, "Total quantity of sell orders")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.total_traded_value = ProtoField.new("Total Traded Value", "nse.nseix.broadcast.nnfbcast.v1.12.totaltradedvalue", ftypes.DOUBLE, nil, nil, nil, "Total value traded, divided by 10000 for the value in US dollars")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.total_value = ProtoField.new("Total Value", "nse.nseix.broadcast.nnfbcast.v1.12.totalvalue", ftypes.DOUBLE, nil, nil, nil, "Total value for the cumulative quantity, in cents")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trade_execution_range_data = ProtoField.new("Trade Execution Range Data", "nse.nseix.broadcast.nnfbcast.v1.12.tradeexecutionrangedata", ftypes.STRING, nil, nil, nil, "TRADE_EXECUTION_RANGE_DATA")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trade_execution_range_details = ProtoField.new("Trade Execution Range Details", "nse.nseix.broadcast.nnfbcast.v1.12.tradeexecutionrangedetails", ftypes.STRING, nil, nil, nil, "TRADE_EXECUTION_RANGE_DETAILS")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trade_number = ProtoField.new("Trade Number", "nse.nseix.broadcast.nnfbcast.v1.12.tradenumber", ftypes.INT32, nil, nil, nil, "Trade number the broker last traded in")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trade_price = ProtoField.new("Trade Price", "nse.nseix.broadcast.nnfbcast.v1.12.tradeprice", ftypes.INT32, nil, nil, nil, "Price of the trade")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trade_volume = ProtoField.new("Trade Volume", "nse.nseix.broadcast.nnfbcast.v1.12.tradevolume", ftypes.INT32, nil, nil, nil, "Quantity of the trade")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.traded_in_cents = ProtoField.new("Traded In Cents", "nse.nseix.broadcast.nnfbcast.v1.12.tradedincents", ftypes.STRING, nil, nil, nil, "C when the contract is traded in cents")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.traded_volume = ProtoField.new("Traded Volume", "nse.nseix.broadcast.nnfbcast.v1.12.tradedvolume", ftypes.INT32, nil, nil, nil, "Total number of trades today")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trader_id = ProtoField.new("Trader Id", "nse.nseix.broadcast.nnfbcast.v1.12.traderid", ftypes.INT32, nil, nil, nil, "Trader Id of the order")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trader_workstation = ProtoField.new("Trader Workstation", "nse.nseix.broadcast.nnfbcast.v1.12.traderworkstation", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000, "Destined for the trader workstation")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trading_status = ProtoField.new("Trading Status", "nse.nseix.broadcast.nnfbcast.v1.12.tradingstatus", ftypes.INT16, nil, nil, nil, "Trading status of the security")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nseix.broadcast.nnfbcast.v1.12.transactioncode", ftypes.INT16, nil, nil, nil, "Type of broadcast message")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.volatility = ProtoField.new("Volatility", "nse.nseix.broadcast.nnfbcast.v1.12.volatility", ftypes.INT32)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.volume = ProtoField.new("Volume", "nse.nseix.broadcast.nnfbcast.v1.12.volume", ftypes.INT32, nil, nil, nil, "Total volume ordered at the price")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.volume_traded_today = ProtoField.new("Volume Traded Today", "nse.nseix.broadcast.nnfbcast.v1.12.volumetradedtoday", ftypes.INT32, nil, nil, nil, "Total quantity traded today")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.wap = ProtoField.new("Wap", "nse.nseix.broadcast.nnfbcast.v1.12.wap", ftypes.INT32, nil, nil, nil, "Weighted average price for the cumulative quantity")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.warning_quantity = ProtoField.new("Warning Quantity", "nse.nseix.broadcast.nnfbcast.v1.12.warningquantity", ftypes.INT32)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.warning_type = ProtoField.new("Warning Type", "nse.nseix.broadcast.nnfbcast.v1.12.warningtype", ftypes.INT16, nil, nil, nil, "Whether the turnover limit is about to exceed or has exceeded")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.yield_rate = ProtoField.new("Yield Rate", "nse.nseix.broadcast.nnfbcast.v1.12.yieldrate", ftypes.INT32, nil, nil, nil, "Yield for the price point")

-- Nse NseIx Broadcast NnfBcast 1.12 Framing
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.packed_packet = ProtoField.new("Packed Packet", "nse.nseix.broadcast.nnfbcast.v1.12.packedpacket", ftypes.STRING, nil, nil, nil, "One sequentially packed broadcast packet")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.packet = ProtoField.new("Packet", "nse.nseix.broadcast.nnfbcast.v1.12.packet", ftypes.STRING, nil, nil, nil, "NnfBcast Udp datagram")

-- Nse NseIx Broadcast 1.12 Application Messages
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.asset_interest_rate_change_message = ProtoField.new("Asset Interest Rate Change Message", "nse.nseix.broadcast.nnfbcast.v1.12.assetinterestratechangemessage", ftypes.STRING, nil, nil, nil, "Broadcast when the interest rates or volatility of an asset change")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.asset_open_interest_message = ProtoField.new("Asset Open Interest Message", "nse.nseix.broadcast.nnfbcast.v1.12.assetopeninterestmessage", ftypes.STRING, nil, nil, nil, "Broadcasts the open interest of each underlying asset")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.broadcast_journal_vct_message = ProtoField.new("Broadcast Journal Vct Message", "nse.nseix.broadcast.nnfbcast.v1.12.broadcastjournalvctmessage", ftypes.STRING, nil, nil, nil, "Carries a general message broadcast to the trading terminals")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.currency_assets_message = ProtoField.new("Currency Assets Message", "nse.nseix.broadcast.nnfbcast.v1.12.currencyassetsmessage", ftypes.STRING, nil, nil, nil, "Broadcasts the price details of an asset")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument_master_change_message = ProtoField.new("Instrument Master Change Message", "nse.nseix.broadcast.nnfbcast.v1.12.instrumentmasterchangemessage", ftypes.STRING, nil, nil, nil, "Broadcasts a change to the instrument master")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.interest_rate_assets_message = ProtoField.new("Interest Rate Assets Message", "nse.nseix.broadcast.nnfbcast.v1.12.interestrateassetsmessage", ftypes.STRING, nil, nil, nil, "Broadcasts the five best buy and sell prices of an interest rate asset")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_by_aggregate_delta_message = ProtoField.new("Market By Aggregate Delta Message", "nse.nseix.broadcast.nnfbcast.v1.12.marketbyaggregatedeltamessage", ftypes.STRING, nil, nil, nil, "Broadcasts the market by aggregate figures for the exchange defined quantity or value points of a contract. Transaction Code names which")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_by_order_and_market_by_price_message = ProtoField.new("Market By Order And Market By Price Message", "nse.nseix.broadcast.nnfbcast.v1.12.marketbyorderandmarketbypricemessage", ftypes.STRING, nil, nil, nil, "Broadcasts the best buy and sell orders and prices of a contract")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_status_message = ProtoField.new("Market Status Message", "nse.nseix.broadcast.nnfbcast.v1.12.marketstatusmessage", ftypes.STRING, nil, nil, nil, "Broadcast when a market opens, closes, enters or leaves pre open or enters or leaves pre close. Transaction Code names which")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_watch_round_robin_message = ProtoField.new("Market Watch Round Robin Message", "nse.nseix.broadcast.nnfbcast.v1.12.marketwatchroundrobinmessage", ftypes.STRING, nil, nil, nil, "Broadcasts the market watch for five contracts in rotation")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.only_market_by_price_message = ProtoField.new("Only Market By Price Message", "nse.nseix.broadcast.nnfbcast.v1.12.onlymarketbypricemessage", ftypes.STRING, nil, nil, nil, "Broadcasts the best buy and sell prices for two contracts, and periodically for the contracts active during the day")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.participant_master_change_message = ProtoField.new("Participant Master Change Message", "nse.nseix.broadcast.nnfbcast.v1.12.participantmasterchangemessage", ftypes.STRING, nil, nil, nil, "Broadcasts a change to a participant")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.security_master_change_message = ProtoField.new("Security Master Change Message", "nse.nseix.broadcast.nnfbcast.v1.12.securitymasterchangemessage", ftypes.STRING, nil, nil, nil, "Broadcasts a change to the security master, and periodically the securities changed during the day")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.security_status_change_message = ProtoField.new("Security Status Change Message", "nse.nseix.broadcast.nnfbcast.v1.12.securitystatuschangemessage", ftypes.STRING, nil, nil, nil, "Broadcasts the status of securities across markets, and in pre open")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.spread_combination_master_change_message = ProtoField.new("Spread Combination Master Change Message", "nse.nseix.broadcast.nnfbcast.v1.12.spreadcombinationmasterchangemessage", ftypes.STRING, nil, nil, nil, "Broadcasts a change to the spread combination master, and periodically the combinations changed during the day")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.spread_market_by_price_delta_message = ProtoField.new("Spread Market By Price Delta Message", "nse.nseix.broadcast.nnfbcast.v1.12.spreadmarketbypricedeltamessage", ftypes.STRING, nil, nil, nil, "Broadcasts the best buy and sell prices of a spread combination")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.ticker_and_market_index_message = ProtoField.new("Ticker And Market Index Message", "nse.nseix.broadcast.nnfbcast.v1.12.tickerandmarketindexmessage", ftypes.STRING, nil, nil, nil, "Broadcasts the last trade of each contract as a ticker")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trade_execution_range_message = ProtoField.new("Trade Execution Range Message", "nse.nseix.broadcast.nnfbcast.v1.12.tradeexecutionrangemessage", ftypes.STRING, nil, nil, nil, "Broadcasts the trade execution bands for a set of contracts, periodically, and for negotiated large trades. Transaction Code names which")
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.turnover_exceeded_message = ProtoField.new("Turnover Exceeded Message", "nse.nseix.broadcast.nnfbcast.v1.12.turnoverexceededmessage", ftypes.STRING, nil, nil, nil, "Broadcast when a broker's turnover limit is about to exceed or has exceeded, or when the broker is reactivated")

-- Nse NseIx Broadcast 1.12 Session Messages
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.circuit_check_message = ProtoField.new("Circuit Check Message", "nse.nseix.broadcast.nnfbcast.v1.12.circuitcheckmessage", ftypes.BYTES, nil, nil, nil, "Pulse stating the broadcast circuit is alive when it has carried no data")

-- Nse NseIx Broadcast NnfBcast 1.12 Generated Fields
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.asset_open_interest_index = ProtoField.new("Asset Open Interest Index", "nse.nseix.broadcast.nnfbcast.v1.12.assetopeninterestindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.interactive_only_mbp_data_index = ProtoField.new("Interactive Only Mbp Data Index", "nse.nseix.broadcast.nnfbcast.v1.12.interactiveonlymbpdataindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mba_data_index = ProtoField.new("Mba Data Index", "nse.nseix.broadcast.nnfbcast.v1.12.mbadataindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_buy_level_index = ProtoField.new("Mbp Buy Level Index", "nse.nseix.broadcast.nnfbcast.v1.12.mbpbuylevelindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_buys_index = ProtoField.new("Mbp Buys Index", "nse.nseix.broadcast.nnfbcast.v1.12.mbpbuysindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_information_index = ProtoField.new("Mbp Information Index", "nse.nseix.broadcast.nnfbcast.v1.12.mbpinformationindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_sell_level_index = ProtoField.new("Mbp Sell Level Index", "nse.nseix.broadcast.nnfbcast.v1.12.mbpselllevelindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_sells_index = ProtoField.new("Mbp Sells Index", "nse.nseix.broadcast.nnfbcast.v1.12.mbpsellsindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.packed_packet_index = ProtoField.new("Packed Packet Index", "nse.nseix.broadcast.nnfbcast.v1.12.packedpacketindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_market_watch_bcast_index = ProtoField.new("St Market Watch Bcast Index", "nse.nseix.broadcast.nnfbcast.v1.12.stmarketwatchbcastindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_mbo_info_index = ProtoField.new("St Mbo Info Index", "nse.nseix.broadcast.nnfbcast.v1.12.stmboinfoindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_mbp_info_index = ProtoField.new("St Mbp Info Index", "nse.nseix.broadcast.nnfbcast.v1.12.stmbpinfoindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_mkt_wise_info_index = ProtoField.new("St Mkt Wise Info Index", "nse.nseix.broadcast.nnfbcast.v1.12.stmktwiseinfoindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_sec_eligibility_per_market_index = ProtoField.new("St Sec Eligibility Per Market Index", "nse.nseix.broadcast.nnfbcast.v1.12.stseceligibilitypermarketindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_sec_status_per_market_index = ProtoField.new("St Sec Status Per Market Index", "nse.nseix.broadcast.nnfbcast.v1.12.stsecstatuspermarketindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_ticker_index_info_index = ProtoField.new("St Ticker Index Info Index", "nse.nseix.broadcast.nnfbcast.v1.12.sttickerindexinfoindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.token_and_eligibility_index = ProtoField.new("Token And Eligibility Index", "nse.nseix.broadcast.nnfbcast.v1.12.tokenandeligibilityindex", ftypes.UINT16)
omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trade_execution_range_details_index = ProtoField.new("Trade Execution Range Details Index", "nse.nseix.broadcast.nnfbcast.v1.12.tradeexecutionrangedetailsindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Nse NseIx Broadcast NnfBcast 1.12 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "DateTime Local", 2 },
  { 2, "DateTime Utc", 3 },
  { 3, "DateTime Asia/Kolkata", 4 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format = 3

-- Offset of the source's zone from utc in seconds, as the reader states it
nse_nseix_broadcast_nnfbcast_v1_12.zone_offset = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nse NseIx Broadcast NnfBcast 1.12 Element Dissection Options
show.application_messages = true
show.structs = true
show.padding = false
show.indexes = true

-- Register Nse NseIx Broadcast NnfBcast 1.12 Show Options
omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")
omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)
omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.zone_offset = Pref.string("Asia/Kolkata Utc Offset", "", "Offset of Asia/Kolkata from Utc, as +HH:MM. This protocol names that zone and not its offset: stated here, a time kept on its clock reads as an instant, and an instant reads on its clock")

-- Handle changed preferences
function omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.show_application_messages then
    show.application_messages = omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.show_application_messages
  end
  if show.padding ~= omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.show_padding then
    show.padding = omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.show_padding
  end
  if show.structs ~= omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.show_structs then
    show.structs = omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.show_structs
  end
  if show.indexes ~= omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.show_indexes then
    show.indexes = omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.show_indexes
  end
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format ~= omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.timestamp_format then
    nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format = omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.timestamp_format
  end
  local sign, hours, minutes = string.match(omi_nse_nseix_broadcast_nnfbcast_v1_12.prefs.zone_offset, "^%s*([+-]?)(%d%d?):?(%d?%d?)%s*$")

  nse_nseix_broadcast_nnfbcast_v1_12.zone_offset = 0

  if hours then
    nse_nseix_broadcast_nnfbcast_v1_12.zone_offset = tonumber(hours) * 3600 + (tonumber(minutes) or 0) * 60
  end

  if sign == "-" then
    nse_nseix_broadcast_nnfbcast_v1_12.zone_offset = -nse_nseix_broadcast_nnfbcast_v1_12.zone_offset
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
-- Nse NseIx Broadcast NnfBcast 1.12 Fields
-----------------------------------------------------------------------

-- Action Code
nse_nseix_broadcast_nnfbcast_v1_12.action_code = {}

-- Size: Action Code
nse_nseix_broadcast_nnfbcast_v1_12.action_code.size = 3

-- Display: Action Code
nse_nseix_broadcast_nnfbcast_v1_12.action_code.labels = {
  ["SYS"] = "Action Code: System (SYS)",
  ["LIS"] = "Action Code: Listing (LIS)",
  ["MWL"] = "Action Code: Market Wide Oi Limit Message (MWL)",
}

nse_nseix_broadcast_nnfbcast_v1_12.action_code.display = function(value)
  return nse_nseix_broadcast_nnfbcast_v1_12.action_code.labels[value] or "Action Code: Unknown("..value..")"
end

-- Dissect: Action Code
nse_nseix_broadcast_nnfbcast_v1_12.action_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.action_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.action_code, range, value, display)

  return offset + length, value
end

-- Alpha Char
nse_nseix_broadcast_nnfbcast_v1_12.alpha_char = {}

-- Size: Alpha Char
nse_nseix_broadcast_nnfbcast_v1_12.alpha_char.size = 2

-- Display: Alpha Char
nse_nseix_broadcast_nnfbcast_v1_12.alpha_char.display = function(value)
  return "Alpha Char: "..value
end

-- Dissect: Alpha Char
nse_nseix_broadcast_nnfbcast_v1_12.alpha_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.alpha_char.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.alpha_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.alpha_char, range, value, display)

  return offset + length, value
end

-- Ask Price
nse_nseix_broadcast_nnfbcast_v1_12.ask_price = {}

-- Size: Ask Price
nse_nseix_broadcast_nnfbcast_v1_12.ask_price.size = 4

-- Display: Ask Price
nse_nseix_broadcast_nnfbcast_v1_12.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nse_nseix_broadcast_nnfbcast_v1_12.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.ask_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Asset Instrument
nse_nseix_broadcast_nnfbcast_v1_12.asset_instrument = {}

-- Size: Asset Instrument
nse_nseix_broadcast_nnfbcast_v1_12.asset_instrument.size = 6

-- Display: Asset Instrument
nse_nseix_broadcast_nnfbcast_v1_12.asset_instrument.display = function(value)
  return "Asset Instrument: "..value
end

-- Dissect: Asset Instrument
nse_nseix_broadcast_nnfbcast_v1_12.asset_instrument.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.asset_instrument.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.asset_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.asset_instrument, range, value, display)

  return offset + length, value
end

-- Asset Name
nse_nseix_broadcast_nnfbcast_v1_12.asset_name = {}

-- Size: Asset Name
nse_nseix_broadcast_nnfbcast_v1_12.asset_name.size = 10

-- Display: Asset Name
nse_nseix_broadcast_nnfbcast_v1_12.asset_name.display = function(value)
  return "Asset Name: "..value
end

-- Dissect: Asset Name
nse_nseix_broadcast_nnfbcast_v1_12.asset_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.asset_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.asset_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.asset_name, range, value, display)

  return offset + length, value
end

-- Asset Token
nse_nseix_broadcast_nnfbcast_v1_12.asset_token = {}

-- Size: Asset Token
nse_nseix_broadcast_nnfbcast_v1_12.asset_token.size = 4

-- Display: Asset Token
nse_nseix_broadcast_nnfbcast_v1_12.asset_token.display = function(value)
  return "Asset Token: "..value
end

-- Dissect: Asset Token
nse_nseix_broadcast_nnfbcast_v1_12.asset_token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.asset_token.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.asset_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.asset_token, range, value, display)

  return offset + length, value
end

-- Auction Number
nse_nseix_broadcast_nnfbcast_v1_12.auction_number = {}

-- Size: Auction Number
nse_nseix_broadcast_nnfbcast_v1_12.auction_number.size = 2

-- Display: Auction Number
nse_nseix_broadcast_nnfbcast_v1_12.auction_number.display = function(value)
  return "Auction Number: "..value
end

-- Dissect: Auction Number
nse_nseix_broadcast_nnfbcast_v1_12.auction_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.auction_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.auction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.auction_number, range, value, display)

  return offset + length, value
end

-- Auction Price
nse_nseix_broadcast_nnfbcast_v1_12.auction_price = {}

-- Size: Auction Price
nse_nseix_broadcast_nnfbcast_v1_12.auction_price.size = 4

-- Display: Auction Price
nse_nseix_broadcast_nnfbcast_v1_12.auction_price.display = function(value)
  return "Auction Price: "..value
end

-- Dissect: Auction Price
nse_nseix_broadcast_nnfbcast_v1_12.auction_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.auction_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.auction_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.auction_price, range, value, display)

  return offset + length, value
end

-- Auction Quantity
nse_nseix_broadcast_nnfbcast_v1_12.auction_quantity = {}

-- Size: Auction Quantity
nse_nseix_broadcast_nnfbcast_v1_12.auction_quantity.size = 4

-- Display: Auction Quantity
nse_nseix_broadcast_nnfbcast_v1_12.auction_quantity.display = function(value)
  return "Auction Quantity: "..value
end

-- Dissect: Auction Quantity
nse_nseix_broadcast_nnfbcast_v1_12.auction_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.auction_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.auction_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.auction_quantity, range, value, display)

  return offset + length, value
end

-- Auction Status
nse_nseix_broadcast_nnfbcast_v1_12.auction_status = {}

-- Size: Auction Status
nse_nseix_broadcast_nnfbcast_v1_12.auction_status.size = 2

-- Display: Auction Status
nse_nseix_broadcast_nnfbcast_v1_12.auction_status.labels = {
  [0] = "Auction Status: Pre Open (0)",
  [1] = "Auction Status: Open (1)",
  [2] = "Auction Status: Closed (2)",
  [3] = "Auction Status: Pre Open Ended (3)",
  [4] = "Auction Status: Postclose (4)",
}

nse_nseix_broadcast_nnfbcast_v1_12.auction_status.display = function(value)
  return nse_nseix_broadcast_nnfbcast_v1_12.auction_status.labels[value] or "Auction Status: Unknown("..value..")"
end

-- Dissect: Auction Status
nse_nseix_broadcast_nnfbcast_v1_12.auction_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.auction_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.auction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Average Trade Price
nse_nseix_broadcast_nnfbcast_v1_12.average_trade_price = {}

-- Size: Average Trade Price
nse_nseix_broadcast_nnfbcast_v1_12.average_trade_price.size = 4

-- Display: Average Trade Price
nse_nseix_broadcast_nnfbcast_v1_12.average_trade_price.display = function(value)
  return "Average Trade Price: "..value
end

-- Dissect: Average Trade Price
nse_nseix_broadcast_nnfbcast_v1_12.average_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.average_trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.average_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.average_trade_price, range, value, display)

  return offset + length, value
end

-- Base Price
nse_nseix_broadcast_nnfbcast_v1_12.base_price = {}

-- Size: Base Price
nse_nseix_broadcast_nnfbcast_v1_12.base_price.size = 4

-- Display: Base Price
nse_nseix_broadcast_nnfbcast_v1_12.base_price.display = function(value)
  return "Base Price: "..value
end

-- Dissect: Base Price
nse_nseix_broadcast_nnfbcast_v1_12.base_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.base_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.base_price, range, value, display)

  return offset + length, value
end

-- Bb Buy Sell Flag
nse_nseix_broadcast_nnfbcast_v1_12.bb_buy_sell_flag = {}

-- Size: Bb Buy Sell Flag
nse_nseix_broadcast_nnfbcast_v1_12.bb_buy_sell_flag.size = 2

-- Display: Bb Buy Sell Flag
nse_nseix_broadcast_nnfbcast_v1_12.bb_buy_sell_flag.display = function(value)
  return "Bb Buy Sell Flag: "..value
end

-- Dissect: Bb Buy Sell Flag
nse_nseix_broadcast_nnfbcast_v1_12.bb_buy_sell_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.bb_buy_sell_flag.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.bb_buy_sell_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bb_buy_sell_flag, range, value, display)

  return offset + length, value
end

-- Bb Total Buy Flag
nse_nseix_broadcast_nnfbcast_v1_12.bb_total_buy_flag = {}

-- Size: Bb Total Buy Flag
nse_nseix_broadcast_nnfbcast_v1_12.bb_total_buy_flag.size = 2

-- Display: Bb Total Buy Flag
nse_nseix_broadcast_nnfbcast_v1_12.bb_total_buy_flag.display = function(value)
  return "Bb Total Buy Flag: "..value
end

-- Dissect: Bb Total Buy Flag
nse_nseix_broadcast_nnfbcast_v1_12.bb_total_buy_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.bb_total_buy_flag.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.bb_total_buy_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bb_total_buy_flag, range, value, display)

  return offset + length, value
end

-- Bb Total Sell Flag
nse_nseix_broadcast_nnfbcast_v1_12.bb_total_sell_flag = {}

-- Size: Bb Total Sell Flag
nse_nseix_broadcast_nnfbcast_v1_12.bb_total_sell_flag.size = 2

-- Display: Bb Total Sell Flag
nse_nseix_broadcast_nnfbcast_v1_12.bb_total_sell_flag.display = function(value)
  return "Bb Total Sell Flag: "..value
end

-- Dissect: Bb Total Sell Flag
nse_nseix_broadcast_nnfbcast_v1_12.bb_total_sell_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.bb_total_sell_flag.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.bb_total_sell_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bb_total_sell_flag, range, value, display)

  return offset + length, value
end

-- Bc Seq No
nse_nseix_broadcast_nnfbcast_v1_12.bc_seq_no = {}

-- Size: Bc Seq No
nse_nseix_broadcast_nnfbcast_v1_12.bc_seq_no.size = 4

-- Display: Bc Seq No
nse_nseix_broadcast_nnfbcast_v1_12.bc_seq_no.display = function(value)
  return "Bc Seq No: "..value
end

-- Dissect: Bc Seq No
nse_nseix_broadcast_nnfbcast_v1_12.bc_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.bc_seq_no.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.bc_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bc_seq_no, range, value, display)

  return offset + length, value
end

-- Bcast Market Type
nse_nseix_broadcast_nnfbcast_v1_12.bcast_market_type = {}

-- Size: Bcast Market Type
nse_nseix_broadcast_nnfbcast_v1_12.bcast_market_type.size = 1

-- Display: Bcast Market Type
nse_nseix_broadcast_nnfbcast_v1_12.bcast_market_type.display = function(value)
  return "Bcast Market Type: "..value
end

-- Dissect: Bcast Market Type
nse_nseix_broadcast_nnfbcast_v1_12.bcast_market_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.bcast_market_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.bcast_market_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bcast_market_type, range, value, display)

  return offset + length, value
end

-- Bcast Reserved
nse_nseix_broadcast_nnfbcast_v1_12.bcast_reserved = {}

-- Size: Bcast Reserved
nse_nseix_broadcast_nnfbcast_v1_12.bcast_reserved.size = 7

-- Display: Bcast Reserved
nse_nseix_broadcast_nnfbcast_v1_12.bcast_reserved.display = function(value)
  return "Bcast Reserved: "..value
end

-- Dissect: Bcast Reserved
nse_nseix_broadcast_nnfbcast_v1_12.bcast_reserved.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.bcast_reserved.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_broadcast_nnfbcast_v1_12.bcast_reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bcast_reserved, range, range:raw(), display)

  return offset + length, value
end

-- Bid Price
nse_nseix_broadcast_nnfbcast_v1_12.bid_price = {}

-- Size: Bid Price
nse_nseix_broadcast_nnfbcast_v1_12.bid_price.size = 4

-- Display: Bid Price
nse_nseix_broadcast_nnfbcast_v1_12.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nse_nseix_broadcast_nnfbcast_v1_12.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.bid_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Board Lot Quantity
nse_nseix_broadcast_nnfbcast_v1_12.board_lot_quantity = {}

-- Size: Board Lot Quantity
nse_nseix_broadcast_nnfbcast_v1_12.board_lot_quantity.size = 4

-- Display: Board Lot Quantity
nse_nseix_broadcast_nnfbcast_v1_12.board_lot_quantity.display = function(value)
  return "Board Lot Quantity: "..value
end

-- Dissect: Board Lot Quantity
nse_nseix_broadcast_nnfbcast_v1_12.board_lot_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.board_lot_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.board_lot_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.board_lot_quantity, range, value, display)

  return offset + length, value
end

-- Book Closure End Date
nse_nseix_broadcast_nnfbcast_v1_12.book_closure_end_date = {}

-- Size: Book Closure End Date
nse_nseix_broadcast_nnfbcast_v1_12.book_closure_end_date.size = 4

-- Dissect: Book Closure End Date
nse_nseix_broadcast_nnfbcast_v1_12.book_closure_end_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.book_closure_end_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.book_closure_end_date
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.book_closure_end_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Book Closure End Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Book Closure Start Date
nse_nseix_broadcast_nnfbcast_v1_12.book_closure_start_date = {}

-- Size: Book Closure Start Date
nse_nseix_broadcast_nnfbcast_v1_12.book_closure_start_date.size = 4

-- Dissect: Book Closure Start Date
nse_nseix_broadcast_nnfbcast_v1_12.book_closure_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.book_closure_start_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.book_closure_start_date
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.book_closure_start_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Book Closure Start Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Book Type
nse_nseix_broadcast_nnfbcast_v1_12.book_type = {}

-- Size: Book Type
nse_nseix_broadcast_nnfbcast_v1_12.book_type.size = 2

-- Display: Book Type
nse_nseix_broadcast_nnfbcast_v1_12.book_type.labels = {
  [1] = "Book Type: Regular Lot Order (1)",
  [2] = "Book Type: Special Terms Order (2)",
  [3] = "Book Type: Stop Loss Or Mit Order (3)",
  [4] = "Book Type: Negotiated Order Or Nlt (4)",
  [5] = "Book Type: Odd Lot Order (5)",
  [6] = "Book Type: Spot Order (6)",
  [7] = "Book Type: Auction Order (7)",
}

nse_nseix_broadcast_nnfbcast_v1_12.book_type.display = function(value)
  return nse_nseix_broadcast_nnfbcast_v1_12.book_type.labels[value] or "Book Type: Unknown("..value..")"
end

-- Dissect: Book Type
nse_nseix_broadcast_nnfbcast_v1_12.book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.book_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.book_type, range, value, display)

  return offset + length, value
end

-- Branch Number
nse_nseix_broadcast_nnfbcast_v1_12.branch_number = {}

-- Size: Branch Number
nse_nseix_broadcast_nnfbcast_v1_12.branch_number.size = 2

-- Display: Branch Number
nse_nseix_broadcast_nnfbcast_v1_12.branch_number.display = function(value)
  return "Branch Number: "..value
end

-- Dissect: Branch Number
nse_nseix_broadcast_nnfbcast_v1_12.branch_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.branch_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.branch_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.branch_number, range, value, display)

  return offset + length, value
end

-- Broadcast Message
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message = {}

-- Size: Broadcast Message
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message.size = 239

-- Display: Broadcast Message
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message.display = function(value)
  return "Broadcast Message: "..value
end

-- Dissect: Broadcast Message
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.broadcast_message, range, value, display)

  return offset + length, value
end

-- Broadcast Message Length
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message_length = {}

-- Size: Broadcast Message Length
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message_length.size = 2

-- Display: Broadcast Message Length
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message_length.display = function(value)
  return "Broadcast Message Length: "..value
end

-- Dissect: Broadcast Message Length
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.broadcast_message_length, range, value, display)

  return offset + length, value
end

-- Broker Code
nse_nseix_broadcast_nnfbcast_v1_12.broker_code = {}

-- Size: Broker Code
nse_nseix_broadcast_nnfbcast_v1_12.broker_code.size = 5

-- Display: Broker Code
nse_nseix_broadcast_nnfbcast_v1_12.broker_code.display = function(value)
  return "Broker Code: "..value
end

-- Dissect: Broker Code
nse_nseix_broadcast_nnfbcast_v1_12.broker_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.broker_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.broker_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.broker_code, range, value, display)

  return offset + length, value
end

-- Broker Number
nse_nseix_broadcast_nnfbcast_v1_12.broker_number = {}

-- Size: Broker Number
nse_nseix_broadcast_nnfbcast_v1_12.broker_number.size = 5

-- Display: Broker Number
nse_nseix_broadcast_nnfbcast_v1_12.broker_number.display = function(value)
  return "Broker Number: "..value
end

-- Dissect: Broker Number
nse_nseix_broadcast_nnfbcast_v1_12.broker_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.broker_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.broker_number, range, value, display)

  return offset + length, value
end

-- Buy Price
nse_nseix_broadcast_nnfbcast_v1_12.buy_price = {}

-- Size: Buy Price
nse_nseix_broadcast_nnfbcast_v1_12.buy_price.size = 4

-- Display: Buy Price
nse_nseix_broadcast_nnfbcast_v1_12.buy_price.display = function(value)
  return "Buy Price: "..value
end

-- Dissect: Buy Price
nse_nseix_broadcast_nnfbcast_v1_12.buy_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.buy_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.buy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.buy_price, range, value, display)

  return offset + length, value
end

-- Buy Volume
nse_nseix_broadcast_nnfbcast_v1_12.buy_volume = {}

-- Size: Buy Volume
nse_nseix_broadcast_nnfbcast_v1_12.buy_volume.size = 4

-- Display: Buy Volume
nse_nseix_broadcast_nnfbcast_v1_12.buy_volume.display = function(value)
  return "Buy Volume: "..value
end

-- Dissect: Buy Volume
nse_nseix_broadcast_nnfbcast_v1_12.buy_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.buy_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.buy_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.buy_volume, range, value, display)

  return offset + length, value
end

-- C Filler
nse_nseix_broadcast_nnfbcast_v1_12.c_filler = {}

-- Size: C Filler
nse_nseix_broadcast_nnfbcast_v1_12.c_filler.size = 1

-- Display: C Filler
nse_nseix_broadcast_nnfbcast_v1_12.c_filler.display = function(value)
  return "C Filler: "..value
end

-- Dissect: C Filler
nse_nseix_broadcast_nnfbcast_v1_12.c_filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.c_filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.c_filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.c_filler, range, value, display)

  return offset + length, value
end

-- Ca Level
nse_nseix_broadcast_nnfbcast_v1_12.ca_level = {}

-- Size: Ca Level
nse_nseix_broadcast_nnfbcast_v1_12.ca_level.size = 2

-- Display: Ca Level
nse_nseix_broadcast_nnfbcast_v1_12.ca_level.display = function(value)
  return "Ca Level: "..value
end

-- Dissect: Ca Level
nse_nseix_broadcast_nnfbcast_v1_12.ca_level.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.ca_level.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.ca_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.ca_level, range, value, display)

  return offset + length, value
end

-- Closing Price
nse_nseix_broadcast_nnfbcast_v1_12.closing_price = {}

-- Size: Closing Price
nse_nseix_broadcast_nnfbcast_v1_12.closing_price.size = 4

-- Display: Closing Price
nse_nseix_broadcast_nnfbcast_v1_12.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
nse_nseix_broadcast_nnfbcast_v1_12.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.closing_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Compression Length
nse_nseix_broadcast_nnfbcast_v1_12.compression_length = {}

-- Size: Compression Length
nse_nseix_broadcast_nnfbcast_v1_12.compression_length.size = 2

-- Display: Compression Length
nse_nseix_broadcast_nnfbcast_v1_12.compression_length.display = function(value)
  return "Compression Length: "..value
end

-- Dissect: Compression Length
nse_nseix_broadcast_nnfbcast_v1_12.compression_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.compression_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.compression_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.compression_length, range, value, display)

  return offset + length, value
end

-- Counter Broker Code
nse_nseix_broadcast_nnfbcast_v1_12.counter_broker_code = {}

-- Size: Counter Broker Code
nse_nseix_broadcast_nnfbcast_v1_12.counter_broker_code.size = 5

-- Display: Counter Broker Code
nse_nseix_broadcast_nnfbcast_v1_12.counter_broker_code.display = function(value)
  return "Counter Broker Code: "..value
end

-- Dissect: Counter Broker Code
nse_nseix_broadcast_nnfbcast_v1_12.counter_broker_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.counter_broker_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.counter_broker_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.counter_broker_code, range, value, display)

  return offset + length, value
end

-- Credit Rating
nse_nseix_broadcast_nnfbcast_v1_12.credit_rating = {}

-- Size: Credit Rating
nse_nseix_broadcast_nnfbcast_v1_12.credit_rating.size = 12

-- Display: Credit Rating
nse_nseix_broadcast_nnfbcast_v1_12.credit_rating.display = function(value)
  return "Credit Rating: "..value
end

-- Dissect: Credit Rating
nse_nseix_broadcast_nnfbcast_v1_12.credit_rating.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.credit_rating.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.credit_rating.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.credit_rating, range, value, display)

  return offset + length, value
end

-- Cumulative Quantity Of Orders
nse_nseix_broadcast_nnfbcast_v1_12.cumulative_quantity_of_orders = {}

-- Size: Cumulative Quantity Of Orders
nse_nseix_broadcast_nnfbcast_v1_12.cumulative_quantity_of_orders.size = 4

-- Display: Cumulative Quantity Of Orders
nse_nseix_broadcast_nnfbcast_v1_12.cumulative_quantity_of_orders.display = function(value)
  return "Cumulative Quantity Of Orders: "..value
end

-- Dissect: Cumulative Quantity Of Orders
nse_nseix_broadcast_nnfbcast_v1_12.cumulative_quantity_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.cumulative_quantity_of_orders.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.cumulative_quantity_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.cumulative_quantity_of_orders, range, value, display)

  return offset + length, value
end

-- Current Oi
nse_nseix_broadcast_nnfbcast_v1_12.current_oi = {}

-- Size: Current Oi
nse_nseix_broadcast_nnfbcast_v1_12.current_oi.size = 4

-- Display: Current Oi
nse_nseix_broadcast_nnfbcast_v1_12.current_oi.display = function(value)
  return "Current Oi: "..value
end

-- Dissect: Current Oi
nse_nseix_broadcast_nnfbcast_v1_12.current_oi.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.current_oi.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.current_oi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.current_oi, range, value, display)

  return offset + length, value
end

-- Day Hi Oi
nse_nseix_broadcast_nnfbcast_v1_12.day_hi_oi = {}

-- Size: Day Hi Oi
nse_nseix_broadcast_nnfbcast_v1_12.day_hi_oi.size = 4

-- Display: Day Hi Oi
nse_nseix_broadcast_nnfbcast_v1_12.day_hi_oi.display = function(value)
  return "Day Hi Oi: "..value
end

-- Dissect: Day Hi Oi
nse_nseix_broadcast_nnfbcast_v1_12.day_hi_oi.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.day_hi_oi.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.day_hi_oi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.day_hi_oi, range, value, display)

  return offset + length, value
end

-- Day High Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_diff_range = {}

-- Size: Day High Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_diff_range.size = 4

-- Display: Day High Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_diff_range.display = function(value)
  return "Day High Price Diff Range: "..value
end

-- Dissect: Day High Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_diff_range.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_diff_range.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_diff_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.day_high_price_diff_range, range, value, display)

  return offset + length, value
end

-- Day High Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_difference = {}

-- Size: Day High Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_difference.size = 4

-- Display: Day High Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_difference.display = function(value)
  return "Day High Price Difference: "..value
end

-- Dissect: Day High Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_difference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_difference.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.day_high_price_difference, range, value, display)

  return offset + length, value
end

-- Day Lo Oi
nse_nseix_broadcast_nnfbcast_v1_12.day_lo_oi = {}

-- Size: Day Lo Oi
nse_nseix_broadcast_nnfbcast_v1_12.day_lo_oi.size = 4

-- Display: Day Lo Oi
nse_nseix_broadcast_nnfbcast_v1_12.day_lo_oi.display = function(value)
  return "Day Lo Oi: "..value
end

-- Dissect: Day Lo Oi
nse_nseix_broadcast_nnfbcast_v1_12.day_lo_oi.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.day_lo_oi.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.day_lo_oi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.day_lo_oi, range, value, display)

  return offset + length, value
end

-- Day Low Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_diff_range = {}

-- Size: Day Low Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_diff_range.size = 4

-- Display: Day Low Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_diff_range.display = function(value)
  return "Day Low Price Diff Range: "..value
end

-- Dissect: Day Low Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_diff_range.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_diff_range.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_diff_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.day_low_price_diff_range, range, value, display)

  return offset + length, value
end

-- Day Low Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_difference = {}

-- Size: Day Low Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_difference.size = 4

-- Display: Day Low Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_difference.display = function(value)
  return "Day Low Price Difference: "..value
end

-- Dissect: Day Low Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_difference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_difference.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.day_low_price_difference, range, value, display)

  return offset + length, value
end

-- Deal Price
nse_nseix_broadcast_nnfbcast_v1_12.deal_price = {}

-- Size: Deal Price
nse_nseix_broadcast_nnfbcast_v1_12.deal_price.size = 4

-- Display: Deal Price
nse_nseix_broadcast_nnfbcast_v1_12.deal_price.display = function(value)
  return "Deal Price: "..value
end

-- Dissect: Deal Price
nse_nseix_broadcast_nnfbcast_v1_12.deal_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.deal_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.deal_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.deal_price, range, value, display)

  return offset + length, value
end

-- Delete Flag
nse_nseix_broadcast_nnfbcast_v1_12.delete_flag = {}

-- Size: Delete Flag
nse_nseix_broadcast_nnfbcast_v1_12.delete_flag.size = 1

-- Display: Delete Flag
nse_nseix_broadcast_nnfbcast_v1_12.delete_flag.labels = {
  ["Y"] = "Delete Flag: Deleted (Y)",
  ["N"] = "Delete Flag: Active (N)",
}

nse_nseix_broadcast_nnfbcast_v1_12.delete_flag.display = function(value)
  return nse_nseix_broadcast_nnfbcast_v1_12.delete_flag.labels[value] or "Delete Flag: Unknown("..value..")"
end

-- Dissect: Delete Flag
nse_nseix_broadcast_nnfbcast_v1_12.delete_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.delete_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.delete_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.delete_flag, range, value, display)

  return offset + length, value
end

-- Domestic Interest Rate
nse_nseix_broadcast_nnfbcast_v1_12.domestic_interest_rate = {}

-- Size: Domestic Interest Rate
nse_nseix_broadcast_nnfbcast_v1_12.domestic_interest_rate.size = 2

-- Display: Domestic Interest Rate
nse_nseix_broadcast_nnfbcast_v1_12.domestic_interest_rate.display = function(value)
  return "Domestic Interest Rate: "..value
end

-- Dissect: Domestic Interest Rate
nse_nseix_broadcast_nnfbcast_v1_12.domestic_interest_rate.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.domestic_interest_rate.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.domestic_interest_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.domestic_interest_rate, range, value, display)

  return offset + length, value
end

-- Error Code
nse_nseix_broadcast_nnfbcast_v1_12.error_code = {}

-- Size: Error Code
nse_nseix_broadcast_nnfbcast_v1_12.error_code.size = 2

-- Display: Error Code
nse_nseix_broadcast_nnfbcast_v1_12.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
nse_nseix_broadcast_nnfbcast_v1_12.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.error_code, range, value, display)

  return offset + length, value
end

-- Exercise End Date
nse_nseix_broadcast_nnfbcast_v1_12.exercise_end_date = {}

-- Size: Exercise End Date
nse_nseix_broadcast_nnfbcast_v1_12.exercise_end_date.size = 4

-- Dissect: Exercise End Date
nse_nseix_broadcast_nnfbcast_v1_12.exercise_end_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.exercise_end_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.exercise_end_date
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.exercise_end_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Exercise End Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Exercise Start Date
nse_nseix_broadcast_nnfbcast_v1_12.exercise_start_date = {}

-- Size: Exercise Start Date
nse_nseix_broadcast_nnfbcast_v1_12.exercise_start_date.size = 4

-- Dissect: Exercise Start Date
nse_nseix_broadcast_nnfbcast_v1_12.exercise_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.exercise_start_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.exercise_start_date
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.exercise_start_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Exercise Start Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Expiry Date
nse_nseix_broadcast_nnfbcast_v1_12.expiry_date = {}

-- Size: Expiry Date
nse_nseix_broadcast_nnfbcast_v1_12.expiry_date.size = 4

-- Dissect: Expiry Date
nse_nseix_broadcast_nnfbcast_v1_12.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.expiry_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.expiry_date
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.expiry_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Expiry Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Expulsion Date
nse_nseix_broadcast_nnfbcast_v1_12.expulsion_date = {}

-- Size: Expulsion Date
nse_nseix_broadcast_nnfbcast_v1_12.expulsion_date.size = 4

-- Dissect: Expulsion Date
nse_nseix_broadcast_nnfbcast_v1_12.expulsion_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.expulsion_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.expulsion_date
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.expulsion_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Expulsion Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Extrinsic Value
nse_nseix_broadcast_nnfbcast_v1_12.extrinsic_value = {}

-- Size: Extrinsic Value
nse_nseix_broadcast_nnfbcast_v1_12.extrinsic_value.size = 4

-- Display: Extrinsic Value
nse_nseix_broadcast_nnfbcast_v1_12.extrinsic_value.display = function(value)
  return "Extrinsic Value: "..value
end

-- Dissect: Extrinsic Value
nse_nseix_broadcast_nnfbcast_v1_12.extrinsic_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.extrinsic_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.extrinsic_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.extrinsic_value, range, value, display)

  return offset + length, value
end

-- Fill Price
nse_nseix_broadcast_nnfbcast_v1_12.fill_price = {}

-- Size: Fill Price
nse_nseix_broadcast_nnfbcast_v1_12.fill_price.size = 4

-- Display: Fill Price
nse_nseix_broadcast_nnfbcast_v1_12.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Dissect: Fill Price
nse_nseix_broadcast_nnfbcast_v1_12.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.fill_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Volume
nse_nseix_broadcast_nnfbcast_v1_12.fill_volume = {}

-- Size: Fill Volume
nse_nseix_broadcast_nnfbcast_v1_12.fill_volume.size = 4

-- Display: Fill Volume
nse_nseix_broadcast_nnfbcast_v1_12.fill_volume.display = function(value)
  return "Fill Volume: "..value
end

-- Dissect: Fill Volume
nse_nseix_broadcast_nnfbcast_v1_12.fill_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.fill_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.fill_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.fill_volume, range, value, display)

  return offset + length, value
end

-- Filler 2
nse_nseix_broadcast_nnfbcast_v1_12.filler_2 = {}

-- Size: Filler 2
nse_nseix_broadcast_nnfbcast_v1_12.filler_2.size = 8

-- Display: Filler 2
nse_nseix_broadcast_nnfbcast_v1_12.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
nse_nseix_broadcast_nnfbcast_v1_12.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.filler_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_broadcast_nnfbcast_v1_12.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.filler_2, range, range:raw(), display)

  return offset + length, value
end

-- Final
nse_nseix_broadcast_nnfbcast_v1_12.final = {}

-- Size: Final
nse_nseix_broadcast_nnfbcast_v1_12.final.size = 1

-- Display: Final
nse_nseix_broadcast_nnfbcast_v1_12.final.display = function(value)
  return "Final: "..value
end

-- Dissect: Final
nse_nseix_broadcast_nnfbcast_v1_12.final.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.final.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.final.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.final, range, value, display)

  return offset + length, value
end

-- Foreign Interest Rate
nse_nseix_broadcast_nnfbcast_v1_12.foreign_interest_rate = {}

-- Size: Foreign Interest Rate
nse_nseix_broadcast_nnfbcast_v1_12.foreign_interest_rate.size = 2

-- Display: Foreign Interest Rate
nse_nseix_broadcast_nnfbcast_v1_12.foreign_interest_rate.display = function(value)
  return "Foreign Interest Rate: "..value
end

-- Dissect: Foreign Interest Rate
nse_nseix_broadcast_nnfbcast_v1_12.foreign_interest_rate.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.foreign_interest_rate.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.foreign_interest_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.foreign_interest_rate, range, value, display)

  return offset + length, value
end

-- Freeze Quantity
nse_nseix_broadcast_nnfbcast_v1_12.freeze_quantity = {}

-- Size: Freeze Quantity
nse_nseix_broadcast_nnfbcast_v1_12.freeze_quantity.size = 4

-- Display: Freeze Quantity
nse_nseix_broadcast_nnfbcast_v1_12.freeze_quantity.display = function(value)
  return "Freeze Quantity: "..value
end

-- Dissect: Freeze Quantity
nse_nseix_broadcast_nnfbcast_v1_12.freeze_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.freeze_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.freeze_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.freeze_quantity, range, value, display)

  return offset + length, value
end

-- High Exec Band
nse_nseix_broadcast_nnfbcast_v1_12.high_exec_band = {}

-- Size: High Exec Band
nse_nseix_broadcast_nnfbcast_v1_12.high_exec_band.size = 4

-- Display: High Exec Band
nse_nseix_broadcast_nnfbcast_v1_12.high_exec_band.display = function(value)
  return "High Exec Band: "..value
end

-- Dissect: High Exec Band
nse_nseix_broadcast_nnfbcast_v1_12.high_exec_band.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.high_exec_band.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.high_exec_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.high_exec_band, range, value, display)

  return offset + length, value
end

-- High Price
nse_nseix_broadcast_nnfbcast_v1_12.high_price = {}

-- Size: High Price
nse_nseix_broadcast_nnfbcast_v1_12.high_price.size = 4

-- Display: High Price
nse_nseix_broadcast_nnfbcast_v1_12.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nse_nseix_broadcast_nnfbcast_v1_12.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.high_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.high_price, range, value, display)

  return offset + length, value
end

-- High Price Range
nse_nseix_broadcast_nnfbcast_v1_12.high_price_range = {}

-- Size: High Price Range
nse_nseix_broadcast_nnfbcast_v1_12.high_price_range.size = 4

-- Display: High Price Range
nse_nseix_broadcast_nnfbcast_v1_12.high_price_range.display = function(value)
  return "High Price Range: "..value
end

-- Dissect: High Price Range
nse_nseix_broadcast_nnfbcast_v1_12.high_price_range.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.high_price_range.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.high_price_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.high_price_range, range, value, display)

  return offset + length, value
end

-- Ideal Price
nse_nseix_broadcast_nnfbcast_v1_12.ideal_price = {}

-- Size: Ideal Price
nse_nseix_broadcast_nnfbcast_v1_12.ideal_price.size = 4

-- Display: Ideal Price
nse_nseix_broadcast_nnfbcast_v1_12.ideal_price.display = function(value)
  return "Ideal Price: "..value
end

-- Dissect: Ideal Price
nse_nseix_broadcast_nnfbcast_v1_12.ideal_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.ideal_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.ideal_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.ideal_price, range, value, display)

  return offset + length, value
end

-- Impact Cost
nse_nseix_broadcast_nnfbcast_v1_12.impact_cost = {}

-- Size: Impact Cost
nse_nseix_broadcast_nnfbcast_v1_12.impact_cost.size = 4

-- Display: Impact Cost
nse_nseix_broadcast_nnfbcast_v1_12.impact_cost.display = function(value)
  return "Impact Cost: "..value
end

-- Dissect: Impact Cost
nse_nseix_broadcast_nnfbcast_v1_12.impact_cost.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.impact_cost.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.impact_cost.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.impact_cost, range, value, display)

  return offset + length, value
end

-- Initiator Price
nse_nseix_broadcast_nnfbcast_v1_12.initiator_price = {}

-- Size: Initiator Price
nse_nseix_broadcast_nnfbcast_v1_12.initiator_price.size = 4

-- Display: Initiator Price
nse_nseix_broadcast_nnfbcast_v1_12.initiator_price.display = function(value)
  return "Initiator Price: "..value
end

-- Dissect: Initiator Price
nse_nseix_broadcast_nnfbcast_v1_12.initiator_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.initiator_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.initiator_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.initiator_price, range, value, display)

  return offset + length, value
end

-- Initiator Quantity
nse_nseix_broadcast_nnfbcast_v1_12.initiator_quantity = {}

-- Size: Initiator Quantity
nse_nseix_broadcast_nnfbcast_v1_12.initiator_quantity.size = 4

-- Display: Initiator Quantity
nse_nseix_broadcast_nnfbcast_v1_12.initiator_quantity.display = function(value)
  return "Initiator Quantity: "..value
end

-- Dissect: Initiator Quantity
nse_nseix_broadcast_nnfbcast_v1_12.initiator_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.initiator_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.initiator_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.initiator_quantity, range, value, display)

  return offset + length, value
end

-- Initiator Type
nse_nseix_broadcast_nnfbcast_v1_12.initiator_type = {}

-- Size: Initiator Type
nse_nseix_broadcast_nnfbcast_v1_12.initiator_type.size = 2

-- Display: Initiator Type
nse_nseix_broadcast_nnfbcast_v1_12.initiator_type.display = function(value)
  return "Initiator Type: "..value
end

-- Dissect: Initiator Type
nse_nseix_broadcast_nnfbcast_v1_12.initiator_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.initiator_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.initiator_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.initiator_type, range, value, display)

  return offset + length, value
end

-- Instrument
nse_nseix_broadcast_nnfbcast_v1_12.instrument = {}

-- Size: Instrument
nse_nseix_broadcast_nnfbcast_v1_12.instrument.size = 6

-- Display: Instrument
nse_nseix_broadcast_nnfbcast_v1_12.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
nse_nseix_broadcast_nnfbcast_v1_12.instrument.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.instrument.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument, range, value, display)

  return offset + length, value
end

-- Instrument Description
nse_nseix_broadcast_nnfbcast_v1_12.instrument_description = {}

-- Size: Instrument Description
nse_nseix_broadcast_nnfbcast_v1_12.instrument_description.size = 26

-- Display: Instrument Description
nse_nseix_broadcast_nnfbcast_v1_12.instrument_description.display = function(value)
  return "Instrument Description: "..value
end

-- Dissect: Instrument Description
nse_nseix_broadcast_nnfbcast_v1_12.instrument_description.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.instrument_description.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.instrument_description.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument_description, range, value, display)

  return offset + length, value
end

-- Instrument Id
nse_nseix_broadcast_nnfbcast_v1_12.instrument_id = {}

-- Size: Instrument Id
nse_nseix_broadcast_nnfbcast_v1_12.instrument_id.size = 2

-- Display: Instrument Id
nse_nseix_broadcast_nnfbcast_v1_12.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
nse_nseix_broadcast_nnfbcast_v1_12.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.instrument_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Name
nse_nseix_broadcast_nnfbcast_v1_12.instrument_name = {}

-- Size: Instrument Name
nse_nseix_broadcast_nnfbcast_v1_12.instrument_name.size = 6

-- Display: Instrument Name
nse_nseix_broadcast_nnfbcast_v1_12.instrument_name.display = function(value)
  return "Instrument Name: "..value
end

-- Dissect: Instrument Name
nse_nseix_broadcast_nnfbcast_v1_12.instrument_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.instrument_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.instrument_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument_name, range, value, display)

  return offset + length, value
end

-- Instrument Type
nse_nseix_broadcast_nnfbcast_v1_12.instrument_type = {}

-- Size: Instrument Type
nse_nseix_broadcast_nnfbcast_v1_12.instrument_type.size = 6

-- Display: Instrument Type
nse_nseix_broadcast_nnfbcast_v1_12.instrument_type.display = function(value)
  return "Instrument Type: "..value
end

-- Dissect: Instrument Type
nse_nseix_broadcast_nnfbcast_v1_12.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.instrument_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Instrument Update Date Time
nse_nseix_broadcast_nnfbcast_v1_12.instrument_update_date_time = {}

-- Size: Instrument Update Date Time
nse_nseix_broadcast_nnfbcast_v1_12.instrument_update_date_time.size = 4

-- Dissect: Instrument Update Date Time
nse_nseix_broadcast_nnfbcast_v1_12.instrument_update_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.instrument_update_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument_update_date_time
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument_update_date_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Instrument Update Date Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Interest Payment Date
nse_nseix_broadcast_nnfbcast_v1_12.interest_payment_date = {}

-- Size: Interest Payment Date
nse_nseix_broadcast_nnfbcast_v1_12.interest_payment_date.size = 4

-- Dissect: Interest Payment Date
nse_nseix_broadcast_nnfbcast_v1_12.interest_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.interest_payment_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.interest_payment_date
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.interest_payment_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Interest Payment Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Intrinsic Value
nse_nseix_broadcast_nnfbcast_v1_12.intrinsic_value = {}

-- Size: Intrinsic Value
nse_nseix_broadcast_nnfbcast_v1_12.intrinsic_value.size = 4

-- Display: Intrinsic Value
nse_nseix_broadcast_nnfbcast_v1_12.intrinsic_value.display = function(value)
  return "Intrinsic Value: "..value
end

-- Dissect: Intrinsic Value
nse_nseix_broadcast_nnfbcast_v1_12.intrinsic_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.intrinsic_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.intrinsic_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.intrinsic_value, range, value, display)

  return offset + length, value
end

-- Issue Maturity Date
nse_nseix_broadcast_nnfbcast_v1_12.issue_maturity_date = {}

-- Size: Issue Maturity Date
nse_nseix_broadcast_nnfbcast_v1_12.issue_maturity_date.size = 4

-- Dissect: Issue Maturity Date
nse_nseix_broadcast_nnfbcast_v1_12.issue_maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.issue_maturity_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.issue_maturity_date
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.issue_maturity_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Issue Maturity Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Issue Rate
nse_nseix_broadcast_nnfbcast_v1_12.issue_rate = {}

-- Size: Issue Rate
nse_nseix_broadcast_nnfbcast_v1_12.issue_rate.size = 2

-- Display: Issue Rate
nse_nseix_broadcast_nnfbcast_v1_12.issue_rate.display = function(value)
  return "Issue Rate: "..value
end

-- Dissect: Issue Rate
nse_nseix_broadcast_nnfbcast_v1_12.issue_rate.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.issue_rate.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.issue_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.issue_rate, range, value, display)

  return offset + length, value
end

-- Issue Start Date
nse_nseix_broadcast_nnfbcast_v1_12.issue_start_date = {}

-- Size: Issue Start Date
nse_nseix_broadcast_nnfbcast_v1_12.issue_start_date.size = 4

-- Dissect: Issue Start Date
nse_nseix_broadcast_nnfbcast_v1_12.issue_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.issue_start_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.issue_start_date
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.issue_start_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Issue Start Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Issued Capital
nse_nseix_broadcast_nnfbcast_v1_12.issued_capital = {}

-- Size: Issued Capital
nse_nseix_broadcast_nnfbcast_v1_12.issued_capital.size = 8

-- Display: Issued Capital
nse_nseix_broadcast_nnfbcast_v1_12.issued_capital.display = function(value)
  return "Issued Capital: "..string.format("%.0f", value)
end

-- Dissect: Issued Capital
nse_nseix_broadcast_nnfbcast_v1_12.issued_capital.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.issued_capital.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.issued_capital.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.issued_capital, range, value, display)

  return offset + length, value
end

-- Last Active Time
nse_nseix_broadcast_nnfbcast_v1_12.last_active_time = {}

-- Size: Last Active Time
nse_nseix_broadcast_nnfbcast_v1_12.last_active_time.size = 4

-- Dissect: Last Active Time
nse_nseix_broadcast_nnfbcast_v1_12.last_active_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.last_active_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_active_time
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_active_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Active Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Last Trade Price
nse_nseix_broadcast_nnfbcast_v1_12.last_trade_price = {}

-- Size: Last Trade Price
nse_nseix_broadcast_nnfbcast_v1_12.last_trade_price.size = 4

-- Display: Last Trade Price
nse_nseix_broadcast_nnfbcast_v1_12.last_trade_price.display = function(value)
  return "Last Trade Price: "..value
end

-- Dissect: Last Trade Price
nse_nseix_broadcast_nnfbcast_v1_12.last_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.last_trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.last_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_trade_price, range, value, display)

  return offset + length, value
end

-- Last Trade Quantity
nse_nseix_broadcast_nnfbcast_v1_12.last_trade_quantity = {}

-- Size: Last Trade Quantity
nse_nseix_broadcast_nnfbcast_v1_12.last_trade_quantity.size = 4

-- Display: Last Trade Quantity
nse_nseix_broadcast_nnfbcast_v1_12.last_trade_quantity.display = function(value)
  return "Last Trade Quantity: "..value
end

-- Dissect: Last Trade Quantity
nse_nseix_broadcast_nnfbcast_v1_12.last_trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.last_trade_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.last_trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_trade_quantity, range, value, display)

  return offset + length, value
end

-- Last Trade Time
nse_nseix_broadcast_nnfbcast_v1_12.last_trade_time = {}

-- Size: Last Trade Time
nse_nseix_broadcast_nnfbcast_v1_12.last_trade_time.size = 4

-- Dissect: Last Trade Time
nse_nseix_broadcast_nnfbcast_v1_12.last_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.last_trade_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_trade_time
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_trade_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Trade Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Last Traded Price
nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price = {}

-- Size: Last Traded Price
nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price.size = 4

-- Display: Last Traded Price
nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price.display = function(value)
  return "Last Traded Price: "..value
end

-- Dissect: Last Traded Price
nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_traded_price, range, value, display)

  return offset + length, value
end

-- Last Traded Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price_difference = {}

-- Size: Last Traded Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price_difference.size = 4

-- Display: Last Traded Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price_difference.display = function(value)
  return "Last Traded Price Difference: "..value
end

-- Dissect: Last Traded Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price_difference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price_difference.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_traded_price_difference, range, value, display)

  return offset + length, value
end

-- Last Update Time
nse_nseix_broadcast_nnfbcast_v1_12.last_update_time = {}

-- Size: Last Update Time
nse_nseix_broadcast_nnfbcast_v1_12.last_update_time.size = 4

-- Dissect: Last Update Time
nse_nseix_broadcast_nnfbcast_v1_12.last_update_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.last_update_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_update_time
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_update_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Last Update Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Listing Date
nse_nseix_broadcast_nnfbcast_v1_12.listing_date = {}

-- Size: Listing Date
nse_nseix_broadcast_nnfbcast_v1_12.listing_date.size = 4

-- Dissect: Listing Date
nse_nseix_broadcast_nnfbcast_v1_12.listing_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.listing_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.listing_date
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.listing_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Listing Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Local Update Date Time
nse_nseix_broadcast_nnfbcast_v1_12.local_update_date_time = {}

-- Size: Local Update Date Time
nse_nseix_broadcast_nnfbcast_v1_12.local_update_date_time.size = 4

-- Dissect: Local Update Date Time
nse_nseix_broadcast_nnfbcast_v1_12.local_update_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.local_update_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.local_update_date_time
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.local_update_date_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Local Update Date Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Log Time
nse_nseix_broadcast_nnfbcast_v1_12.log_time = {}

-- Size: Log Time
nse_nseix_broadcast_nnfbcast_v1_12.log_time.size = 4

-- Dissect: Log Time
nse_nseix_broadcast_nnfbcast_v1_12.log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.log_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.log_time
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.log_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Log Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Low Exec Band
nse_nseix_broadcast_nnfbcast_v1_12.low_exec_band = {}

-- Size: Low Exec Band
nse_nseix_broadcast_nnfbcast_v1_12.low_exec_band.size = 4

-- Display: Low Exec Band
nse_nseix_broadcast_nnfbcast_v1_12.low_exec_band.display = function(value)
  return "Low Exec Band: "..value
end

-- Dissect: Low Exec Band
nse_nseix_broadcast_nnfbcast_v1_12.low_exec_band.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.low_exec_band.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.low_exec_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.low_exec_band, range, value, display)

  return offset + length, value
end

-- Low Price
nse_nseix_broadcast_nnfbcast_v1_12.low_price = {}

-- Size: Low Price
nse_nseix_broadcast_nnfbcast_v1_12.low_price.size = 4

-- Display: Low Price
nse_nseix_broadcast_nnfbcast_v1_12.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nse_nseix_broadcast_nnfbcast_v1_12.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.low_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.low_price, range, value, display)

  return offset + length, value
end

-- Low Price Range
nse_nseix_broadcast_nnfbcast_v1_12.low_price_range = {}

-- Size: Low Price Range
nse_nseix_broadcast_nnfbcast_v1_12.low_price_range.size = 4

-- Display: Low Price Range
nse_nseix_broadcast_nnfbcast_v1_12.low_price_range.display = function(value)
  return "Low Price Range: "..value
end

-- Dissect: Low Price Range
nse_nseix_broadcast_nnfbcast_v1_12.low_price_range.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.low_price_range.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.low_price_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.low_price_range, range, value, display)

  return offset + length, value
end

-- Margin Percentage
nse_nseix_broadcast_nnfbcast_v1_12.margin_percentage = {}

-- Size: Margin Percentage
nse_nseix_broadcast_nnfbcast_v1_12.margin_percentage.size = 4

-- Display: Margin Percentage
nse_nseix_broadcast_nnfbcast_v1_12.margin_percentage.display = function(value)
  return "Margin Percentage: "..value
end

-- Dissect: Margin Percentage
nse_nseix_broadcast_nnfbcast_v1_12.margin_percentage.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.margin_percentage.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.margin_percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.margin_percentage, range, value, display)

  return offset + length, value
end

-- Market Buy Price
nse_nseix_broadcast_nnfbcast_v1_12.market_buy_price = {}

-- Size: Market Buy Price
nse_nseix_broadcast_nnfbcast_v1_12.market_buy_price.size = 4

-- Display: Market Buy Price
nse_nseix_broadcast_nnfbcast_v1_12.market_buy_price.display = function(value)
  return "Market Buy Price: "..value
end

-- Dissect: Market Buy Price
nse_nseix_broadcast_nnfbcast_v1_12.market_buy_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.market_buy_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.market_buy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_buy_price, range, value, display)

  return offset + length, value
end

-- Market Sell Price
nse_nseix_broadcast_nnfbcast_v1_12.market_sell_price = {}

-- Size: Market Sell Price
nse_nseix_broadcast_nnfbcast_v1_12.market_sell_price.size = 4

-- Display: Market Sell Price
nse_nseix_broadcast_nnfbcast_v1_12.market_sell_price.display = function(value)
  return "Market Sell Price: "..value
end

-- Dissect: Market Sell Price
nse_nseix_broadcast_nnfbcast_v1_12.market_sell_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.market_sell_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.market_sell_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_sell_price, range, value, display)

  return offset + length, value
end

-- Market Status Broadcast Message
nse_nseix_broadcast_nnfbcast_v1_12.market_status_broadcast_message = {}

-- Size: Market Status Broadcast Message
nse_nseix_broadcast_nnfbcast_v1_12.market_status_broadcast_message.size = 234

-- Display: Market Status Broadcast Message
nse_nseix_broadcast_nnfbcast_v1_12.market_status_broadcast_message.display = function(value)
  return "Market Status Broadcast Message: "..value
end

-- Dissect: Market Status Broadcast Message
nse_nseix_broadcast_nnfbcast_v1_12.market_status_broadcast_message.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.market_status_broadcast_message.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.market_status_broadcast_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_status_broadcast_message, range, value, display)

  return offset + length, value
end

-- Market Type
nse_nseix_broadcast_nnfbcast_v1_12.market_type = {}

-- Size: Market Type
nse_nseix_broadcast_nnfbcast_v1_12.market_type.size = 2

-- Display: Market Type
nse_nseix_broadcast_nnfbcast_v1_12.market_type.labels = {
  [1] = "Market Type: Normal Market (1)",
  [2] = "Market Type: Odd Lot Market (2)",
  [3] = "Market Type: Spot Market (3)",
  [4] = "Market Type: Auction Market (4)",
}

nse_nseix_broadcast_nnfbcast_v1_12.market_type.display = function(value)
  return nse_nseix_broadcast_nnfbcast_v1_12.market_type.labels[value] or "Market Type: Unknown("..value..")"
end

-- Dissect: Market Type
nse_nseix_broadcast_nnfbcast_v1_12.market_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.market_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.market_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_type, range, value, display)

  return offset + length, value
end

-- Mbp Buy
nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy = {}

-- Size: Mbp Buy
nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy.size = 2

-- Display: Mbp Buy
nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy.display = function(value)
  return "Mbp Buy: "..value
end

-- Dissect: Mbp Buy
nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_buy, range, value, display)

  return offset + length, value
end

-- Mbp Sell
nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell = {}

-- Size: Mbp Sell
nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell.size = 2

-- Display: Mbp Sell
nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell.display = function(value)
  return "Mbp Sell: "..value
end

-- Dissect: Mbp Sell
nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_sell, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nseix_broadcast_nnfbcast_v1_12.message_length = {}

-- Size: Message Length
nse_nseix_broadcast_nnfbcast_v1_12.message_length.size = 2

-- Display: Message Length
nse_nseix_broadcast_nnfbcast_v1_12.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nseix_broadcast_nnfbcast_v1_12.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.message_length, range, value, display)

  return offset + length, value
end

-- Min Fill Qty
nse_nseix_broadcast_nnfbcast_v1_12.min_fill_qty = {}

-- Size: Min Fill Qty
nse_nseix_broadcast_nnfbcast_v1_12.min_fill_qty.size = 4

-- Display: Min Fill Qty
nse_nseix_broadcast_nnfbcast_v1_12.min_fill_qty.display = function(value)
  return "Min Fill Qty: "..value
end

-- Dissect: Min Fill Qty
nse_nseix_broadcast_nnfbcast_v1_12.min_fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.min_fill_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.min_fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.min_fill_qty, range, value, display)

  return offset + length, value
end

-- Minimum Lot Quantity
nse_nseix_broadcast_nnfbcast_v1_12.minimum_lot_quantity = {}

-- Size: Minimum Lot Quantity
nse_nseix_broadcast_nnfbcast_v1_12.minimum_lot_quantity.size = 4

-- Display: Minimum Lot Quantity
nse_nseix_broadcast_nnfbcast_v1_12.minimum_lot_quantity.display = function(value)
  return "Minimum Lot Quantity: "..value
end

-- Dissect: Minimum Lot Quantity
nse_nseix_broadcast_nnfbcast_v1_12.minimum_lot_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.minimum_lot_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.minimum_lot_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.minimum_lot_quantity, range, value, display)

  return offset + length, value
end

-- Msg Count
nse_nseix_broadcast_nnfbcast_v1_12.msg_count = {}

-- Size: Msg Count
nse_nseix_broadcast_nnfbcast_v1_12.msg_count.size = 4

-- Display: Msg Count
nse_nseix_broadcast_nnfbcast_v1_12.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
nse_nseix_broadcast_nnfbcast_v1_12.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.msg_count.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Multiplier
nse_nseix_broadcast_nnfbcast_v1_12.multiplier = {}

-- Size: Multiplier
nse_nseix_broadcast_nnfbcast_v1_12.multiplier.size = 4

-- Display: Multiplier
nse_nseix_broadcast_nnfbcast_v1_12.multiplier.display = function(value)
  return "Multiplier: "..value
end

-- Dissect: Multiplier
nse_nseix_broadcast_nnfbcast_v1_12.multiplier.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.multiplier.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.multiplier, range, value, display)

  return offset + length, value
end

-- Name
nse_nseix_broadcast_nnfbcast_v1_12.name = {}

-- Size: Name
nse_nseix_broadcast_nnfbcast_v1_12.name.size = 25

-- Display: Name
nse_nseix_broadcast_nnfbcast_v1_12.name.display = function(value)
  return "Name: "..value
end

-- Dissect: Name
nse_nseix_broadcast_nnfbcast_v1_12.name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.name, range, value, display)

  return offset + length, value
end

-- Net Change Indicator
nse_nseix_broadcast_nnfbcast_v1_12.net_change_indicator = {}

-- Size: Net Change Indicator
nse_nseix_broadcast_nnfbcast_v1_12.net_change_indicator.size = 1

-- Display: Net Change Indicator
nse_nseix_broadcast_nnfbcast_v1_12.net_change_indicator.labels = {
  ["+"] = "Net Change Indicator: Increase (+)",
  ["-"] = "Net Change Indicator: Decrease (-)",
}

nse_nseix_broadcast_nnfbcast_v1_12.net_change_indicator.display = function(value)
  return nse_nseix_broadcast_nnfbcast_v1_12.net_change_indicator.labels[value] or "Net Change Indicator: Unknown("..value..")"
end

-- Dissect: Net Change Indicator
nse_nseix_broadcast_nnfbcast_v1_12.net_change_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.net_change_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.net_change_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.net_change_indicator, range, value, display)

  return offset + length, value
end

-- Net Id
nse_nseix_broadcast_nnfbcast_v1_12.net_id = {}

-- Size: Net Id
nse_nseix_broadcast_nnfbcast_v1_12.net_id.size = 2

-- Display: Net Id
nse_nseix_broadcast_nnfbcast_v1_12.net_id.display = function(value)
  return "Net Id: "..value
end

-- Dissect: Net Id
nse_nseix_broadcast_nnfbcast_v1_12.net_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.net_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.net_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.net_id, range, value, display)

  return offset + length, value
end

-- Net Price Change From Closing Price
nse_nseix_broadcast_nnfbcast_v1_12.net_price_change_from_closing_price = {}

-- Size: Net Price Change From Closing Price
nse_nseix_broadcast_nnfbcast_v1_12.net_price_change_from_closing_price.size = 4

-- Display: Net Price Change From Closing Price
nse_nseix_broadcast_nnfbcast_v1_12.net_price_change_from_closing_price.display = function(value)
  return "Net Price Change From Closing Price: "..value
end

-- Dissect: Net Price Change From Closing Price
nse_nseix_broadcast_nnfbcast_v1_12.net_price_change_from_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.net_price_change_from_closing_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.net_price_change_from_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.net_price_change_from_closing_price, range, value, display)

  return offset + length, value
end

-- No Delivery End Date
nse_nseix_broadcast_nnfbcast_v1_12.no_delivery_end_date = {}

-- Size: No Delivery End Date
nse_nseix_broadcast_nnfbcast_v1_12.no_delivery_end_date.size = 4

-- Dissect: No Delivery End Date
nse_nseix_broadcast_nnfbcast_v1_12.no_delivery_end_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.no_delivery_end_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.no_delivery_end_date
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.no_delivery_end_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("No Delivery End Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- No Delivery Start Date
nse_nseix_broadcast_nnfbcast_v1_12.no_delivery_start_date = {}

-- Size: No Delivery Start Date
nse_nseix_broadcast_nnfbcast_v1_12.no_delivery_start_date.size = 4

-- Dissect: No Delivery Start Date
nse_nseix_broadcast_nnfbcast_v1_12.no_delivery_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.no_delivery_start_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.no_delivery_start_date
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.no_delivery_start_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("No Delivery Start Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- No Of Orders
nse_nseix_broadcast_nnfbcast_v1_12.no_of_orders = {}

-- Size: No Of Orders
nse_nseix_broadcast_nnfbcast_v1_12.no_of_orders.size = 2

-- Display: No Of Orders
nse_nseix_broadcast_nnfbcast_v1_12.no_of_orders.display = function(value)
  return "No Of Orders: "..value
end

-- Dissect: No Of Orders
nse_nseix_broadcast_nnfbcast_v1_12.no_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.no_of_orders.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.no_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.no_of_orders, range, value, display)

  return offset + length, value
end

-- No Of Records
nse_nseix_broadcast_nnfbcast_v1_12.no_of_records = {}

-- Size: No Of Records
nse_nseix_broadcast_nnfbcast_v1_12.no_of_records.size = 2

-- Display: No Of Records
nse_nseix_broadcast_nnfbcast_v1_12.no_of_records.display = function(value)
  return "No Of Records: "..value
end

-- Dissect: No Of Records
nse_nseix_broadcast_nnfbcast_v1_12.no_of_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.no_of_records.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.no_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.no_of_records, range, value, display)

  return offset + length, value
end

-- No Orders
nse_nseix_broadcast_nnfbcast_v1_12.no_orders = {}

-- Size: No Orders
nse_nseix_broadcast_nnfbcast_v1_12.no_orders.size = 2

-- Display: No Orders
nse_nseix_broadcast_nnfbcast_v1_12.no_orders.display = function(value)
  return "No Orders: "..value
end

-- Dissect: No Orders
nse_nseix_broadcast_nnfbcast_v1_12.no_orders.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.no_orders.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.no_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.no_orders, range, value, display)

  return offset + length, value
end

-- Number Of Orders
nse_nseix_broadcast_nnfbcast_v1_12.number_of_orders = {}

-- Size: Number Of Orders
nse_nseix_broadcast_nnfbcast_v1_12.number_of_orders.size = 2

-- Display: Number Of Orders
nse_nseix_broadcast_nnfbcast_v1_12.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
nse_nseix_broadcast_nnfbcast_v1_12.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Number Of Packets
nse_nseix_broadcast_nnfbcast_v1_12.number_of_packets = {}

-- Size: Number Of Packets
nse_nseix_broadcast_nnfbcast_v1_12.number_of_packets.size = 2

-- Display: Number Of Packets
nse_nseix_broadcast_nnfbcast_v1_12.number_of_packets.display = function(value)
  return "Number Of Packets: "..value
end

-- Dissect: Number Of Packets
nse_nseix_broadcast_nnfbcast_v1_12.number_of_packets.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.number_of_packets.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.number_of_packets.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.number_of_packets, range, value, display)

  return offset + length, value
end

-- Number Of Records
nse_nseix_broadcast_nnfbcast_v1_12.number_of_records = {}

-- Size: Number Of Records
nse_nseix_broadcast_nnfbcast_v1_12.number_of_records.size = 2

-- Display: Number Of Records
nse_nseix_broadcast_nnfbcast_v1_12.number_of_records.display = function(value)
  return "Number Of Records: "..value
end

-- Dissect: Number Of Records
nse_nseix_broadcast_nnfbcast_v1_12.number_of_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.number_of_records.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.number_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.number_of_records, range, value, display)

  return offset + length, value
end

-- Op High Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.op_high_price_diff_range = {}

-- Size: Op High Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.op_high_price_diff_range.size = 4

-- Display: Op High Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.op_high_price_diff_range.display = function(value)
  return "Op High Price Diff Range: "..value
end

-- Dissect: Op High Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.op_high_price_diff_range.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.op_high_price_diff_range.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.op_high_price_diff_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.op_high_price_diff_range, range, value, display)

  return offset + length, value
end

-- Op Low Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.op_low_price_diff_range = {}

-- Size: Op Low Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.op_low_price_diff_range.size = 4

-- Display: Op Low Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.op_low_price_diff_range.display = function(value)
  return "Op Low Price Diff Range: "..value
end

-- Dissect: Op Low Price Diff Range
nse_nseix_broadcast_nnfbcast_v1_12.op_low_price_diff_range.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.op_low_price_diff_range.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.op_low_price_diff_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.op_low_price_diff_range, range, value, display)

  return offset + length, value
end

-- Open Interest
nse_nseix_broadcast_nnfbcast_v1_12.open_interest = {}

-- Size: Open Interest
nse_nseix_broadcast_nnfbcast_v1_12.open_interest.size = 4

-- Display: Open Interest
nse_nseix_broadcast_nnfbcast_v1_12.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
nse_nseix_broadcast_nnfbcast_v1_12.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.open_interest.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Open Price
nse_nseix_broadcast_nnfbcast_v1_12.open_price = {}

-- Size: Open Price
nse_nseix_broadcast_nnfbcast_v1_12.open_price.size = 4

-- Display: Open Price
nse_nseix_broadcast_nnfbcast_v1_12.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
nse_nseix_broadcast_nnfbcast_v1_12.open_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.open_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.open_price, range, value, display)

  return offset + length, value
end

-- Open Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.open_price_difference = {}

-- Size: Open Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.open_price_difference.size = 4

-- Display: Open Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.open_price_difference.display = function(value)
  return "Open Price Difference: "..value
end

-- Dissect: Open Price Difference
nse_nseix_broadcast_nnfbcast_v1_12.open_price_difference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.open_price_difference.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.open_price_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.open_price_difference, range, value, display)

  return offset + length, value
end

-- Option Type
nse_nseix_broadcast_nnfbcast_v1_12.option_type = {}

-- Size: Option Type
nse_nseix_broadcast_nnfbcast_v1_12.option_type.size = 2

-- Display: Option Type
nse_nseix_broadcast_nnfbcast_v1_12.option_type.display = function(value)
  return "Option Type: "..value
end

-- Dissect: Option Type
nse_nseix_broadcast_nnfbcast_v1_12.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.option_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Count
nse_nseix_broadcast_nnfbcast_v1_12.order_count = {}

-- Size: Order Count
nse_nseix_broadcast_nnfbcast_v1_12.order_count.size = 4

-- Display: Order Count
nse_nseix_broadcast_nnfbcast_v1_12.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
nse_nseix_broadcast_nnfbcast_v1_12.order_count.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.order_count.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.order_count, range, value, display)

  return offset + length, value
end

-- Order Price
nse_nseix_broadcast_nnfbcast_v1_12.order_price = {}

-- Size: Order Price
nse_nseix_broadcast_nnfbcast_v1_12.order_price.size = 4

-- Display: Order Price
nse_nseix_broadcast_nnfbcast_v1_12.order_price.display = function(value)
  return "Order Price: "..value
end

-- Dissect: Order Price
nse_nseix_broadcast_nnfbcast_v1_12.order_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.order_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.order_price, range, value, display)

  return offset + length, value
end

-- Order Quantity
nse_nseix_broadcast_nnfbcast_v1_12.order_quantity = {}

-- Size: Order Quantity
nse_nseix_broadcast_nnfbcast_v1_12.order_quantity.size = 8

-- Display: Order Quantity
nse_nseix_broadcast_nnfbcast_v1_12.order_quantity.display = function(value)
  return "Order Quantity: "..string.format("%.0f", value)
end

-- Dissect: Order Quantity
nse_nseix_broadcast_nnfbcast_v1_12.order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.order_quantity.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Participant Id
nse_nseix_broadcast_nnfbcast_v1_12.participant_id = {}

-- Size: Participant Id
nse_nseix_broadcast_nnfbcast_v1_12.participant_id.size = 12

-- Display: Participant Id
nse_nseix_broadcast_nnfbcast_v1_12.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
nse_nseix_broadcast_nnfbcast_v1_12.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Participant Name
nse_nseix_broadcast_nnfbcast_v1_12.participant_name = {}

-- Size: Participant Name
nse_nseix_broadcast_nnfbcast_v1_12.participant_name.size = 25

-- Display: Participant Name
nse_nseix_broadcast_nnfbcast_v1_12.participant_name.display = function(value)
  return "Participant Name: "..value
end

-- Dissect: Participant Name
nse_nseix_broadcast_nnfbcast_v1_12.participant_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.participant_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.participant_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.participant_name, range, value, display)

  return offset + length, value
end

-- Participant Status
nse_nseix_broadcast_nnfbcast_v1_12.participant_status = {}

-- Size: Participant Status
nse_nseix_broadcast_nnfbcast_v1_12.participant_status.size = 1

-- Display: Participant Status
nse_nseix_broadcast_nnfbcast_v1_12.participant_status.labels = {
  ["S"] = "Participant Status: Suspended (S)",
  ["A"] = "Participant Status: Active (A)",
}

nse_nseix_broadcast_nnfbcast_v1_12.participant_status.display = function(value)
  return nse_nseix_broadcast_nnfbcast_v1_12.participant_status.labels[value] or "Participant Status: Unknown("..value..")"
end

-- Dissect: Participant Status
nse_nseix_broadcast_nnfbcast_v1_12.participant_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.participant_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.participant_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.participant_status, range, value, display)

  return offset + length, value
end

-- Participant Update Date Time
nse_nseix_broadcast_nnfbcast_v1_12.participant_update_date_time = {}

-- Size: Participant Update Date Time
nse_nseix_broadcast_nnfbcast_v1_12.participant_update_date_time.size = 4

-- Dissect: Participant Update Date Time
nse_nseix_broadcast_nnfbcast_v1_12.participant_update_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.participant_update_date_time.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.participant_update_date_time
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.participant_update_date_time_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Participant Update Date Time: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Permitted To Trade
nse_nseix_broadcast_nnfbcast_v1_12.permitted_to_trade = {}

-- Size: Permitted To Trade
nse_nseix_broadcast_nnfbcast_v1_12.permitted_to_trade.size = 2

-- Display: Permitted To Trade
nse_nseix_broadcast_nnfbcast_v1_12.permitted_to_trade.labels = {
  [0] = "Permitted To Trade: Listed But Not Permitted To Trade (0)",
  [1] = "Permitted To Trade: Permitted To Trade (1)",
}

nse_nseix_broadcast_nnfbcast_v1_12.permitted_to_trade.display = function(value)
  return nse_nseix_broadcast_nnfbcast_v1_12.permitted_to_trade.labels[value] or "Permitted To Trade: Unknown("..value..")"
end

-- Dissect: Permitted To Trade
nse_nseix_broadcast_nnfbcast_v1_12.permitted_to_trade.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.permitted_to_trade.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.permitted_to_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.permitted_to_trade, range, value, display)

  return offset + length, value
end

-- Price
nse_nseix_broadcast_nnfbcast_v1_12.price = {}

-- Size: Price
nse_nseix_broadcast_nnfbcast_v1_12.price.size = 4

-- Display: Price
nse_nseix_broadcast_nnfbcast_v1_12.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nse_nseix_broadcast_nnfbcast_v1_12.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.price, range, value, display)

  return offset + length, value
end

-- Qty
nse_nseix_broadcast_nnfbcast_v1_12.qty = {}

-- Size: Qty
nse_nseix_broadcast_nnfbcast_v1_12.qty.size = 4

-- Display: Qty
nse_nseix_broadcast_nnfbcast_v1_12.qty.display = function(value)
  return "Qty: "..value
end

-- Dissect: Qty
nse_nseix_broadcast_nnfbcast_v1_12.qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.qty, range, value, display)

  return offset + length, value
end

-- Quantity
nse_nseix_broadcast_nnfbcast_v1_12.quantity = {}

-- Size: Quantity
nse_nseix_broadcast_nnfbcast_v1_12.quantity.size = 4

-- Display: Quantity
nse_nseix_broadcast_nnfbcast_v1_12.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nse_nseix_broadcast_nnfbcast_v1_12.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.quantity, range, value, display)

  return offset + length, value
end

-- Re Admission Date
nse_nseix_broadcast_nnfbcast_v1_12.re_admission_date = {}

-- Size: Re Admission Date
nse_nseix_broadcast_nnfbcast_v1_12.re_admission_date.size = 4

-- Dissect: Re Admission Date
nse_nseix_broadcast_nnfbcast_v1_12.re_admission_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.re_admission_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.re_admission_date
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.re_admission_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Re Admission Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Record Date
nse_nseix_broadcast_nnfbcast_v1_12.record_date = {}

-- Size: Record Date
nse_nseix_broadcast_nnfbcast_v1_12.record_date.size = 4

-- Dissect: Record Date
nse_nseix_broadcast_nnfbcast_v1_12.record_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.record_date.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.record_date
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 3 then field = omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.record_date_utc end

  -- The Dos epoch is the first of January 1980, moved here onto the unix one
  local seconds = value + 315532800

  -- Kept in Asia/Kolkata: the count as it is sent is the zone's own date and clock
  if nse_nseix_broadcast_nnfbcast_v1_12.timestamp_format == 4 then
    local item = parent:add(field, range, NSTime.new(seconds, 0))
    item:set_text("Record Date: "..os.date("!%Y-%m-%d %H:%M:%S", seconds).." Asia/Kolkata")
    return offset + length, value
  end

  -- An instant is the source's clock less the offset the reader states for its zone
  parent:add(field, range, NSTime.new(seconds - nse_nseix_broadcast_nnfbcast_v1_12.zone_offset, 0))

  return offset + length, value
end

-- Reference Price
nse_nseix_broadcast_nnfbcast_v1_12.reference_price = {}

-- Size: Reference Price
nse_nseix_broadcast_nnfbcast_v1_12.reference_price.size = 4

-- Display: Reference Price
nse_nseix_broadcast_nnfbcast_v1_12.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
nse_nseix_broadcast_nnfbcast_v1_12.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.reference_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Remark
nse_nseix_broadcast_nnfbcast_v1_12.remark = {}

-- Size: Remark
nse_nseix_broadcast_nnfbcast_v1_12.remark.size = 25

-- Display: Remark
nse_nseix_broadcast_nnfbcast_v1_12.remark.display = function(value)
  return "Remark: "..value
end

-- Dissect: Remark
nse_nseix_broadcast_nnfbcast_v1_12.remark.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.remark.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.remark.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.remark, range, value, display)

  return offset + length, value
end

-- Reserved 0
nse_nseix_broadcast_nnfbcast_v1_12.reserved_0 = {}

-- Size: Reserved 0
nse_nseix_broadcast_nnfbcast_v1_12.reserved_0.size = 2

-- Display: Reserved 0
nse_nseix_broadcast_nnfbcast_v1_12.reserved_0.display = function(value)
  return "Reserved 0: "..value
end

-- Dissect: Reserved 0
nse_nseix_broadcast_nnfbcast_v1_12.reserved_0.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.reserved_0.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_broadcast_nnfbcast_v1_12.reserved_0.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_0, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 1
nse_nseix_broadcast_nnfbcast_v1_12.reserved_1 = {}

-- Size: Reserved 1
nse_nseix_broadcast_nnfbcast_v1_12.reserved_1.size = 1

-- Display: Reserved 1
nse_nseix_broadcast_nnfbcast_v1_12.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nse_nseix_broadcast_nnfbcast_v1_12.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_broadcast_nnfbcast_v1_12.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 18
nse_nseix_broadcast_nnfbcast_v1_12.reserved_18 = {}

-- Size: Reserved 18
nse_nseix_broadcast_nnfbcast_v1_12.reserved_18.size = 1

-- Display: Reserved 18
nse_nseix_broadcast_nnfbcast_v1_12.reserved_18.display = function(value)
  return "Reserved 18: "..value
end

-- Dissect: Reserved 18
nse_nseix_broadcast_nnfbcast_v1_12.reserved_18.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.reserved_18.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_broadcast_nnfbcast_v1_12.reserved_18.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_18, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 19
nse_nseix_broadcast_nnfbcast_v1_12.reserved_19 = {}

-- Size: Reserved 19
nse_nseix_broadcast_nnfbcast_v1_12.reserved_19.size = 3

-- Display: Reserved 19
nse_nseix_broadcast_nnfbcast_v1_12.reserved_19.display = function(value)
  return "Reserved 19: "..value
end

-- Dissect: Reserved 19
nse_nseix_broadcast_nnfbcast_v1_12.reserved_19.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.reserved_19.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_broadcast_nnfbcast_v1_12.reserved_19.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_19, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 2
nse_nseix_broadcast_nnfbcast_v1_12.reserved_2 = {}

-- Size: Reserved 2
nse_nseix_broadcast_nnfbcast_v1_12.reserved_2.size = 2

-- Display: Reserved 2
nse_nseix_broadcast_nnfbcast_v1_12.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nse_nseix_broadcast_nnfbcast_v1_12.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_broadcast_nnfbcast_v1_12.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_2, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 26
nse_nseix_broadcast_nnfbcast_v1_12.reserved_26 = {}

-- Size: Reserved 26
nse_nseix_broadcast_nnfbcast_v1_12.reserved_26.size = 26

-- Display: Reserved 26
nse_nseix_broadcast_nnfbcast_v1_12.reserved_26.display = function(value)
  return "Reserved 26: "..value
end

-- Dissect: Reserved 26
nse_nseix_broadcast_nnfbcast_v1_12.reserved_26.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.reserved_26.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_broadcast_nnfbcast_v1_12.reserved_26.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_26, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 4
nse_nseix_broadcast_nnfbcast_v1_12.reserved_4 = {}

-- Size: Reserved 4
nse_nseix_broadcast_nnfbcast_v1_12.reserved_4.size = 4

-- Display: Reserved 4
nse_nseix_broadcast_nnfbcast_v1_12.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nse_nseix_broadcast_nnfbcast_v1_12.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_broadcast_nnfbcast_v1_12.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_4, range, range:raw(), display)

  return offset + length, value
end

-- Second Reserved 1
nse_nseix_broadcast_nnfbcast_v1_12.second_reserved_1 = {}

-- Size: Second Reserved 1
nse_nseix_broadcast_nnfbcast_v1_12.second_reserved_1.size = 1

-- Display: Second Reserved 1
nse_nseix_broadcast_nnfbcast_v1_12.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
nse_nseix_broadcast_nnfbcast_v1_12.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nseix_broadcast_nnfbcast_v1_12.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.second_reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Sell Price
nse_nseix_broadcast_nnfbcast_v1_12.sell_price = {}

-- Size: Sell Price
nse_nseix_broadcast_nnfbcast_v1_12.sell_price.size = 4

-- Display: Sell Price
nse_nseix_broadcast_nnfbcast_v1_12.sell_price.display = function(value)
  return "Sell Price: "..value
end

-- Dissect: Sell Price
nse_nseix_broadcast_nnfbcast_v1_12.sell_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.sell_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.sell_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.sell_price, range, value, display)

  return offset + length, value
end

-- Sell Volume
nse_nseix_broadcast_nnfbcast_v1_12.sell_volume = {}

-- Size: Sell Volume
nse_nseix_broadcast_nnfbcast_v1_12.sell_volume.size = 4

-- Display: Sell Volume
nse_nseix_broadcast_nnfbcast_v1_12.sell_volume.display = function(value)
  return "Sell Volume: "..value
end

-- Dissect: Sell Volume
nse_nseix_broadcast_nnfbcast_v1_12.sell_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.sell_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.sell_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.sell_volume, range, value, display)

  return offset + length, value
end

-- Series
nse_nseix_broadcast_nnfbcast_v1_12.series = {}

-- Size: Series
nse_nseix_broadcast_nnfbcast_v1_12.series.size = 2

-- Display: Series
nse_nseix_broadcast_nnfbcast_v1_12.series.display = function(value)
  return "Series: "..value
end

-- Dissect: Series
nse_nseix_broadcast_nnfbcast_v1_12.series.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.series, range, value, display)

  return offset + length, value
end

-- Status
nse_nseix_broadcast_nnfbcast_v1_12.status = {}

-- Size: Status
nse_nseix_broadcast_nnfbcast_v1_12.status.size = 2

-- Display: Status
nse_nseix_broadcast_nnfbcast_v1_12.status.labels = {
  [1] = "Status: Preopen (1)",
  [2] = "Status: Open (2)",
  [3] = "Status: Suspended (3)",
  [4] = "Status: Price Discovery (4)",
  [5] = "Status: Preclose (5)",
}

nse_nseix_broadcast_nnfbcast_v1_12.status.display = function(value)
  return nse_nseix_broadcast_nnfbcast_v1_12.status.labels[value] or "Status: Unknown("..value..")"
end

-- Dissect: Status
nse_nseix_broadcast_nnfbcast_v1_12.status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.status, range, value, display)

  return offset + length, value
end

-- Strike Price
nse_nseix_broadcast_nnfbcast_v1_12.strike_price = {}

-- Size: Strike Price
nse_nseix_broadcast_nnfbcast_v1_12.strike_price.size = 4

-- Display: Strike Price
nse_nseix_broadcast_nnfbcast_v1_12.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
nse_nseix_broadcast_nnfbcast_v1_12.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.strike_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
nse_nseix_broadcast_nnfbcast_v1_12.symbol = {}

-- Size: Symbol
nse_nseix_broadcast_nnfbcast_v1_12.symbol.size = 10

-- Display: Symbol
nse_nseix_broadcast_nnfbcast_v1_12.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nse_nseix_broadcast_nnfbcast_v1_12.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tick Size
nse_nseix_broadcast_nnfbcast_v1_12.tick_size = {}

-- Size: Tick Size
nse_nseix_broadcast_nnfbcast_v1_12.tick_size.size = 4

-- Display: Tick Size
nse_nseix_broadcast_nnfbcast_v1_12.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
nse_nseix_broadcast_nnfbcast_v1_12.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.tick_size.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Time Stamp 2
nse_nseix_broadcast_nnfbcast_v1_12.time_stamp_2 = {}

-- Size: Time Stamp 2
nse_nseix_broadcast_nnfbcast_v1_12.time_stamp_2.size = 8

-- Display: Time Stamp 2
nse_nseix_broadcast_nnfbcast_v1_12.time_stamp_2.display = function(value)
  return "Time Stamp 2: "..value
end

-- Dissect: Time Stamp 2
nse_nseix_broadcast_nnfbcast_v1_12.time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.time_stamp_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nseix_broadcast_nnfbcast_v1_12.time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.time_stamp_2, range, value, display)

  return offset + length, value
end

-- Token
nse_nseix_broadcast_nnfbcast_v1_12.token = {}

-- Size: Token
nse_nseix_broadcast_nnfbcast_v1_12.token.size = 4

-- Display: Token
nse_nseix_broadcast_nnfbcast_v1_12.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nseix_broadcast_nnfbcast_v1_12.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.token.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.token, range, value, display)

  return offset + length, value
end

-- Token 1
nse_nseix_broadcast_nnfbcast_v1_12.token_1 = {}

-- Size: Token 1
nse_nseix_broadcast_nnfbcast_v1_12.token_1.size = 4

-- Display: Token 1
nse_nseix_broadcast_nnfbcast_v1_12.token_1.display = function(value)
  return "Token 1: "..value
end

-- Dissect: Token 1
nse_nseix_broadcast_nnfbcast_v1_12.token_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.token_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.token_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.token_1, range, value, display)

  return offset + length, value
end

-- Token 2
nse_nseix_broadcast_nnfbcast_v1_12.token_2 = {}

-- Size: Token 2
nse_nseix_broadcast_nnfbcast_v1_12.token_2.size = 4

-- Display: Token 2
nse_nseix_broadcast_nnfbcast_v1_12.token_2.display = function(value)
  return "Token 2: "..value
end

-- Dissect: Token 2
nse_nseix_broadcast_nnfbcast_v1_12.token_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.token_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.token_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.token_2, range, value, display)

  return offset + length, value
end

-- Token No
nse_nseix_broadcast_nnfbcast_v1_12.token_no = {}

-- Size: Token No
nse_nseix_broadcast_nnfbcast_v1_12.token_no.size = 4

-- Display: Token No
nse_nseix_broadcast_nnfbcast_v1_12.token_no.display = function(value)
  return "Token No: "..value
end

-- Dissect: Token No
nse_nseix_broadcast_nnfbcast_v1_12.token_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.token_no.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.token_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.token_no, range, value, display)

  return offset + length, value
end

-- Token Number
nse_nseix_broadcast_nnfbcast_v1_12.token_number = {}

-- Size: Token Number
nse_nseix_broadcast_nnfbcast_v1_12.token_number.size = 4

-- Display: Token Number
nse_nseix_broadcast_nnfbcast_v1_12.token_number.display = function(value)
  return "Token Number: "..value
end

-- Dissect: Token Number
nse_nseix_broadcast_nnfbcast_v1_12.token_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.token_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.token_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.token_number, range, value, display)

  return offset + length, value
end

-- Total Buy Quantity
nse_nseix_broadcast_nnfbcast_v1_12.total_buy_quantity = {}

-- Size: Total Buy Quantity
nse_nseix_broadcast_nnfbcast_v1_12.total_buy_quantity.size = 8

-- Display: Total Buy Quantity
nse_nseix_broadcast_nnfbcast_v1_12.total_buy_quantity.display = function(value)
  return "Total Buy Quantity: "..string.format("%.0f", value)
end

-- Dissect: Total Buy Quantity
nse_nseix_broadcast_nnfbcast_v1_12.total_buy_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.total_buy_quantity.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.total_buy_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.total_buy_quantity, range, value, display)

  return offset + length, value
end

-- Total Order Buy
nse_nseix_broadcast_nnfbcast_v1_12.total_order_buy = {}

-- Size: Total Order Buy
nse_nseix_broadcast_nnfbcast_v1_12.total_order_buy.size = 8

-- Display: Total Order Buy
nse_nseix_broadcast_nnfbcast_v1_12.total_order_buy.display = function(value)
  return "Total Order Buy: "..string.format("%.0f", value)
end

-- Dissect: Total Order Buy
nse_nseix_broadcast_nnfbcast_v1_12.total_order_buy.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.total_order_buy.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.total_order_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.total_order_buy, range, value, display)

  return offset + length, value
end

-- Total Order Sell
nse_nseix_broadcast_nnfbcast_v1_12.total_order_sell = {}

-- Size: Total Order Sell
nse_nseix_broadcast_nnfbcast_v1_12.total_order_sell.size = 8

-- Display: Total Order Sell
nse_nseix_broadcast_nnfbcast_v1_12.total_order_sell.display = function(value)
  return "Total Order Sell: "..string.format("%.0f", value)
end

-- Dissect: Total Order Sell
nse_nseix_broadcast_nnfbcast_v1_12.total_order_sell.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.total_order_sell.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.total_order_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.total_order_sell, range, value, display)

  return offset + length, value
end

-- Total Sell Quantity
nse_nseix_broadcast_nnfbcast_v1_12.total_sell_quantity = {}

-- Size: Total Sell Quantity
nse_nseix_broadcast_nnfbcast_v1_12.total_sell_quantity.size = 8

-- Display: Total Sell Quantity
nse_nseix_broadcast_nnfbcast_v1_12.total_sell_quantity.display = function(value)
  return "Total Sell Quantity: "..string.format("%.0f", value)
end

-- Dissect: Total Sell Quantity
nse_nseix_broadcast_nnfbcast_v1_12.total_sell_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.total_sell_quantity.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.total_sell_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.total_sell_quantity, range, value, display)

  return offset + length, value
end

-- Total Traded Value
nse_nseix_broadcast_nnfbcast_v1_12.total_traded_value = {}

-- Size: Total Traded Value
nse_nseix_broadcast_nnfbcast_v1_12.total_traded_value.size = 8

-- Display: Total Traded Value
nse_nseix_broadcast_nnfbcast_v1_12.total_traded_value.display = function(value)
  return "Total Traded Value: "..string.format("%.0f", value)
end

-- Dissect: Total Traded Value
nse_nseix_broadcast_nnfbcast_v1_12.total_traded_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.total_traded_value.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.total_traded_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.total_traded_value, range, value, display)

  return offset + length, value
end

-- Total Value
nse_nseix_broadcast_nnfbcast_v1_12.total_value = {}

-- Size: Total Value
nse_nseix_broadcast_nnfbcast_v1_12.total_value.size = 8

-- Display: Total Value
nse_nseix_broadcast_nnfbcast_v1_12.total_value.display = function(value)
  return "Total Value: "..string.format("%.0f", value)
end

-- Dissect: Total Value
nse_nseix_broadcast_nnfbcast_v1_12.total_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.total_value.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.total_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.total_value, range, value, display)

  return offset + length, value
end

-- Trade Number
nse_nseix_broadcast_nnfbcast_v1_12.trade_number = {}

-- Size: Trade Number
nse_nseix_broadcast_nnfbcast_v1_12.trade_number.size = 4

-- Display: Trade Number
nse_nseix_broadcast_nnfbcast_v1_12.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
nse_nseix_broadcast_nnfbcast_v1_12.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.trade_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Price
nse_nseix_broadcast_nnfbcast_v1_12.trade_price = {}

-- Size: Trade Price
nse_nseix_broadcast_nnfbcast_v1_12.trade_price.size = 4

-- Display: Trade Price
nse_nseix_broadcast_nnfbcast_v1_12.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
nse_nseix_broadcast_nnfbcast_v1_12.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Volume
nse_nseix_broadcast_nnfbcast_v1_12.trade_volume = {}

-- Size: Trade Volume
nse_nseix_broadcast_nnfbcast_v1_12.trade_volume.size = 4

-- Display: Trade Volume
nse_nseix_broadcast_nnfbcast_v1_12.trade_volume.display = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
nse_nseix_broadcast_nnfbcast_v1_12.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.trade_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Traded In Cents
nse_nseix_broadcast_nnfbcast_v1_12.traded_in_cents = {}

-- Size: Traded In Cents
nse_nseix_broadcast_nnfbcast_v1_12.traded_in_cents.size = 1

-- Display: Traded In Cents
nse_nseix_broadcast_nnfbcast_v1_12.traded_in_cents.labels = {
  ["C"] = "Traded In Cents: Traded In Cents (C)",
}

nse_nseix_broadcast_nnfbcast_v1_12.traded_in_cents.display = function(value)
  return nse_nseix_broadcast_nnfbcast_v1_12.traded_in_cents.labels[value] or "Traded In Cents: Unknown("..value..")"
end

-- Dissect: Traded In Cents
nse_nseix_broadcast_nnfbcast_v1_12.traded_in_cents.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.traded_in_cents.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.traded_in_cents.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.traded_in_cents, range, value, display)

  return offset + length, value
end

-- Traded Volume
nse_nseix_broadcast_nnfbcast_v1_12.traded_volume = {}

-- Size: Traded Volume
nse_nseix_broadcast_nnfbcast_v1_12.traded_volume.size = 4

-- Display: Traded Volume
nse_nseix_broadcast_nnfbcast_v1_12.traded_volume.display = function(value)
  return "Traded Volume: "..value
end

-- Dissect: Traded Volume
nse_nseix_broadcast_nnfbcast_v1_12.traded_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.traded_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.traded_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.traded_volume, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nseix_broadcast_nnfbcast_v1_12.trader_id = {}

-- Size: Trader Id
nse_nseix_broadcast_nnfbcast_v1_12.trader_id.size = 4

-- Display: Trader Id
nse_nseix_broadcast_nnfbcast_v1_12.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nseix_broadcast_nnfbcast_v1_12.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trading Status
nse_nseix_broadcast_nnfbcast_v1_12.trading_status = {}

-- Size: Trading Status
nse_nseix_broadcast_nnfbcast_v1_12.trading_status.size = 2

-- Display: Trading Status
nse_nseix_broadcast_nnfbcast_v1_12.trading_status.labels = {
  [1] = "Trading Status: Preopen (1)",
  [2] = "Trading Status: Open (2)",
  [3] = "Trading Status: Suspended (3)",
  [4] = "Trading Status: Price Discovery (4)",
  [5] = "Trading Status: Preclose (5)",
}

nse_nseix_broadcast_nnfbcast_v1_12.trading_status.display = function(value)
  return nse_nseix_broadcast_nnfbcast_v1_12.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
nse_nseix_broadcast_nnfbcast_v1_12.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.trading_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nseix_broadcast_nnfbcast_v1_12.transaction_code = {}

-- Size: Transaction Code
nse_nseix_broadcast_nnfbcast_v1_12.transaction_code.size = 2

-- Display: Transaction Code
nse_nseix_broadcast_nnfbcast_v1_12.transaction_code.labels = {
  [6501] = "Transaction Code: Broadcast Journal Vct Message (6501)",
  [7305] = "Transaction Code: Security Master Change Message (7305)",
  [7340] = "Transaction Code: Security Master Change Message (7340)",
  [7324] = "Transaction Code: Instrument Master Change Message (7324)",
  [7306] = "Transaction Code: Participant Master Change Message (7306)",
  [7320] = "Transaction Code: Security Status Change Message (7320)",
  [7210] = "Transaction Code: Security Status Change Message (7210)",
  [9010] = "Transaction Code: Turnover Exceeded Message (9010)",
  [9011] = "Transaction Code: Turnover Exceeded Message (9011)",
  [6511] = "Transaction Code: Market Status Message (6511)",
  [6521] = "Transaction Code: Market Status Message (6521)",
  [6522] = "Transaction Code: Market Status Message (6522)",
  [6531] = "Transaction Code: Market Status Message (6531)",
  [6551] = "Transaction Code: Market Status Message (6551)",
  [6571] = "Transaction Code: Market Status Message (6571)",
  [7202] = "Transaction Code: Ticker And Market Index Message (7202)",
  [7200] = "Transaction Code: Market By Order And Market By Price Message (7200)",
  [7208] = "Transaction Code: Only Market By Price Message (7208)",
  [7343] = "Transaction Code: Only Market By Price Message (7343)",
  [7201] = "Transaction Code: Market Watch Round Robin Message (7201)",
  [7213] = "Transaction Code: Currency Assets Message (7213)",
  [7214] = "Transaction Code: Interest Rate Assets Message (7214)",
  [6541] = "Transaction Code: Circuit Check Message (6541)",
  [7211] = "Transaction Code: Spread Market By Price Delta Message (7211)",
  [7130] = "Transaction Code: Asset Open Interest Message (7130)",
  [6503] = "Transaction Code: Asset Interest Rate Change Message (6503)",
  [7220] = "Transaction Code: Trade Execution Range Message (7220)",
  [7221] = "Transaction Code: Trade Execution Range Message (7221)",
  [7342] = "Transaction Code: Trade Execution Range Message (7342)",
  [7215] = "Transaction Code: Market By Aggregate Delta Message (7215)",
  [7216] = "Transaction Code: Market By Aggregate Delta Message (7216)",
  [7309] = "Transaction Code: Spread Combination Master Change Message (7309)",
  [7341] = "Transaction Code: Spread Combination Master Change Message (7341)",
}

nse_nseix_broadcast_nnfbcast_v1_12.transaction_code.display = function(value)
  return nse_nseix_broadcast_nnfbcast_v1_12.transaction_code.labels[value] or "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nseix_broadcast_nnfbcast_v1_12.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.transaction_code, range, value, display)

  return offset + length, value
end

-- Volatility
nse_nseix_broadcast_nnfbcast_v1_12.volatility = {}

-- Size: Volatility
nse_nseix_broadcast_nnfbcast_v1_12.volatility.size = 4

-- Display: Volatility
nse_nseix_broadcast_nnfbcast_v1_12.volatility.display = function(value)
  return "Volatility: "..value
end

-- Dissect: Volatility
nse_nseix_broadcast_nnfbcast_v1_12.volatility.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.volatility.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.volatility, range, value, display)

  return offset + length, value
end

-- Volume
nse_nseix_broadcast_nnfbcast_v1_12.volume = {}

-- Size: Volume
nse_nseix_broadcast_nnfbcast_v1_12.volume.size = 4

-- Display: Volume
nse_nseix_broadcast_nnfbcast_v1_12.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nse_nseix_broadcast_nnfbcast_v1_12.volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.volume, range, value, display)

  return offset + length, value
end

-- Volume Traded Today
nse_nseix_broadcast_nnfbcast_v1_12.volume_traded_today = {}

-- Size: Volume Traded Today
nse_nseix_broadcast_nnfbcast_v1_12.volume_traded_today.size = 4

-- Display: Volume Traded Today
nse_nseix_broadcast_nnfbcast_v1_12.volume_traded_today.display = function(value)
  return "Volume Traded Today: "..value
end

-- Dissect: Volume Traded Today
nse_nseix_broadcast_nnfbcast_v1_12.volume_traded_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.volume_traded_today.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.volume_traded_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.volume_traded_today, range, value, display)

  return offset + length, value
end

-- Wap
nse_nseix_broadcast_nnfbcast_v1_12.wap = {}

-- Size: Wap
nse_nseix_broadcast_nnfbcast_v1_12.wap.size = 4

-- Display: Wap
nse_nseix_broadcast_nnfbcast_v1_12.wap.display = function(value)
  return "Wap: "..value
end

-- Dissect: Wap
nse_nseix_broadcast_nnfbcast_v1_12.wap.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.wap.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.wap.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.wap, range, value, display)

  return offset + length, value
end

-- Warning Quantity
nse_nseix_broadcast_nnfbcast_v1_12.warning_quantity = {}

-- Size: Warning Quantity
nse_nseix_broadcast_nnfbcast_v1_12.warning_quantity.size = 4

-- Display: Warning Quantity
nse_nseix_broadcast_nnfbcast_v1_12.warning_quantity.display = function(value)
  return "Warning Quantity: "..value
end

-- Dissect: Warning Quantity
nse_nseix_broadcast_nnfbcast_v1_12.warning_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.warning_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.warning_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.warning_quantity, range, value, display)

  return offset + length, value
end

-- Warning Type
nse_nseix_broadcast_nnfbcast_v1_12.warning_type = {}

-- Size: Warning Type
nse_nseix_broadcast_nnfbcast_v1_12.warning_type.size = 2

-- Display: Warning Type
nse_nseix_broadcast_nnfbcast_v1_12.warning_type.labels = {
  [1] = "Warning Type: Turnover Limit About To Exceed (1)",
  [2] = "Warning Type: Turnover Limit Exceeded (2)",
}

nse_nseix_broadcast_nnfbcast_v1_12.warning_type.display = function(value)
  return nse_nseix_broadcast_nnfbcast_v1_12.warning_type.labels[value] or "Warning Type: Unknown("..value..")"
end

-- Dissect: Warning Type
nse_nseix_broadcast_nnfbcast_v1_12.warning_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.warning_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.warning_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.warning_type, range, value, display)

  return offset + length, value
end

-- Yield Rate
nse_nseix_broadcast_nnfbcast_v1_12.yield_rate = {}

-- Size: Yield Rate
nse_nseix_broadcast_nnfbcast_v1_12.yield_rate.size = 4

-- Display: Yield Rate
nse_nseix_broadcast_nnfbcast_v1_12.yield_rate.display = function(value)
  return "Yield Rate: "..value
end

-- Dissect: Yield Rate
nse_nseix_broadcast_nnfbcast_v1_12.yield_rate.dissect = function(buffer, offset, packet, parent)
  local length = nse_nseix_broadcast_nnfbcast_v1_12.yield_rate.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.yield_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.yield_rate, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseIx Broadcast NnfBcast 1.12
-----------------------------------------------------------------------

-- St Spd Eligibility
nse_nseix_broadcast_nnfbcast_v1_12.st_spd_eligibility = {}

-- Size: St Spd Eligibility
nse_nseix_broadcast_nnfbcast_v1_12.st_spd_eligibility.size = 1

-- Display: St Spd Eligibility
nse_nseix_broadcast_nnfbcast_v1_12.st_spd_eligibility.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Eligibility flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Eligibility"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: St Spd Eligibility
nse_nseix_broadcast_nnfbcast_v1_12.st_spd_eligibility.bits = function(range, value, packet, parent)

  -- Reserved 17: 7 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_17, range, value)

  -- Eligibility: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.eligibility, range, value)
end

-- Dissect: St Spd Eligibility
nse_nseix_broadcast_nnfbcast_v1_12.st_spd_eligibility.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseix_broadcast_nnfbcast_v1_12.st_spd_eligibility.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.st_spd_eligibility.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_spd_eligibility, range, display)

  if show.structs then
    nse_nseix_broadcast_nnfbcast_v1_12.st_spd_eligibility.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Sec Info 2
nse_nseix_broadcast_nnfbcast_v1_12.sec_info_2 = {}

-- Size: Sec Info 2
nse_nseix_broadcast_nnfbcast_v1_12.sec_info_2.size =
  nse_nseix_broadcast_nnfbcast_v1_12.instrument_name.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.symbol.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.series.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.expiry_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.strike_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.option_type.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.ca_level.size

-- Display: Sec Info 2
nse_nseix_broadcast_nnfbcast_v1_12.sec_info_2.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sec Info 2
nse_nseix_broadcast_nnfbcast_v1_12.sec_info_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Name: CHAR
  index, instrument_name = nse_nseix_broadcast_nnfbcast_v1_12.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nseix_broadcast_nnfbcast_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Series: CHAR
  index, series = nse_nseix_broadcast_nnfbcast_v1_12.series.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nseix_broadcast_nnfbcast_v1_12.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nseix_broadcast_nnfbcast_v1_12.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nseix_broadcast_nnfbcast_v1_12.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nseix_broadcast_nnfbcast_v1_12.ca_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sec Info 2
nse_nseix_broadcast_nnfbcast_v1_12.sec_info_2.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.sec_info_2, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.sec_info_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.sec_info_2.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.sec_info_2.fields(buffer, offset, packet, parent)
  end
end

-- Sec Info 1
nse_nseix_broadcast_nnfbcast_v1_12.sec_info_1 = {}

-- Size: Sec Info 1
nse_nseix_broadcast_nnfbcast_v1_12.sec_info_1.size =
  nse_nseix_broadcast_nnfbcast_v1_12.instrument_name.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.symbol.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.series.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.expiry_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.strike_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.option_type.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.ca_level.size

-- Display: Sec Info 1
nse_nseix_broadcast_nnfbcast_v1_12.sec_info_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sec Info 1
nse_nseix_broadcast_nnfbcast_v1_12.sec_info_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Name: CHAR
  index, instrument_name = nse_nseix_broadcast_nnfbcast_v1_12.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nseix_broadcast_nnfbcast_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Series: CHAR
  index, series = nse_nseix_broadcast_nnfbcast_v1_12.series.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nseix_broadcast_nnfbcast_v1_12.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nseix_broadcast_nnfbcast_v1_12.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nseix_broadcast_nnfbcast_v1_12.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nseix_broadcast_nnfbcast_v1_12.ca_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sec Info 1
nse_nseix_broadcast_nnfbcast_v1_12.sec_info_1.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.sec_info_1, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.sec_info_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.sec_info_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.sec_info_1.fields(buffer, offset, packet, parent)
  end
end

-- Spread Combination Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.spread_combination_master_change_message = {}

-- Size: Spread Combination Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.spread_combination_master_change_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.token_1.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.token_2.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.sec_info_1.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.sec_info_2.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.reference_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_diff_range.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_diff_range.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.op_low_price_diff_range.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.op_high_price_diff_range.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.st_spd_eligibility.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.reserved_1.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.delete_flag.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.second_reserved_1.size

-- Display: Spread Combination Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.spread_combination_master_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Combination Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.spread_combination_master_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: LONG
  index, token_1 = nse_nseix_broadcast_nnfbcast_v1_12.token_1.dissect(buffer, index, packet, parent)

  -- Token 2: LONG
  index, token_2 = nse_nseix_broadcast_nnfbcast_v1_12.token_2.dissect(buffer, index, packet, parent)

  -- Sec Info 1: Struct of 7 fields
  index, sec_info_1 = nse_nseix_broadcast_nnfbcast_v1_12.sec_info_1.dissect(buffer, index, packet, parent)

  -- Sec Info 2: Struct of 7 fields
  index, sec_info_2 = nse_nseix_broadcast_nnfbcast_v1_12.sec_info_2.dissect(buffer, index, packet, parent)

  -- Reference Price: LONG
  index, reference_price = nse_nseix_broadcast_nnfbcast_v1_12.reference_price.dissect(buffer, index, packet, parent)

  -- Day Low Price Diff Range: LONG
  index, day_low_price_diff_range = nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_diff_range.dissect(buffer, index, packet, parent)

  -- Day High Price Diff Range: LONG
  index, day_high_price_diff_range = nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_diff_range.dissect(buffer, index, packet, parent)

  -- Op Low Price Diff Range: LONG
  index, op_low_price_diff_range = nse_nseix_broadcast_nnfbcast_v1_12.op_low_price_diff_range.dissect(buffer, index, packet, parent)

  -- Op High Price Diff Range: LONG
  index, op_high_price_diff_range = nse_nseix_broadcast_nnfbcast_v1_12.op_high_price_diff_range.dissect(buffer, index, packet, parent)

  -- St Spd Eligibility: Struct of 2 fields
  index, st_spd_eligibility = nse_nseix_broadcast_nnfbcast_v1_12.st_spd_eligibility.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_broadcast_nnfbcast_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_broadcast_nnfbcast_v1_12.reserved_1.size
  end

  -- Delete Flag: CHAR
  index, delete_flag = nse_nseix_broadcast_nnfbcast_v1_12.delete_flag.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: CHAR
  if show.padding then
    index, second_reserved_1 = nse_nseix_broadcast_nnfbcast_v1_12.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_broadcast_nnfbcast_v1_12.second_reserved_1.size
  end

  return index
end

-- Dissect: Spread Combination Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.spread_combination_master_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.spread_combination_master_change_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.spread_combination_master_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.spread_combination_master_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.spread_combination_master_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Sell Side
nse_nseix_broadcast_nnfbcast_v1_12.sell_side = {}

-- Size: Sell Side
nse_nseix_broadcast_nnfbcast_v1_12.sell_side.size =
  nse_nseix_broadcast_nnfbcast_v1_12.cumulative_quantity_of_orders.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.wap.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.total_value.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.impact_cost.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.order_price.size

-- Display: Sell Side
nse_nseix_broadcast_nnfbcast_v1_12.sell_side.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sell Side
nse_nseix_broadcast_nnfbcast_v1_12.sell_side.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cumulative Quantity Of Orders: LONG
  index, cumulative_quantity_of_orders = nse_nseix_broadcast_nnfbcast_v1_12.cumulative_quantity_of_orders.dissect(buffer, index, packet, parent)

  -- Wap: LONG
  index, wap = nse_nseix_broadcast_nnfbcast_v1_12.wap.dissect(buffer, index, packet, parent)

  -- Total Value: DOUBLE
  index, total_value = nse_nseix_broadcast_nnfbcast_v1_12.total_value.dissect(buffer, index, packet, parent)

  -- Impact Cost: LONG
  index, impact_cost = nse_nseix_broadcast_nnfbcast_v1_12.impact_cost.dissect(buffer, index, packet, parent)

  -- Order Price: LONG
  index, order_price = nse_nseix_broadcast_nnfbcast_v1_12.order_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sell Side
nse_nseix_broadcast_nnfbcast_v1_12.sell_side.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.sell_side, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.sell_side.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.sell_side.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.sell_side.fields(buffer, offset, packet, parent)
  end
end

-- Buy Side
nse_nseix_broadcast_nnfbcast_v1_12.buy_side = {}

-- Size: Buy Side
nse_nseix_broadcast_nnfbcast_v1_12.buy_side.size =
  nse_nseix_broadcast_nnfbcast_v1_12.cumulative_quantity_of_orders.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.wap.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.total_value.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.impact_cost.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.order_price.size

-- Display: Buy Side
nse_nseix_broadcast_nnfbcast_v1_12.buy_side.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Buy Side
nse_nseix_broadcast_nnfbcast_v1_12.buy_side.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cumulative Quantity Of Orders: LONG
  index, cumulative_quantity_of_orders = nse_nseix_broadcast_nnfbcast_v1_12.cumulative_quantity_of_orders.dissect(buffer, index, packet, parent)

  -- Wap: LONG
  index, wap = nse_nseix_broadcast_nnfbcast_v1_12.wap.dissect(buffer, index, packet, parent)

  -- Total Value: DOUBLE
  index, total_value = nse_nseix_broadcast_nnfbcast_v1_12.total_value.dissect(buffer, index, packet, parent)

  -- Impact Cost: LONG
  index, impact_cost = nse_nseix_broadcast_nnfbcast_v1_12.impact_cost.dissect(buffer, index, packet, parent)

  -- Order Price: LONG
  index, order_price = nse_nseix_broadcast_nnfbcast_v1_12.order_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Buy Side
nse_nseix_broadcast_nnfbcast_v1_12.buy_side.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.buy_side, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.buy_side.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.buy_side.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.buy_side.fields(buffer, offset, packet, parent)
  end
end

-- Mba Data
nse_nseix_broadcast_nnfbcast_v1_12.mba_data = {}

-- Size: Mba Data
nse_nseix_broadcast_nnfbcast_v1_12.mba_data.size =
  nse_nseix_broadcast_nnfbcast_v1_12.buy_side.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.sell_side.size

-- Display: Mba Data
nse_nseix_broadcast_nnfbcast_v1_12.mba_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mba Data
nse_nseix_broadcast_nnfbcast_v1_12.mba_data.fields = function(buffer, offset, packet, parent, mba_data_index)
  local index = offset

  -- Implicit Mba Data Index
  if mba_data_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mba_data_index, mba_data_index)
    iteration:set_generated()
  end

  -- Buy Side: Struct of 5 fields
  index, buy_side = nse_nseix_broadcast_nnfbcast_v1_12.buy_side.dissect(buffer, index, packet, parent)

  -- Sell Side: Struct of 5 fields
  index, sell_side = nse_nseix_broadcast_nnfbcast_v1_12.sell_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mba Data
nse_nseix_broadcast_nnfbcast_v1_12.mba_data.dissect = function(buffer, offset, packet, parent, mba_data_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mba_data, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.mba_data.fields(buffer, offset, packet, parent, mba_data_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.mba_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.mba_data.fields(buffer, offset, packet, parent, mba_data_index)
  end
end

-- Market By Aggregate Delta Message
nse_nseix_broadcast_nnfbcast_v1_12.market_by_aggregate_delta_message = {}

-- Size: Market By Aggregate Delta Message
nse_nseix_broadcast_nnfbcast_v1_12.market_by_aggregate_delta_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.token.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.no_of_records.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.market_buy_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.market_sell_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.ideal_price.size + 
  5 * nse_nseix_broadcast_nnfbcast_v1_12.mba_data.size

-- Display: Market By Aggregate Delta Message
nse_nseix_broadcast_nnfbcast_v1_12.market_by_aggregate_delta_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market By Aggregate Delta Message
nse_nseix_broadcast_nnfbcast_v1_12.market_by_aggregate_delta_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nseix_broadcast_nnfbcast_v1_12.token.dissect(buffer, index, packet, parent)

  -- No Of Records: SHORT
  index, no_of_records = nse_nseix_broadcast_nnfbcast_v1_12.no_of_records.dissect(buffer, index, packet, parent)

  -- Market Buy Price: LONG
  index, market_buy_price = nse_nseix_broadcast_nnfbcast_v1_12.market_buy_price.dissect(buffer, index, packet, parent)

  -- Market Sell Price: LONG
  index, market_sell_price = nse_nseix_broadcast_nnfbcast_v1_12.market_sell_price.dissect(buffer, index, packet, parent)

  -- Ideal Price: LONG
  index, ideal_price = nse_nseix_broadcast_nnfbcast_v1_12.ideal_price.dissect(buffer, index, packet, parent)

  -- Array Of: Mba Data
  for mba_data_index = 1, 5 do
    index, mba_data = nse_nseix_broadcast_nnfbcast_v1_12.mba_data.dissect(buffer, index, packet, parent, mba_data_index)
  end

  return index
end

-- Dissect: Market By Aggregate Delta Message
nse_nseix_broadcast_nnfbcast_v1_12.market_by_aggregate_delta_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_by_aggregate_delta_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.market_by_aggregate_delta_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.market_by_aggregate_delta_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.market_by_aggregate_delta_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Execution Range Details
nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_details = {}

-- Size: Trade Execution Range Details
nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_details.size =
  nse_nseix_broadcast_nnfbcast_v1_12.token_number.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.high_exec_band.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.low_exec_band.size

-- Display: Trade Execution Range Details
nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_details.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Execution Range Details
nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_details.fields = function(buffer, offset, packet, parent, trade_execution_range_details_index)
  local index = offset

  -- Implicit Trade Execution Range Details Index
  if trade_execution_range_details_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trade_execution_range_details_index, trade_execution_range_details_index)
    iteration:set_generated()
  end

  -- Token Number: LONG
  index, token_number = nse_nseix_broadcast_nnfbcast_v1_12.token_number.dissect(buffer, index, packet, parent)

  -- High Exec Band: LONG
  index, high_exec_band = nse_nseix_broadcast_nnfbcast_v1_12.high_exec_band.dissect(buffer, index, packet, parent)

  -- Low Exec Band: LONG
  index, low_exec_band = nse_nseix_broadcast_nnfbcast_v1_12.low_exec_band.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Execution Range Details
nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_details.dissect = function(buffer, offset, packet, parent, trade_execution_range_details_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trade_execution_range_details, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_details.fields(buffer, offset, packet, parent, trade_execution_range_details_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_details.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_details.fields(buffer, offset, packet, parent, trade_execution_range_details_index)
  end
end

-- Trade Execution Range Data
nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_data = {}

-- Size: Trade Execution Range Data
nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_data.size =
  nse_nseix_broadcast_nnfbcast_v1_12.msg_count.size + 
  25 * nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_details.size

-- Display: Trade Execution Range Data
nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Execution Range Data
nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Count: LONG
  index, msg_count = nse_nseix_broadcast_nnfbcast_v1_12.msg_count.dissect(buffer, index, packet, parent)

  -- Array Of: Trade Execution Range Details
  for trade_execution_range_details_index = 1, 25 do
    index, trade_execution_range_details = nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_details.dissect(buffer, index, packet, parent, trade_execution_range_details_index)
  end

  return index
end

-- Dissect: Trade Execution Range Data
nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trade_execution_range_data, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_data.fields(buffer, offset, packet, parent)
  end
end

-- Trade Execution Range Message
nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_message = {}

-- Size: Trade Execution Range Message
nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_data.size

-- Display: Trade Execution Range Message
nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Execution Range Message
nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Execution Range Data: Struct of 2 fields
  index, trade_execution_range_data = nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Execution Range Message
nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trade_execution_range_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_message.fields(buffer, offset, packet, parent)
  end
end

-- Asset Interest Rate Change Message
nse_nseix_broadcast_nnfbcast_v1_12.asset_interest_rate_change_message = {}

-- Size: Asset Interest Rate Change Message
nse_nseix_broadcast_nnfbcast_v1_12.asset_interest_rate_change_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.token.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.foreign_interest_rate.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.volatility.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.domestic_interest_rate.size

-- Display: Asset Interest Rate Change Message
nse_nseix_broadcast_nnfbcast_v1_12.asset_interest_rate_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Asset Interest Rate Change Message
nse_nseix_broadcast_nnfbcast_v1_12.asset_interest_rate_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nseix_broadcast_nnfbcast_v1_12.token.dissect(buffer, index, packet, parent)

  -- Foreign Interest Rate: SHORT
  index, foreign_interest_rate = nse_nseix_broadcast_nnfbcast_v1_12.foreign_interest_rate.dissect(buffer, index, packet, parent)

  -- Volatility: LONG
  index, volatility = nse_nseix_broadcast_nnfbcast_v1_12.volatility.dissect(buffer, index, packet, parent)

  -- Domestic Interest Rate: SHORT
  index, domestic_interest_rate = nse_nseix_broadcast_nnfbcast_v1_12.domestic_interest_rate.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Asset Interest Rate Change Message
nse_nseix_broadcast_nnfbcast_v1_12.asset_interest_rate_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.asset_interest_rate_change_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.asset_interest_rate_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.asset_interest_rate_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.asset_interest_rate_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Asset Open Interest
nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest = {}

-- Size: Asset Open Interest
nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest.size =
  nse_nseix_broadcast_nnfbcast_v1_12.token_no.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.current_oi.size

-- Display: Asset Open Interest
nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Asset Open Interest
nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest.fields = function(buffer, offset, packet, parent, asset_open_interest_index)
  local index = offset

  -- Implicit Asset Open Interest Index
  if asset_open_interest_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.asset_open_interest_index, asset_open_interest_index)
    iteration:set_generated()
  end

  -- Token No: LONG
  index, token_no = nse_nseix_broadcast_nnfbcast_v1_12.token_no.dissect(buffer, index, packet, parent)

  -- Current Oi: LONG
  index, current_oi = nse_nseix_broadcast_nnfbcast_v1_12.current_oi.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Asset Open Interest
nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest.dissect = function(buffer, offset, packet, parent, asset_open_interest_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.asset_open_interest, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest.fields(buffer, offset, packet, parent, asset_open_interest_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest.fields(buffer, offset, packet, parent, asset_open_interest_index)
  end
end

-- Asset Open Interest Message
nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest_message = {}

-- Size: Asset Open Interest Message
nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest_message.size =
  58 * nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest.size

-- Display: Asset Open Interest Message
nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Asset Open Interest Message
nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Array Of: Asset Open Interest
  for asset_open_interest_index = 1, 58 do
    index, asset_open_interest = nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest.dissect(buffer, index, packet, parent, asset_open_interest_index)
  end

  return index
end

-- Dissect: Asset Open Interest Message
nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.asset_open_interest_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Total Order Volume
nse_nseix_broadcast_nnfbcast_v1_12.total_order_volume = {}

-- Size: Total Order Volume
nse_nseix_broadcast_nnfbcast_v1_12.total_order_volume.size =
  nse_nseix_broadcast_nnfbcast_v1_12.total_order_buy.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.total_order_sell.size

-- Display: Total Order Volume
nse_nseix_broadcast_nnfbcast_v1_12.total_order_volume.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Total Order Volume
nse_nseix_broadcast_nnfbcast_v1_12.total_order_volume.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Order Buy: DOUBLE
  index, total_order_buy = nse_nseix_broadcast_nnfbcast_v1_12.total_order_buy.dissect(buffer, index, packet, parent)

  -- Total Order Sell: DOUBLE
  index, total_order_sell = nse_nseix_broadcast_nnfbcast_v1_12.total_order_sell.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Total Order Volume
nse_nseix_broadcast_nnfbcast_v1_12.total_order_volume.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.total_order_volume, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.total_order_volume.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.total_order_volume.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.total_order_volume.fields(buffer, offset, packet, parent)
  end
end

-- Mbp Sells
nse_nseix_broadcast_nnfbcast_v1_12.mbp_sells = {}

-- Size: Mbp Sells
nse_nseix_broadcast_nnfbcast_v1_12.mbp_sells.size =
  nse_nseix_broadcast_nnfbcast_v1_12.no_orders.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.volume.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.price.size

-- Display: Mbp Sells
nse_nseix_broadcast_nnfbcast_v1_12.mbp_sells.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mbp Sells
nse_nseix_broadcast_nnfbcast_v1_12.mbp_sells.fields = function(buffer, offset, packet, parent, mbp_sells_index)
  local index = offset

  -- Implicit Mbp Sells Index
  if mbp_sells_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_sells_index, mbp_sells_index)
    iteration:set_generated()
  end

  -- No Orders: SHORT
  index, no_orders = nse_nseix_broadcast_nnfbcast_v1_12.no_orders.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_broadcast_nnfbcast_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_broadcast_nnfbcast_v1_12.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mbp Sells
nse_nseix_broadcast_nnfbcast_v1_12.mbp_sells.dissect = function(buffer, offset, packet, parent, mbp_sells_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_sells, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.mbp_sells.fields(buffer, offset, packet, parent, mbp_sells_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.mbp_sells.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.mbp_sells.fields(buffer, offset, packet, parent, mbp_sells_index)
  end
end

-- Mbp Buys
nse_nseix_broadcast_nnfbcast_v1_12.mbp_buys = {}

-- Size: Mbp Buys
nse_nseix_broadcast_nnfbcast_v1_12.mbp_buys.size =
  nse_nseix_broadcast_nnfbcast_v1_12.no_orders.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.volume.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.price.size

-- Display: Mbp Buys
nse_nseix_broadcast_nnfbcast_v1_12.mbp_buys.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mbp Buys
nse_nseix_broadcast_nnfbcast_v1_12.mbp_buys.fields = function(buffer, offset, packet, parent, mbp_buys_index)
  local index = offset

  -- Implicit Mbp Buys Index
  if mbp_buys_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_buys_index, mbp_buys_index)
    iteration:set_generated()
  end

  -- No Orders: SHORT
  index, no_orders = nse_nseix_broadcast_nnfbcast_v1_12.no_orders.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nseix_broadcast_nnfbcast_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_broadcast_nnfbcast_v1_12.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mbp Buys
nse_nseix_broadcast_nnfbcast_v1_12.mbp_buys.dissect = function(buffer, offset, packet, parent, mbp_buys_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_buys, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.mbp_buys.fields(buffer, offset, packet, parent, mbp_buys_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.mbp_buys.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.mbp_buys.fields(buffer, offset, packet, parent, mbp_buys_index)
  end
end

-- Spread Market By Price Delta Message
nse_nseix_broadcast_nnfbcast_v1_12.spread_market_by_price_delta_message = {}

-- Size: Spread Market By Price Delta Message
nse_nseix_broadcast_nnfbcast_v1_12.spread_market_by_price_delta_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.token_1.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.token_2.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.last_active_time.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.traded_volume.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.total_traded_value.size + 
  5 * nse_nseix_broadcast_nnfbcast_v1_12.mbp_buys.size + 
  5 * nse_nseix_broadcast_nnfbcast_v1_12.mbp_sells.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.total_order_volume.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.open_price_difference.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_difference.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_difference.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price_difference.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.last_update_time.size

-- Display: Spread Market By Price Delta Message
nse_nseix_broadcast_nnfbcast_v1_12.spread_market_by_price_delta_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Market By Price Delta Message
nse_nseix_broadcast_nnfbcast_v1_12.spread_market_by_price_delta_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: LONG
  index, token_1 = nse_nseix_broadcast_nnfbcast_v1_12.token_1.dissect(buffer, index, packet, parent)

  -- Token 2: LONG
  index, token_2 = nse_nseix_broadcast_nnfbcast_v1_12.token_2.dissect(buffer, index, packet, parent)

  -- Mbp Buy: SHORT
  index, mbp_buy = nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy.dissect(buffer, index, packet, parent)

  -- Mbp Sell: SHORT
  index, mbp_sell = nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell.dissect(buffer, index, packet, parent)

  -- Last Active Time: LONG
  index, last_active_time = nse_nseix_broadcast_nnfbcast_v1_12.last_active_time.dissect(buffer, index, packet, parent)

  -- Traded Volume: LONG
  index, traded_volume = nse_nseix_broadcast_nnfbcast_v1_12.traded_volume.dissect(buffer, index, packet, parent)

  -- Total Traded Value: DOUBLE
  index, total_traded_value = nse_nseix_broadcast_nnfbcast_v1_12.total_traded_value.dissect(buffer, index, packet, parent)

  -- Array Of: Mbp Buys
  for mbp_buys_index = 1, 5 do
    index, mbp_buys = nse_nseix_broadcast_nnfbcast_v1_12.mbp_buys.dissect(buffer, index, packet, parent, mbp_buys_index)
  end

  -- Array Of: Mbp Sells
  for mbp_sells_index = 1, 5 do
    index, mbp_sells = nse_nseix_broadcast_nnfbcast_v1_12.mbp_sells.dissect(buffer, index, packet, parent, mbp_sells_index)
  end

  -- Total Order Volume: Struct of 2 fields
  index, total_order_volume = nse_nseix_broadcast_nnfbcast_v1_12.total_order_volume.dissect(buffer, index, packet, parent)

  -- Open Price Difference: LONG
  index, open_price_difference = nse_nseix_broadcast_nnfbcast_v1_12.open_price_difference.dissect(buffer, index, packet, parent)

  -- Day High Price Difference: LONG
  index, day_high_price_difference = nse_nseix_broadcast_nnfbcast_v1_12.day_high_price_difference.dissect(buffer, index, packet, parent)

  -- Day Low Price Difference: LONG
  index, day_low_price_difference = nse_nseix_broadcast_nnfbcast_v1_12.day_low_price_difference.dissect(buffer, index, packet, parent)

  -- Last Traded Price Difference: LONG
  index, last_traded_price_difference = nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price_difference.dissect(buffer, index, packet, parent)

  -- Last Update Time: LONG
  index, last_update_time = nse_nseix_broadcast_nnfbcast_v1_12.last_update_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Market By Price Delta Message
nse_nseix_broadcast_nnfbcast_v1_12.spread_market_by_price_delta_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.spread_market_by_price_delta_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.spread_market_by_price_delta_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.spread_market_by_price_delta_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.spread_market_by_price_delta_message.fields(buffer, offset, packet, parent)
  end
end

-- Circuit Check Message
nse_nseix_broadcast_nnfbcast_v1_12.circuit_check_message = {}

-- Display: Circuit Check Message
nse_nseix_broadcast_nnfbcast_v1_12.circuit_check_message.display = function(packet, parent, length)
  return "Circuit Check Message"
end


-- Dissect: Circuit Check Message
nse_nseix_broadcast_nnfbcast_v1_12.circuit_check_message.dissect = function(buffer, offset, packet, parent)
  local display = nse_nseix_broadcast_nnfbcast_v1_12.circuit_check_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Mbp Sell Level
nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell_level = {}

-- Size: Mbp Sell Level
nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell_level.size =
  nse_nseix_broadcast_nnfbcast_v1_12.order_count.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.order_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.yield_rate.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.order_quantity.size

-- Display: Mbp Sell Level
nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mbp Sell Level
nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell_level.fields = function(buffer, offset, packet, parent, mbp_sell_level_index)
  local index = offset

  -- Implicit Mbp Sell Level Index
  if mbp_sell_level_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_sell_level_index, mbp_sell_level_index)
    iteration:set_generated()
  end

  -- Order Count: LONG
  index, order_count = nse_nseix_broadcast_nnfbcast_v1_12.order_count.dissect(buffer, index, packet, parent)

  -- Order Price: LONG
  index, order_price = nse_nseix_broadcast_nnfbcast_v1_12.order_price.dissect(buffer, index, packet, parent)

  -- Yield Rate: LONG
  index, yield_rate = nse_nseix_broadcast_nnfbcast_v1_12.yield_rate.dissect(buffer, index, packet, parent)

  -- Order Quantity: DOUBLE
  index, order_quantity = nse_nseix_broadcast_nnfbcast_v1_12.order_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mbp Sell Level
nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell_level.dissect = function(buffer, offset, packet, parent, mbp_sell_level_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_sell_level, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell_level.fields(buffer, offset, packet, parent, mbp_sell_level_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell_level.fields(buffer, offset, packet, parent, mbp_sell_level_index)
  end
end

-- Mbp Buy Level
nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy_level = {}

-- Size: Mbp Buy Level
nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy_level.size =
  nse_nseix_broadcast_nnfbcast_v1_12.order_count.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.order_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.yield_rate.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.order_quantity.size

-- Display: Mbp Buy Level
nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mbp Buy Level
nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy_level.fields = function(buffer, offset, packet, parent, mbp_buy_level_index)
  local index = offset

  -- Implicit Mbp Buy Level Index
  if mbp_buy_level_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_buy_level_index, mbp_buy_level_index)
    iteration:set_generated()
  end

  -- Order Count: LONG
  index, order_count = nse_nseix_broadcast_nnfbcast_v1_12.order_count.dissect(buffer, index, packet, parent)

  -- Order Price: LONG
  index, order_price = nse_nseix_broadcast_nnfbcast_v1_12.order_price.dissect(buffer, index, packet, parent)

  -- Yield Rate: LONG
  index, yield_rate = nse_nseix_broadcast_nnfbcast_v1_12.yield_rate.dissect(buffer, index, packet, parent)

  -- Order Quantity: DOUBLE
  index, order_quantity = nse_nseix_broadcast_nnfbcast_v1_12.order_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mbp Buy Level
nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy_level.dissect = function(buffer, offset, packet, parent, mbp_buy_level_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_buy_level, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy_level.fields(buffer, offset, packet, parent, mbp_buy_level_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy_level.fields(buffer, offset, packet, parent, mbp_buy_level_index)
  end
end

-- Interest Rate Assets Message
nse_nseix_broadcast_nnfbcast_v1_12.interest_rate_assets_message = {}

-- Size: Interest Rate Assets Message
nse_nseix_broadcast_nnfbcast_v1_12.interest_rate_assets_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.token.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.symbol.size + 
  5 * nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy_level.size + 
  5 * nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell_level.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.book_type.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.instrument_type.size

-- Display: Interest Rate Assets Message
nse_nseix_broadcast_nnfbcast_v1_12.interest_rate_assets_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Interest Rate Assets Message
nse_nseix_broadcast_nnfbcast_v1_12.interest_rate_assets_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nseix_broadcast_nnfbcast_v1_12.token.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nseix_broadcast_nnfbcast_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Array Of: Mbp Buy Level
  for mbp_buy_level_index = 1, 5 do
    index, mbp_buy_level = nse_nseix_broadcast_nnfbcast_v1_12.mbp_buy_level.dissect(buffer, index, packet, parent, mbp_buy_level_index)
  end

  -- Array Of: Mbp Sell Level
  for mbp_sell_level_index = 1, 5 do
    index, mbp_sell_level = nse_nseix_broadcast_nnfbcast_v1_12.mbp_sell_level.dissect(buffer, index, packet, parent, mbp_sell_level_index)
  end

  -- Book Type: SHORT
  index, book_type = nse_nseix_broadcast_nnfbcast_v1_12.book_type.dissect(buffer, index, packet, parent)

  -- Instrument Type: CHAR
  index, instrument_type = nse_nseix_broadcast_nnfbcast_v1_12.instrument_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Interest Rate Assets Message
nse_nseix_broadcast_nnfbcast_v1_12.interest_rate_assets_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.interest_rate_assets_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.interest_rate_assets_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.interest_rate_assets_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.interest_rate_assets_message.fields(buffer, offset, packet, parent)
  end
end

-- Currency Assets Message
nse_nseix_broadcast_nnfbcast_v1_12.currency_assets_message = {}

-- Size: Currency Assets Message
nse_nseix_broadcast_nnfbcast_v1_12.currency_assets_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.token.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.bid_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.ask_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.deal_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.symbol.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.instrument.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.closing_price.size

-- Display: Currency Assets Message
nse_nseix_broadcast_nnfbcast_v1_12.currency_assets_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Currency Assets Message
nse_nseix_broadcast_nnfbcast_v1_12.currency_assets_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nseix_broadcast_nnfbcast_v1_12.token.dissect(buffer, index, packet, parent)

  -- Bid Price: LONG
  index, bid_price = nse_nseix_broadcast_nnfbcast_v1_12.bid_price.dissect(buffer, index, packet, parent)

  -- Ask Price: LONG
  index, ask_price = nse_nseix_broadcast_nnfbcast_v1_12.ask_price.dissect(buffer, index, packet, parent)

  -- Deal Price: LONG
  index, deal_price = nse_nseix_broadcast_nnfbcast_v1_12.deal_price.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nseix_broadcast_nnfbcast_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Instrument: CHAR
  index, instrument = nse_nseix_broadcast_nnfbcast_v1_12.instrument.dissect(buffer, index, packet, parent)

  -- Closing Price: LONG
  index, closing_price = nse_nseix_broadcast_nnfbcast_v1_12.closing_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Currency Assets Message
nse_nseix_broadcast_nnfbcast_v1_12.currency_assets_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.currency_assets_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.currency_assets_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.currency_assets_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.currency_assets_message.fields(buffer, offset, packet, parent)
  end
end

-- St Indicator
nse_nseix_broadcast_nnfbcast_v1_12.st_indicator = {}

-- Size: St Indicator
nse_nseix_broadcast_nnfbcast_v1_12.st_indicator.size = 2

-- Display: St Indicator
nse_nseix_broadcast_nnfbcast_v1_12.st_indicator.display = function(range, value, packet, parent)
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

-- Dissect Bit Fields: St Indicator
nse_nseix_broadcast_nnfbcast_v1_12.st_indicator.bits = function(range, value, packet, parent)

  -- Reserved 112: 12 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_112, range, value)

  -- Sell: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.sell, range, value)

  -- Buy: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.buy, range, value)

  -- Last Trade Less: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_trade_less, range, value)

  -- Last Trade More: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.last_trade_more, range, value)
end

-- Dissect: St Indicator
nse_nseix_broadcast_nnfbcast_v1_12.st_indicator.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseix_broadcast_nnfbcast_v1_12.st_indicator.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.st_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_indicator, range, display)

  if show.structs then
    nse_nseix_broadcast_nnfbcast_v1_12.st_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- St Mkt Wise Info
nse_nseix_broadcast_nnfbcast_v1_12.st_mkt_wise_info = {}

-- Size: St Mkt Wise Info
nse_nseix_broadcast_nnfbcast_v1_12.st_mkt_wise_info.size =
  nse_nseix_broadcast_nnfbcast_v1_12.st_indicator.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.buy_volume.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.buy_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.sell_volume.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.sell_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.last_trade_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.last_trade_time.size

-- Display: St Mkt Wise Info
nse_nseix_broadcast_nnfbcast_v1_12.st_mkt_wise_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Mkt Wise Info
nse_nseix_broadcast_nnfbcast_v1_12.st_mkt_wise_info.fields = function(buffer, offset, packet, parent, st_mkt_wise_info_index)
  local index = offset

  -- Implicit St Mkt Wise Info Index
  if st_mkt_wise_info_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_mkt_wise_info_index, st_mkt_wise_info_index)
    iteration:set_generated()
  end

  -- St Indicator: Struct of 5 fields
  index, st_indicator = nse_nseix_broadcast_nnfbcast_v1_12.st_indicator.dissect(buffer, index, packet, parent)

  -- Buy Volume: LONG
  index, buy_volume = nse_nseix_broadcast_nnfbcast_v1_12.buy_volume.dissect(buffer, index, packet, parent)

  -- Buy Price: LONG
  index, buy_price = nse_nseix_broadcast_nnfbcast_v1_12.buy_price.dissect(buffer, index, packet, parent)

  -- Sell Volume: LONG
  index, sell_volume = nse_nseix_broadcast_nnfbcast_v1_12.sell_volume.dissect(buffer, index, packet, parent)

  -- Sell Price: LONG
  index, sell_price = nse_nseix_broadcast_nnfbcast_v1_12.sell_price.dissect(buffer, index, packet, parent)

  -- Last Trade Price: LONG
  index, last_trade_price = nse_nseix_broadcast_nnfbcast_v1_12.last_trade_price.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nseix_broadcast_nnfbcast_v1_12.last_trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Mkt Wise Info
nse_nseix_broadcast_nnfbcast_v1_12.st_mkt_wise_info.dissect = function(buffer, offset, packet, parent, st_mkt_wise_info_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_mkt_wise_info, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.st_mkt_wise_info.fields(buffer, offset, packet, parent, st_mkt_wise_info_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.st_mkt_wise_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.st_mkt_wise_info.fields(buffer, offset, packet, parent, st_mkt_wise_info_index)
  end
end

-- St Market Watch Bcast
nse_nseix_broadcast_nnfbcast_v1_12.st_market_watch_bcast = {}

-- Size: St Market Watch Bcast
nse_nseix_broadcast_nnfbcast_v1_12.st_market_watch_bcast.size =
  nse_nseix_broadcast_nnfbcast_v1_12.token.size + 
  3 * nse_nseix_broadcast_nnfbcast_v1_12.st_mkt_wise_info.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.open_interest.size

-- Display: St Market Watch Bcast
nse_nseix_broadcast_nnfbcast_v1_12.st_market_watch_bcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Market Watch Bcast
nse_nseix_broadcast_nnfbcast_v1_12.st_market_watch_bcast.fields = function(buffer, offset, packet, parent, st_market_watch_bcast_index)
  local index = offset

  -- Implicit St Market Watch Bcast Index
  if st_market_watch_bcast_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_market_watch_bcast_index, st_market_watch_bcast_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nseix_broadcast_nnfbcast_v1_12.token.dissect(buffer, index, packet, parent)

  -- Array Of: St Mkt Wise Info
  for st_mkt_wise_info_index = 1, 3 do
    index, st_mkt_wise_info = nse_nseix_broadcast_nnfbcast_v1_12.st_mkt_wise_info.dissect(buffer, index, packet, parent, st_mkt_wise_info_index)
  end

  -- Open Interest: LONG
  index, open_interest = nse_nseix_broadcast_nnfbcast_v1_12.open_interest.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Market Watch Bcast
nse_nseix_broadcast_nnfbcast_v1_12.st_market_watch_bcast.dissect = function(buffer, offset, packet, parent, st_market_watch_bcast_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_market_watch_bcast, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.st_market_watch_bcast.fields(buffer, offset, packet, parent, st_market_watch_bcast_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.st_market_watch_bcast.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.st_market_watch_bcast.fields(buffer, offset, packet, parent, st_market_watch_bcast_index)
  end
end

-- Market Watch Round Robin Message
nse_nseix_broadcast_nnfbcast_v1_12.market_watch_round_robin_message = {}

-- Size: Market Watch Round Robin Message
nse_nseix_broadcast_nnfbcast_v1_12.market_watch_round_robin_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.no_of_records.size + 
  5 * nse_nseix_broadcast_nnfbcast_v1_12.st_market_watch_bcast.size

-- Display: Market Watch Round Robin Message
nse_nseix_broadcast_nnfbcast_v1_12.market_watch_round_robin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Watch Round Robin Message
nse_nseix_broadcast_nnfbcast_v1_12.market_watch_round_robin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Of Records: SHORT
  index, no_of_records = nse_nseix_broadcast_nnfbcast_v1_12.no_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: St Market Watch Bcast
  for st_market_watch_bcast_index = 1, 5 do
    index, st_market_watch_bcast = nse_nseix_broadcast_nnfbcast_v1_12.st_market_watch_bcast.dissect(buffer, index, packet, parent, st_market_watch_bcast_index)
  end

  return index
end

-- Dissect: Market Watch Round Robin Message
nse_nseix_broadcast_nnfbcast_v1_12.market_watch_round_robin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_watch_round_robin_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.market_watch_round_robin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.market_watch_round_robin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.market_watch_round_robin_message.fields(buffer, offset, packet, parent)
  end
end

-- Mbp Information
nse_nseix_broadcast_nnfbcast_v1_12.mbp_information = {}

-- Size: Mbp Information
nse_nseix_broadcast_nnfbcast_v1_12.mbp_information.size =
  nse_nseix_broadcast_nnfbcast_v1_12.quantity.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.number_of_orders.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.bb_buy_sell_flag.size

-- Display: Mbp Information
nse_nseix_broadcast_nnfbcast_v1_12.mbp_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mbp Information
nse_nseix_broadcast_nnfbcast_v1_12.mbp_information.fields = function(buffer, offset, packet, parent, mbp_information_index)
  local index = offset

  -- Implicit Mbp Information Index
  if mbp_information_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_information_index, mbp_information_index)
    iteration:set_generated()
  end

  -- Quantity: LONG
  index, quantity = nse_nseix_broadcast_nnfbcast_v1_12.quantity.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_broadcast_nnfbcast_v1_12.price.dissect(buffer, index, packet, parent)

  -- Number Of Orders: SHORT
  index, number_of_orders = nse_nseix_broadcast_nnfbcast_v1_12.number_of_orders.dissect(buffer, index, packet, parent)

  -- Bb Buy Sell Flag: SHORT
  index, bb_buy_sell_flag = nse_nseix_broadcast_nnfbcast_v1_12.bb_buy_sell_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mbp Information
nse_nseix_broadcast_nnfbcast_v1_12.mbp_information.dissect = function(buffer, offset, packet, parent, mbp_information_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mbp_information, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.mbp_information.fields(buffer, offset, packet, parent, mbp_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.mbp_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.mbp_information.fields(buffer, offset, packet, parent, mbp_information_index)
  end
end

-- Interactive Only Mbp Data
nse_nseix_broadcast_nnfbcast_v1_12.interactive_only_mbp_data = {}

-- Size: Interactive Only Mbp Data
nse_nseix_broadcast_nnfbcast_v1_12.interactive_only_mbp_data.size =
  nse_nseix_broadcast_nnfbcast_v1_12.token.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.book_type.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.trading_status.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.volume_traded_today.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.net_change_indicator.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.net_price_change_from_closing_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.last_trade_quantity.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.last_trade_time.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.average_trade_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.auction_number.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.auction_status.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.initiator_type.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.initiator_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.initiator_quantity.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.auction_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.auction_quantity.size + 
  10 * nse_nseix_broadcast_nnfbcast_v1_12.mbp_information.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.bb_total_buy_flag.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.bb_total_sell_flag.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.total_buy_quantity.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.total_sell_quantity.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.st_indicator.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.closing_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.open_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.high_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.low_price.size

-- Display: Interactive Only Mbp Data
nse_nseix_broadcast_nnfbcast_v1_12.interactive_only_mbp_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Interactive Only Mbp Data
nse_nseix_broadcast_nnfbcast_v1_12.interactive_only_mbp_data.fields = function(buffer, offset, packet, parent, interactive_only_mbp_data_index)
  local index = offset

  -- Implicit Interactive Only Mbp Data Index
  if interactive_only_mbp_data_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.interactive_only_mbp_data_index, interactive_only_mbp_data_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nseix_broadcast_nnfbcast_v1_12.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_broadcast_nnfbcast_v1_12.book_type.dissect(buffer, index, packet, parent)

  -- Trading Status: SHORT
  index, trading_status = nse_nseix_broadcast_nnfbcast_v1_12.trading_status.dissect(buffer, index, packet, parent)

  -- Volume Traded Today: LONG
  index, volume_traded_today = nse_nseix_broadcast_nnfbcast_v1_12.volume_traded_today.dissect(buffer, index, packet, parent)

  -- Last Traded Price: LONG
  index, last_traded_price = nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price.dissect(buffer, index, packet, parent)

  -- Net Change Indicator: CHAR
  index, net_change_indicator = nse_nseix_broadcast_nnfbcast_v1_12.net_change_indicator.dissect(buffer, index, packet, parent)

  -- Net Price Change From Closing Price: LONG
  index, net_price_change_from_closing_price = nse_nseix_broadcast_nnfbcast_v1_12.net_price_change_from_closing_price.dissect(buffer, index, packet, parent)

  -- Last Trade Quantity: LONG
  index, last_trade_quantity = nse_nseix_broadcast_nnfbcast_v1_12.last_trade_quantity.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nseix_broadcast_nnfbcast_v1_12.last_trade_time.dissect(buffer, index, packet, parent)

  -- Average Trade Price: LONG
  index, average_trade_price = nse_nseix_broadcast_nnfbcast_v1_12.average_trade_price.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseix_broadcast_nnfbcast_v1_12.auction_number.dissect(buffer, index, packet, parent)

  -- Auction Status: SHORT
  index, auction_status = nse_nseix_broadcast_nnfbcast_v1_12.auction_status.dissect(buffer, index, packet, parent)

  -- Initiator Type: SHORT
  index, initiator_type = nse_nseix_broadcast_nnfbcast_v1_12.initiator_type.dissect(buffer, index, packet, parent)

  -- Initiator Price: LONG
  index, initiator_price = nse_nseix_broadcast_nnfbcast_v1_12.initiator_price.dissect(buffer, index, packet, parent)

  -- Initiator Quantity: LONG
  index, initiator_quantity = nse_nseix_broadcast_nnfbcast_v1_12.initiator_quantity.dissect(buffer, index, packet, parent)

  -- Auction Price: LONG
  index, auction_price = nse_nseix_broadcast_nnfbcast_v1_12.auction_price.dissect(buffer, index, packet, parent)

  -- Auction Quantity: LONG
  index, auction_quantity = nse_nseix_broadcast_nnfbcast_v1_12.auction_quantity.dissect(buffer, index, packet, parent)

  -- Array Of: Mbp Information
  for mbp_information_index = 1, 10 do
    index, mbp_information = nse_nseix_broadcast_nnfbcast_v1_12.mbp_information.dissect(buffer, index, packet, parent, mbp_information_index)
  end

  -- Bb Total Buy Flag: SHORT
  index, bb_total_buy_flag = nse_nseix_broadcast_nnfbcast_v1_12.bb_total_buy_flag.dissect(buffer, index, packet, parent)

  -- Bb Total Sell Flag: SHORT
  index, bb_total_sell_flag = nse_nseix_broadcast_nnfbcast_v1_12.bb_total_sell_flag.dissect(buffer, index, packet, parent)

  -- Total Buy Quantity: DOUBLE
  index, total_buy_quantity = nse_nseix_broadcast_nnfbcast_v1_12.total_buy_quantity.dissect(buffer, index, packet, parent)

  -- Total Sell Quantity: DOUBLE
  index, total_sell_quantity = nse_nseix_broadcast_nnfbcast_v1_12.total_sell_quantity.dissect(buffer, index, packet, parent)

  -- St Indicator: Struct of 5 fields
  index, st_indicator = nse_nseix_broadcast_nnfbcast_v1_12.st_indicator.dissect(buffer, index, packet, parent)

  -- Closing Price: LONG
  index, closing_price = nse_nseix_broadcast_nnfbcast_v1_12.closing_price.dissect(buffer, index, packet, parent)

  -- Open Price: LONG
  index, open_price = nse_nseix_broadcast_nnfbcast_v1_12.open_price.dissect(buffer, index, packet, parent)

  -- High Price: LONG
  index, high_price = nse_nseix_broadcast_nnfbcast_v1_12.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: LONG
  index, low_price = nse_nseix_broadcast_nnfbcast_v1_12.low_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Interactive Only Mbp Data
nse_nseix_broadcast_nnfbcast_v1_12.interactive_only_mbp_data.dissect = function(buffer, offset, packet, parent, interactive_only_mbp_data_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.interactive_only_mbp_data, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.interactive_only_mbp_data.fields(buffer, offset, packet, parent, interactive_only_mbp_data_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.interactive_only_mbp_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.interactive_only_mbp_data.fields(buffer, offset, packet, parent, interactive_only_mbp_data_index)
  end
end

-- Only Market By Price Message
nse_nseix_broadcast_nnfbcast_v1_12.only_market_by_price_message = {}

-- Size: Only Market By Price Message
nse_nseix_broadcast_nnfbcast_v1_12.only_market_by_price_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.no_of_records.size + 
  2 * nse_nseix_broadcast_nnfbcast_v1_12.interactive_only_mbp_data.size

-- Display: Only Market By Price Message
nse_nseix_broadcast_nnfbcast_v1_12.only_market_by_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Only Market By Price Message
nse_nseix_broadcast_nnfbcast_v1_12.only_market_by_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Of Records: SHORT
  index, no_of_records = nse_nseix_broadcast_nnfbcast_v1_12.no_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Interactive Only Mbp Data
  for interactive_only_mbp_data_index = 1, 2 do
    index, interactive_only_mbp_data = nse_nseix_broadcast_nnfbcast_v1_12.interactive_only_mbp_data.dissect(buffer, index, packet, parent, interactive_only_mbp_data_index)
  end

  return index
end

-- Dissect: Only Market By Price Message
nse_nseix_broadcast_nnfbcast_v1_12.only_market_by_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.only_market_by_price_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.only_market_by_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.only_market_by_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.only_market_by_price_message.fields(buffer, offset, packet, parent)
  end
end

-- St Mbp Info
nse_nseix_broadcast_nnfbcast_v1_12.st_mbp_info = {}

-- Size: St Mbp Info
nse_nseix_broadcast_nnfbcast_v1_12.st_mbp_info.size =
  nse_nseix_broadcast_nnfbcast_v1_12.qty.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.no_of_orders.size

-- Display: St Mbp Info
nse_nseix_broadcast_nnfbcast_v1_12.st_mbp_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Mbp Info
nse_nseix_broadcast_nnfbcast_v1_12.st_mbp_info.fields = function(buffer, offset, packet, parent, st_mbp_info_index)
  local index = offset

  -- Implicit St Mbp Info Index
  if st_mbp_info_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_mbp_info_index, st_mbp_info_index)
    iteration:set_generated()
  end

  -- Qty: LONG
  index, qty = nse_nseix_broadcast_nnfbcast_v1_12.qty.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_broadcast_nnfbcast_v1_12.price.dissect(buffer, index, packet, parent)

  -- No Of Orders: SHORT
  index, no_of_orders = nse_nseix_broadcast_nnfbcast_v1_12.no_of_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Mbp Info
nse_nseix_broadcast_nnfbcast_v1_12.st_mbp_info.dissect = function(buffer, offset, packet, parent, st_mbp_info_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_mbp_info, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.st_mbp_info.fields(buffer, offset, packet, parent, st_mbp_info_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.st_mbp_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.st_mbp_info.fields(buffer, offset, packet, parent, st_mbp_info_index)
  end
end

-- St Mbo Mbp Terms
nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_mbp_terms = {}

-- Size: St Mbo Mbp Terms
nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_mbp_terms.size = 2

-- Display: St Mbo Mbp Terms
nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_mbp_terms.display = function(range, value, packet, parent)
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
nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_mbp_terms.bits = function(range, value, packet, parent)

  -- Reserved 114: 14 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_114, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.aon, range, value)

  -- Mf: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.mf, range, value)
end

-- Dissect: St Mbo Mbp Terms
nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_mbp_terms.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_mbp_terms.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_mbp_terms.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_mbo_mbp_terms, range, display)

  if show.structs then
    nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_mbp_terms.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- St Mbo Info
nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_info = {}

-- Size: St Mbo Info
nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_info.size =
  nse_nseix_broadcast_nnfbcast_v1_12.trader_id.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.qty.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_mbp_terms.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.min_fill_qty.size

-- Display: St Mbo Info
nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Mbo Info
nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_info.fields = function(buffer, offset, packet, parent, st_mbo_info_index)
  local index = offset

  -- Implicit St Mbo Info Index
  if st_mbo_info_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_mbo_info_index, st_mbo_info_index)
    iteration:set_generated()
  end

  -- Trader Id: LONG
  index, trader_id = nse_nseix_broadcast_nnfbcast_v1_12.trader_id.dissect(buffer, index, packet, parent)

  -- Qty: LONG
  index, qty = nse_nseix_broadcast_nnfbcast_v1_12.qty.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nseix_broadcast_nnfbcast_v1_12.price.dissect(buffer, index, packet, parent)

  -- St Mbo Mbp Terms: Struct of 3 fields
  index, st_mbo_mbp_terms = nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_mbp_terms.dissect(buffer, index, packet, parent)

  -- Min Fill Qty: LONG
  index, min_fill_qty = nse_nseix_broadcast_nnfbcast_v1_12.min_fill_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Mbo Info
nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_info.dissect = function(buffer, offset, packet, parent, st_mbo_info_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_mbo_info, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_info.fields(buffer, offset, packet, parent, st_mbo_info_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_info.fields(buffer, offset, packet, parent, st_mbo_info_index)
  end
end

-- St Interactive Mbo Data
nse_nseix_broadcast_nnfbcast_v1_12.st_interactive_mbo_data = {}

-- Size: St Interactive Mbo Data
nse_nseix_broadcast_nnfbcast_v1_12.st_interactive_mbo_data.size =
  nse_nseix_broadcast_nnfbcast_v1_12.token.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.book_type.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.trading_status.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.volume_traded_today.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.net_change_indicator.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.net_price_change_from_closing_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.last_trade_quantity.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.last_trade_time.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.average_trade_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.auction_number.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.auction_status.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.initiator_type.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.initiator_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.initiator_quantity.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.auction_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.auction_quantity.size + 
  10 * nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_info.size

-- Display: St Interactive Mbo Data
nse_nseix_broadcast_nnfbcast_v1_12.st_interactive_mbo_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Interactive Mbo Data
nse_nseix_broadcast_nnfbcast_v1_12.st_interactive_mbo_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nseix_broadcast_nnfbcast_v1_12.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nseix_broadcast_nnfbcast_v1_12.book_type.dissect(buffer, index, packet, parent)

  -- Trading Status: SHORT
  index, trading_status = nse_nseix_broadcast_nnfbcast_v1_12.trading_status.dissect(buffer, index, packet, parent)

  -- Volume Traded Today: LONG
  index, volume_traded_today = nse_nseix_broadcast_nnfbcast_v1_12.volume_traded_today.dissect(buffer, index, packet, parent)

  -- Last Traded Price: LONG
  index, last_traded_price = nse_nseix_broadcast_nnfbcast_v1_12.last_traded_price.dissect(buffer, index, packet, parent)

  -- Net Change Indicator: CHAR
  index, net_change_indicator = nse_nseix_broadcast_nnfbcast_v1_12.net_change_indicator.dissect(buffer, index, packet, parent)

  -- Net Price Change From Closing Price: LONG
  index, net_price_change_from_closing_price = nse_nseix_broadcast_nnfbcast_v1_12.net_price_change_from_closing_price.dissect(buffer, index, packet, parent)

  -- Last Trade Quantity: LONG
  index, last_trade_quantity = nse_nseix_broadcast_nnfbcast_v1_12.last_trade_quantity.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nseix_broadcast_nnfbcast_v1_12.last_trade_time.dissect(buffer, index, packet, parent)

  -- Average Trade Price: LONG
  index, average_trade_price = nse_nseix_broadcast_nnfbcast_v1_12.average_trade_price.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nseix_broadcast_nnfbcast_v1_12.auction_number.dissect(buffer, index, packet, parent)

  -- Auction Status: SHORT
  index, auction_status = nse_nseix_broadcast_nnfbcast_v1_12.auction_status.dissect(buffer, index, packet, parent)

  -- Initiator Type: SHORT
  index, initiator_type = nse_nseix_broadcast_nnfbcast_v1_12.initiator_type.dissect(buffer, index, packet, parent)

  -- Initiator Price: LONG
  index, initiator_price = nse_nseix_broadcast_nnfbcast_v1_12.initiator_price.dissect(buffer, index, packet, parent)

  -- Initiator Quantity: LONG
  index, initiator_quantity = nse_nseix_broadcast_nnfbcast_v1_12.initiator_quantity.dissect(buffer, index, packet, parent)

  -- Auction Price: LONG
  index, auction_price = nse_nseix_broadcast_nnfbcast_v1_12.auction_price.dissect(buffer, index, packet, parent)

  -- Auction Quantity: LONG
  index, auction_quantity = nse_nseix_broadcast_nnfbcast_v1_12.auction_quantity.dissect(buffer, index, packet, parent)

  -- Array Of: St Mbo Info
  for st_mbo_info_index = 1, 10 do
    index, st_mbo_info = nse_nseix_broadcast_nnfbcast_v1_12.st_mbo_info.dissect(buffer, index, packet, parent, st_mbo_info_index)
  end

  return index
end

-- Dissect: St Interactive Mbo Data
nse_nseix_broadcast_nnfbcast_v1_12.st_interactive_mbo_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_interactive_mbo_data, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.st_interactive_mbo_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.st_interactive_mbo_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.st_interactive_mbo_data.fields(buffer, offset, packet, parent)
  end
end

-- Market By Order And Market By Price Message
nse_nseix_broadcast_nnfbcast_v1_12.market_by_order_and_market_by_price_message = {}

-- Size: Market By Order And Market By Price Message
nse_nseix_broadcast_nnfbcast_v1_12.market_by_order_and_market_by_price_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.st_interactive_mbo_data.size + 
  10 * nse_nseix_broadcast_nnfbcast_v1_12.st_mbp_info.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.total_buy_quantity.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.total_sell_quantity.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.st_indicator.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.closing_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.open_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.high_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.low_price.size

-- Display: Market By Order And Market By Price Message
nse_nseix_broadcast_nnfbcast_v1_12.market_by_order_and_market_by_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market By Order And Market By Price Message
nse_nseix_broadcast_nnfbcast_v1_12.market_by_order_and_market_by_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- St Interactive Mbo Data: Struct of 18 fields
  index, st_interactive_mbo_data = nse_nseix_broadcast_nnfbcast_v1_12.st_interactive_mbo_data.dissect(buffer, index, packet, parent)

  -- Array Of: St Mbp Info
  for st_mbp_info_index = 1, 10 do
    index, st_mbp_info = nse_nseix_broadcast_nnfbcast_v1_12.st_mbp_info.dissect(buffer, index, packet, parent, st_mbp_info_index)
  end

  -- Total Buy Quantity: DOUBLE
  index, total_buy_quantity = nse_nseix_broadcast_nnfbcast_v1_12.total_buy_quantity.dissect(buffer, index, packet, parent)

  -- Total Sell Quantity: DOUBLE
  index, total_sell_quantity = nse_nseix_broadcast_nnfbcast_v1_12.total_sell_quantity.dissect(buffer, index, packet, parent)

  -- St Indicator: Struct of 5 fields
  index, st_indicator = nse_nseix_broadcast_nnfbcast_v1_12.st_indicator.dissect(buffer, index, packet, parent)

  -- Closing Price: LONG
  index, closing_price = nse_nseix_broadcast_nnfbcast_v1_12.closing_price.dissect(buffer, index, packet, parent)

  -- Open Price: LONG
  index, open_price = nse_nseix_broadcast_nnfbcast_v1_12.open_price.dissect(buffer, index, packet, parent)

  -- High Price: LONG
  index, high_price = nse_nseix_broadcast_nnfbcast_v1_12.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: LONG
  index, low_price = nse_nseix_broadcast_nnfbcast_v1_12.low_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market By Order And Market By Price Message
nse_nseix_broadcast_nnfbcast_v1_12.market_by_order_and_market_by_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_by_order_and_market_by_price_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.market_by_order_and_market_by_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.market_by_order_and_market_by_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.market_by_order_and_market_by_price_message.fields(buffer, offset, packet, parent)
  end
end

-- St Ticker Index Info
nse_nseix_broadcast_nnfbcast_v1_12.st_ticker_index_info = {}

-- Size: St Ticker Index Info
nse_nseix_broadcast_nnfbcast_v1_12.st_ticker_index_info.size =
  nse_nseix_broadcast_nnfbcast_v1_12.token.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.market_type.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.fill_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.fill_volume.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.open_interest.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.day_hi_oi.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.day_lo_oi.size

-- Display: St Ticker Index Info
nse_nseix_broadcast_nnfbcast_v1_12.st_ticker_index_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Ticker Index Info
nse_nseix_broadcast_nnfbcast_v1_12.st_ticker_index_info.fields = function(buffer, offset, packet, parent, st_ticker_index_info_index)
  local index = offset

  -- Implicit St Ticker Index Info Index
  if st_ticker_index_info_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_ticker_index_info_index, st_ticker_index_info_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nseix_broadcast_nnfbcast_v1_12.token.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nseix_broadcast_nnfbcast_v1_12.market_type.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nseix_broadcast_nnfbcast_v1_12.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Volume: LONG
  index, fill_volume = nse_nseix_broadcast_nnfbcast_v1_12.fill_volume.dissect(buffer, index, packet, parent)

  -- Open Interest: LONG
  index, open_interest = nse_nseix_broadcast_nnfbcast_v1_12.open_interest.dissect(buffer, index, packet, parent)

  -- Day Hi Oi: LONG
  index, day_hi_oi = nse_nseix_broadcast_nnfbcast_v1_12.day_hi_oi.dissect(buffer, index, packet, parent)

  -- Day Lo Oi: LONG
  index, day_lo_oi = nse_nseix_broadcast_nnfbcast_v1_12.day_lo_oi.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Ticker Index Info
nse_nseix_broadcast_nnfbcast_v1_12.st_ticker_index_info.dissect = function(buffer, offset, packet, parent, st_ticker_index_info_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_ticker_index_info, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.st_ticker_index_info.fields(buffer, offset, packet, parent, st_ticker_index_info_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.st_ticker_index_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.st_ticker_index_info.fields(buffer, offset, packet, parent, st_ticker_index_info_index)
  end
end

-- Ticker And Market Index Message
nse_nseix_broadcast_nnfbcast_v1_12.ticker_and_market_index_message = {}

-- Size: Ticker And Market Index Message
nse_nseix_broadcast_nnfbcast_v1_12.ticker_and_market_index_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.number_of_records.size + 
  17 * nse_nseix_broadcast_nnfbcast_v1_12.st_ticker_index_info.size

-- Display: Ticker And Market Index Message
nse_nseix_broadcast_nnfbcast_v1_12.ticker_and_market_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ticker And Market Index Message
nse_nseix_broadcast_nnfbcast_v1_12.ticker_and_market_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nseix_broadcast_nnfbcast_v1_12.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: St Ticker Index Info
  for st_ticker_index_info_index = 1, 17 do
    index, st_ticker_index_info = nse_nseix_broadcast_nnfbcast_v1_12.st_ticker_index_info.dissect(buffer, index, packet, parent, st_ticker_index_info_index)
  end

  return index
end

-- Dissect: Ticker And Market Index Message
nse_nseix_broadcast_nnfbcast_v1_12.ticker_and_market_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.ticker_and_market_index_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.ticker_and_market_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.ticker_and_market_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.ticker_and_market_index_message.fields(buffer, offset, packet, parent)
  end
end

-- St Bcast Destination
nse_nseix_broadcast_nnfbcast_v1_12.st_bcast_destination = {}

-- Size: St Bcast Destination
nse_nseix_broadcast_nnfbcast_v1_12.st_bcast_destination.size = 2

-- Display: St Bcast Destination
nse_nseix_broadcast_nnfbcast_v1_12.st_bcast_destination.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Journaling Required flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Journaling Required"
  end
  -- Is Tandem flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Tandem"
  end
  -- Is Control Workstation flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Control Workstation"
  end
  -- Is Trader Workstation flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Trader Workstation"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: St Bcast Destination
nse_nseix_broadcast_nnfbcast_v1_12.st_bcast_destination.bits = function(range, value, packet, parent)

  -- Reserved 112: 12 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_112, range, value)

  -- Journaling Required: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.journaling_required, range, value)

  -- Tandem: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.tandem, range, value)

  -- Control Workstation: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.control_workstation, range, value)

  -- Trader Workstation: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.trader_workstation, range, value)
end

-- Dissect: St Bcast Destination
nse_nseix_broadcast_nnfbcast_v1_12.st_bcast_destination.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseix_broadcast_nnfbcast_v1_12.st_bcast_destination.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.st_bcast_destination.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_bcast_destination, range, display)

  if show.structs then
    nse_nseix_broadcast_nnfbcast_v1_12.st_bcast_destination.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Sec Info
nse_nseix_broadcast_nnfbcast_v1_12.sec_info = {}

-- Size: Sec Info
nse_nseix_broadcast_nnfbcast_v1_12.sec_info.size =
  nse_nseix_broadcast_nnfbcast_v1_12.instrument_name.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.symbol.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.series.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.expiry_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.strike_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.option_type.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.ca_level.size

-- Display: Sec Info
nse_nseix_broadcast_nnfbcast_v1_12.sec_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sec Info
nse_nseix_broadcast_nnfbcast_v1_12.sec_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Name: CHAR
  index, instrument_name = nse_nseix_broadcast_nnfbcast_v1_12.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nseix_broadcast_nnfbcast_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Series: CHAR
  index, series = nse_nseix_broadcast_nnfbcast_v1_12.series.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nseix_broadcast_nnfbcast_v1_12.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nseix_broadcast_nnfbcast_v1_12.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nseix_broadcast_nnfbcast_v1_12.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nseix_broadcast_nnfbcast_v1_12.ca_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sec Info
nse_nseix_broadcast_nnfbcast_v1_12.sec_info.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.sec_info, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.sec_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.sec_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.sec_info.fields(buffer, offset, packet, parent)
  end
end

-- Market Status Message
nse_nseix_broadcast_nnfbcast_v1_12.market_status_message = {}

-- Size: Market Status Message
nse_nseix_broadcast_nnfbcast_v1_12.market_status_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.token.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.sec_info.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.market_type.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.reserved_4.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.st_bcast_destination.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message_length.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.market_status_broadcast_message.size

-- Display: Market Status Message
nse_nseix_broadcast_nnfbcast_v1_12.market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Status Message
nse_nseix_broadcast_nnfbcast_v1_12.market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nseix_broadcast_nnfbcast_v1_12.token.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 7 fields
  index, sec_info = nse_nseix_broadcast_nnfbcast_v1_12.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nseix_broadcast_nnfbcast_v1_12.market_type.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  if show.padding then
    index, reserved_4 = nse_nseix_broadcast_nnfbcast_v1_12.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_broadcast_nnfbcast_v1_12.reserved_4.size
  end

  -- St Bcast Destination: Struct of 5 fields
  index, st_bcast_destination = nse_nseix_broadcast_nnfbcast_v1_12.st_bcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Market Status Broadcast Message: CHAR
  index, market_status_broadcast_message = nse_nseix_broadcast_nnfbcast_v1_12.market_status_broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Status Message
nse_nseix_broadcast_nnfbcast_v1_12.market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.market_status_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Turnover Exceeded Message
nse_nseix_broadcast_nnfbcast_v1_12.turnover_exceeded_message = {}

-- Size: Turnover Exceeded Message
nse_nseix_broadcast_nnfbcast_v1_12.turnover_exceeded_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.broker_code.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.counter_broker_code.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.warning_type.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.token.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.instrument_name.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.symbol.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.expiry_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.strike_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.option_type.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.ca_level.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.trade_number.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.trade_price.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.trade_volume.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.final.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.c_filler.size

-- Display: Turnover Exceeded Message
nse_nseix_broadcast_nnfbcast_v1_12.turnover_exceeded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Turnover Exceeded Message
nse_nseix_broadcast_nnfbcast_v1_12.turnover_exceeded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Code: CHAR
  index, broker_code = nse_nseix_broadcast_nnfbcast_v1_12.broker_code.dissect(buffer, index, packet, parent)

  -- Counter Broker Code: CHAR
  index, counter_broker_code = nse_nseix_broadcast_nnfbcast_v1_12.counter_broker_code.dissect(buffer, index, packet, parent)

  -- Warning Type: SHORT
  index, warning_type = nse_nseix_broadcast_nnfbcast_v1_12.warning_type.dissect(buffer, index, packet, parent)

  -- Token: LONG
  index, token = nse_nseix_broadcast_nnfbcast_v1_12.token.dissect(buffer, index, packet, parent)

  -- Instrument Name: CHAR
  index, instrument_name = nse_nseix_broadcast_nnfbcast_v1_12.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nseix_broadcast_nnfbcast_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nseix_broadcast_nnfbcast_v1_12.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nseix_broadcast_nnfbcast_v1_12.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nseix_broadcast_nnfbcast_v1_12.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nseix_broadcast_nnfbcast_v1_12.ca_level.dissect(buffer, index, packet, parent)

  -- Trade Number: LONG
  index, trade_number = nse_nseix_broadcast_nnfbcast_v1_12.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Price: LONG
  index, trade_price = nse_nseix_broadcast_nnfbcast_v1_12.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: LONG
  index, trade_volume = nse_nseix_broadcast_nnfbcast_v1_12.trade_volume.dissect(buffer, index, packet, parent)

  -- Final: CHAR
  index, final = nse_nseix_broadcast_nnfbcast_v1_12.final.dissect(buffer, index, packet, parent)

  -- C Filler: CHAR
  index, c_filler = nse_nseix_broadcast_nnfbcast_v1_12.c_filler.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Turnover Exceeded Message
nse_nseix_broadcast_nnfbcast_v1_12.turnover_exceeded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.turnover_exceeded_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.turnover_exceeded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.turnover_exceeded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.turnover_exceeded_message.fields(buffer, offset, packet, parent)
  end
end

-- St Sec Status Per Market
nse_nseix_broadcast_nnfbcast_v1_12.st_sec_status_per_market = {}

-- Size: St Sec Status Per Market
nse_nseix_broadcast_nnfbcast_v1_12.st_sec_status_per_market.size =
  nse_nseix_broadcast_nnfbcast_v1_12.status.size

-- Display: St Sec Status Per Market
nse_nseix_broadcast_nnfbcast_v1_12.st_sec_status_per_market.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Sec Status Per Market
nse_nseix_broadcast_nnfbcast_v1_12.st_sec_status_per_market.fields = function(buffer, offset, packet, parent, st_sec_status_per_market_index)
  local index = offset

  -- Implicit St Sec Status Per Market Index
  if st_sec_status_per_market_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_sec_status_per_market_index, st_sec_status_per_market_index)
    iteration:set_generated()
  end

  -- Status: SHORT
  index, status = nse_nseix_broadcast_nnfbcast_v1_12.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Sec Status Per Market
nse_nseix_broadcast_nnfbcast_v1_12.st_sec_status_per_market.dissect = function(buffer, offset, packet, parent, st_sec_status_per_market_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_sec_status_per_market, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.st_sec_status_per_market.fields(buffer, offset, packet, parent, st_sec_status_per_market_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.st_sec_status_per_market.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.st_sec_status_per_market.fields(buffer, offset, packet, parent, st_sec_status_per_market_index)
  end
end

-- Token And Eligibility
nse_nseix_broadcast_nnfbcast_v1_12.token_and_eligibility = {}

-- Size: Token And Eligibility
nse_nseix_broadcast_nnfbcast_v1_12.token_and_eligibility.size =
  nse_nseix_broadcast_nnfbcast_v1_12.token.size + 
  4 * nse_nseix_broadcast_nnfbcast_v1_12.st_sec_status_per_market.size

-- Display: Token And Eligibility
nse_nseix_broadcast_nnfbcast_v1_12.token_and_eligibility.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Token And Eligibility
nse_nseix_broadcast_nnfbcast_v1_12.token_and_eligibility.fields = function(buffer, offset, packet, parent, token_and_eligibility_index)
  local index = offset

  -- Implicit Token And Eligibility Index
  if token_and_eligibility_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.token_and_eligibility_index, token_and_eligibility_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nseix_broadcast_nnfbcast_v1_12.token.dissect(buffer, index, packet, parent)

  -- Array Of: St Sec Status Per Market
  for st_sec_status_per_market_index = 1, 4 do
    index, st_sec_status_per_market = nse_nseix_broadcast_nnfbcast_v1_12.st_sec_status_per_market.dissect(buffer, index, packet, parent, st_sec_status_per_market_index)
  end

  return index
end

-- Dissect: Token And Eligibility
nse_nseix_broadcast_nnfbcast_v1_12.token_and_eligibility.dissect = function(buffer, offset, packet, parent, token_and_eligibility_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.token_and_eligibility, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.token_and_eligibility.fields(buffer, offset, packet, parent, token_and_eligibility_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.token_and_eligibility.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.token_and_eligibility.fields(buffer, offset, packet, parent, token_and_eligibility_index)
  end
end

-- Security Status Change Message
nse_nseix_broadcast_nnfbcast_v1_12.security_status_change_message = {}

-- Size: Security Status Change Message
nse_nseix_broadcast_nnfbcast_v1_12.security_status_change_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.number_of_records.size + 
  35 * nse_nseix_broadcast_nnfbcast_v1_12.token_and_eligibility.size

-- Display: Security Status Change Message
nse_nseix_broadcast_nnfbcast_v1_12.security_status_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Change Message
nse_nseix_broadcast_nnfbcast_v1_12.security_status_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nseix_broadcast_nnfbcast_v1_12.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Token And Eligibility
  for token_and_eligibility_index = 1, 35 do
    index, token_and_eligibility = nse_nseix_broadcast_nnfbcast_v1_12.token_and_eligibility.dissect(buffer, index, packet, parent, token_and_eligibility_index)
  end

  return index
end

-- Dissect: Security Status Change Message
nse_nseix_broadcast_nnfbcast_v1_12.security_status_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.security_status_change_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.security_status_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.security_status_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.security_status_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Participant Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.participant_master_change_message = {}

-- Size: Participant Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.participant_master_change_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.participant_id.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.participant_name.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.participant_status.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.participant_update_date_time.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.delete_flag.size

-- Display: Participant Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.participant_master_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.participant_master_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: CHAR
  index, participant_id = nse_nseix_broadcast_nnfbcast_v1_12.participant_id.dissect(buffer, index, packet, parent)

  -- Participant Name: CHAR
  index, participant_name = nse_nseix_broadcast_nnfbcast_v1_12.participant_name.dissect(buffer, index, packet, parent)

  -- Participant Status: CHAR
  index, participant_status = nse_nseix_broadcast_nnfbcast_v1_12.participant_status.dissect(buffer, index, packet, parent)

  -- Participant Update Date Time: LONG
  index, participant_update_date_time = nse_nseix_broadcast_nnfbcast_v1_12.participant_update_date_time.dissect(buffer, index, packet, parent)

  -- Delete Flag: CHAR
  index, delete_flag = nse_nseix_broadcast_nnfbcast_v1_12.delete_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.participant_master_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.participant_master_change_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.participant_master_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.participant_master_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.participant_master_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.instrument_master_change_message = {}

-- Size: Instrument Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.instrument_master_change_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.instrument_id.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.instrument_name.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.instrument_description.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.instrument_update_date_time.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.delete_flag.size

-- Display: Instrument Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.instrument_master_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.instrument_master_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: SHORT
  index, instrument_id = nse_nseix_broadcast_nnfbcast_v1_12.instrument_id.dissect(buffer, index, packet, parent)

  -- Instrument Name: CHAR
  index, instrument_name = nse_nseix_broadcast_nnfbcast_v1_12.instrument_name.dissect(buffer, index, packet, parent)

  -- Instrument Description: CHAR
  index, instrument_description = nse_nseix_broadcast_nnfbcast_v1_12.instrument_description.dissect(buffer, index, packet, parent)

  -- Instrument Update Date Time: LONG
  index, instrument_update_date_time = nse_nseix_broadcast_nnfbcast_v1_12.instrument_update_date_time.dissect(buffer, index, packet, parent)

  -- Delete Flag: CHAR
  index, delete_flag = nse_nseix_broadcast_nnfbcast_v1_12.delete_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.instrument_master_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.instrument_master_change_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.instrument_master_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.instrument_master_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.instrument_master_change_message.fields(buffer, offset, packet, parent)
  end
end

-- St Purpose
nse_nseix_broadcast_nnfbcast_v1_12.st_purpose = {}

-- Size: St Purpose
nse_nseix_broadcast_nnfbcast_v1_12.st_purpose.size = 2

-- Display: St Purpose
nse_nseix_broadcast_nnfbcast_v1_12.st_purpose.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Corporate Adjusted flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Is Corporate Adjusted"
  end
  -- Is Is This Asset flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Is This Asset"
  end
  -- Is Pl Allowed flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Pl Allowed"
  end
  -- Is Ex Rejection Allowed flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Ex Rejection Allowed"
  end
  -- Is Ex Allowed flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Ex Allowed"
  end
  -- Is Exercise Style flag set?
  if bit.band(value, 0x0100) ~= 0 then
    flags[#flags + 1] = "Exercise Style"
  end
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

-- Dissect Bit Fields: St Purpose
nse_nseix_broadcast_nnfbcast_v1_12.st_purpose.bits = function(range, value, packet, parent)

  -- Reserved 13: 3 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_13, range, value)

  -- Is Corporate Adjusted: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.is_corporate_adjusted, range, value)

  -- Is This Asset: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.is_this_asset, range, value)

  -- Pl Allowed: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.pl_allowed, range, value)

  -- Ex Rejection Allowed: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.ex_rejection_allowed, range, value)

  -- Ex Allowed: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.ex_allowed, range, value)

  -- Exercise Style: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.exercise_style, range, value)

  -- Reserved 10: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_10, range, value)

  -- Egm: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.egm, range, value)

  -- Agm: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.agm, range, value)

  -- Interest: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.interest, range, value)

  -- Bonus: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bonus, range, value)

  -- Rights: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.rights, range, value)

  -- Dividend: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.dividend, range, value)
end

-- Dissect: St Purpose
nse_nseix_broadcast_nnfbcast_v1_12.st_purpose.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseix_broadcast_nnfbcast_v1_12.st_purpose.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.st_purpose.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_purpose, range, display)

  if show.structs then
    nse_nseix_broadcast_nnfbcast_v1_12.st_purpose.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- St Eligiblity Indicators
nse_nseix_broadcast_nnfbcast_v1_12.st_eligiblity_indicators = {}

-- Size: St Eligiblity Indicators
nse_nseix_broadcast_nnfbcast_v1_12.st_eligiblity_indicators.size = 2

-- Display: St Eligiblity Indicators
nse_nseix_broadcast_nnfbcast_v1_12.st_eligiblity_indicators.display = function(range, value, packet, parent)
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

-- Dissect Bit Fields: St Eligiblity Indicators
nse_nseix_broadcast_nnfbcast_v1_12.st_eligiblity_indicators.bits = function(range, value, packet, parent)

  -- Reserved 113: 13 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_113, range, value)

  -- Minimum Fill: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.minimum_fill, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.aon, range, value)

  -- Participate In Market Index: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.participate_in_market_index, range, value)
end

-- Dissect: St Eligiblity Indicators
nse_nseix_broadcast_nnfbcast_v1_12.st_eligiblity_indicators.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseix_broadcast_nnfbcast_v1_12.st_eligiblity_indicators.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.st_eligiblity_indicators.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_eligiblity_indicators, range, display)

  if show.structs then
    nse_nseix_broadcast_nnfbcast_v1_12.st_eligiblity_indicators.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Eligibility Flags
nse_nseix_broadcast_nnfbcast_v1_12.security_eligibility_flags = {}

-- Size: Security Eligibility Flags
nse_nseix_broadcast_nnfbcast_v1_12.security_eligibility_flags.size = 1

-- Display: Security Eligibility Flags
nse_nseix_broadcast_nnfbcast_v1_12.security_eligibility_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Eligibility flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Eligibility"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Eligibility Flags
nse_nseix_broadcast_nnfbcast_v1_12.security_eligibility_flags.bits = function(range, value, packet, parent)

  -- Reserved 17: 7 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.reserved_17, range, value)

  -- Eligibility: 1 Bit
  parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.eligibility, range, value)
end

-- Dissect: Security Eligibility Flags
nse_nseix_broadcast_nnfbcast_v1_12.security_eligibility_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nseix_broadcast_nnfbcast_v1_12.security_eligibility_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nseix_broadcast_nnfbcast_v1_12.security_eligibility_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.security_eligibility_flags, range, display)

  if show.structs then
    nse_nseix_broadcast_nnfbcast_v1_12.security_eligibility_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- St Sec Eligibility Per Market
nse_nseix_broadcast_nnfbcast_v1_12.st_sec_eligibility_per_market = {}

-- Size: St Sec Eligibility Per Market
nse_nseix_broadcast_nnfbcast_v1_12.st_sec_eligibility_per_market.size =
  nse_nseix_broadcast_nnfbcast_v1_12.security_eligibility_flags.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.reserved_1.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.status.size

-- Display: St Sec Eligibility Per Market
nse_nseix_broadcast_nnfbcast_v1_12.st_sec_eligibility_per_market.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Sec Eligibility Per Market
nse_nseix_broadcast_nnfbcast_v1_12.st_sec_eligibility_per_market.fields = function(buffer, offset, packet, parent, st_sec_eligibility_per_market_index)
  local index = offset

  -- Implicit St Sec Eligibility Per Market Index
  if st_sec_eligibility_per_market_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_sec_eligibility_per_market_index, st_sec_eligibility_per_market_index)
    iteration:set_generated()
  end

  -- Security Eligibility Flags: Struct of 2 fields
  index, security_eligibility_flags = nse_nseix_broadcast_nnfbcast_v1_12.security_eligibility_flags.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  if show.padding then
    index, reserved_1 = nse_nseix_broadcast_nnfbcast_v1_12.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_broadcast_nnfbcast_v1_12.reserved_1.size
  end

  -- Status: SHORT
  index, status = nse_nseix_broadcast_nnfbcast_v1_12.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Sec Eligibility Per Market
nse_nseix_broadcast_nnfbcast_v1_12.st_sec_eligibility_per_market.dissect = function(buffer, offset, packet, parent, st_sec_eligibility_per_market_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.st_sec_eligibility_per_market, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.st_sec_eligibility_per_market.fields(buffer, offset, packet, parent, st_sec_eligibility_per_market_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.st_sec_eligibility_per_market.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.st_sec_eligibility_per_market.fields(buffer, offset, packet, parent, st_sec_eligibility_per_market_index)
  end
end

-- Security Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.security_master_change_message = {}

-- Size: Security Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.security_master_change_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.token.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.sec_info.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.permitted_to_trade.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.issued_capital.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.warning_quantity.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.freeze_quantity.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.credit_rating.size + 
  4 * nse_nseix_broadcast_nnfbcast_v1_12.st_sec_eligibility_per_market.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.issue_rate.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.issue_start_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.interest_payment_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.issue_maturity_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.margin_percentage.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.minimum_lot_quantity.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.board_lot_quantity.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.tick_size.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.name.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.traded_in_cents.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.listing_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.expulsion_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.re_admission_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.record_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.low_price_range.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.high_price_range.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.expiry_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.no_delivery_start_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.no_delivery_end_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.st_eligiblity_indicators.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.book_closure_start_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.book_closure_end_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.exercise_start_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.exercise_end_date.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.multiplier.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.asset_instrument.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.asset_name.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.asset_token.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.intrinsic_value.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.extrinsic_value.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.st_purpose.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.local_update_date_time.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.delete_flag.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.remark.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.base_price.size

-- Display: Security Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.security_master_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.security_master_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nseix_broadcast_nnfbcast_v1_12.token.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 7 fields
  index, sec_info = nse_nseix_broadcast_nnfbcast_v1_12.sec_info.dissect(buffer, index, packet, parent)

  -- Permitted To Trade: SHORT
  index, permitted_to_trade = nse_nseix_broadcast_nnfbcast_v1_12.permitted_to_trade.dissect(buffer, index, packet, parent)

  -- Issued Capital: DOUBLE
  index, issued_capital = nse_nseix_broadcast_nnfbcast_v1_12.issued_capital.dissect(buffer, index, packet, parent)

  -- Warning Quantity: LONG
  index, warning_quantity = nse_nseix_broadcast_nnfbcast_v1_12.warning_quantity.dissect(buffer, index, packet, parent)

  -- Freeze Quantity: LONG
  index, freeze_quantity = nse_nseix_broadcast_nnfbcast_v1_12.freeze_quantity.dissect(buffer, index, packet, parent)

  -- Credit Rating: CHAR
  index, credit_rating = nse_nseix_broadcast_nnfbcast_v1_12.credit_rating.dissect(buffer, index, packet, parent)

  -- Array Of: St Sec Eligibility Per Market
  for st_sec_eligibility_per_market_index = 1, 4 do
    index, st_sec_eligibility_per_market = nse_nseix_broadcast_nnfbcast_v1_12.st_sec_eligibility_per_market.dissect(buffer, index, packet, parent, st_sec_eligibility_per_market_index)
  end

  -- Issue Rate: SHORT
  index, issue_rate = nse_nseix_broadcast_nnfbcast_v1_12.issue_rate.dissect(buffer, index, packet, parent)

  -- Issue Start Date: LONG
  index, issue_start_date = nse_nseix_broadcast_nnfbcast_v1_12.issue_start_date.dissect(buffer, index, packet, parent)

  -- Interest Payment Date: LONG
  index, interest_payment_date = nse_nseix_broadcast_nnfbcast_v1_12.interest_payment_date.dissect(buffer, index, packet, parent)

  -- Issue Maturity Date: LONG
  index, issue_maturity_date = nse_nseix_broadcast_nnfbcast_v1_12.issue_maturity_date.dissect(buffer, index, packet, parent)

  -- Margin Percentage: LONG
  index, margin_percentage = nse_nseix_broadcast_nnfbcast_v1_12.margin_percentage.dissect(buffer, index, packet, parent)

  -- Minimum Lot Quantity: LONG
  index, minimum_lot_quantity = nse_nseix_broadcast_nnfbcast_v1_12.minimum_lot_quantity.dissect(buffer, index, packet, parent)

  -- Board Lot Quantity: LONG
  index, board_lot_quantity = nse_nseix_broadcast_nnfbcast_v1_12.board_lot_quantity.dissect(buffer, index, packet, parent)

  -- Tick Size: LONG
  index, tick_size = nse_nseix_broadcast_nnfbcast_v1_12.tick_size.dissect(buffer, index, packet, parent)

  -- Name: CHAR
  index, name = nse_nseix_broadcast_nnfbcast_v1_12.name.dissect(buffer, index, packet, parent)

  -- Traded In Cents: CHAR
  index, traded_in_cents = nse_nseix_broadcast_nnfbcast_v1_12.traded_in_cents.dissect(buffer, index, packet, parent)

  -- Listing Date: LONG
  index, listing_date = nse_nseix_broadcast_nnfbcast_v1_12.listing_date.dissect(buffer, index, packet, parent)

  -- Expulsion Date: LONG
  index, expulsion_date = nse_nseix_broadcast_nnfbcast_v1_12.expulsion_date.dissect(buffer, index, packet, parent)

  -- Re Admission Date: LONG
  index, re_admission_date = nse_nseix_broadcast_nnfbcast_v1_12.re_admission_date.dissect(buffer, index, packet, parent)

  -- Record Date: LONG
  index, record_date = nse_nseix_broadcast_nnfbcast_v1_12.record_date.dissect(buffer, index, packet, parent)

  -- Low Price Range: LONG
  index, low_price_range = nse_nseix_broadcast_nnfbcast_v1_12.low_price_range.dissect(buffer, index, packet, parent)

  -- High Price Range: LONG
  index, high_price_range = nse_nseix_broadcast_nnfbcast_v1_12.high_price_range.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nseix_broadcast_nnfbcast_v1_12.expiry_date.dissect(buffer, index, packet, parent)

  -- No Delivery Start Date: LONG
  index, no_delivery_start_date = nse_nseix_broadcast_nnfbcast_v1_12.no_delivery_start_date.dissect(buffer, index, packet, parent)

  -- No Delivery End Date: LONG
  index, no_delivery_end_date = nse_nseix_broadcast_nnfbcast_v1_12.no_delivery_end_date.dissect(buffer, index, packet, parent)

  -- St Eligiblity Indicators: Struct of 4 fields
  index, st_eligiblity_indicators = nse_nseix_broadcast_nnfbcast_v1_12.st_eligiblity_indicators.dissect(buffer, index, packet, parent)

  -- Book Closure Start Date: LONG
  index, book_closure_start_date = nse_nseix_broadcast_nnfbcast_v1_12.book_closure_start_date.dissect(buffer, index, packet, parent)

  -- Book Closure End Date: LONG
  index, book_closure_end_date = nse_nseix_broadcast_nnfbcast_v1_12.book_closure_end_date.dissect(buffer, index, packet, parent)

  -- Exercise Start Date: LONG
  index, exercise_start_date = nse_nseix_broadcast_nnfbcast_v1_12.exercise_start_date.dissect(buffer, index, packet, parent)

  -- Exercise End Date: LONG
  index, exercise_end_date = nse_nseix_broadcast_nnfbcast_v1_12.exercise_end_date.dissect(buffer, index, packet, parent)

  -- Multiplier: LONG
  index, multiplier = nse_nseix_broadcast_nnfbcast_v1_12.multiplier.dissect(buffer, index, packet, parent)

  -- Asset Instrument: CHAR
  index, asset_instrument = nse_nseix_broadcast_nnfbcast_v1_12.asset_instrument.dissect(buffer, index, packet, parent)

  -- Asset Name: CHAR
  index, asset_name = nse_nseix_broadcast_nnfbcast_v1_12.asset_name.dissect(buffer, index, packet, parent)

  -- Asset Token: LONG
  index, asset_token = nse_nseix_broadcast_nnfbcast_v1_12.asset_token.dissect(buffer, index, packet, parent)

  -- Intrinsic Value: LONG
  index, intrinsic_value = nse_nseix_broadcast_nnfbcast_v1_12.intrinsic_value.dissect(buffer, index, packet, parent)

  -- Extrinsic Value: LONG
  index, extrinsic_value = nse_nseix_broadcast_nnfbcast_v1_12.extrinsic_value.dissect(buffer, index, packet, parent)

  -- St Purpose: Struct of 14 fields
  index, st_purpose = nse_nseix_broadcast_nnfbcast_v1_12.st_purpose.dissect(buffer, index, packet, parent)

  -- Local Update Date Time: LONG
  index, local_update_date_time = nse_nseix_broadcast_nnfbcast_v1_12.local_update_date_time.dissect(buffer, index, packet, parent)

  -- Delete Flag: CHAR
  index, delete_flag = nse_nseix_broadcast_nnfbcast_v1_12.delete_flag.dissect(buffer, index, packet, parent)

  -- Remark: CHAR
  index, remark = nse_nseix_broadcast_nnfbcast_v1_12.remark.dissect(buffer, index, packet, parent)

  -- Base Price: LONG
  index, base_price = nse_nseix_broadcast_nnfbcast_v1_12.base_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Master Change Message
nse_nseix_broadcast_nnfbcast_v1_12.security_master_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.security_master_change_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.security_master_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.security_master_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.security_master_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Broadcast Journal Vct Message
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_journal_vct_message = {}

-- Size: Broadcast Journal Vct Message
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_journal_vct_message.size =
  nse_nseix_broadcast_nnfbcast_v1_12.branch_number.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.broker_number.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.action_code.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.st_bcast_destination.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.reserved_26.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message_length.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message.size

-- Display: Broadcast Journal Vct Message
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_journal_vct_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broadcast Journal Vct Message
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_journal_vct_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Branch Number: SHORT
  index, branch_number = nse_nseix_broadcast_nnfbcast_v1_12.branch_number.dissect(buffer, index, packet, parent)

  -- Broker Number: CHAR
  index, broker_number = nse_nseix_broadcast_nnfbcast_v1_12.broker_number.dissect(buffer, index, packet, parent)

  -- Action Code: CHAR
  index, action_code = nse_nseix_broadcast_nnfbcast_v1_12.action_code.dissect(buffer, index, packet, parent)

  -- St Bcast Destination: Struct of 5 fields
  index, st_bcast_destination = nse_nseix_broadcast_nnfbcast_v1_12.st_bcast_destination.dissect(buffer, index, packet, parent)

  -- Reserved 26: CHAR
  if show.padding then
    index, reserved_26 = nse_nseix_broadcast_nnfbcast_v1_12.reserved_26.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_broadcast_nnfbcast_v1_12.reserved_26.size
  end

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nseix_broadcast_nnfbcast_v1_12.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broadcast Journal Vct Message
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_journal_vct_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.broadcast_journal_vct_message, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.broadcast_journal_vct_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.broadcast_journal_vct_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.broadcast_journal_vct_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Payload
nse_nseix_broadcast_nnfbcast_v1_12.message_payload = {}

-- Dispatch: Message Payload
nse_nseix_broadcast_nnfbcast_v1_12.message_payload.dispatch = {
  [6501] = nse_nseix_broadcast_nnfbcast_v1_12.broadcast_journal_vct_message.dissect,
  [7305] = nse_nseix_broadcast_nnfbcast_v1_12.security_master_change_message.dissect,
  [7340] = nse_nseix_broadcast_nnfbcast_v1_12.security_master_change_message.dissect,
  [7324] = nse_nseix_broadcast_nnfbcast_v1_12.instrument_master_change_message.dissect,
  [7306] = nse_nseix_broadcast_nnfbcast_v1_12.participant_master_change_message.dissect,
  [7320] = nse_nseix_broadcast_nnfbcast_v1_12.security_status_change_message.dissect,
  [7210] = nse_nseix_broadcast_nnfbcast_v1_12.security_status_change_message.dissect,
  [9010] = nse_nseix_broadcast_nnfbcast_v1_12.turnover_exceeded_message.dissect,
  [9011] = nse_nseix_broadcast_nnfbcast_v1_12.turnover_exceeded_message.dissect,
  [6511] = nse_nseix_broadcast_nnfbcast_v1_12.market_status_message.dissect,
  [6521] = nse_nseix_broadcast_nnfbcast_v1_12.market_status_message.dissect,
  [6522] = nse_nseix_broadcast_nnfbcast_v1_12.market_status_message.dissect,
  [6531] = nse_nseix_broadcast_nnfbcast_v1_12.market_status_message.dissect,
  [6551] = nse_nseix_broadcast_nnfbcast_v1_12.market_status_message.dissect,
  [6571] = nse_nseix_broadcast_nnfbcast_v1_12.market_status_message.dissect,
  [7202] = nse_nseix_broadcast_nnfbcast_v1_12.ticker_and_market_index_message.dissect,
  [7200] = nse_nseix_broadcast_nnfbcast_v1_12.market_by_order_and_market_by_price_message.dissect,
  [7208] = nse_nseix_broadcast_nnfbcast_v1_12.only_market_by_price_message.dissect,
  [7343] = nse_nseix_broadcast_nnfbcast_v1_12.only_market_by_price_message.dissect,
  [7201] = nse_nseix_broadcast_nnfbcast_v1_12.market_watch_round_robin_message.dissect,
  [7213] = nse_nseix_broadcast_nnfbcast_v1_12.currency_assets_message.dissect,
  [7214] = nse_nseix_broadcast_nnfbcast_v1_12.interest_rate_assets_message.dissect,
  [6541] = nse_nseix_broadcast_nnfbcast_v1_12.circuit_check_message.dissect,
  [7211] = nse_nseix_broadcast_nnfbcast_v1_12.spread_market_by_price_delta_message.dissect,
  [7130] = nse_nseix_broadcast_nnfbcast_v1_12.asset_open_interest_message.dissect,
  [6503] = nse_nseix_broadcast_nnfbcast_v1_12.asset_interest_rate_change_message.dissect,
  [7220] = nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_message.dissect,
  [7221] = nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_message.dissect,
  [7342] = nse_nseix_broadcast_nnfbcast_v1_12.trade_execution_range_message.dissect,
  [7215] = nse_nseix_broadcast_nnfbcast_v1_12.market_by_aggregate_delta_message.dissect,
  [7216] = nse_nseix_broadcast_nnfbcast_v1_12.market_by_aggregate_delta_message.dissect,
  [7309] = nse_nseix_broadcast_nnfbcast_v1_12.spread_combination_master_change_message.dissect,
  [7341] = nse_nseix_broadcast_nnfbcast_v1_12.spread_combination_master_change_message.dissect,
}

-- Dissect: Message Payload
nse_nseix_broadcast_nnfbcast_v1_12.message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  local dissect = nse_nseix_broadcast_nnfbcast_v1_12.message_payload.dispatch[transaction_code]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Bcast Header
nse_nseix_broadcast_nnfbcast_v1_12.bcast_header = {}

-- Size: Bcast Header
nse_nseix_broadcast_nnfbcast_v1_12.bcast_header.size =
  nse_nseix_broadcast_nnfbcast_v1_12.reserved_0.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.reserved_2.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.log_time.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.alpha_char.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.transaction_code.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.error_code.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.bc_seq_no.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.reserved_18.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.reserved_19.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.time_stamp_2.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.filler_2.size + 
  nse_nseix_broadcast_nnfbcast_v1_12.message_length.size

-- Display: Bcast Header
nse_nseix_broadcast_nnfbcast_v1_12.bcast_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bcast Header
nse_nseix_broadcast_nnfbcast_v1_12.bcast_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 0: CHAR
  if show.padding then
    index, reserved_0 = nse_nseix_broadcast_nnfbcast_v1_12.reserved_0.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_broadcast_nnfbcast_v1_12.reserved_0.size
  end

  -- Reserved 2: CHAR
  if show.padding then
    index, reserved_2 = nse_nseix_broadcast_nnfbcast_v1_12.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_broadcast_nnfbcast_v1_12.reserved_2.size
  end

  -- Log Time: LONG
  index, log_time = nse_nseix_broadcast_nnfbcast_v1_12.log_time.dissect(buffer, index, packet, parent)

  -- Alpha Char: CHAR
  index, alpha_char = nse_nseix_broadcast_nnfbcast_v1_12.alpha_char.dissect(buffer, index, packet, parent)

  -- Transaction Code: SHORT
  index, transaction_code = nse_nseix_broadcast_nnfbcast_v1_12.transaction_code.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nseix_broadcast_nnfbcast_v1_12.error_code.dissect(buffer, index, packet, parent)

  -- Bc Seq No: LONG
  index, bc_seq_no = nse_nseix_broadcast_nnfbcast_v1_12.bc_seq_no.dissect(buffer, index, packet, parent)

  -- Reserved 18: CHAR
  if show.padding then
    index, reserved_18 = nse_nseix_broadcast_nnfbcast_v1_12.reserved_18.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_broadcast_nnfbcast_v1_12.reserved_18.size
  end

  -- Reserved 19: CHAR
  if show.padding then
    index, reserved_19 = nse_nseix_broadcast_nnfbcast_v1_12.reserved_19.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_broadcast_nnfbcast_v1_12.reserved_19.size
  end

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nseix_broadcast_nnfbcast_v1_12.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Filler 2: BYTE
  if show.padding then
    index, filler_2 = nse_nseix_broadcast_nnfbcast_v1_12.filler_2.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_broadcast_nnfbcast_v1_12.filler_2.size
  end

  -- Message Length: SHORT
  index, message_length = nse_nseix_broadcast_nnfbcast_v1_12.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bcast Header
nse_nseix_broadcast_nnfbcast_v1_12.bcast_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bcast_header, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.bcast_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.bcast_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.bcast_header.fields(buffer, offset, packet, parent)
  end
end

-- Broadcast Data
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_data = {}

-- Calculate size of: Broadcast Data
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_data.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseix_broadcast_nnfbcast_v1_12.bcast_market_type.size

  index = index + nse_nseix_broadcast_nnfbcast_v1_12.bcast_reserved.size

  index = index + nse_nseix_broadcast_nnfbcast_v1_12.bcast_header.size

  -- Calculate runtime size of Message Payload field
  local message_payload_offset = offset + index
  local message_payload_type = buffer(message_payload_offset - 30, 2):int()
  index = index + nse_nseix_broadcast_nnfbcast_v1_12.message_payload.size(buffer, message_payload_offset, message_payload_type)

  return index
end

-- Display: Broadcast Data
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broadcast Data
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bcast Market Type: CHAR
  index, bcast_market_type = nse_nseix_broadcast_nnfbcast_v1_12.bcast_market_type.dissect(buffer, index, packet, parent)

  -- Bcast Reserved: CHAR
  if show.padding then
    index, bcast_reserved = nse_nseix_broadcast_nnfbcast_v1_12.bcast_reserved.dissect(buffer, index, packet, parent)
  else
    index = index + nse_nseix_broadcast_nnfbcast_v1_12.bcast_reserved.size
  end

  -- Bcast Header: Struct of 12 fields
  index, bcast_header = nse_nseix_broadcast_nnfbcast_v1_12.bcast_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 30, 2):int()

  -- Message Payload: Runtime Type with 20 branches
  index = nse_nseix_broadcast_nnfbcast_v1_12.message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Broadcast Data
nse_nseix_broadcast_nnfbcast_v1_12.broadcast_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.broadcast_data, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.broadcast_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.broadcast_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.broadcast_data.fields(buffer, offset, packet, parent)
  end
end

-- Packed Packet
nse_nseix_broadcast_nnfbcast_v1_12.packed_packet = {}

-- Calculate size of: Packed Packet
nse_nseix_broadcast_nnfbcast_v1_12.packed_packet.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseix_broadcast_nnfbcast_v1_12.compression_length.size

  index = index + nse_nseix_broadcast_nnfbcast_v1_12.broadcast_data.size(buffer, offset + index)

  return index
end

-- Display: Packed Packet
nse_nseix_broadcast_nnfbcast_v1_12.packed_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packed Packet
nse_nseix_broadcast_nnfbcast_v1_12.packed_packet.fields = function(buffer, offset, packet, parent, packed_packet_index)
  local index = offset

  -- Implicit Packed Packet Index
  if packed_packet_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.packed_packet_index, packed_packet_index)
    iteration:set_generated()
  end

  -- Compression Length: SHORT
  index, compression_length = nse_nseix_broadcast_nnfbcast_v1_12.compression_length.dissect(buffer, index, packet, parent)

  local broadcast_data_conversion = compression_length > 0

  if broadcast_data_conversion then
    local compressed = buffer(index, buffer:len() - index):bytes()
    buffer = lzo1z_decompress(compressed, 16384):tvb("Decompressed")
    index = 0
  end

  -- Broadcast Data: Struct of 4 fields
  index, broadcast_data = nse_nseix_broadcast_nnfbcast_v1_12.broadcast_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packed Packet
nse_nseix_broadcast_nnfbcast_v1_12.packed_packet.dissect = function(buffer, offset, packet, parent, packed_packet_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.packed_packet, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.packed_packet.fields(buffer, offset, packet, parent, packed_packet_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.packed_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.packed_packet.fields(buffer, offset, packet, parent, packed_packet_index)
  end
end

-- Bcast Pack Data
nse_nseix_broadcast_nnfbcast_v1_12.bcast_pack_data = {}

-- Calculate size of: Bcast Pack Data
nse_nseix_broadcast_nnfbcast_v1_12.bcast_pack_data.size = function(buffer, offset)
  local index = 0

  index = index + nse_nseix_broadcast_nnfbcast_v1_12.net_id.size

  index = index + nse_nseix_broadcast_nnfbcast_v1_12.number_of_packets.size

  -- Calculate field size from count
  local packed_packet_count = buffer(offset + index - 2, 2):int()
  for i = 1, packed_packet_count do
    index = index + nse_nseix_broadcast_nnfbcast_v1_12.packed_packet.size(buffer, offset + index)
  end
  return index
end

-- Display: Bcast Pack Data
nse_nseix_broadcast_nnfbcast_v1_12.bcast_pack_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bcast Pack Data
nse_nseix_broadcast_nnfbcast_v1_12.bcast_pack_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Net Id: CHAR
  index, net_id = nse_nseix_broadcast_nnfbcast_v1_12.net_id.dissect(buffer, index, packet, parent)

  -- Number Of Packets: SHORT
  index, number_of_packets = nse_nseix_broadcast_nnfbcast_v1_12.number_of_packets.dissect(buffer, index, packet, parent)

  -- Repeating: Packed Packet
  for packed_packet_index = 1, number_of_packets do
    index, packed_packet = nse_nseix_broadcast_nnfbcast_v1_12.packed_packet.dissect(buffer, index, packet, parent, packed_packet_index)
  end

  return index
end

-- Dissect: Bcast Pack Data
nse_nseix_broadcast_nnfbcast_v1_12.bcast_pack_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12.fields.bcast_pack_data, buffer(offset, 0))
    local index = nse_nseix_broadcast_nnfbcast_v1_12.bcast_pack_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nseix_broadcast_nnfbcast_v1_12.bcast_pack_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nseix_broadcast_nnfbcast_v1_12.bcast_pack_data.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nse_nseix_broadcast_nnfbcast_v1_12.packet = {}

-- Verify required size of Udp packet
nse_nseix_broadcast_nnfbcast_v1_12.packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nseix_broadcast_nnfbcast_v1_12.net_id.size + nse_nseix_broadcast_nnfbcast_v1_12.number_of_packets.size
end

-- Dissect Packet
nse_nseix_broadcast_nnfbcast_v1_12.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Bcast Pack Data: Struct of 3 fields
  index, bcast_pack_data = nse_nseix_broadcast_nnfbcast_v1_12.bcast_pack_data.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nse_nseix_broadcast_nnfbcast_v1_12.init()
end

-- Dissector for Nse NseIx Broadcast NnfBcast 1.12
function omi_nse_nseix_broadcast_nnfbcast_v1_12.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nseix_broadcast_nnfbcast_v1_12.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nseix_broadcast_nnfbcast_v1_12, buffer(), omi_nse_nseix_broadcast_nnfbcast_v1_12.description, "("..buffer:len().." Bytes)")
  return nse_nseix_broadcast_nnfbcast_v1_12.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
nse_nseix_broadcast_nnfbcast_v1_12.packet.fingerprint = function(buffer)
  if buffer:len() < 26 then
    return false
  end

  local transaction_code = buffer(24, 2):int()

  -- Broadcast Journal Vct Message
  if transaction_code == 6501 then
    return true
  end

  -- Security Master Change Message
  if transaction_code == 7305 then
    return true
  end

  -- Security Master Change Message
  if transaction_code == 7340 then
    return true
  end

  -- Instrument Master Change Message
  if transaction_code == 7324 then
    return true
  end

  -- Participant Master Change Message
  if transaction_code == 7306 then
    return true
  end

  -- Security Status Change Message
  if transaction_code == 7320 then
    return true
  end

  -- Security Status Change Message
  if transaction_code == 7210 then
    return true
  end

  -- Turnover Exceeded Message
  if transaction_code == 9010 then
    return true
  end

  -- Turnover Exceeded Message
  if transaction_code == 9011 then
    return true
  end

  -- Market Status Message
  if transaction_code == 6511 then
    return true
  end

  -- Market Status Message
  if transaction_code == 6521 then
    return true
  end

  -- Market Status Message
  if transaction_code == 6522 then
    return true
  end

  -- Market Status Message
  if transaction_code == 6531 then
    return true
  end

  -- Market Status Message
  if transaction_code == 6551 then
    return true
  end

  -- Market Status Message
  if transaction_code == 6571 then
    return true
  end

  -- Ticker And Market Index Message
  if transaction_code == 7202 then
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

  -- Only Market By Price Message
  if transaction_code == 7343 then
    return true
  end

  -- Market Watch Round Robin Message
  if transaction_code == 7201 then
    return true
  end

  -- Currency Assets Message
  if transaction_code == 7213 then
    return true
  end

  -- Interest Rate Assets Message
  if transaction_code == 7214 then
    return true
  end

  -- Circuit Check Message
  if transaction_code == 6541 then
    return true
  end

  -- Spread Market By Price Delta Message
  if transaction_code == 7211 then
    return true
  end

  -- Asset Open Interest Message
  if transaction_code == 7130 then
    return true
  end

  -- Asset Interest Rate Change Message
  if transaction_code == 6503 then
    return true
  end

  -- Trade Execution Range Message
  if transaction_code == 7220 then
    return true
  end

  -- Trade Execution Range Message
  if transaction_code == 7221 then
    return true
  end

  -- Trade Execution Range Message
  if transaction_code == 7342 then
    return true
  end

  -- Market By Aggregate Delta Message
  if transaction_code == 7215 then
    return true
  end

  -- Market By Aggregate Delta Message
  if transaction_code == 7216 then
    return true
  end

  -- Spread Combination Master Change Message
  if transaction_code == 7309 then
    return true
  end

  -- Spread Combination Master Change Message
  if transaction_code == 7341 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseIx Broadcast NnfBcast 1.12 (Udp)
local function omi_nse_nseix_broadcast_nnfbcast_v1_12_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nseix_broadcast_nnfbcast_v1_12.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not nse_nseix_broadcast_nnfbcast_v1_12.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nseix_broadcast_nnfbcast_v1_12
  omi_nse_nseix_broadcast_nnfbcast_v1_12.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nse NseIx Broadcast NnfBcast 1.12
omi_nse_nseix_broadcast_nnfbcast_v1_12:register_heuristic("udp", omi_nse_nseix_broadcast_nnfbcast_v1_12_udp_heuristic)

-- Register Nse NseIx Broadcast NnfBcast 1.12 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nse_nseix_broadcast_nnfbcast_v1_12)

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
